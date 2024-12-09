package com.sec.internal.ims.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.feature.SemFloatingFeature;
import com.sec.internal.constants.ims.os.SecFeature;

/* loaded from: classes.dex */
public class MessagingAppInfoReceiver extends BroadcastReceiver {
    private static final String ACTION_PACKAGE_REPLACED = "android.intent.action.PACKAGE_REPLACED";
    private static final String ANDROID_MESSAGE_APP = "com.google.android.apps.messaging";
    private static final String DATA_SCHEME_PACKAGE = "package";
    private static final String LOG_TAG = MessagingAppInfoReceiver.class.getSimpleName();
    private static final String SAMSUNG_MESSAGE_APP = "com.samsung.android.messaging";
    private final Context mContext;
    public MsgApp mDefaultMsgApp;
    private IntentFilter mFilter;
    private boolean mIsRegistered;
    private final IMessagingAppInfoListener mListener;
    public String mMsgAppVersion;
    private final String mPackageName_SM;

    public enum MsgApp {
        SAMSUNG_MESSAGE,
        ANDROID_MESSAGE,
        ETC
    }

    public MessagingAppInfoReceiver(Context context, IMessagingAppInfoListener iMessagingAppInfoListener) {
        this.mContext = context;
        this.mListener = iMessagingAppInfoListener;
        String string = SemFloatingFeature.getInstance().getString(SecFeature.FLOATING.CONFIG_PACKAGE_NAME);
        this.mPackageName_SM = TextUtils.isEmpty(string) ? "com.samsung.android.messaging" : string;
        this.mDefaultMsgApp = getDefaultMsgAPP();
        this.mMsgAppVersion = getMessagingAppVersion();
        setIntentFilterForDefaultMsgApp();
        this.mIsRegistered = false;
    }

    private void setIntentFilterForDefaultMsgApp() {
        if (this.mDefaultMsgApp == MsgApp.ETC) {
            this.mFilter = null;
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        this.mFilter = intentFilter;
        intentFilter.addAction(ACTION_PACKAGE_REPLACED);
        this.mFilter.addDataScheme(DATA_SCHEME_PACKAGE);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp[this.mDefaultMsgApp.ordinal()];
        if (i == 1) {
            this.mFilter.addDataSchemeSpecificPart(this.mPackageName_SM, 0);
        } else {
            if (i != 2) {
                return;
            }
            this.mFilter.addDataSchemeSpecificPart(ANDROID_MESSAGE_APP, 0);
        }
    }

    /* renamed from: com.sec.internal.ims.util.MessagingAppInfoReceiver$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp;

        static {
            int[] iArr = new int[MsgApp.values().length];
            $SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp = iArr;
            try {
                iArr[MsgApp.SAMSUNG_MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp[MsgApp.ANDROID_MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d(LOG_TAG, "onReceive(): intent - " + intent);
        this.mMsgAppVersion = getMessagingAppVersion();
        this.mListener.onMessagingAppPackageReplaced();
    }

    public void registerReceiver() {
        MsgApp defaultMsgAPP = getDefaultMsgAPP();
        if (this.mIsRegistered && this.mDefaultMsgApp == defaultMsgAPP) {
            return;
        }
        unregisterReceiver();
        this.mDefaultMsgApp = defaultMsgAPP;
        setIntentFilterForDefaultMsgApp();
        this.mMsgAppVersion = getMessagingAppVersion();
        String str = LOG_TAG;
        Log.d(str, "registerReceiver(): IsRegistered = " + this.mIsRegistered + ", mDefaultMsgApp = " + this.mDefaultMsgApp);
        if (this.mDefaultMsgApp == MsgApp.ETC) {
            Log.d(str, "registerReceiver(): does not need to registe receiver.");
        } else {
            this.mContext.registerReceiver(this, this.mFilter);
            this.mIsRegistered = true;
        }
    }

    public void unregisterReceiver() {
        Log.d(LOG_TAG, "unregisterReceiver(): IsRegistered = " + this.mIsRegistered);
        if (this.mIsRegistered) {
            this.mContext.unregisterReceiver(this);
            this.mIsRegistered = false;
        }
    }

    public String getMessagingAppVersion() {
        PackageInfo packageInfo;
        String str = "";
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$util$MessagingAppInfoReceiver$MsgApp[this.mDefaultMsgApp.ordinal()];
            if (i == 1) {
                packageInfo = packageManager.getPackageInfo(this.mPackageName_SM, 0);
            } else {
                packageInfo = i != 2 ? null : packageManager.getPackageInfo(ANDROID_MESSAGE_APP, 0);
            }
            if (packageInfo != null) {
                str = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(LOG_TAG, "getMessagingAppVersion(): Cannot find the package.");
        }
        Log.d(LOG_TAG, "getMessagingAppVersion(): " + this.mDefaultMsgApp + " - " + str);
        return str;
    }

    public MsgApp getDefaultMsgAPP() {
        String str;
        try {
            str = Telephony.Sms.getDefaultSmsPackage(this.mContext);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to currentDefaultMsgApp: " + e);
            str = null;
        }
        if (str == null) {
            str = Settings.Secure.getString(this.mContext.getContentResolver(), "sms_default_application");
        }
        if (TextUtils.equals(str, this.mPackageName_SM)) {
            return MsgApp.SAMSUNG_MESSAGE;
        }
        if (TextUtils.equals(str, ANDROID_MESSAGE_APP)) {
            return MsgApp.ANDROID_MESSAGE;
        }
        return MsgApp.ETC;
    }
}
