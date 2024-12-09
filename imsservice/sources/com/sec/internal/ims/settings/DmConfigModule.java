package com.sec.internal.ims.settings;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.configuration.DATA;
import com.sec.ims.settings.NvConfiguration;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class DmConfigModule extends Handler implements ISequentialInitializable {
    public static final String CONFIG_DM_PROVIDER = "content://com.samsung.rcs.dmconfigurationprovider/omadm/";
    public static final String DM_PATH = "omadm/";
    private static final int DM_SERVER_FETCH_FAIL_SIM0 = -2;
    private static final int DM_SERVER_FETCH_FAIL_SIM1 = -3;
    private static final int EVT_FINISH_DM_CONFIG = 1;
    private static final int EVT_FINISH_OMADM_PROV_UPDATE = 2;
    private static final String INTENT_ACTION_DM_VALUE_UPDATE = "com.samsung.ims.action.DM_UPDATE";
    public static final String INTERNAL_KEY_PROCESS_NAME = "INTERNAL_KEY_PROCESS_NAME";
    private static final String KOR_DM_PACKAGE_NAME = "com.ims.dm";
    private static final String LOG_TAG = "DmConfigModule";
    private static final int VZW_OMADM_PENDING_DELAY = 5000;
    private Context mContext;
    private DmContentValues mDmContentValues;
    private SimpleEventLog mEventLog;
    protected IImsFramework mImsFramework;
    ContentObserver mMnoUpdateObserver;
    protected ArrayList<String> mNvList;
    private int mOmadmProvisioningTransactionId;
    protected IRegistrationManager mRegMgr;
    protected BroadcastReceiver mVzwTestModeReceiver;

    public DmConfigModule(Context context, Looper looper, IImsFramework iImsFramework) {
        super(looper);
        this.mOmadmProvisioningTransactionId = -1;
        this.mVzwTestModeReceiver = null;
        this.mNvList = new ArrayList<>();
        this.mImsFramework = null;
        this.mMnoUpdateObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.settings.DmConfigModule.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                Cursor query = DmConfigModule.this.mContext.getContentResolver().query(Uri.parse("content://com.sec.ims.settings/nvlist"), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(0);
                            if (string != null) {
                                String replace = string.replace("[", "").replace("]", "").replace(" ", "");
                                DmConfigModule.this.mNvList.clear();
                                DmConfigModule.this.mNvList.addAll(Arrays.asList(replace.split(",")));
                            } else {
                                Log.e(DmConfigModule.LOG_TAG, "nvList is null");
                            }
                        }
                    } catch (Throwable th) {
                        if (query != null) {
                            try {
                                query.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                Log.d(DmConfigModule.LOG_TAG, "nv list reloaded:" + DmConfigModule.this.mNvList);
                if (query != null) {
                    query.close();
                }
            }
        };
        this.mContext = context;
        this.mDmContentValues = new DmContentValues();
        this.mImsFramework = iImsFramework;
        this.mEventLog = new SimpleEventLog(this.mContext, LOG_TAG, 200);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.sec.ims.settings/mno"), true, this.mMnoUpdateObserver);
        if (IMSLog.isEngMode()) {
            registerVzwTestReceiver();
        }
    }

    public void setRegistrationManager(IRegistrationManager iRegistrationManager) {
        this.mRegMgr = iRegistrationManager;
    }

    private void registerVzwTestReceiver() {
        Log.d(LOG_TAG, "registerVzwTestReceiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ACTION_DM_VALUE_UPDATE);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.settings.DmConfigModule.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra("ITEM");
                int intExtra = intent.getIntExtra("VALUE", -1);
                int intExtra2 = intent.getIntExtra(ImsConstants.Intents.EXTRA_REGI_PHONE_ID, 0);
                if (TextUtils.equals(stringExtra, "157") || TextUtils.equals(stringExtra, "106")) {
                    Log.d(DmConfigModule.LOG_TAG, "dmItem : " + stringExtra + ", value : " + intExtra);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(stringExtra, String.valueOf(intExtra));
                    DmConfigModule.this.updateConfigValues(contentValues, -1, intExtra2);
                    return;
                }
                Log.d(DmConfigModule.LOG_TAG, "This item is not allowed : " + stringExtra);
            }
        };
        this.mVzwTestModeReceiver = broadcastReceiver;
        this.mContext.registerReceiver(broadcastReceiver, intentFilter);
    }

    public int startDmConfig(int i) {
        if (this.mDmContentValues == null) {
            this.mDmContentValues = new DmContentValues();
        }
        int newTransactionId = this.mDmContentValues.getNewTransactionId();
        Log.d(LOG_TAG, "Start getting ims-config by OTA-DM with TransactionId " + newTransactionId + ", phoneId " + i);
        return newTransactionId;
    }

    public void finishDmConfig(int i, int i2) {
        Log.d(LOG_TAG, "finish getting ims-config by OTA-DM with transactionId " + i + ", phoneId " + i2);
        sendMessage(obtainMessage(1, i, i2, null));
    }

    public ContentValues getConfigValues(String[] strArr, int i) {
        String str;
        int i2;
        String str2;
        int i3;
        String str3;
        String str4;
        ISimManager simManagerFromSimSlot;
        String[] strArr2 = strArr;
        ContentValues contentValues = new ContentValues();
        if (strArr2 == null || strArr2.length <= 0) {
            Log.e(LOG_TAG, "Error on fields");
            return contentValues;
        }
        String processNameById = PackageUtils.getProcessNameById(this.mContext, Binder.getCallingPid());
        Map<String, String> read = DmConfigHelper.read(this.mContext, "omadm/*", i);
        Set<String> keySet = read.keySet();
        int length = strArr2.length;
        int i4 = 0;
        while (i4 < length) {
            String str5 = strArr2[i4];
            try {
                i2 = Integer.parseInt(str5);
            } catch (NumberFormatException unused) {
                Log.d(LOG_TAG, "get xNode " + str5);
                str = DM_PATH + str5;
                i2 = -1;
                str2 = str5;
                i3 = 0;
            }
            if (i2 >= 0) {
                if (i2 >= 900) {
                    str2 = "";
                    str = str2;
                    i3 = 3;
                } else {
                    i3 = ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(i2)).getType();
                    str2 = ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(i2)).getName();
                    str = ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(i2)).getPathName();
                }
                if (i3 == 0) {
                    if (this.mNvList.contains(str2)) {
                        str4 = NvConfiguration.get(this.mContext, str2, "", i);
                        contentValues.put(str5, str4);
                        Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                    } else {
                        for (String str6 : keySet) {
                            if (str.equals(str6)) {
                                str3 = read.get(str6);
                                if (TextUtils.equals("VOICE_DOMAIN_PREF_EUTRAN", str5) && TextUtils.equals("com.ims.dm", processNameById)) {
                                    str3 = "-1";
                                }
                                str4 = str3;
                                contentValues.put(str5, str4);
                                Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                            }
                        }
                        str4 = "";
                        contentValues.put(str5, str4);
                        Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                    }
                } else {
                    if (i3 == 1) {
                        if (Integer.parseInt("91") == i2 && (simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i)) != null) {
                            str3 = simManagerFromSimSlot.getSimSerialNumber();
                            str4 = str3;
                            contentValues.put(str5, str4);
                            Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                        }
                    } else {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                str4 = DmConfigHelper.getImsSwitchValue(this.mContext, str2, i) == 1 ? "1" : "0";
                            } else if (i3 == 5) {
                                str4 = RcsConfigurationHelper.readStringParamWithPath(this.mContext, str2);
                            }
                        } else if (Integer.parseInt("74") == i2) {
                            str4 = this.mImsFramework.getString(i, "dm_app_id", ConfigConstants.PVALUE.APP_ID_1);
                        } else if (Integer.parseInt("75") == i2) {
                            str4 = this.mImsFramework.getString(i, "dm_user_disp_name", ConfigConstants.PVALUE.APP_ID_1);
                        } else {
                            throw new IllegalArgumentException("Unsupported Segment : Global Type " + i2);
                        }
                        contentValues.put(str5, str4);
                        Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                    }
                    str4 = "";
                    contentValues.put(str5, str4);
                    Log.d(LOG_TAG, "result (" + i2 + ") " + str2 + " [ " + str4 + " ]");
                }
                i4++;
                strArr2 = strArr;
            } else {
                i4++;
                strArr2 = strArr;
            }
        }
        return contentValues;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updateConfigValues(android.content.ContentValues r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 890
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.DmConfigModule.updateConfigValues(android.content.ContentValues, int, int):boolean");
    }

    private void insertData(Uri uri, ContentValues contentValues) {
        if (!contentValues.containsKey(INTERNAL_KEY_PROCESS_NAME)) {
            contentValues.put(INTERNAL_KEY_PROCESS_NAME, PackageUtils.getProcessNameById(this.mContext, Binder.getCallingPid()));
        }
        this.mContext.getContentResolver().insert(uri, contentValues);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.d(LOG_TAG, "handleMessage: evt=" + message.what);
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                ContentValues configData = this.mDmContentValues.getConfigData(this.mOmadmProvisioningTransactionId, 2);
                if (configData == null) {
                    Log.e(LOG_TAG, "no pending transaction for : " + this.mOmadmProvisioningTransactionId);
                    return;
                }
                Log.d(LOG_TAG, "EVT_FINISH_OMADM_PROV_UPDATE, completing transaction : " + this.mOmadmProvisioningTransactionId);
                this.mDmContentValues.removeConfigData(this.mOmadmProvisioningTransactionId, 2);
                this.mOmadmProvisioningTransactionId = -1;
                insertData(UriUtil.buildUri(NvConfiguration.URI, ((Integer) message.obj).intValue()), configData);
                return;
            }
            Log.e(LOG_TAG, "unknown event");
            return;
        }
        int i2 = message.arg2;
        if (this.mDmContentValues.allTransactionDone()) {
            this.mRegMgr.onDmConfigurationComplete(i2);
            return;
        }
        ContentValues configData2 = this.mDmContentValues.getConfigData(message.arg1, 0);
        if (configData2 == null) {
            Log.e(LOG_TAG, "no opt transactionId " + message.arg1);
        } else {
            this.mDmContentValues.removeConfigData(message.arg1, 0);
            insertData(UriUtil.buildUri(CONFIG_DM_PROVIDER, i2), configData2);
        }
        ContentValues configData3 = this.mDmContentValues.getConfigData(message.arg1, 1);
        if (configData3 == null) {
            Log.e(LOG_TAG, "no nv transactionId " + message.arg1);
        } else {
            this.mDmContentValues.removeConfigData(message.arg1, 1);
            insertData(NvConfiguration.URI, configData3);
        }
        this.mRegMgr.onDmConfigurationComplete(i2);
        if (this.mDmContentValues.allTransactionDone()) {
            Log.d(LOG_TAG, "all config transaction done, " + message.arg1 + ", phoneId " + message.arg2);
            int i3 = message.arg1;
            if (i3 != -2 && i3 != -3) {
                this.mDmContentValues = new DmContentValues();
            } else {
                this.mEventLog.logAndAdd("socket timeout, don't destroy DmContentValues");
            }
        }
    }

    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of " + getClass().getSimpleName() + ":");
        this.mEventLog.dump();
    }

    static class DmContentValues {
        private static final String LOG_TAG = "DmContentValues";
        protected static final int NUM_OF_MAP = 3;
        protected static final int TYPE_CONFIG_DB = 0;
        protected static final int TYPE_NV = 1;
        protected static final int TYPE_OTA = 2;
        private static int mMaxTransactionId;
        private List<Map<Integer, ContentValues>> mTransactionMaps = new ArrayList();

        DmContentValues() {
            for (int i = 0; i < 3; i++) {
                this.mTransactionMaps.add(new HashMap());
            }
        }

        protected int getNewTransactionId() {
            int i = mMaxTransactionId + 1;
            mMaxTransactionId = i;
            return i;
        }

        protected void addConfigData(int i, int i2, ContentValues contentValues) {
            ContentValues contentValues2;
            if (this.mTransactionMaps.get(i2).containsKey(Integer.valueOf(i))) {
                contentValues2 = this.mTransactionMaps.get(i2).get(Integer.valueOf(i));
            } else {
                Log.d(LOG_TAG, "no transaction with transactionId " + i + " create new transaction");
                this.mTransactionMaps.get(i2).put(Integer.valueOf(i), new ContentValues());
                contentValues2 = this.mTransactionMaps.get(i2).get(Integer.valueOf(i));
                if (i > mMaxTransactionId) {
                    mMaxTransactionId = i;
                }
            }
            contentValues2.putAll(contentValues);
            this.mTransactionMaps.get(i2).put(Integer.valueOf(i), contentValues2);
        }

        protected ContentValues getConfigData(int i, int i2) {
            if (this.mTransactionMaps.size() == 0 || this.mTransactionMaps.get(i2) == null || !this.mTransactionMaps.get(i2).containsKey(Integer.valueOf(i))) {
                return null;
            }
            return this.mTransactionMaps.get(i2).get(Integer.valueOf(i));
        }

        protected void removeConfigData(int i, int i2) {
            if (this.mTransactionMaps.get(i2).containsKey(Integer.valueOf(i))) {
                this.mTransactionMaps.get(i2).remove(Integer.valueOf(i));
            }
        }

        protected boolean allTransactionDone() {
            for (int i = 0; i < 3; i++) {
                if (!this.mTransactionMaps.get(i).isEmpty()) {
                    return false;
                }
            }
            return true;
        }
    }
}
