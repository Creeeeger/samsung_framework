package com.android.systemui.shade;

import android.app.SemStatusBarManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.UserHandle;
import android.util.Log;
import com.android.systemui.BootAnimationFinishedCache;
import com.android.systemui.BootAnimationFinishedCacheImpl;
import com.android.systemui.Dependency;
import com.android.systemui.UiOffloadThread;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.util.DeviceState;
import java.util.HashMap;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPanelExpansionStateNotifier {
    public final Context mContext;
    public SemStatusBarManager mStatusBarManager;
    public final HashMap mTicketGroup = new HashMap();
    public final SecPanelExpansionStateModel mModel = new SecPanelExpansionStateModel(new Consumer() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            final boolean z;
            final Intent intent;
            int i;
            final SecPanelExpansionStateNotifier secPanelExpansionStateNotifier = SecPanelExpansionStateNotifier.this;
            final int intValue = ((Integer) obj).intValue();
            SecPanelExpansionStateModel secPanelExpansionStateModel = secPanelExpansionStateNotifier.mModel;
            if (secPanelExpansionStateModel.panelPrvOpenState == 0 && ((i = secPanelExpansionStateModel.panelOpenState) == 1 || i == 2)) {
                z = true;
            } else {
                z = false;
            }
            secPanelExpansionStateNotifier.mTicketGroup.values().forEach(new Consumer() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    ((SecPanelExpansionStateNotifier.SecPanelExpansionStateTicket) obj2).onSecPanelExpansionStateChanged(intValue, z);
                }
            });
            boolean isTesting = DeviceState.isTesting();
            UiOffloadThread uiOffloadThread = secPanelExpansionStateNotifier.mUiOffloadThread;
            if (!isTesting) {
                if (intValue != 0) {
                    if (intValue != 1) {
                        if (intValue != 2) {
                            Log.e("SecPanelExpansionStateNotifier", "Invalid panel open state");
                            intent = null;
                        } else {
                            intent = new Intent("com.samsung.systemui.statusbar.EXPANDED");
                        }
                    } else {
                        intent = new Intent("com.samsung.systemui.statusbar.ANIMATING");
                    }
                } else {
                    intent = new Intent("com.samsung.systemui.statusbar.COLLAPSED");
                }
                if (intent != null) {
                    uiOffloadThread.execute(new Runnable() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            SecPanelExpansionStateNotifier secPanelExpansionStateNotifier2 = SecPanelExpansionStateNotifier.this;
                            secPanelExpansionStateNotifier2.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                        }
                    });
                }
            }
            if (intValue != 1) {
                uiOffloadThread.execute(new Runnable() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z2;
                        SecPanelExpansionStateNotifier secPanelExpansionStateNotifier2 = SecPanelExpansionStateNotifier.this;
                        int i2 = intValue;
                        if (secPanelExpansionStateNotifier2.mStatusBarManager == null) {
                            secPanelExpansionStateNotifier2.mStatusBarManager = (SemStatusBarManager) secPanelExpansionStateNotifier2.mContext.getSystemService("sem_statusbar");
                        }
                        SemStatusBarManager semStatusBarManager = secPanelExpansionStateNotifier2.mStatusBarManager;
                        if (semStatusBarManager != null) {
                            if (i2 == 2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            semStatusBarManager.setPanelExpandState(z2);
                        }
                    }
                });
            }
        }
    }, (Handler) Dependency.get(Dependency.MAIN_HANDLER));
    public final UiOffloadThread mUiOffloadThread = (UiOffloadThread) Dependency.get(UiOffloadThread.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SecPanelExpansionStateTicket {
        String getName();

        void onSecPanelExpansionStateChanged(int i, boolean z);
    }

    public SecPanelExpansionStateNotifier(Context context, final ShadeExpansionStateManager shadeExpansionStateManager, final StatusBarStateController statusBarStateController, final WakefulnessLifecycle wakefulnessLifecycle, BootAnimationFinishedCache bootAnimationFinishedCache) {
        this.mContext = context;
        ((BootAnimationFinishedCacheImpl) bootAnimationFinishedCache).addListener(new BootAnimationFinishedCache.BootAnimationFinishedListener() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1
            @Override // com.android.systemui.BootAnimationFinishedCache.BootAnimationFinishedListener
            public final void onBootAnimationFinished() {
                final SecPanelExpansionStateNotifier secPanelExpansionStateNotifier = SecPanelExpansionStateNotifier.this;
                secPanelExpansionStateNotifier.getClass();
                StatusBarStateController.StateListener stateListener = new StatusBarStateController.StateListener() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier.1
                    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
                    public final void onStateChanged(int i) {
                        SecPanelExpansionStateNotifier.this.mModel.setStatusBarState(i);
                    }
                };
                StatusBarStateController statusBarStateController2 = statusBarStateController;
                statusBarStateController2.addCallback(stateListener);
                secPanelExpansionStateNotifier.mModel.setStatusBarState(statusBarStateController2.getState());
                shadeExpansionStateManager.addExpansionListener(new ShadeExpansionListener() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3
                    @Override // com.android.systemui.shade.ShadeExpansionListener
                    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
                        boolean z;
                        SecPanelExpansionStateNotifier secPanelExpansionStateNotifier2 = SecPanelExpansionStateNotifier.this;
                        secPanelExpansionStateNotifier2.getClass();
                        SecPanelExpansionStateModel secPanelExpansionStateModel = secPanelExpansionStateNotifier2.mModel;
                        boolean z2 = secPanelExpansionStateModel.panelExpanded;
                        boolean z3 = shadeExpansionChangeEvent.expanded;
                        if (z2 != z3) {
                            secPanelExpansionStateModel.panelExpanded = z3;
                            secPanelExpansionStateModel.updatePanelOpenState();
                        }
                        float f = secPanelExpansionStateModel.panelFirstDepthFraction;
                        float f2 = shadeExpansionChangeEvent.fraction;
                        if (f == f2) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            secPanelExpansionStateModel.panelFirstDepthFraction = f2;
                            secPanelExpansionStateModel.updatePanelOpenState();
                        }
                    }
                });
                wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.shade.SecPanelExpansionStateNotifier.2
                    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                    public final void onFinishedGoingToSleep() {
                        SecPanelExpansionStateNotifier.this.mModel.setLcdOn(false);
                    }

                    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                    public final void onFinishedWakingUp() {
                        SecPanelExpansionStateNotifier.this.mModel.setLcdOn(true);
                    }

                    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                    public final void onStartedGoingToSleep() {
                        SecPanelExpansionStateNotifier.this.mModel.setLcdOn(false);
                    }

                    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                    public final void onStartedWakingUp() {
                        SecPanelExpansionStateNotifier.this.mModel.setLcdOn(true);
                    }
                });
            }
        });
    }

    public final void registerTicket(SecPanelExpansionStateTicket secPanelExpansionStateTicket) {
        Log.d("SecPanelExpansionStateNotifier", "registerTicket() name:" + secPanelExpansionStateTicket.getName());
        this.mTicketGroup.put(secPanelExpansionStateTicket.getName(), secPanelExpansionStateTicket);
    }
}
