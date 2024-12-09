package com.sec.internal.ims.servicemodules.options;

import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.os.IccCardConstants;
import com.sec.internal.helper.MccTable;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.interfaces.ims.core.ISimEventListener;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class UriGeneratorProvider extends ContentProvider {
    private static final String AUTHORITY = "com.samsung.rcs.urigenerator.provider";
    private static final String DEFAULT_COUNTRY_CODE = "US";
    private static final String DEFAULT_MCC = "310";
    private static final int HANDLE_EVENT_ADS_CHANGED = 1;
    static final int N_IMS = 1;
    private static final String[] PROJECTION;
    static UriMatcher sMatcher;
    Context mContext;
    private ImsIntentReceiver mImsIntentReceiver;
    String mOwnAreaCode;
    private SimIntentReceiver mSimIntentReceiver;
    private static final String LOG_TAG = UriGeneratorProvider.class.getSimpleName();
    private static final IntentFilter SIM_STATE_CHANGED_INTENT_FILTER = new IntentFilter("android.intent.action.SIM_STATE_CHANGED");
    private static final IntentFilter IMS_REGISTRATION_INTENT_FILTER = new IntentFilter(ImsConstants.Intents.ACTION_IMS_STATE);
    ISimManager mSimManager = null;
    private SimEventListener mSimEventListener = new SimEventListener();
    private String mMcc = DEFAULT_MCC;
    private String mCountryCode = DEFAULT_COUNTRY_CODE;
    private Handler mHandler = null;
    private HandlerThread mHandlerThread = null;

    static {
        UriMatcher uriMatcher = new UriMatcher(0);
        sMatcher = uriMatcher;
        uriMatcher.addURI(AUTHORITY, "ims/*", 1);
        PROJECTION = new String[]{"_id", "generated_uri"};
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.i(LOG_TAG, "onCreate()");
        if (this.mContext == null) {
            this.mContext = getContext();
        }
        this.mSimIntentReceiver = new SimIntentReceiver();
        this.mImsIntentReceiver = new ImsIntentReceiver();
        HandlerThread handlerThread = new HandlerThread("ADSSimHandler");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new simEventHandler(this.mHandlerThread.getLooper());
        this.mContext.registerReceiver(this.mSimIntentReceiver, SIM_STATE_CHANGED_INTENT_FILTER);
        this.mContext.registerReceiver(this.mImsIntentReceiver, IMS_REGISTRATION_INTENT_FILTER);
        SimManagerFactory.registerForADSChange(this.mHandler, 1, null);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ImsUri normalizedUri;
        List<String> pathSegments = uri.getPathSegments();
        String decode = Uri.decode(pathSegments.get(pathSegments.size() - 1));
        int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
        String str3 = LOG_TAG;
        IMSLog.s(str3, String.format("query() - uri: %s, number: %s", uri, decode));
        if (sMatcher.match(uri) == 1) {
            IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority());
            if (decode != null && decode.length() == 7 && !decode.startsWith("+") && this.mOwnAreaCode != null && rcsStrategy != null && !rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.SUPPORT_7DIGIT_MSG)) {
                decode = this.mOwnAreaCode + decode;
                IMSLog.s(str3, "local number format, adding own area code " + decode);
            }
            Log.i(str3, "query()  mCountryCode " + this.mCountryCode + " MCC " + this.mMcc + " CountryCode " + this.mCountryCode);
            ImsUri parseNumber = UriUtil.parseNumber(decode, this.mCountryCode);
            StringBuilder sb = new StringBuilder();
            sb.append("query(), telUri = ");
            sb.append(parseNumber);
            IMSLog.s(str3, sb.toString());
            if ((SimUtil.getMno().isRjil() || SimUtil.getMno().isChn()) && (normalizedUri = UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI).getNormalizedUri(decode)) != null) {
                IMSLog.s(str3, "converting " + decode + "to" + normalizedUri.toString());
                parseNumber = normalizedUri;
            }
            if (SimUtil.getSimMno(simSlotFromUri).isKor() && decode != null && (decode.startsWith("*") || decode.startsWith("#"))) {
                IMSLog.d(str3, "query() - KOR startswith *# return null");
                parseNumber = null;
            }
            String imsUri = parseNumber != null ? parseNumber.toString() : null;
            IMSLog.s(str3, "query() - generated uri: " + imsUri);
            MatrixCursor matrixCursor = new MatrixCursor(PROJECTION);
            matrixCursor.addRow(new Object[]{0, imsUri});
            return matrixCursor;
        }
        throw new UnsupportedOperationException("Unsupported URI!");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("delete not supported!");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException("getType not supported!");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("insert not supported!");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("update not supported!");
    }

    private class SimIntentReceiver extends BroadcastReceiver {
        private SimIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("ss");
            Log.i(UriGeneratorProvider.LOG_TAG, "sim state intent received - " + stringExtra);
            if (ImsRegistry.isReady()) {
                if (UriGeneratorProvider.this.mSimManager == null || IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(stringExtra)) {
                    if (IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(stringExtra)) {
                        Log.i(UriGeneratorProvider.LOG_TAG, "Update mSimManager when iccState is 'LOADED' ");
                    }
                    UriGeneratorProvider.this.mSimManager = SimManagerFactory.getSimManager();
                    UriGeneratorProvider uriGeneratorProvider = UriGeneratorProvider.this;
                    uriGeneratorProvider.mSimManager.registerSimCardEventListener(uriGeneratorProvider.mSimEventListener);
                }
                if (UriGeneratorProvider.this.mSimManager.isSimLoaded()) {
                    UriGeneratorProvider uriGeneratorProvider2 = UriGeneratorProvider.this;
                    uriGeneratorProvider2.extractOwnAreaCode(uriGeneratorProvider2.mSimManager.getSimOperator(), UriGeneratorProvider.this.mSimManager.getMsisdn());
                }
            }
        }
    }

    private class ImsIntentReceiver extends BroadcastReceiver {
        private ImsIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra(ImsConstants.Intents.EXTRA_REGISTERED, false);
            Log.i(UriGeneratorProvider.LOG_TAG, "IMS register - " + String.valueOf(booleanExtra));
            UriGeneratorProvider uriGeneratorProvider = UriGeneratorProvider.this;
            if (uriGeneratorProvider.mSimManager == null) {
                uriGeneratorProvider.mSimManager = SimManagerFactory.getSimManager();
            }
            if (UriGeneratorProvider.this.mSimManager.isSimLoaded()) {
                UriGeneratorProvider uriGeneratorProvider2 = UriGeneratorProvider.this;
                uriGeneratorProvider2.extractOwnAreaCode(uriGeneratorProvider2.mSimManager.getSimOperator(), UriGeneratorProvider.this.mSimManager.getMsisdn());
            }
        }
    }

    private class simEventHandler extends Handler {
        public simEventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.d(UriGeneratorProvider.LOG_TAG, "handleMessage: msg.what = " + message.what);
            if (message.what == 1) {
                Log.d(UriGeneratorProvider.LOG_TAG, "HANDLE_EVENT_ADS_CHANGED: update sim manager!");
                UriGeneratorProvider.this.mSimManager = SimManagerFactory.getSimManager();
                return;
            }
            Log.d(UriGeneratorProvider.LOG_TAG, "unknown message");
        }
    }

    private class SimEventListener implements ISimEventListener {
        private SimEventListener() {
        }

        @Override // com.sec.internal.interfaces.ims.core.ISimEventListener
        public void onReady(int i, boolean z) {
            Log.i(UriGeneratorProvider.LOG_TAG, "onReady: subId=" + i + " absent=" + z);
            if (z) {
                return;
            }
            UriGeneratorProvider uriGeneratorProvider = UriGeneratorProvider.this;
            uriGeneratorProvider.extractOwnAreaCode(uriGeneratorProvider.mSimManager.getSimOperator(), UriGeneratorProvider.this.mSimManager.getMsisdn());
        }
    }

    void extractOwnAreaCode(String str, String str2) {
        int i;
        IMSLog.s(LOG_TAG, "extractOwnAreaCode phoneNumber" + IMSLog.checker(str2));
        if (str != null && str.length() > 3) {
            String substring = str.substring(0, 3);
            this.mMcc = substring;
            try {
                i = Integer.parseInt(substring);
            } catch (NumberFormatException unused) {
                Log.e(LOG_TAG, "extractOwnAreaCode. mcc is not int");
                i = 0;
            }
            String upperCase = MccTable.countryCodeForMcc(i).toUpperCase(Locale.US);
            String str3 = LOG_TAG;
            Log.i(str3, "extractOwnAreaCode tmpCountryCode " + upperCase + " operator " + str);
            if (upperCase != null) {
                this.mCountryCode = upperCase;
            }
            Log.i(str3, "extractOwnAreaCode MCC " + this.mMcc + " Country " + this.mCountryCode);
        }
        if (!this.mSimManager.getSimMno().isUSA()) {
            this.mOwnAreaCode = "";
            IMSLog.i(LOG_TAG, "extractOwnAreaCode: KOR operator not use OwnAreaCode");
        } else if (str2 != null) {
            try {
                if (str2.startsWith("+1")) {
                    this.mOwnAreaCode = str2.substring(2, 5);
                } else if (str2.length() == 11) {
                    this.mOwnAreaCode = str2.substring(1, 4);
                } else if (str2.length() == 10) {
                    this.mOwnAreaCode = str2.substring(0, 3);
                }
            } catch (StringIndexOutOfBoundsException unused2) {
                this.mOwnAreaCode = "";
            }
        }
    }
}
