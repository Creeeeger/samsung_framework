package com.android.systemui.keyguard;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardViewController;
import com.android.systemui.LsRune;
import com.android.systemui.Rune;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.uithreadmonitor.BinderCallMonitor;
import com.android.systemui.uithreadmonitor.BinderCallMonitorConstants;
import com.android.systemui.uithreadmonitor.BinderCallMonitorImpl;
import com.android.systemui.uithreadmonitor.LooperSlowLogController;
import com.android.systemui.uithreadmonitor.LooperSlowLogControllerImpl;
import com.android.systemui.util.LogUtil;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardFoldControllerImpl implements KeyguardFoldController {
    public final BinderCallMonitor binderCallMonitor;
    public final Context context;
    public final KeyguardFoldControllerDependency dependency;
    public final KeyguardFoldControllerConfig foldConfig;
    public int foldOpenState;
    public Handler handler;
    public volatile long initShowTime;
    public final LooperSlowLogController looperSlowLogController;
    public final KeyguardUpdateMonitor updateMonitor;
    public final Lazy viewControllerLazy;
    public final Lazy viewMediatorLazy;
    public int wakeReason;
    public final kotlin.Lazy viewMediator$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.KeyguardFoldControllerImpl$viewMediator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return (KeyguardViewMediator) KeyguardFoldControllerImpl.this.viewMediatorLazy.get();
        }
    });
    public final kotlin.Lazy viewMediatorHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.KeyguardFoldControllerImpl$viewMediatorHelper$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return KeyguardFoldControllerImpl.this.getViewMediator().mHelper;
        }
    });
    public int foldState = -1;
    public final List highRankedStateListeners = new ArrayList();
    public final List normalRankedStateListeners = new ArrayList();
    public final List foldOpenModeListeners = new ArrayList();

    public KeyguardFoldControllerImpl(Context context, KeyguardFoldControllerConfig keyguardFoldControllerConfig, KeyguardFoldControllerDependency keyguardFoldControllerDependency, WakefulnessLifecycle wakefulnessLifecycle, KeyguardUpdateMonitor keyguardUpdateMonitor, BinderCallMonitor binderCallMonitor, LooperSlowLogController looperSlowLogController, Lazy lazy, Lazy lazy2) {
        this.context = context;
        this.foldConfig = keyguardFoldControllerConfig;
        this.dependency = keyguardFoldControllerDependency;
        this.updateMonitor = keyguardUpdateMonitor;
        this.binderCallMonitor = binderCallMonitor;
        this.looperSlowLogController = looperSlowLogController;
        this.viewControllerLazy = lazy;
        this.viewMediatorLazy = lazy2;
        if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK) {
            wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.keyguard.KeyguardFoldControllerImpl.1
                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onFinishedWakingUp() {
                    KeyguardFoldControllerImpl keyguardFoldControllerImpl = KeyguardFoldControllerImpl.this;
                    if (!((KeyguardViewController) keyguardFoldControllerImpl.viewControllerLazy.get()).isBouncerShowing()) {
                        keyguardFoldControllerImpl.resetFoldOpenState(false);
                    }
                }
            });
        }
    }

    public final boolean addCallback(KeyguardFoldController.StateListener stateListener, int i) {
        return addCallback(stateListener, i, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void changeFoldState(boolean z) {
        boolean z2;
        boolean z3;
        String valueOf;
        boolean z4 = !z;
        int i = this.foldState;
        if (i != -1 && i == z4) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (i == -1) {
            z3 = 1;
        } else {
            z3 = 0;
        }
        KeyguardFoldControllerDependency keyguardFoldControllerDependency = this.dependency;
        if (((KeyguardFoldControllerConfigImpl) this.foldConfig).isDebug()) {
            if (z4 != -1) {
                if (z4 != 0) {
                    if (z4 != 1) {
                        valueOf = "";
                    } else {
                        valueOf = "FOLD_OPEN";
                    }
                } else {
                    valueOf = "FOLD_CLOSE";
                }
            } else {
                valueOf = "FOLD_NONE";
            }
        } else {
            valueOf = String.valueOf(z4 ? 1 : 0);
        }
        ((KeyguardFoldControllerDependencyImpl) keyguardFoldControllerDependency).getClass();
        Log.d("KeyguardFoldController", "changeFoldState: foldState=" + valueOf + ", changed=" + z2);
        if (z2) {
            this.foldState = z4 ? 1 : 0;
            if (((KeyguardFoldControllerConfigImpl) this.foldConfig).isDebug()) {
                ((LooperSlowLogControllerImpl) this.looperSlowLogController).enable(2, 10L, 20L, 3000L, false, null);
            }
            ((KeyguardFoldControllerConfigImpl) this.foldConfig).getClass();
            if (Rune.SYSUI_BINDER_CALL_MONITOR) {
                BinderCallMonitorImpl binderCallMonitorImpl = (BinderCallMonitorImpl) this.binderCallMonitor;
                binderCallMonitorImpl.getClass();
                binderCallMonitorImpl.startMonitoring(4, BinderCallMonitorConstants.MAX_DURATION / 1000000, 3000L);
            }
            Handler handler = this.handler;
            if (handler == null) {
                handler = null;
            }
            if (handler.hasMessages(1003)) {
                ((KeyguardFoldControllerDependencyImpl) this.dependency).getClass();
                Log.d("KeyguardFoldController", "notifyFoldStateChanged remove previous msg");
                handler.removeMessages(1003);
            }
            handler.sendMessageAtFrontOfQueue(handler.obtainMessage(1003, z4 ? 1 : 0, !z3));
            if (z3 == 0 && z4 != 0 && this.initShowTime > 0 && (!this.updateMonitor.isSecure() || this.updateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()))) {
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = (KeyguardViewMediatorHelperImpl) ((KeyguardViewMediatorHelper) this.viewMediatorHelper$delegate.getValue());
                keyguardViewMediatorHelperImpl.getViewMediatorProvider().resetPendingLock.invoke();
                keyguardViewMediatorHelperImpl.removeShowMsg();
            }
            onFoldStateChanged(this.highRankedStateListeners, z4, z3, false);
        }
    }

    public final String getFoldOpenModeStr(int i) {
        if (((KeyguardFoldControllerConfigImpl) this.foldConfig).isDebug()) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return "";
                        }
                        return "MODE_WAKE_UNLOCK";
                    }
                    return "MODE_UNLOCK";
                }
                return "MODE_BOUNCER";
            }
            return "MODE_RESET";
        }
        return String.valueOf(i);
    }

    public final KeyguardViewMediator getViewMediator() {
        return (KeyguardViewMediator) this.viewMediator$delegate.getValue();
    }

    public final boolean isBouncerOnFoldOpened() {
        if (this.foldOpenState == 1) {
            return true;
        }
        return false;
    }

    public final boolean isFoldOpened() {
        if (this.foldState == 1) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockOnFoldOpened() {
        int i = this.foldOpenState;
        if (i != 2 && i != 3) {
            return false;
        }
        return true;
    }

    public final void onFoldStateChanged(List list, final boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) list).iterator();
        while (true) {
            boolean z4 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((RankedStateListener) next).skipInitState && z2) {
                z4 = false;
            }
            if (z4) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final RankedStateListener rankedStateListener = (RankedStateListener) it2.next();
            if (z3) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onFoldStateChanged ", rankedStateListener.rank, " ");
                m.append(rankedStateListener.stateListener);
                String sb = m.toString();
                Runnable runnable = new Runnable() { // from class: com.android.systemui.keyguard.KeyguardFoldControllerImpl$onFoldStateChanged$2$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RankedStateListener.this.stateListener.onFoldStateChanged(z);
                    }
                };
                ((KeyguardFoldControllerDependencyImpl) this.dependency).getClass();
                int startTime = LogUtil.startTime(-1);
                runnable.run();
                LogUtil.internalEndTime(startTime, 10, null, "LooperSlow", sb, Arrays.copyOf(new Object[]{new Object[0]}, 1));
            } else {
                rankedStateListener.stateListener.onFoldStateChanged(z);
            }
        }
    }

    public final void resetFoldOpenState(boolean z) {
        boolean z2;
        if (z && isBouncerOnFoldOpened()) {
            if (!getViewMediator().getViewMediatorCallback().isScreenOn() && !this.updateMonitor.isEarlyWakeUp()) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2) {
                ((KeyguardFoldControllerDependencyImpl) this.dependency).getClass();
                Log.d("KeyguardFoldController", "skip resetFoldOpenState");
                return;
            }
        }
        setFoldOpenState(0);
    }

    public final void setFoldOpenState(int i) {
        int i2 = this.foldOpenState;
        KeyguardFoldControllerDependency keyguardFoldControllerDependency = this.dependency;
        if (i2 == i) {
            if (((KeyguardFoldControllerConfigImpl) this.foldConfig).isDebug()) {
                String m = KeyAttributes$$ExternalSyntheticOutline0.m("already ", getFoldOpenModeStr(i));
                ((KeyguardFoldControllerDependencyImpl) keyguardFoldControllerDependency).getClass();
                Log.d("KeyguardFoldController", m);
                return;
            }
            return;
        }
        String m2 = FontProvider$$ExternalSyntheticOutline0.m("setFoldOpenState ", getFoldOpenModeStr(i2), " -> ", getFoldOpenModeStr(i));
        ((KeyguardFoldControllerDependencyImpl) keyguardFoldControllerDependency).getClass();
        Log.d("KeyguardFoldController", m2);
        int i3 = this.foldOpenState;
        this.foldOpenState = i;
        Iterator it = ((ArrayList) this.foldOpenModeListeners).iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            NotificationStackScrollLayoutController.AnonymousClass2 anonymousClass2 = (NotificationStackScrollLayoutController.AnonymousClass2) it.next();
            int i4 = this.foldOpenState;
            anonymousClass2.getClass();
            if (i4 == 0) {
                android.util.Log.d("StackScrollerController", "request stackScroller forceLayout");
                if (i3 == 2) {
                    z = true;
                }
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController.mHasDelayedForceLayout = z;
                NotificationStackScrollLayoutController.AnonymousClass1 anonymousClass1 = notificationStackScrollLayoutController.mForceLayoutTimeOutRunnable;
                NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
                if (z) {
                    android.util.Log.d("StackScrollerController", "do stackScroller DelayedForceLayout");
                    notificationStackScrollLayout.postDelayed(anonymousClass1, 5000L);
                } else {
                    android.util.Log.d("StackScrollerController", "do stackScroller forceLayout");
                    notificationStackScrollLayout.removeCallbacks(anonymousClass1);
                    notificationStackScrollLayout.forceLayout();
                }
            }
        }
        if (i == 0) {
            this.wakeReason = 0;
        }
    }

    public final boolean addCallback(KeyguardFoldController.StateListener stateListener, int i, boolean z) {
        List list;
        RankedStateListener rankedStateListener;
        if (i >= 1000) {
            list = this.highRankedStateListeners;
        } else {
            list = this.normalRankedStateListeners;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                rankedStateListener = null;
                break;
            }
            rankedStateListener = (RankedStateListener) it.next();
            if (Intrinsics.areEqual(rankedStateListener.stateListener, stateListener)) {
                break;
            }
        }
        if (rankedStateListener != null) {
            return false;
        }
        list.add(new RankedStateListener(stateListener, i, z));
        if (list.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.android.systemui.keyguard.KeyguardFoldControllerImpl$addCallback$lambda$9$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((RankedStateListener) obj).rank), Integer.valueOf(((RankedStateListener) obj2).rank));
                }
            });
        }
        return true;
    }
}
