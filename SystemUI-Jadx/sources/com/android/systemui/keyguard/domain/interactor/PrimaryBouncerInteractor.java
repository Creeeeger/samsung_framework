package com.android.systemui.keyguard.domain.interactor;

import android.content.Context;
import android.hardware.biometrics.BiometricSourceType;
import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainer;
import com.android.keyguard.KeyguardSecSecurityContainerController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.SecurityUtils;
import com.android.systemui.DejankUtils;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.classifier.FalsingCollectorImpl;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.DismissCallbackRegistry;
import com.android.systemui.keyguard.data.BouncerView;
import com.android.systemui.keyguard.data.BouncerViewDelegate;
import com.android.systemui.keyguard.data.BouncerViewImpl;
import com.android.systemui.keyguard.data.repository.KeyguardBouncerRepository;
import com.android.systemui.keyguard.data.repository.KeyguardBouncerRepositoryImpl;
import com.android.systemui.keyguard.data.repository.TrustRepository;
import com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor;
import com.android.systemui.keyguard.ui.binder.KeyguardBouncerViewBinder$bind$delegate$1;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.Assert;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PrimaryBouncerInteractor {
    public final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 bouncerExpansion;
    public final DismissCallbackRegistry dismissCallbackRegistry;
    public final FalsingCollector falsingCollector;
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 isBackButtonEnabled;
    public final ReadonlyStateFlow isInflated;
    public final PrimaryBouncerInteractor$special$$inlined$map$2 isInteractable;
    public final ReadonlyStateFlow isShowing;
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 keyguardAuthenticated;
    public final ReadonlyStateFlow keyguardPosition;
    public final KeyguardSecurityModel keyguardSecurityModel;
    public final KeyguardStateController keyguardStateController;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback;
    public final Handler mainHandler;
    public final ReadonlyStateFlow panelExpansionAmount;
    public boolean pendingBouncerViewDelegate;
    public final PrimaryBouncerCallbackInteractor primaryBouncerCallbackInteractor;
    public final ReadonlyStateFlow primaryBouncerUpdating;
    public final BouncerView primaryBouncerView;
    public final KeyguardBouncerRepository repository;
    public final PrimaryBouncerInteractor$special$$inlined$filter$2 resourceUpdateRequests;
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 showMessage;
    public final PrimaryBouncerInteractor$showRunnable$1 showRunnable;
    public final ReadonlyStateFlow sideFpsShowing;
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 startingDisappearAnimation;
    public final PrimaryBouncerInteractor$special$$inlined$map$1 startingToHide;
    public final TrustRepository trustRepository;

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

    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$showRunnable$1] */
    public PrimaryBouncerInteractor(KeyguardBouncerRepository keyguardBouncerRepository, BouncerView bouncerView, Handler handler, KeyguardStateController keyguardStateController, KeyguardSecurityModel keyguardSecurityModel, PrimaryBouncerCallbackInteractor primaryBouncerCallbackInteractor, FalsingCollector falsingCollector, DismissCallbackRegistry dismissCallbackRegistry, Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, TrustRepository trustRepository, FeatureFlags featureFlags, CoroutineScope coroutineScope) {
        this.repository = keyguardBouncerRepository;
        this.primaryBouncerView = bouncerView;
        this.mainHandler = handler;
        this.keyguardStateController = keyguardStateController;
        this.keyguardSecurityModel = keyguardSecurityModel;
        this.primaryBouncerCallbackInteractor = primaryBouncerCallbackInteractor;
        this.falsingCollector = falsingCollector;
        this.dismissCallbackRegistry = dismissCallbackRegistry;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.trustRepository = trustRepository;
        context.getResources().getInteger(R.integer.primary_bouncer_passive_auth_delay);
        this.showRunnable = new Runnable() { // from class: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$showRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                BouncerViewDelegate delegate = ((BouncerViewImpl) PrimaryBouncerInteractor.this.primaryBouncerView).getDelegate();
                if (delegate != null) {
                    ((KeyguardSecSecurityContainer) ((KeyguardBouncerViewBinder$bind$delegate$1) delegate).$securityContainerController.mView).setVisibility(0);
                }
                ((KeyguardBouncerRepositoryImpl) PrimaryBouncerInteractor.this.repository)._primaryBouncerShow.setValue(Boolean.TRUE);
                StateFlowImpl stateFlowImpl = ((KeyguardBouncerRepositoryImpl) PrimaryBouncerInteractor.this.repository)._primaryBouncerShowingSoon;
                Boolean bool = Boolean.FALSE;
                stateFlowImpl.setValue(bool);
                ((KeyguardBouncerRepositoryImpl) PrimaryBouncerInteractor.this.repository)._primaryBouncerUpdating.setValue(bool);
                Iterator it = PrimaryBouncerInteractor.this.primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
                while (it.hasNext()) {
                    ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it.next()).onVisibilityChanged(true);
                }
            }
        };
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) keyguardBouncerRepository;
        this.keyguardAuthenticated = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(keyguardBouncerRepositoryImpl.keyguardAuthenticated);
        this.isShowing = keyguardBouncerRepositoryImpl.primaryBouncerShow;
        final ReadonlyStateFlow readonlyStateFlow = keyguardBouncerRepositoryImpl.primaryBouncerStartingToHide;
        this.startingToHide = new PrimaryBouncerInteractor$special$$inlined$map$1(new Flow() { // from class: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2", f = "PrimaryBouncerInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2$1 r0 = (com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2$1 r0 = new com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L46
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        r6 = r5
                        java.lang.Boolean r6 = (java.lang.Boolean) r6
                        boolean r6 = r6.booleanValue()
                        if (r6 == 0) goto L46
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L46
                        return r1
                    L46:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        });
        this.isBackButtonEnabled = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(keyguardBouncerRepositoryImpl.isBackButtonEnabled);
        this.showMessage = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(keyguardBouncerRepositoryImpl.showMessage);
        this.startingDisappearAnimation = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(keyguardBouncerRepositoryImpl.primaryBouncerStartingDisappearAnimation);
        this.resourceUpdateRequests = new PrimaryBouncerInteractor$special$$inlined$filter$2(keyguardBouncerRepositoryImpl.resourceUpdateRequests);
        this.keyguardPosition = keyguardBouncerRepositoryImpl.keyguardPosition;
        ReadonlyStateFlow readonlyStateFlow2 = keyguardBouncerRepositoryImpl.panelExpansionAmount;
        this.panelExpansionAmount = readonlyStateFlow2;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(readonlyStateFlow2, keyguardBouncerRepositoryImpl.primaryBouncerShow, new PrimaryBouncerInteractor$bouncerExpansion$1(null));
        this.bouncerExpansion = flowKt__ZipKt$combine$$inlined$unsafeFlow$1;
        this.isInteractable = new PrimaryBouncerInteractor$special$$inlined$map$2(flowKt__ZipKt$combine$$inlined$unsafeFlow$1);
        this.sideFpsShowing = keyguardBouncerRepositoryImpl.sideFpsShowing;
        this.isInflated = keyguardBouncerRepositoryImpl.primaryBouncerInflate;
        this.primaryBouncerUpdating = keyguardBouncerRepositoryImpl.primaryBouncerUpdating;
        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
                PrimaryBouncerInteractor.this.updateSideFpsVisibility();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onStrongAuthStateChanged(int i) {
                PrimaryBouncerInteractor.this.updateSideFpsVisibility();
            }
        };
        this.keyguardUpdateMonitorCallback = keyguardUpdateMonitorCallback;
        keyguardUpdateMonitor.registerCallback(keyguardUpdateMonitorCallback);
        Flags flags = Flags.INSTANCE;
    }

    public final void hide() {
        Trace.beginSection("KeyguardBouncer#hide");
        if (isFullyShowing()) {
            SysUiStatsLog.write(63, 1);
            this.dismissCallbackRegistry.notifyDismissCancelled();
        }
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) this.repository;
        keyguardBouncerRepositoryImpl._primaryBouncerDisappearAnimation.setValue(null);
        FalsingCollectorImpl falsingCollectorImpl = (FalsingCollectorImpl) this.falsingCollector;
        if (falsingCollectorImpl.mSessionStarted) {
            falsingCollectorImpl.mProximitySensor.register(falsingCollectorImpl.mSensorEventListener);
        }
        ((KeyguardStateControllerImpl) this.keyguardStateController).notifyPrimaryBouncerShowing(false);
        boolean z = DejankUtils.STRICT_MODE_ENABLED;
        Assert.isMainThread();
        ArrayList arrayList = DejankUtils.sPendingRunnables;
        PrimaryBouncerInteractor$showRunnable$1 primaryBouncerInteractor$showRunnable$1 = this.showRunnable;
        arrayList.remove(primaryBouncerInteractor$showRunnable$1);
        DejankUtils.sHandler.removeCallbacks(primaryBouncerInteractor$showRunnable$1);
        this.mainHandler.removeCallbacks(primaryBouncerInteractor$showRunnable$1);
        StateFlowImpl stateFlowImpl = keyguardBouncerRepositoryImpl._primaryBouncerUpdating;
        Boolean bool = Boolean.FALSE;
        stateFlowImpl.setValue(bool);
        keyguardBouncerRepositoryImpl._primaryBouncerShowingSoon.setValue(bool);
        keyguardBouncerRepositoryImpl._primaryBouncerShow.setValue(bool);
        keyguardBouncerRepositoryImpl._panelExpansionAmount.setValue(Float.valueOf(1.0f));
        Iterator it = this.primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
        while (it.hasNext()) {
            ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it.next()).onVisibilityChanged(false);
        }
        Trace.endSection();
    }

    public final boolean isAnimatingAway() {
        if (((KeyguardBouncerRepositoryImpl) this.repository).primaryBouncerStartingDisappearAnimation.getValue() != null) {
            return true;
        }
        return false;
    }

    public final boolean isBouncerShowing() {
        return ((Boolean) ((KeyguardBouncerRepositoryImpl) this.repository).primaryBouncerShow.getValue()).booleanValue();
    }

    public final boolean isFullyShowing() {
        boolean z;
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) this.repository;
        if (!((Boolean) keyguardBouncerRepositoryImpl.primaryBouncerShowingSoon.getValue()).booleanValue() && !isBouncerShowing()) {
            return false;
        }
        if (((Number) keyguardBouncerRepositoryImpl.panelExpansionAmount.getValue()).floatValue() == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (!z || keyguardBouncerRepositoryImpl.primaryBouncerStartingDisappearAnimation.getValue() != null) {
            return false;
        }
        return true;
    }

    public final boolean isInTransit() {
        boolean z;
        boolean z2;
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) this.repository;
        if (((Boolean) keyguardBouncerRepositoryImpl.primaryBouncerShowingSoon.getValue()).booleanValue()) {
            return true;
        }
        if (((Number) keyguardBouncerRepositoryImpl.panelExpansionAmount.getValue()).floatValue() == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (((Number) keyguardBouncerRepositoryImpl.panelExpansionAmount.getValue()).floatValue() == 0.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSwipeBouncer() {
        if (this.keyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser()) == KeyguardSecurityModel.SecurityMode.Swipe) {
            return true;
        }
        return false;
    }

    public final void setBackButtonEnabled(boolean z) {
        ((KeyguardBouncerRepositoryImpl) this.repository)._isBackButtonEnabled.setValue(Boolean.valueOf(z));
    }

    public final void setDismissAction(ActivityStarter.OnDismissAction onDismissAction, Runnable runnable) {
        BouncerViewDelegate delegate = ((BouncerViewImpl) this.primaryBouncerView).getDelegate();
        if (delegate != null) {
            ((KeyguardBouncerViewBinder$bind$delegate$1) delegate).$securityContainerController.setOnDismissAction(onDismissAction, runnable);
        }
    }

    public final void setPanelExpansion(float f) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (0.0f == f) {
            z = true;
        } else {
            z = false;
        }
        boolean z4 = !z;
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) this.repository;
        if (keyguardBouncerRepositoryImpl.primaryBouncerStartingDisappearAnimation.getValue() == null) {
            keyguardBouncerRepositoryImpl._panelExpansionAmount.setValue(Float.valueOf(f));
        }
        if (f == 1.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        PrimaryBouncerCallbackInteractor primaryBouncerCallbackInteractor = this.primaryBouncerCallbackInteractor;
        if (z2) {
            hide();
            DejankUtils.postAfterTraversal(new Runnable() { // from class: com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor$setPanelExpansion$1
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator it = PrimaryBouncerInteractor.this.primaryBouncerCallbackInteractor.resetCallbacks.iterator();
                    if (!it.hasNext()) {
                        return;
                    }
                    ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
                    throw null;
                }
            });
            Iterator it = primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
            while (it.hasNext()) {
                ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it.next()).onFullyHidden();
            }
        } else {
            if (f == 0.0f) {
                z3 = true;
            }
            if (!z3) {
                Iterator it2 = primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
                while (it2.hasNext()) {
                    ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it2.next()).onStartingToHide();
                }
                keyguardBouncerRepositoryImpl._primaryBouncerStartingToHide.setValue(Boolean.TRUE);
            }
        }
        if (z4) {
            Iterator it3 = primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
            while (it3.hasNext()) {
                ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it3.next()).onExpansionChanged(f);
            }
        }
    }

    public final void show(boolean z) {
        boolean z2;
        KeyguardBouncerRepositoryImpl keyguardBouncerRepositoryImpl = (KeyguardBouncerRepositoryImpl) this.repository;
        keyguardBouncerRepositoryImpl._keyguardAuthenticated.setValue(null);
        StateFlowImpl stateFlowImpl = keyguardBouncerRepositoryImpl._primaryBouncerStartingToHide;
        Boolean bool = Boolean.FALSE;
        stateFlowImpl.setValue(bool);
        boolean isBouncerShowing = isBouncerShowing();
        KeyguardSecurityModel keyguardSecurityModel = this.keyguardSecurityModel;
        boolean z3 = false;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        if ((!isBouncerShowing && !((Boolean) keyguardBouncerRepositoryImpl.primaryBouncerShowingSoon.getValue()).booleanValue()) || (!SecurityUtils.checkFullscreenBouncer(keyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser())) && !keyguardUpdateMonitor.isDismissActionExist())) {
            z2 = false;
        } else {
            z2 = true;
        }
        Trace.beginSection("KeyguardBouncer#show");
        keyguardBouncerRepositoryImpl._primaryBouncerScrimmed.setValue(Boolean.valueOf(z));
        if (z) {
            setPanelExpansion(0.0f);
        }
        if (SecurityUtils.checkFullscreenBouncer(keyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser()))) {
            keyguardBouncerRepositoryImpl._primaryBouncerInflate.setValue(Boolean.TRUE);
        }
        if (z2) {
            keyguardBouncerRepositoryImpl._primaryBouncerUpdating.setValue(Boolean.TRUE);
            keyguardBouncerRepositoryImpl._primaryBouncerShow.setValue(bool);
        }
        BouncerViewImpl bouncerViewImpl = (BouncerViewImpl) this.primaryBouncerView;
        if (bouncerViewImpl.getDelegate() == null) {
            Log.d("PrimaryBouncerInteractor", "BouncerViewDelegate is null");
            this.pendingBouncerViewDelegate = true;
        }
        BouncerViewDelegate delegate = bouncerViewImpl.getDelegate();
        if (delegate != null) {
            int currentUser = KeyguardUpdateMonitor.getCurrentUser();
            KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = ((KeyguardBouncerViewBinder$bind$delegate$1) delegate).$securityContainerController;
            if (keyguardSecSecurityContainerController.mKeyguardSecurityCallback.dismiss(false, currentUser, false, keyguardSecSecurityContainerController.mCurrentSecurityMode)) {
                z3 = true;
            }
        }
        if (z3) {
            return;
        }
        if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardUpdateMonitor.isIccBlockedPermanently()) {
            if (!SecurityUtils.checkFullscreenBouncer(keyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser()))) {
                Log.d("PrimaryBouncerInteractor", "do not show by permanent state.");
                return;
            }
            Log.d("PrimaryBouncerInteractor", "Permanent state but it have to show bouncer");
        }
        keyguardBouncerRepositoryImpl._primaryBouncerShowingSoon.setValue(Boolean.TRUE);
        DejankUtils.postAfterTraversal(this.showRunnable);
        ((KeyguardStateControllerImpl) this.keyguardStateController).notifyPrimaryBouncerShowing(true);
        Iterator it = this.primaryBouncerCallbackInteractor.expansionCallbacks.iterator();
        while (it.hasNext()) {
            ((PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback) it.next()).onStartingToShow();
        }
        Trace.endSection();
    }

    public final void updateSideFpsVisibility() {
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        boolean isFingerprintDetectionRunning = keyguardUpdateMonitor.isFingerprintDetectionRunning();
        boolean isUnlockingWithFingerprintAllowed = keyguardUpdateMonitor.isUnlockingWithFingerprintAllowed();
        isBouncerShowing();
        boolean isBouncerShowing = isBouncerShowing();
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("sideFpsToShow=false\nisBouncerShowing=", isBouncerShowing, "\nconfigEnabled=false\nfpsDetectionRunning=", isFingerprintDetectionRunning, "\nisUnlockingWithFpAllowed="), isUnlockingWithFingerprintAllowed, "\nisAnimatingAway=", isAnimatingAway(), "PrimaryBouncerInteractor");
        ((KeyguardBouncerRepositoryImpl) this.repository)._sideFpsShowing.setValue(Boolean.FALSE);
    }

    public final boolean willDismissWithAction() {
        boolean z;
        BouncerViewDelegate delegate = ((BouncerViewImpl) this.primaryBouncerView).getDelegate();
        if (delegate == null) {
            return false;
        }
        KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = ((KeyguardBouncerViewBinder$bind$delegate$1) delegate).$securityContainerController;
        if (keyguardSecSecurityContainerController.mDismissAction == null && keyguardSecSecurityContainerController.mCancelAction == null) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean willRunDismissFromKeyguard() {
        BouncerViewDelegate delegate = ((BouncerViewImpl) this.primaryBouncerView).getDelegate();
        if (delegate == null || !((KeyguardBouncerViewBinder$bind$delegate$1) delegate).$securityContainerController.mWillRunDismissFromKeyguard) {
            return false;
        }
        return true;
    }
}
