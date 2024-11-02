package com.android.systemui.flags;

import android.os.PowerManager;
import com.android.systemui.flags.RestartDozeListener;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.time.SystemClock;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RestartDozeListener {
    public static final Companion Companion = new Companion(null);
    public static final String RESTART_SLEEP_KEY = "restart_nap_after_start";
    public final DelayableExecutor bgExecutor;
    public boolean inited;
    public final RestartDozeListener$listener$1 listener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.flags.RestartDozeListener$listener$1
        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onDozingChanged(final boolean z) {
            RestartDozeListener.Companion companion = RestartDozeListener.Companion;
            final RestartDozeListener restartDozeListener = RestartDozeListener.this;
            restartDozeListener.getClass();
            ((ExecutorImpl) restartDozeListener.bgExecutor).execute(new Runnable() { // from class: com.android.systemui.flags.RestartDozeListener$storeSleepState$1
                @Override // java.lang.Runnable
                public final void run() {
                    SecureSettings secureSettings = RestartDozeListener.this.settings;
                    RestartDozeListener.Companion.getClass();
                    String str = RestartDozeListener.RESTART_SLEEP_KEY;
                    boolean z2 = z;
                    secureSettings.putIntForUser(z2 ? 1 : 0, secureSettings.getUserId(), str);
                }
            });
        }
    };
    public final PowerManager powerManager;
    public final SecureSettings settings;
    public final StatusBarStateController statusBarStateController;
    public final SystemClock systemClock;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.flags.RestartDozeListener$listener$1] */
    public RestartDozeListener(SecureSettings secureSettings, StatusBarStateController statusBarStateController, PowerManager powerManager, SystemClock systemClock, DelayableExecutor delayableExecutor) {
        this.settings = secureSettings;
        this.statusBarStateController = statusBarStateController;
        this.powerManager = powerManager;
        this.systemClock = systemClock;
        this.bgExecutor = delayableExecutor;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getRESTART_SLEEP_KEY$annotations() {
        }
    }
}
