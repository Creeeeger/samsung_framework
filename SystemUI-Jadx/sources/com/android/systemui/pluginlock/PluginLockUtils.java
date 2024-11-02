package com.android.systemui.pluginlock;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemProperties;
import android.util.Log;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.pluginlock.utils.DumpUtils;
import com.android.systemui.util.Assert;
import com.android.systemui.util.SafeUIState;
import com.sec.ims.configuration.DATA;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockUtils {
    public static final int sSafeModeLevel;
    public final Context mContext;
    public final DumpUtils mDumpUtils;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public HandlerExecutor mHandlerExecutor = null;
    public ExecutorService mExecutors = null;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HandlerExecutor {
        public final Handler mHandler;

        public HandlerExecutor() {
            HandlerThread handlerThread = new HandlerThread("PluginLockHandlerThread");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper());
        }
    }

    static {
        int i;
        if (Build.VERSION.SEM_PLATFORM_INT <= 130500) {
            i = 2;
        } else {
            i = 5;
        }
        sSafeModeLevel = i;
    }

    public PluginLockUtils(Context context, DumpUtils dumpUtils, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.mContext = context;
        this.mDumpUtils = dumpUtils;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        checkSafeMode();
    }

    public static boolean isCurrentOwner() {
        if (KeyguardUpdateMonitor.getCurrentUser() == 0) {
            return true;
        }
        return false;
    }

    public static boolean isGoingToRescueParty() {
        int i;
        if (!SafeUIState.isSysUiSafeModeEnabled()) {
            try {
                i = Integer.parseInt(SystemProperties.get("persist.sys.rescue_level", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN));
            } catch (Throwable unused) {
                i = 0;
            }
            if (i < sSafeModeLevel) {
                return false;
            }
        }
        return true;
    }

    public final void addDump(final String str, final String str2) {
        Log.d(str, str2);
        if (this.mExecutors == null) {
            this.mExecutors = Executors.newSingleThreadExecutor(new PluginLockUtils$$ExternalSyntheticLambda2());
        }
        this.mExecutors.execute(new Runnable() { // from class: com.android.systemui.pluginlock.PluginLockUtils$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PluginLockUtils pluginLockUtils = PluginLockUtils.this;
                String str3 = str2;
                synchronized (pluginLockUtils) {
                    pluginLockUtils.mDumpUtils.addEvent(str3);
                }
            }
        });
    }

    public final Bundle callProvider(String str, Bundle bundle) {
        try {
            Assert.isNotMainThread();
            if (this.mUpdateMonitor.isUserUnlocked()) {
                Bundle call = this.mContext.getContentResolver().call(Uri.parse("content://com.samsung.android.dynamiclock.provider"), str, (String) null, bundle);
                Log.d("PluginLockUtils", "callProvider, result:" + call);
                return call;
            }
            Log.w("PluginLockUtils", "callProvider, user isn't unlocked yet");
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final void checkSafeMode() {
        boolean z;
        if (LsRune.KEYGUARD_FBE && !this.mUpdateMonitor.isUserUnlocked()) {
            z = false;
        } else {
            z = true;
        }
        boolean isGoingToRescueParty = isGoingToRescueParty();
        EmergencyButtonController$$ExternalSyntheticOutline0.m("checkSafeMode, userUnlocked=", z, ", safeMode=", isGoingToRescueParty, "PluginLockUtils");
        if (isGoingToRescueParty && z) {
            if (this.mExecutors == null) {
                this.mExecutors = Executors.newSingleThreadExecutor(new PluginLockUtils$$ExternalSyntheticLambda2());
            }
            this.mExecutors.execute(new Runnable() { // from class: com.android.systemui.pluginlock.PluginLockUtils$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    int i;
                    PluginLockUtils pluginLockUtils = PluginLockUtils.this;
                    StringBuilder sb = new StringBuilder("call dls_safe_mode, level:");
                    pluginLockUtils.getClass();
                    try {
                        i = Integer.parseInt(SystemProperties.get("persist.sys.rescue_level", DATA.DM_FIELD_INDEX.PCSCF_DOMAIN));
                    } catch (Throwable unused) {
                        i = 0;
                    }
                    sb.append(i);
                    pluginLockUtils.mDumpUtils.addEvent(sb.toString());
                    pluginLockUtils.callProvider("dls_safe_mode", null);
                }
            });
        }
    }
}
