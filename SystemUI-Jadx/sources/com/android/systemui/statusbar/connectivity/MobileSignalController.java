package com.android.systemui.statusbar.connectivity;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.CellSignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.settingslib.SignalIcon$IconGroup;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.settingslib.graph.SignalDrawable;
import com.android.settingslib.mobile.MobileMappings;
import com.android.settingslib.mobile.MobileStatusTracker;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.systemui.R;
import com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxy;
import com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxyImpl;
import com.android.systemui.util.CarrierConfigTracker;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileSignalController extends SignalController {
    public static final SimpleDateFormat SSDF = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    public MobileMappings.Config mConfig;
    public SignalIcon$MobileIconGroup mDefaultIcons;
    public final MobileStatusTracker.SubscriptionDefaults mDefaults;
    boolean mInflateSignalStrengths;
    public final AnonymousClass1 mMobileCallback;
    public final MobileMappingsProxy mMobileMappingsProxy;
    public final String[] mMobileStatusHistory;
    public int mMobileStatusHistoryIndex;
    final MobileStatusTracker mMobileStatusTracker;
    public final String mNetworkNameDefault;
    public final String mNetworkNameSeparator;
    public Map mNetworkToIconLookup;
    public final AnonymousClass2 mObserver;
    public final TelephonyManager mPhone;
    public final SubscriptionInfo mSubscriptionInfo;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.connectivity.MobileSignalController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements MobileStatusTracker.Callback {
        public String mLastStatus;

        public AnonymousClass1() {
        }

        public final void onMobileStatusChanged(boolean z, MobileStatusTracker.MobileStatus mobileStatus) {
            boolean z2 = SignalController.DEBUG;
            MobileSignalController mobileSignalController = MobileSignalController.this;
            if (z2) {
                String str = mobileSignalController.mTag;
                StringBuilder m = RowView$$ExternalSyntheticOutline0.m("onMobileStatusChanged= updateTelephony=", z, " mobileStatus=");
                m.append(mobileStatus.toString());
                Log.d(str, m.toString());
            }
            String mobileStatus2 = mobileStatus.toString();
            if (!mobileStatus2.equals(this.mLastStatus)) {
                this.mLastStatus = mobileStatus2;
                String str2 = MobileSignalController.SSDF.format(Long.valueOf(System.currentTimeMillis())) + "," + mobileStatus2;
                int i = mobileSignalController.mMobileStatusHistoryIndex;
                mobileSignalController.mMobileStatusHistory[i] = str2;
                mobileSignalController.mMobileStatusHistoryIndex = (i + 1) % 64;
            }
            SimpleDateFormat simpleDateFormat = MobileSignalController.SSDF;
            MobileState mobileState = (MobileState) mobileSignalController.mCurrentState;
            mobileState.getClass();
            mobileState.activityIn = mobileStatus.activityIn;
            mobileState.activityOut = mobileStatus.activityOut;
            mobileState.dataSim = mobileStatus.dataSim;
            mobileState.carrierNetworkChangeMode = mobileStatus.carrierNetworkChangeMode;
            mobileState.dataState = mobileStatus.dataState;
            mobileState.signalStrength = mobileStatus.signalStrength;
            mobileState.telephonyDisplayInfo = mobileStatus.telephonyDisplayInfo;
            mobileState.serviceState = mobileStatus.serviceState;
            if (z) {
                mobileSignalController.updateTelephony();
            } else {
                mobileSignalController.notifyListenersIfNecessary();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class QsInfo {
        public final CharSequence description;
        public final IconState icon;
        public final int ratTypeIcon;

        public QsInfo(int i, IconState iconState, CharSequence charSequence) {
            this.ratTypeIcon = i;
            this.icon = iconState;
            this.description = charSequence;
        }

        public final String toString() {
            return "QsInfo: ratTypeIcon=" + this.ratTypeIcon + " icon=" + this.icon;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SbInfo {
        public final IconState icon;
        public final int ratTypeIcon;
        public final boolean showTriangle;

        public SbInfo(boolean z, int i, IconState iconState) {
            this.showTriangle = z;
            this.ratTypeIcon = i;
            this.icon = iconState;
        }

        public final String toString() {
            return "SbInfo: showTriangle=" + this.showTriangle + " ratTypeIcon=" + this.ratTypeIcon + " icon=" + this.icon;
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [com.android.systemui.statusbar.connectivity.MobileSignalController$2] */
    public MobileSignalController(Context context, MobileMappings.Config config, boolean z, TelephonyManager telephonyManager, CallbackHandler callbackHandler, NetworkControllerImpl networkControllerImpl, MobileMappingsProxy mobileMappingsProxy, SubscriptionInfo subscriptionInfo, MobileStatusTracker.SubscriptionDefaults subscriptionDefaults, Looper looper, CarrierConfigTracker carrierConfigTracker, MobileStatusTrackerFactory mobileStatusTrackerFactory) {
        super("MobileSignalController(" + subscriptionInfo.getSubscriptionId() + ")", context, 0, callbackHandler, networkControllerImpl);
        SignalIcon$MobileIconGroup signalIcon$MobileIconGroup;
        this.mInflateSignalStrengths = false;
        this.mMobileStatusHistory = new String[64];
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mMobileCallback = anonymousClass1;
        this.mConfig = config;
        this.mPhone = telephonyManager;
        this.mDefaults = subscriptionDefaults;
        this.mSubscriptionInfo = subscriptionInfo;
        this.mMobileMappingsProxy = mobileMappingsProxy;
        this.mNetworkNameSeparator = getTextIfExists(R.string.status_bar_network_name_separator).toString();
        String charSequence = getTextIfExists(android.R.string.quick_contacts_not_available).toString();
        this.mNetworkNameDefault = charSequence;
        MobileMappings.Config config2 = this.mConfig;
        MobileMappingsProxyImpl mobileMappingsProxyImpl = (MobileMappingsProxyImpl) mobileMappingsProxy;
        mobileMappingsProxyImpl.getClass();
        this.mNetworkToIconLookup = MobileMappings.mapIconSets(config2);
        MobileMappings.Config config3 = this.mConfig;
        mobileMappingsProxyImpl.getClass();
        if (!config3.showAtLeast3G) {
            signalIcon$MobileIconGroup = TelephonyIcons.G;
        } else {
            signalIcon$MobileIconGroup = TelephonyIcons.THREE_G;
        }
        this.mDefaultIcons = signalIcon$MobileIconGroup;
        charSequence = subscriptionInfo.getCarrierName() != null ? subscriptionInfo.getCarrierName().toString() : charSequence;
        MobileState mobileState = (MobileState) this.mLastState;
        MobileState mobileState2 = (MobileState) this.mCurrentState;
        mobileState2.networkName = charSequence;
        mobileState.networkName = charSequence;
        mobileState2.networkNameData = charSequence;
        mobileState.networkNameData = charSequence;
        mobileState2.enabled = z;
        mobileState.enabled = z;
        SignalIcon$MobileIconGroup signalIcon$MobileIconGroup2 = this.mDefaultIcons;
        mobileState2.iconGroup = signalIcon$MobileIconGroup2;
        mobileState.iconGroup = signalIcon$MobileIconGroup2;
        this.mObserver = new ContentObserver(new Handler(looper)) { // from class: com.android.systemui.statusbar.connectivity.MobileSignalController.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                MobileSignalController mobileSignalController = MobileSignalController.this;
                SimpleDateFormat simpleDateFormat = MobileSignalController.SSDF;
                mobileSignalController.updateTelephony();
            }
        };
        this.mMobileStatusTracker = new MobileStatusTracker(mobileStatusTrackerFactory.phone, mobileStatusTrackerFactory.receiverLooper, mobileStatusTrackerFactory.info, mobileStatusTrackerFactory.defaults, anonymousClass1);
    }

    public final void checkDefaultData() {
        MobileState mobileState = (MobileState) this.mCurrentState;
        boolean z = false;
        if (mobileState.iconGroup != TelephonyIcons.NOT_DEFAULT_DATA) {
            mobileState.defaultDataOff = false;
            return;
        }
        NetworkControllerImpl networkControllerImpl = this.mNetworkController;
        networkControllerImpl.mSubDefaults.getClass();
        MobileSignalController controllerWithSubId = networkControllerImpl.getControllerWithSubId(SubscriptionManager.getActiveDataSubscriptionId());
        if (controllerWithSubId != null) {
            z = !controllerWithSubId.mPhone.isDataConnectionAllowed();
        }
        mobileState.defaultDataOff = z;
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final ConnectivityState cleanState() {
        return new MobileState();
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final void dump(PrintWriter printWriter) {
        String[] strArr;
        super.dump(printWriter);
        printWriter.println("  mSubscription=" + this.mSubscriptionInfo + ",");
        printWriter.println("  mInflateSignalStrengths=" + this.mInflateSignalStrengths + ",");
        printWriter.println("  isDataDisabled=" + (this.mPhone.isDataConnectionAllowed() ^ true) + ",");
        printWriter.println("  mNetworkToIconLookup=" + this.mNetworkToIconLookup + ",");
        StringBuilder sb = new StringBuilder("  mMobileStatusTracker.isListening=");
        sb.append(this.mMobileStatusTracker.mListening);
        printWriter.println(sb.toString());
        printWriter.println("  MobileStatusHistory");
        int i = 0;
        int i2 = 0;
        while (true) {
            strArr = this.mMobileStatusHistory;
            if (i >= 64) {
                break;
            }
            if (strArr[i] != null) {
                i2++;
            }
            i++;
        }
        int i3 = this.mMobileStatusHistoryIndex + 64;
        while (true) {
            i3--;
            if (i3 >= (this.mMobileStatusHistoryIndex + 64) - i2) {
                printWriter.println("  Previous MobileStatus(" + ((this.mMobileStatusHistoryIndex + 64) - i3) + "): " + strArr[i3 & 63]);
            } else {
                dumpTableData(printWriter);
                return;
            }
        }
    }

    @Override // com.android.systemui.statusbar.connectivity.SignalController
    public final int getCurrentIconId() {
        int numSignalStrengthLevels;
        boolean z;
        boolean z2;
        boolean z3;
        int numSignalStrengthLevels2;
        int numSignalStrengthLevels3;
        MobileState mobileState = (MobileState) this.mCurrentState;
        SignalIcon$IconGroup signalIcon$IconGroup = mobileState.iconGroup;
        if (signalIcon$IconGroup == TelephonyIcons.CARRIER_NETWORK_CHANGE) {
            if (this.mInflateSignalStrengths) {
                numSignalStrengthLevels3 = CellSignalStrength.getNumSignalStrengthLevels() + 1;
            } else {
                numSignalStrengthLevels3 = CellSignalStrength.getNumSignalStrengthLevels();
            }
            int i = SignalDrawable.$r8$clinit;
            return (numSignalStrengthLevels3 << 8) | 196608;
        }
        int i2 = 0;
        if (mobileState.connected) {
            int i3 = mobileState.level;
            boolean z4 = this.mInflateSignalStrengths;
            if (z4) {
                i3++;
            }
            if (mobileState.userSetup && (signalIcon$IconGroup == TelephonyIcons.DATA_DISABLED || (signalIcon$IconGroup == TelephonyIcons.NOT_DEFAULT_DATA && mobileState.defaultDataOff))) {
                z = true;
            } else {
                z = false;
            }
            if (mobileState.inetCondition == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z && !z2) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (z4) {
                numSignalStrengthLevels2 = CellSignalStrength.getNumSignalStrengthLevels() + 1;
            } else {
                numSignalStrengthLevels2 = CellSignalStrength.getNumSignalStrengthLevels();
            }
            int i4 = SignalDrawable.$r8$clinit;
            if (z3) {
                i2 = 2;
            }
            return (numSignalStrengthLevels2 << 8) | (i2 << 16) | i3;
        }
        if (!mobileState.enabled) {
            return 0;
        }
        if (this.mInflateSignalStrengths) {
            numSignalStrengthLevels = CellSignalStrength.getNumSignalStrengthLevels() + 1;
        } else {
            numSignalStrengthLevels = CellSignalStrength.getNumSignalStrengthLevels();
        }
        int i5 = SignalDrawable.$r8$clinit;
        return (numSignalStrengthLevels << 8) | 131072 | 0;
    }

    public final void handleBroadcast(Intent intent) {
        String action = intent.getAction();
        boolean equals = action.equals("android.telephony.action.SERVICE_PROVIDERS_UPDATED");
        ConnectivityState connectivityState = this.mCurrentState;
        boolean z = false;
        if (equals) {
            boolean booleanExtra = intent.getBooleanExtra("android.telephony.extra.SHOW_SPN", false);
            String stringExtra = intent.getStringExtra("android.telephony.extra.SPN");
            String stringExtra2 = intent.getStringExtra("android.telephony.extra.DATA_SPN");
            boolean booleanExtra2 = intent.getBooleanExtra("android.telephony.extra.SHOW_PLMN", false);
            String stringExtra3 = intent.getStringExtra("android.telephony.extra.PLMN");
            if (SignalController.CHATTY) {
                StringBuilder sb = new StringBuilder("updateNetworkName showSpn=");
                sb.append(booleanExtra);
                sb.append(" spn=");
                sb.append(stringExtra);
                sb.append(" dataSpn=");
                sb.append(stringExtra2);
                sb.append(" showPlmn=");
                sb.append(booleanExtra2);
                sb.append(" plmn=");
                ExifInterface$$ExternalSyntheticOutline0.m(sb, stringExtra3, "CarrierLabel");
            }
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            if (booleanExtra2 && stringExtra3 != null) {
                sb2.append(stringExtra3);
                sb3.append(stringExtra3);
            }
            String str = this.mNetworkNameSeparator;
            if (booleanExtra && stringExtra != null) {
                if (sb2.length() != 0) {
                    sb2.append(str);
                }
                sb2.append(stringExtra);
            }
            int length = sb2.length();
            String str2 = this.mNetworkNameDefault;
            if (length != 0) {
                ((MobileState) connectivityState).networkName = sb2.toString();
            } else {
                ((MobileState) connectivityState).networkName = str2;
            }
            if (booleanExtra && stringExtra2 != null) {
                if (sb3.length() != 0) {
                    sb3.append(str);
                }
                sb3.append(stringExtra2);
            }
            if (sb3.length() != 0) {
                ((MobileState) connectivityState).networkNameData = sb3.toString();
            } else {
                ((MobileState) connectivityState).networkNameData = str2;
            }
            notifyListenersIfNecessary();
            return;
        }
        if (action.equals("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED")) {
            this.mDefaults.getClass();
            int activeDataSubscriptionId = SubscriptionManager.getActiveDataSubscriptionId();
            if (SubscriptionManager.isValidSubscriptionId(activeDataSubscriptionId)) {
                MobileState mobileState = (MobileState) connectivityState;
                if (activeDataSubscriptionId == this.mSubscriptionInfo.getSubscriptionId()) {
                    z = true;
                }
                mobileState.dataSim = z;
            } else {
                ((MobileState) connectivityState).dataSim = true;
            }
            notifyListenersIfNecessary();
            return;
        }
        if (action.equals("android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED")) {
            ((MobileState) connectivityState).carrierId = intent.getIntExtra("android.telephony.extra.CARRIER_ID", -1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0121  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // com.android.systemui.statusbar.connectivity.SignalController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void notifyListeners(com.android.systemui.statusbar.connectivity.SignalCallback r21) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.connectivity.MobileSignalController.notifyListeners(com.android.systemui.statusbar.connectivity.SignalCallback):void");
    }

    public final void registerListener() {
        this.mMobileStatusTracker.setListening(true);
        Context context = this.mContext;
        ContentResolver contentResolver = context.getContentResolver();
        Uri uriFor = Settings.Global.getUriFor("mobile_data");
        AnonymousClass2 anonymousClass2 = this.mObserver;
        contentResolver.registerContentObserver(uriFor, true, anonymousClass2);
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("mobile_data" + this.mSubscriptionInfo.getSubscriptionId()), true, anonymousClass2);
    }

    public void setActivity(int i) {
        boolean z;
        ConnectivityState connectivityState = this.mCurrentState;
        MobileState mobileState = (MobileState) connectivityState;
        boolean z2 = false;
        if (i != 3 && i != 1) {
            z = false;
        } else {
            z = true;
        }
        mobileState.activityIn = z;
        MobileState mobileState2 = (MobileState) connectivityState;
        if (i == 3 || i == 2) {
            z2 = true;
        }
        mobileState2.activityOut = z2;
        notifyListenersIfNecessary();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateTelephony() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.connectivity.MobileSignalController.updateTelephony():void");
    }
}
