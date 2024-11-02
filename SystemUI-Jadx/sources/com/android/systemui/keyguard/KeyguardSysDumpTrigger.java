package com.android.systemui.keyguard;

import android.app.ActivityTaskManager;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.widget.Toast;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.animation.ValueAnimator$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.Timer;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSysDumpTrigger {
    public static final int[] KEY;
    public static final ComponentName SYSDUMP_COMPONENT_NAME;
    public final Handler bgHandler;
    public ExecutorImpl.ExecutionToken cancelExecToken;
    public final Context context;
    public String dumpPath;
    public final DelayableExecutor executor;
    public final boolean isDebug;
    public boolean isEnabled;
    public int keyIndex;
    public final PowerManager powerManager;
    public long prevEventTime;
    public final UserManager userManager;
    public long viewCount;
    public final WakefulnessLifecycle wakefulnessLifecycle;

    static {
        new Companion(null);
        KEY = new int[]{24, 24, 24, 25, 25, 25, 24, 25, 24, 25};
        SYSDUMP_COMPONENT_NAME = new ComponentName("com.sec.android.app.servicemodeapp", "com.sec.android.app.servicemodeapp.SysDump");
    }

    public KeyguardSysDumpTrigger(Context context, DelayableExecutor delayableExecutor, Handler handler, PowerManager powerManager, UserManager userManager, BroadcastDispatcher broadcastDispatcher, WakefulnessLifecycle wakefulnessLifecycle, CommonNotifCollection commonNotifCollection) {
        this.context = context;
        this.executor = delayableExecutor;
        this.bgHandler = handler;
        this.powerManager = powerManager;
        this.userManager = userManager;
        this.wakefulnessLifecycle = wakefulnessLifecycle;
        new Timer();
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.keyguard.KeyguardSysDumpTrigger$receiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String str;
                Uri data;
                String str2 = null;
                if (intent != null) {
                    str = intent.getAction();
                } else {
                    str = null;
                }
                if (intent != null && (data = intent.getData()) != null) {
                    str2 = data.getSchemeSpecificPart();
                }
                if (str != null && Intrinsics.areEqual("com.salab.issuetracker", str2)) {
                    if (Intrinsics.areEqual(str, "android.intent.action.PACKAGE_ADDED")) {
                        KeyguardSysDumpTrigger.this.isEnabled = true;
                    } else if (Intrinsics.areEqual(str, "android.intent.action.PACKAGE_REMOVED")) {
                        KeyguardSysDumpTrigger.this.isEnabled = false;
                    }
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("pkg receiver ", KeyguardSysDumpTrigger.this.isEnabled(), "KeyguardSysDumpTrigger");
                }
            }
        };
        this.isDebug = DeviceType.getDebugLevel() == 1;
        ((ExecutorImpl) delayableExecutor).execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSysDumpTrigger.1
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSysDumpTrigger keyguardSysDumpTrigger = KeyguardSysDumpTrigger.this;
                boolean z = false;
                try {
                    keyguardSysDumpTrigger.context.getPackageManager().getPackageInfo("com.salab.issuetracker", 0);
                    z = true;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                keyguardSysDumpTrigger.isEnabled = z;
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isInstalled: ", KeyguardSysDumpTrigger.this.isEnabled(), "KeyguardSysDumpTrigger");
            }
        });
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        Unit unit = Unit.INSTANCE;
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, broadcastReceiver, intentFilter, null, null, 0, null, 60);
    }

    public final int[] getKeys() {
        return KEY;
    }

    public final String getTriggerMsg(int i) {
        String str;
        String str2;
        if (i > 1) {
            str = "systemui heap dump - ";
        } else {
            str = "lockscreen dump - ";
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        str2 = "";
                    } else {
                        str2 = ValueAnimator$$ExternalSyntheticOutline0.m("too many views. notiCount : 0. totalView : ", this.viewCount);
                    }
                } else {
                    str2 = "saved heap dump";
                }
            } else {
                str2 = "input keys";
            }
        } else {
            str2 = "timeout of app resume";
        }
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, str2);
    }

    public final boolean isEnabled() {
        if (this.isEnabled && this.isDebug) {
            return true;
        }
        return false;
    }

    public final void sendIntent(final int i, final long j) {
        if (!isEnabled()) {
            return;
        }
        final int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        final boolean isUserUnlocked = this.userManager.isUserUnlocked(0);
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("sendIntent reason=", i, " currentUser=", currentUser, " userUnlocked=");
        m.append(isUserUnlocked);
        Log.d("KeyguardSysDumpTrigger", m.toString());
        this.powerManager.userActivity(SystemClock.uptimeMillis(), false);
        this.bgHandler.post(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSysDumpTrigger$sendIntent$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                if (currentUser == 0 && isUserUnlocked) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    Context context = this.context;
                    Intent intent = new Intent("com.sec.android.ISSUE_TRACKER_ACTION");
                    KeyguardSysDumpTrigger keyguardSysDumpTrigger = this;
                    int i2 = i;
                    long j2 = j;
                    intent.setPackage("com.salab.issuetracker");
                    intent.putExtra("ERRCODE", -125);
                    intent.putExtra("ERRNAME", keyguardSysDumpTrigger.getTriggerMsg(i2));
                    intent.putExtra("ERRPKG", "com.android.systemui");
                    intent.putExtra("ERRMSG", keyguardSysDumpTrigger.getTriggerMsg(i2) + " / " + LogUtil.makeDateTimeStr(j2));
                    intent.putExtra("EXTLOG", keyguardSysDumpTrigger.dumpPath);
                    context.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
                    Toast.makeText(this.context, "dump in progress", 0).show();
                    int i3 = i;
                    if (i3 == 2 || i3 == 3) {
                        KeyguardSysDumpTrigger keyguardSysDumpTrigger2 = this;
                        keyguardSysDumpTrigger2.dumpPath = null;
                        keyguardSysDumpTrigger2.viewCount = 0L;
                        return;
                    }
                    return;
                }
                if (!z) {
                    Intent intent2 = new Intent();
                    intent2.setComponent(KeyguardSysDumpTrigger.SYSDUMP_COMPONENT_NAME);
                    intent2.setFlags(335544320);
                    intent2.putExtra("occluded", true);
                    try {
                        ActivityTaskManager.getService().startActivityAsUser((IApplicationThread) null, this.context.getBasePackageName(), this.context.getAttributionTag(), intent2, intent2.resolveTypeIfNeeded(this.context.getContentResolver()), (IBinder) null, (String) null, 0, QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE, (ProfilerInfo) null, (Bundle) null, UserHandle.CURRENT.getIdentifier());
                    } catch (RemoteException e) {
                        android.util.Log.w("KeyguardSysDumpTrigger", "unable to start activity", e);
                    }
                }
            }
        });
    }

    public final synchronized void start(final int i, long j, final long j2) {
        synchronized (this) {
            ExecutorImpl.ExecutionToken executionToken = this.cancelExecToken;
            if (executionToken != null) {
                executionToken.run();
                this.cancelExecToken = null;
                android.util.Log.d("KeyguardSysDumpTrigger", "cancel");
            }
        }
        this.cancelExecToken = this.executor.executeDelayed(j, new Runnable() { // from class: com.android.systemui.keyguard.KeyguardSysDumpTrigger$start$1
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSysDumpTrigger keyguardSysDumpTrigger = KeyguardSysDumpTrigger.this;
                int i2 = i;
                long j3 = j2;
                if (j3 <= 0) {
                    j3 = System.currentTimeMillis();
                }
                keyguardSysDumpTrigger.sendIntent(i2, j3);
            }
        });
        android.util.Log.d("KeyguardSysDumpTrigger", "start " + j);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getREASON_KEY_INPUT$annotations() {
        }

        public static /* synthetic */ void getREASON_TIMEOUT$annotations() {
        }
    }

    public static /* synthetic */ void isEnabled$annotations() {
    }
}
