package com.android.systemui.keyguard;

import android.os.SystemClock;
import android.view.View;
import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$initView$1;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeStateListener;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardVisibilityMonitor implements Runnable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ExecutorImpl.ExecutionToken cancelExecToken;
    public final DelayableExecutor executor;
    public final KeyguardTransitionInteractor interactor;
    public final Lazy keyguardStateController$delegate;
    public Consumer listener;
    public boolean needsExpand;
    public ShadeExpansionChangeEvent panelExpansionChangeEvent;
    public int panelState;
    public final CoroutineScope scope;
    public final dagger.Lazy shadeExpansionStateManagerLazy;
    public int curVisibility = -1;
    public final List visibilityChangedListeners = new ArrayList();
    public final List isExpandedChangedListeners = new ArrayList();
    public final List panelStateChangedListeners = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public KeyguardVisibilityMonitor(CoroutineScope coroutineScope, KeyguardTransitionInteractor keyguardTransitionInteractor, DelayableExecutor delayableExecutor, final dagger.Lazy lazy, dagger.Lazy lazy2) {
        this.scope = coroutineScope;
        this.interactor = keyguardTransitionInteractor;
        this.executor = delayableExecutor;
        this.shadeExpansionStateManagerLazy = lazy2;
        this.keyguardStateController$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.keyguard.KeyguardVisibilityMonitor$keyguardStateController$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (KeyguardStateController) dagger.Lazy.this.get();
            }
        });
    }

    public void addVisibilityChangedListener(IntConsumer intConsumer) {
        ArrayList arrayList = (ArrayList) this.visibilityChangedListeners;
        if (!arrayList.contains(intConsumer)) {
            arrayList.add(intConsumer);
        }
    }

    public final void cancelExecToken(boolean z) {
        ExecutorImpl.ExecutionToken executionToken = this.cancelExecToken;
        if (executionToken != null) {
            if (z) {
                Log.d("KeyguardVisible", "cancel");
            }
            executionToken.run();
            this.cancelExecToken = null;
        }
    }

    public final KeyguardStateController getKeyguardStateController() {
        return (KeyguardStateController) this.keyguardStateController$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void panelLog(com.android.systemui.shade.ShadeExpansionChangeEvent r7, java.lang.Integer r8) {
        /*
            r6 = this;
            com.android.systemui.shade.ShadeExpansionChangeEvent r0 = r6.panelExpansionChangeEvent
            if (r0 != 0) goto L5
            return
        L5:
            if (r8 == 0) goto Lc
            int r8 = r8.intValue()
            goto Le
        Lc:
            int r8 = r6.panelState
        Le:
            if (r7 != 0) goto L12
            com.android.systemui.shade.ShadeExpansionChangeEvent r7 = r6.panelExpansionChangeEvent
        L12:
            com.android.systemui.shade.ShadeExpansionChangeEvent r0 = r6.panelExpansionChangeEvent
            r1 = 0
            if (r0 == 0) goto L1e
            boolean r0 = r0.tracking
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            goto L1f
        L1e:
            r0 = r1
        L1f:
            if (r7 == 0) goto L28
            boolean r2 = r7.tracking
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            goto L29
        L28:
            r2 = r1
        L29:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            r2 = 1
            if (r0 == 0) goto L53
            com.android.systemui.shade.ShadeExpansionChangeEvent r0 = r6.panelExpansionChangeEvent
            if (r0 == 0) goto L3b
            boolean r0 = r0.expanded
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            goto L3c
        L3b:
            r0 = r1
        L3c:
            if (r7 == 0) goto L45
            boolean r3 = r7.expanded
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            goto L46
        L45:
            r3 = r1
        L46:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r3)
            if (r0 == 0) goto L53
            int r0 = r6.panelState
            if (r0 == r8) goto L51
            goto L53
        L51:
            r0 = 0
            goto L54
        L53:
            r0 = r2
        L54:
            if (r0 == 0) goto Lbf
            int r6 = r6.panelState
            java.lang.String r0 = "OPEN"
            r3 = 2
            java.lang.String r4 = "OPENING"
            java.lang.String r5 = "CLOSED"
            if (r6 == 0) goto L6e
            if (r6 == r2) goto L6c
            if (r6 == r3) goto L6a
            java.lang.String r6 = java.lang.String.valueOf(r6)
            goto L6f
        L6a:
            r6 = r0
            goto L6f
        L6c:
            r6 = r4
            goto L6f
        L6e:
            r6 = r5
        L6f:
            if (r8 == 0) goto L7c
            if (r8 == r2) goto L7a
            if (r8 == r3) goto L7d
            java.lang.String r0 = java.lang.String.valueOf(r8)
            goto L7d
        L7a:
            r0 = r4
            goto L7d
        L7c:
            r0 = r5
        L7d:
            if (r7 == 0) goto L86
            boolean r8 = r7.tracking
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
            goto L87
        L86:
            r8 = r1
        L87:
            if (r7 == 0) goto L90
            boolean r2 = r7.expanded
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            goto L91
        L90:
            r2 = r1
        L91:
            if (r7 == 0) goto L99
            float r7 = r7.fraction
            java.lang.Float r1 = java.lang.Float.valueOf(r7)
        L99:
            java.lang.String r7 = "go panelState: "
            java.lang.String r3 = " -> "
            java.lang.String r4 = " tracking="
            java.lang.StringBuilder r6 = com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(r7, r6, r3, r0, r4)
            r6.append(r8)
            java.lang.String r7 = ", expanded="
            r6.append(r7)
            r6.append(r2)
            java.lang.String r7 = ", fraction="
            r6.append(r7)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "KeyguardVisible"
            android.util.Log.d(r7, r6)
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardVisibilityMonitor.panelLog(com.android.systemui.shade.ShadeExpansionChangeEvent, java.lang.Integer):void");
    }

    public final void registerMonitor(View view, SecNotificationShadeWindowControllerHelperImpl$initView$1 secNotificationShadeWindowControllerHelperImpl$initView$1) {
        NotificationShadeWindowView notificationShadeWindowView;
        this.listener = secNotificationShadeWindowControllerHelperImpl$initView$1;
        if (view instanceof NotificationShadeWindowView) {
            notificationShadeWindowView = (NotificationShadeWindowView) view;
        } else {
            notificationShadeWindowView = null;
        }
        if (notificationShadeWindowView != null) {
            notificationShadeWindowView.mVisibilityChangedListener = new IntConsumer() { // from class: com.android.systemui.keyguard.KeyguardVisibilityMonitor$registerMonitor$1$1
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    KeyguardVisibilityMonitor.this.visibilityChanged(i);
                }
            };
        }
        ((KeyguardStateControllerImpl) getKeyguardStateController()).addCallback(new KeyguardStateController.Callback() { // from class: com.android.systemui.keyguard.KeyguardVisibilityMonitor$registerMonitor$2
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardFadingAwayChanged() {
                int i = KeyguardVisibilityMonitor.$r8$clinit;
                KeyguardVisibilityMonitor keyguardVisibilityMonitor = KeyguardVisibilityMonitor.this;
                Log.d("KeyguardVisible", "onKeyguardFadingAwayChanged " + ((KeyguardStateControllerImpl) keyguardVisibilityMonitor.getKeyguardStateController()).mKeyguardFadingAway);
                if (!((KeyguardStateControllerImpl) keyguardVisibilityMonitor.getKeyguardStateController()).mKeyguardFadingAway) {
                    SystemClock.elapsedRealtime();
                }
                keyguardVisibilityMonitor.getClass();
            }

            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardGoingAwayChanged() {
                int i = KeyguardVisibilityMonitor.$r8$clinit;
                KeyguardVisibilityMonitor keyguardVisibilityMonitor = KeyguardVisibilityMonitor.this;
                Log.d("KeyguardVisible", "onKeyguardGoingAwayChanged " + ((KeyguardStateControllerImpl) keyguardVisibilityMonitor.getKeyguardStateController()).mKeyguardGoingAway);
                if (!((KeyguardStateControllerImpl) keyguardVisibilityMonitor.getKeyguardStateController()).mKeyguardGoingAway) {
                    SystemClock.elapsedRealtime();
                }
                keyguardVisibilityMonitor.getClass();
            }
        });
        ShadeExpansionStateManager shadeExpansionStateManager = (ShadeExpansionStateManager) this.shadeExpansionStateManagerLazy.get();
        shadeExpansionStateManager.addExpansionListener(new ShadeExpansionListener() { // from class: com.android.systemui.keyguard.KeyguardVisibilityMonitor$registerMonitor$3$1
            @Override // com.android.systemui.shade.ShadeExpansionListener
            public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
                int i = KeyguardVisibilityMonitor.$r8$clinit;
                KeyguardVisibilityMonitor keyguardVisibilityMonitor = KeyguardVisibilityMonitor.this;
                keyguardVisibilityMonitor.panelLog(shadeExpansionChangeEvent, null);
                keyguardVisibilityMonitor.panelExpansionChangeEvent = shadeExpansionChangeEvent;
            }
        });
        shadeExpansionStateManager.stateListeners.add(new ShadeStateListener() { // from class: com.android.systemui.keyguard.KeyguardVisibilityMonitor$registerMonitor$3$2
            @Override // com.android.systemui.shade.ShadeStateListener
            public final void onPanelStateChanged(int i) {
                Integer valueOf = Integer.valueOf(i);
                int i2 = KeyguardVisibilityMonitor.$r8$clinit;
                KeyguardVisibilityMonitor keyguardVisibilityMonitor = KeyguardVisibilityMonitor.this;
                keyguardVisibilityMonitor.panelLog(null, valueOf);
                if (keyguardVisibilityMonitor.panelState != i) {
                    Iterator it = CollectionsKt___CollectionsKt.toList(keyguardVisibilityMonitor.panelStateChangedListeners).iterator();
                    while (it.hasNext()) {
                        ((Function2) it.next()).invoke(Integer.valueOf(keyguardVisibilityMonitor.panelState), Integer.valueOf(i));
                    }
                }
                keyguardVisibilityMonitor.panelState = i;
            }
        });
        BuildersKt.launch$default(this.scope, null, null, new KeyguardVisibilityMonitor$registerMonitor$4(this, null), 3);
    }

    @Override // java.lang.Runnable
    public final void run() {
        cancelExecToken(false);
        Consumer consumer = this.listener;
        if (consumer == null) {
            consumer = null;
        }
        consumer.accept(Boolean.valueOf(this.needsExpand));
    }

    public final void start(boolean z) {
        Log.d("KeyguardVisible", "start needsExpand=" + z);
        cancelExecToken(false);
        this.needsExpand = z;
        this.cancelExecToken = this.executor.executeDelayed(1500L, this);
    }

    public final void visibilityChanged(int i) {
        int i2 = this.curVisibility;
        if (i2 == i) {
            return;
        }
        Log.d("KeyguardVisible", "visibilityChanged " + i2 + " -> " + i);
        Iterator it = CollectionsKt___CollectionsKt.toList(this.visibilityChangedListeners).iterator();
        while (it.hasNext()) {
            ((IntConsumer) it.next()).accept(i);
        }
        this.curVisibility = i;
    }
}
