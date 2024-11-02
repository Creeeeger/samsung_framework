package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.widget.FrameLayout;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.SecurityUtils;
import com.android.keyguard.TrustGrantFlags;
import com.android.keyguard.ViewMediatorCallback;
import com.android.keyguard.dagger.KeyguardBouncerComponent;
import com.android.systemui.Rune;
import com.android.systemui.biometrics.domain.interactor.UdfpsOverlayInteractor;
import com.android.systemui.dock.DockManager;
import com.android.systemui.dreams.DreamOverlayStateController;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.data.BouncerView;
import com.android.systemui.keyguard.data.BouncerViewImpl;
import com.android.systemui.keyguard.data.repository.KeyguardBouncerRepositoryImpl;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor;
import com.android.systemui.keyguard.domain.interactor.PrimaryBouncerInteractor;
import com.android.systemui.keyguard.shared.model.BouncerShowMessageModel;
import com.android.systemui.keyguard.ui.binder.KeyguardBouncerViewBinder$bind$delegate$1;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBouncerViewModel;
import com.android.systemui.keyguard.ui.viewmodel.PrimaryBouncerToGoneTransitionViewModel;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;
import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$1;
import com.android.systemui.statusbar.LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.unfold.FoldAodAnimationController;
import com.android.systemui.unfold.SysUIUnfoldComponent;
import com.android.systemui.util.time.SystemClockImpl;
import dagger.Lazy;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SafeUIStatusBarKeyguardViewManager extends StatusBarKeyguardViewManager {
    public final ActivityStarter mActivityStarter;
    public ActivityStarter.OnDismissAction mAfterKeyguardGoneAction;
    public final ArrayList mAfterKeyguardGoneRunnables;
    public final AlternateBouncerInteractor mAlternateBouncerInteractor;
    public BiometricUnlockController mBiometricUnlockController;
    public final Set mCallbacks;
    public boolean mDismissActionWillAnimateOnKeyguard;
    public boolean mDozing;
    public final DreamOverlayStateController mDreamOverlayStateController;
    public final AnonymousClass1 mExpansionCallback;
    public boolean mFirstUpdate;
    public final FoldAodAnimationController mFoldAodAnimationController;
    public float mFraction;
    public boolean mGesturalNav;
    public boolean mGlobalActionsVisible;
    public boolean mIsBackCallbackRegistered;
    public Runnable mKeyguardGoneCancelAction;
    public final KeyguardSecurityModel mKeyguardSecurityModel;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateManager;
    public boolean mLastBouncerDismissible;
    public boolean mLastDozing;
    public boolean mLastGesturalNav;
    public boolean mLastGlobalActionsVisible;
    public boolean mLastOccluded;
    public boolean mLastPrimaryBouncerIsOrWillBeShowing;
    public boolean mLastPrimaryBouncerShowing;
    public boolean mLastPulsing;
    public boolean mLastRemoteInputActive;
    public boolean mLastScreenOffAnimationPlaying;
    public boolean mLastShowing;
    public final NotificationMediaManager mMediaManager;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public final AnonymousClass2 mOnBackInvokedCallback;
    public DismissWithActionRequest mPendingWakeupAction;
    public final SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1 mPrepareBouncerRunnable;
    public final PrimaryBouncerCallbackInteractor mPrimaryBouncerCallbackInteractor;
    public final PrimaryBouncerInteractor mPrimaryBouncerInteractor;
    public final BouncerView mPrimaryBouncerView;
    public boolean mPulsing;
    public float mQsExpansion;
    public boolean mRemoteInputActive;
    public final ViewGroup mSafeUIBouncerContainer;
    public boolean mScreenOffAnimationPlaying;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public boolean mTracking;
    public final boolean mUdfpsNewTouchDetectionEnabled;
    public final UdfpsOverlayInteractor mUdfpsOverlayInteractor;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;
    public final ViewMediatorCallback mViewMediatorCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DismissWithActionRequest {
        public final boolean afterKeyguardGone;
        public final Runnable cancelAction;
        public final ActivityStarter.OnDismissAction dismissAction;
        public final String message;

        public DismissWithActionRequest(ActivityStarter.OnDismissAction onDismissAction, Runnable runnable, boolean z, String str) {
            this.dismissAction = onDismissAction;
            this.cancelAction = runnable;
            this.afterKeyguardGone = z;
            this.message = str;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager$1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager$2] */
    public SafeUIStatusBarKeyguardViewManager(KeyguardBouncerViewModel keyguardBouncerViewModel, KeyguardBouncerComponent.Factory factory, PrimaryBouncerToGoneTransitionViewModel primaryBouncerToGoneTransitionViewModel, Context context, ViewMediatorCallback viewMediatorCallback, LockPatternUtils lockPatternUtils, SysuiStatusBarStateController sysuiStatusBarStateController, ConfigurationController configurationController, KeyguardUpdateMonitor keyguardUpdateMonitor, DreamOverlayStateController dreamOverlayStateController, NavigationModeController navigationModeController, DockManager dockManager, NotificationShadeWindowController notificationShadeWindowController, KeyguardStateController keyguardStateController, NotificationMediaManager notificationMediaManager, KeyguardMessageAreaController.Factory factory2, Optional<SysUIUnfoldComponent> optional, Lazy lazy, LatencyTracker latencyTracker, KeyguardSecurityModel keyguardSecurityModel, FeatureFlags featureFlags, PrimaryBouncerCallbackInteractor primaryBouncerCallbackInteractor, PrimaryBouncerInteractor primaryBouncerInteractor, BouncerView bouncerView, AlternateBouncerInteractor alternateBouncerInteractor, UdfpsOverlayInteractor udfpsOverlayInteractor, ActivityStarter activityStarter) {
        super(context, viewMediatorCallback, lockPatternUtils, sysuiStatusBarStateController, configurationController, keyguardUpdateMonitor, dreamOverlayStateController, navigationModeController, dockManager, notificationShadeWindowController, keyguardStateController, notificationMediaManager, factory2, optional, lazy, latencyTracker, keyguardSecurityModel, featureFlags, primaryBouncerCallbackInteractor, primaryBouncerInteractor, bouncerView, alternateBouncerInteractor, udfpsOverlayInteractor, activityStarter);
        this.mFraction = -1.0f;
        this.mTracking = false;
        this.mExpansionCallback = new PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback() { // from class: com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager.1
            public boolean mPrimaryBouncerAnimating;

            @Override // com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback
            public final void onExpansionChanged(float f) {
                if (!this.mPrimaryBouncerAnimating) {
                    return;
                }
                SafeUIStatusBarKeyguardViewManager.this.getClass();
                throw null;
            }

            @Override // com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback
            public final void onFullyHidden() {
                this.mPrimaryBouncerAnimating = false;
                SafeUIStatusBarKeyguardViewManager.this.updateStates();
            }

            @Override // com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback
            public final void onStartingToHide() {
                this.mPrimaryBouncerAnimating = true;
                SafeUIStatusBarKeyguardViewManager.this.updateStates();
            }

            @Override // com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback
            public final void onStartingToShow() {
                this.mPrimaryBouncerAnimating = true;
                SafeUIStatusBarKeyguardViewManager.this.updateStates();
            }

            @Override // com.android.systemui.keyguard.domain.interactor.PrimaryBouncerCallbackInteractor.PrimaryBouncerExpansionCallback
            public final void onVisibilityChanged(boolean z) {
                ViewRootImpl viewRootImpl;
                ViewRootImpl viewRootImpl2;
                SafeUIStatusBarKeyguardViewManager safeUIStatusBarKeyguardViewManager = SafeUIStatusBarKeyguardViewManager.this;
                if (z) {
                    if (!safeUIStatusBarKeyguardViewManager.mIsBackCallbackRegistered && (viewRootImpl2 = safeUIStatusBarKeyguardViewManager.getViewRootImpl()) != null) {
                        viewRootImpl2.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(1000000, safeUIStatusBarKeyguardViewManager.mOnBackInvokedCallback);
                        safeUIStatusBarKeyguardViewManager.mIsBackCallbackRegistered = true;
                        return;
                    }
                    return;
                }
                if (safeUIStatusBarKeyguardViewManager.mIsBackCallbackRegistered && (viewRootImpl = safeUIStatusBarKeyguardViewManager.getViewRootImpl()) != null) {
                    viewRootImpl.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(safeUIStatusBarKeyguardViewManager.mOnBackInvokedCallback);
                    safeUIStatusBarKeyguardViewManager.mIsBackCallbackRegistered = false;
                }
            }
        };
        this.mOnBackInvokedCallback = new OnBackAnimationCallback() { // from class: com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager.2
            @Override // android.window.OnBackAnimationCallback
            public final void onBackCancelled() {
                SafeUIStatusBarKeyguardViewManager.this.needsFullscreenBouncer();
            }

            @Override // android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                SafeUIStatusBarKeyguardViewManager.this.onBackPressed();
                SafeUIStatusBarKeyguardViewManager.this.needsFullscreenBouncer();
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackProgressed(BackEvent backEvent) {
                SafeUIStatusBarKeyguardViewManager.this.needsFullscreenBouncer();
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackStarted(BackEvent backEvent) {
                SafeUIStatusBarKeyguardViewManager.this.needsFullscreenBouncer();
            }
        };
        this.mIsBackCallbackRegistered = false;
        new DockManager.DockEventListener(this) { // from class: com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager.3
        };
        this.mGlobalActionsVisible = false;
        this.mLastGlobalActionsVisible = false;
        this.mFirstUpdate = true;
        this.mCallbacks = new HashSet();
        this.mAfterKeyguardGoneRunnables = new ArrayList();
        this.mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager.4
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onEmergencyCallAction() {
                SafeUIStatusBarKeyguardViewManager safeUIStatusBarKeyguardViewManager = SafeUIStatusBarKeyguardViewManager.this;
                if (((KeyguardStateControllerImpl) safeUIStatusBarKeyguardViewManager.mKeyguardStateController).mOccluded) {
                    safeUIStatusBarKeyguardViewManager.reset(true);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTrustGrantedForCurrentUser(boolean z, TrustGrantFlags trustGrantFlags, String str) {
                AlternateBouncerInteractor alternateBouncerInteractor2 = SafeUIStatusBarKeyguardViewManager.this.mAlternateBouncerInteractor;
                if (alternateBouncerInteractor2.isVisibleState()) {
                    alternateBouncerInteractor2.hide();
                }
            }
        };
        new Runnable() { // from class: com.android.systemui.statusbar.phone.SafeUIStatusBarKeyguardViewManager.8
            @Override // java.lang.Runnable
            public final void run() {
                SafeUIStatusBarKeyguardViewManager.this.getClass();
                throw null;
            }
        };
        this.mViewMediatorCallback = viewMediatorCallback;
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        this.mDreamOverlayStateController = dreamOverlayStateController;
        this.mKeyguardStateController = keyguardStateController;
        this.mMediaManager = notificationMediaManager;
        this.mKeyguardUpdateManager = keyguardUpdateMonitor;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mKeyguardSecurityModel = keyguardSecurityModel;
        this.mPrimaryBouncerCallbackInteractor = primaryBouncerCallbackInteractor;
        this.mPrimaryBouncerInteractor = primaryBouncerInteractor;
        this.mPrimaryBouncerView = bouncerView;
        this.mFoldAodAnimationController = (FoldAodAnimationController) optional.map(new SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda0()).orElse(null);
        this.mAlternateBouncerInteractor = alternateBouncerInteractor;
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
        this.mUdfpsNewTouchDetectionEnabled = ((FeatureFlagsRelease) featureFlags).isEnabled(Flags.UDFPS_NEW_TOUCH_DETECTION);
        this.mUdfpsOverlayInteractor = udfpsOverlayInteractor;
        this.mActivityStarter = activityStarter;
        this.mSafeUIBouncerContainer = new FrameLayout(context);
        this.mPrepareBouncerRunnable = new SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1(this, keyguardBouncerViewModel, primaryBouncerToGoneTransitionViewModel, factory);
    }

    private void executeAfterKeyguardGoneAction() {
        ActivityStarter.OnDismissAction onDismissAction = this.mAfterKeyguardGoneAction;
        if (onDismissAction != null) {
            onDismissAction.onDismiss();
            this.mAfterKeyguardGoneAction = null;
        }
        this.mKeyguardGoneCancelAction = null;
        int i = 0;
        this.mDismissActionWillAnimateOnKeyguard = false;
        while (true) {
            ArrayList arrayList = this.mAfterKeyguardGoneRunnables;
            if (i < arrayList.size()) {
                ((Runnable) arrayList.get(i)).run();
                i++;
            } else {
                arrayList.clear();
                return;
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void addAfterKeyguardGoneRunnable(Runnable runnable) {
        this.mAfterKeyguardGoneRunnables.add(runnable);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean bouncerIsAnimatingAway() {
        return this.mPrimaryBouncerInteractor.isAnimatingAway();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean canHandleBackPressed() {
        return primaryBouncerIsShowing();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void cancelPendingWakeupAction() {
        Runnable runnable;
        DismissWithActionRequest dismissWithActionRequest = this.mPendingWakeupAction;
        this.mPendingWakeupAction = null;
        if (dismissWithActionRequest != null && (runnable = dismissWithActionRequest.cancelAction) != null) {
            runnable.run();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void cancelPostAuthActions() {
        if (primaryBouncerIsOrWillBeShowing()) {
            return;
        }
        this.mAfterKeyguardGoneAction = null;
        this.mDismissActionWillAnimateOnKeyguard = false;
        Runnable runnable = this.mKeyguardGoneCancelAction;
        if (runnable != null) {
            runnable.run();
            this.mKeyguardGoneCancelAction = null;
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void dismissWithAction(LockscreenShadeTransitionController$goToLockedShadeInternal$1 lockscreenShadeTransitionController$goToLockedShadeInternal$1, LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1 lockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1) {
        dismissWithAction(lockscreenShadeTransitionController$goToLockedShadeInternal$1, lockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1, false, null);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean dispatchBackKeyEventPreIme() {
        boolean z;
        BouncerViewImpl bouncerViewImpl = (BouncerViewImpl) this.mPrimaryBouncerView;
        if (bouncerViewImpl.getDelegate() == null) {
            return false;
        }
        if (((KeyguardBouncerViewBinder$bind$delegate$1) bouncerViewImpl.getDelegate()).$securityContainerController.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.Password) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (shouldInterceptTouchEvent() && !this.mUdfpsOverlayInteractor.isTouchWithinUdfpsArea(motionEvent)) {
            onTouch(motionEvent);
        }
        return shouldInterceptTouchEvent();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void dump(PrintWriter printWriter) {
        StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "StatusBarKeyguardViewManager:", "  mRemoteInputActive: "), this.mRemoteInputActive, printWriter, "  mDozing: "), this.mDozing, printWriter, "  mAfterKeyguardGoneAction: ");
        m.append(this.mAfterKeyguardGoneAction);
        printWriter.println(m.toString());
        printWriter.println("  mAfterKeyguardGoneRunnables: " + this.mAfterKeyguardGoneRunnables);
        printWriter.println("  mPendingWakeupAction: " + this.mPendingWakeupAction);
        printWriter.println("  isBouncerShowing(): " + isBouncerShowing());
        printWriter.println("  bouncerIsOrWillBeShowing(): " + primaryBouncerIsOrWillBeShowing());
        printWriter.println("  Registered KeyguardViewManagerCallbacks:");
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        while (it.hasNext()) {
            ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
            printWriter.println("      null");
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean getLastNavBarVisible() {
        boolean z;
        boolean z2;
        if (this.mLastShowing && !this.mLastOccluded) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = this.mLastDozing;
        if (((z && !z3 && !this.mLastScreenOffAnimationPlaying) || this.mLastPulsing) && this.mLastGesturalNav) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((!z && !z3 && !this.mLastScreenOffAnimationPlaying) || this.mLastPrimaryBouncerShowing || this.mLastRemoteInputActive || z2 || this.mLastGlobalActionsVisible) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final long getNavBarShowDelay() {
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        if (((KeyguardStateControllerImpl) keyguardStateController).mKeyguardFadingAway) {
            return ((KeyguardStateControllerImpl) keyguardStateController).mKeyguardFadingAwayDelay;
        }
        if (isBouncerShowing()) {
            return 320L;
        }
        return 0L;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final float getQsExpansion() {
        return this.mQsExpansion;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final ViewRootImpl getViewRootImpl() {
        return this.mSafeUIBouncerContainer.getViewRootImpl();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void hide(long j, long j2) {
        Trace.beginSection("StatusBarKeyguardViewManager#hide");
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        keyguardStateControllerImpl.notifyKeyguardState(false, keyguardStateControllerImpl.mOccluded);
        launchPendingWakeupAction();
        boolean z = this.mKeyguardUpdateManager.mNeedsSlowUnlockTransition;
        Math.max(0L, (j - 48) - SystemClock.uptimeMillis());
        executeAfterKeyguardGoneAction();
        hideBouncer(true);
        updateStates();
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        notificationShadeWindowState.keyguardShowing = false;
        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
        this.mViewMediatorCallback.keyguardGone();
        SysUiStatsLog.write(62, 1);
        Trace.endSection();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void hideAlternateBouncer(boolean z) {
        this.mAlternateBouncerInteractor.hide();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public void hideBouncer(boolean z) {
        this.mPrimaryBouncerInteractor.hide();
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
            cancelPostAuthActions();
        }
        cancelPendingWakeupAction();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean interceptMediaKey(KeyEvent keyEvent) {
        BouncerView bouncerView = this.mPrimaryBouncerView;
        if (((BouncerViewImpl) bouncerView).getDelegate() != null && ((KeyguardBouncerViewBinder$bind$delegate$1) ((BouncerViewImpl) bouncerView).getDelegate()).$securityContainerController.interceptMediaKey(keyEvent)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final boolean isBouncerShowing() {
        if (!primaryBouncerIsShowing() && !this.mAlternateBouncerInteractor.isVisibleState()) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean isFullscreenBouncer() {
        BouncerViewImpl bouncerViewImpl = (BouncerViewImpl) this.mPrimaryBouncerView;
        if (bouncerViewImpl.getDelegate() != null && SecurityUtils.checkFullscreenBouncer(((KeyguardBouncerViewBinder$bind$delegate$1) bouncerViewImpl.getDelegate()).$securityContainerController.mCurrentSecurityMode)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final boolean isGoingToNotificationShade() {
        return ((StatusBarStateControllerImpl) this.mStatusBarStateController).mLeaveOpenOnKeyguardHide;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean isNavBarVisible() {
        boolean z;
        boolean z2;
        boolean z3;
        BiometricUnlockController biometricUnlockController = this.mBiometricUnlockController;
        if (biometricUnlockController != null && biometricUnlockController.mMode == 2) {
            z = true;
        } else {
            z = false;
        }
        boolean isVisible = this.mKeyguardStateController.isVisible();
        boolean z4 = this.mDozing;
        if (z4 && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (((isVisible && !z4 && !this.mScreenOffAnimationPlaying) || this.mPulsing) && this.mGesturalNav) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((!isVisible && !z2 && !this.mScreenOffAnimationPlaying) || primaryBouncerIsShowing() || this.mRemoteInputActive || z3 || this.mGlobalActionsVisible) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean isPrimaryBouncerInTransit() {
        return this.mPrimaryBouncerInteractor.isInTransit();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean isSecure() {
        if (this.mKeyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser()) != KeyguardSecurityModel.SecurityMode.None) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final boolean isUnlockWithWallpaper() {
        return !((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).mCurrentState.mediaBackdropShowing;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean isWakeAndUnlocking() {
        int i = this.mBiometricUnlockController.mMode;
        if (i == 1 || i == 2) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void launchPendingWakeupAction() {
        DismissWithActionRequest dismissWithActionRequest = this.mPendingWakeupAction;
        this.mPendingWakeupAction = null;
        if (dismissWithActionRequest != null) {
            boolean z = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
            ActivityStarter.OnDismissAction onDismissAction = dismissWithActionRequest.dismissAction;
            if (z) {
                dismissWithAction(onDismissAction, dismissWithActionRequest.cancelAction, dismissWithActionRequest.afterKeyguardGone, dismissWithActionRequest.message);
            } else if (onDismissAction != null) {
                onDismissAction.onDismiss();
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean needsFullscreenBouncer() {
        return SecurityUtils.checkFullscreenBouncer(this.mKeyguardSecurityModel.getSecurityMode(KeyguardUpdateMonitor.getCurrentUser()));
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void notifyKeyguardAuthenticated(boolean z) {
        ((KeyguardBouncerRepositoryImpl) this.mPrimaryBouncerInteractor.repository)._keyguardAuthenticated.setValue(Boolean.valueOf(z));
        if (this.mAlternateBouncerInteractor.isVisibleState()) {
            hideAlternateBouncer(false);
            executeAfterKeyguardGoneAction();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void onBackPressed() {
        if (!primaryBouncerIsShowing()) {
            return;
        }
        if (primaryBouncerIsScrimmed() && !needsFullscreenBouncer()) {
            hideBouncer(false);
            updateStates();
        } else {
            reset(true);
            ((StatusBarStateControllerImpl) this.mStatusBarStateController).mLeaveOpenOnKeyguardHide = false;
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onDensityOrFontScaleChanged() {
        hideBouncer(true);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onDozingChanged(boolean z) {
        if (this.mDozing != z) {
            this.mDozing = z;
            if (z || needsFullscreenBouncer() || ((KeyguardStateControllerImpl) this.mKeyguardStateController).mOccluded) {
                reset(z);
            }
            updateStates();
            if (!z) {
                launchPendingWakeupAction();
            }
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void onFinishedGoingToSleep() {
        this.mPrimaryBouncerInteractor.hide();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.unfold.FoldAodAnimationController.FoldAodAnimationStatus
    public final void onFoldToAodAnimationChanged() {
        FoldAodAnimationController foldAodAnimationController = this.mFoldAodAnimationController;
        if (foldAodAnimationController != null) {
            this.mScreenOffAnimationPlaying = foldAodAnimationController.shouldPlayAnimation;
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
    public final void onNavigationModeChanged(int i) {
        boolean isGesturalMode = QuickStepContract.isGesturalMode(i);
        if (isGesturalMode != this.mGesturalNav) {
            this.mGesturalNav = isGesturalMode;
            updateStates();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z;
        float f = this.mFraction;
        float f2 = shadeExpansionChangeEvent.fraction;
        boolean z2 = shadeExpansionChangeEvent.tracking;
        if (f == f2 && this.mTracking == z2) {
            return;
        }
        this.mFraction = f2;
        this.mTracking = z2;
        if (!this.mDreamOverlayStateController.isOverlayActive()) {
            if (f2 != 1.0f && z2) {
                z = true;
            } else {
                z = false;
            }
            KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
            if (keyguardStateControllerImpl.mShowing && !primaryBouncerIsOrWillBeShowing() && !keyguardStateControllerImpl.mKeyguardGoingAway && z && !keyguardStateControllerImpl.mOccluded && !keyguardStateControllerImpl.mCanDismissLockScreen && !bouncerIsAnimatingAway()) {
                throw null;
            }
            if (!primaryBouncerIsOrWillBeShowing()) {
                return;
            }
            boolean z3 = keyguardStateControllerImpl.mShowing;
            PrimaryBouncerInteractor primaryBouncerInteractor = this.mPrimaryBouncerInteractor;
            if (z3) {
                primaryBouncerInteractor.setPanelExpansion(f2);
                return;
            } else {
                primaryBouncerInteractor.setPanelExpansion(1.0f);
                return;
            }
        }
        throw null;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.statusbar.RemoteInputController.Callback
    public final void onRemoteInputActive(boolean z) {
        this.mRemoteInputActive = z;
        updateStates();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onThemeChanged() {
        updateResources();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean onTouch(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean shouldInterceptTouchEvent = shouldInterceptTouchEvent();
        if (shouldInterceptTouchEvent) {
            boolean z5 = false;
            if (motionEvent.getActionMasked() == 0) {
                z = true;
            } else {
                z = false;
            }
            AlternateBouncerInteractor alternateBouncerInteractor = this.mAlternateBouncerInteractor;
            if (alternateBouncerInteractor.receivedDownTouch && motionEvent.getActionMasked() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mUdfpsNewTouchDetectionEnabled && this.mKeyguardUpdateManager.isUdfpsEnrolled()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (motionEvent.getActionMasked() == 4 && !z3) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z) {
                alternateBouncerInteractor.receivedDownTouch = true;
            } else if (z2 || z4) {
                ((SystemClockImpl) alternateBouncerInteractor.systemClock).getClass();
                if (SystemClock.uptimeMillis() - ((KeyguardBouncerRepositoryImpl) alternateBouncerInteractor.bouncerRepository).lastAlternateBouncerVisibleTime > 200) {
                    z5 = true;
                }
                if (z5) {
                    showPrimaryBouncer(true);
                }
            }
        }
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        if (!it.hasNext()) {
            return shouldInterceptTouchEvent;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }

    @Override // com.android.keyguard.KeyguardSecViewController
    public final void prepareSafeUIBouncer() {
        SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1 safeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1 = this.mPrepareBouncerRunnable;
        if (safeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1 != null) {
            safeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1.run();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final boolean primaryBouncerIsOrWillBeShowing() {
        if (!isBouncerShowing() && !isPrimaryBouncerInTransit()) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean primaryBouncerIsScrimmed() {
        return ((Boolean) ((KeyguardBouncerRepositoryImpl) this.mPrimaryBouncerInteractor.repository).primaryBouncerScrimmed.getValue()).booleanValue();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean primaryBouncerIsShowing() {
        return this.mPrimaryBouncerInteractor.isFullyShowing();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean primaryBouncerNeedsScrimming() {
        if ((!((KeyguardStateControllerImpl) this.mKeyguardStateController).mOccluded || this.mDreamOverlayStateController.isOverlayActive()) && !primaryBouncerWillDismissWithAction() && ((!primaryBouncerIsShowing() || !primaryBouncerIsScrimmed()) && !isFullscreenBouncer())) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean primaryBouncerWillDismissWithAction() {
        return this.mPrimaryBouncerInteractor.willDismissWithAction();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void readyForKeyguardDone() {
        this.mViewMediatorCallback.readyForKeyguardDone();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void requestFace(boolean z) {
        this.mKeyguardUpdateManager.requestFaceAuthOnOccludingApp(z);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void requestFp(boolean z) {
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateManager;
        keyguardUpdateMonitor.mOccludingAppRequestingFp = z;
        keyguardUpdateMonitor.updateFingerprintListeningState(2);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void reset(boolean z) {
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        if (keyguardStateControllerImpl.mShowing) {
            if (keyguardStateControllerImpl.mOccluded && !this.mDozing) {
                if (z || needsFullscreenBouncer()) {
                    hideBouncer(false);
                }
            } else {
                showBouncerOrKeyguard(z);
            }
            if (z) {
                hideAlternateBouncer(true);
            }
            this.mKeyguardUpdateManager.mHandler.obtainMessage(312).sendToTarget();
            updateStates();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void setGlobalActionsVisible(boolean z) {
        this.mGlobalActionsVisible = z;
        updateStates();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void setKeyguardGoingAwayState(boolean z) {
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = notificationShadeWindowControllerImpl.mHelper;
        Objects.requireNonNull(secNotificationShadeWindowControllerHelperImpl);
        NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0 notificationShadeWindowControllerImpl$$ExternalSyntheticLambda0 = new NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0(secNotificationShadeWindowControllerHelperImpl, 1);
        boolean z2 = Rune.SYSUI_MULTI_SIM;
        notificationShadeWindowControllerImpl$$ExternalSyntheticLambda0.accept(Boolean.valueOf(z));
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        notificationShadeWindowState.keyguardGoingAway = z;
        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void setKeyguardMessage(String str, ColorStateList colorStateList) {
        if (!this.mAlternateBouncerInteractor.isVisibleState()) {
            PrimaryBouncerInteractor primaryBouncerInteractor = this.mPrimaryBouncerInteractor;
            primaryBouncerInteractor.getClass();
            ((KeyguardBouncerRepositoryImpl) primaryBouncerInteractor.repository)._showMessage.setValue(new BouncerShowMessageModel(str, colorStateList));
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void setNeedsInput(boolean z) {
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        notificationShadeWindowState.keyguardNeedsInput = z;
        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void setOccluded(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        boolean z5 = keyguardStateControllerImpl.mOccluded;
        boolean z6 = true;
        if (!z5 && z) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z5 && !z) {
            z4 = true;
        } else {
            z4 = false;
        }
        keyguardStateControllerImpl.notifyKeyguardState(keyguardStateControllerImpl.mShowing, z);
        updateStates();
        boolean z7 = keyguardStateControllerImpl.mShowing;
        boolean z8 = keyguardStateControllerImpl.mOccluded;
        if (z7 && z3) {
            SysUiStatsLog.write(62, 3);
        } else if (z7 && z4) {
            SysUiStatsLog.write(62, 2);
        }
        if (z7) {
            if (!z2 || z8) {
                z6 = false;
            }
            this.mMediaManager.updateMediaMetaData(false, z6);
        }
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        notificationShadeWindowState.keyguardOccluded = z8;
        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
        if (!this.mDozing && !keyguardStateControllerImpl.mKeyguardGoingAway) {
            reset(z3);
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void setPulsing(boolean z) {
        if (this.mPulsing != z) {
            this.mPulsing = z;
            updateStates();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void setQsExpansion(float f) {
        this.mQsExpansion = f;
        Iterator it = ((HashSet) this.mCallbacks).iterator();
        if (!it.hasNext()) {
            return;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean shouldDismissOnMenuPressed() {
        BouncerView bouncerView = this.mPrimaryBouncerView;
        if (((BouncerViewImpl) bouncerView).getDelegate() != null && ((KeyguardBouncerViewBinder$bind$delegate$1) ((BouncerViewImpl) bouncerView).getDelegate()).shouldDismissOnMenuPressed()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final boolean shouldInterceptTouchEvent() {
        return this.mAlternateBouncerInteractor.isVisibleState();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void show(Bundle bundle) {
        Trace.beginSection("StatusBarKeyguardViewManager#show");
        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
        notificationShadeWindowState.keyguardShowing = true;
        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        keyguardStateControllerImpl.notifyKeyguardState(true, keyguardStateControllerImpl.mOccluded);
        reset(true);
        SysUiStatsLog.write(62, 2);
        Trace.endSection();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void showBouncer() {
        AlternateBouncerInteractor alternateBouncerInteractor = this.mAlternateBouncerInteractor;
        ((KeyguardBouncerRepositoryImpl) alternateBouncerInteractor.bouncerRepository).setAlternateVisible();
        if (!alternateBouncerInteractor.isVisibleState()) {
            showPrimaryBouncer(true);
        } else {
            alternateBouncerInteractor.isVisibleState();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void showBouncerOrKeyguard(boolean z) {
        if (needsFullscreenBouncer() && !this.mDozing) {
            this.mPrimaryBouncerInteractor.show(true);
        } else if (z) {
            hideBouncer(false);
        }
        updateStates();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void showPrimaryBouncer(boolean z) {
        hideAlternateBouncer(false);
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing && !isBouncerShowing()) {
            this.mPrimaryBouncerInteractor.show(z);
        }
        updateStates();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void startPreHideAnimation(Runnable runnable) {
        if (primaryBouncerIsShowing()) {
            PrimaryBouncerInteractor primaryBouncerInteractor = this.mPrimaryBouncerInteractor;
            if (primaryBouncerInteractor.willRunDismissFromKeyguard()) {
                runnable.run();
            } else {
                ((KeyguardBouncerRepositoryImpl) primaryBouncerInteractor.repository)._primaryBouncerDisappearAnimation.setValue(runnable);
            }
            if (this.mDismissActionWillAnimateOnKeyguard) {
                updateStates();
                return;
            }
            return;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void updateKeyguardPosition(float f) {
        ((KeyguardBouncerRepositoryImpl) this.mPrimaryBouncerInteractor.repository)._keyguardPosition.setValue(Float.valueOf(f));
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void updateResources() {
        ((KeyguardBouncerRepositoryImpl) this.mPrimaryBouncerInteractor.repository)._resourceUpdateRequests.setValue(Boolean.TRUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void updateStates() {
        byte b;
        byte b2;
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        boolean z = keyguardStateControllerImpl.mShowing;
        boolean z2 = keyguardStateControllerImpl.mOccluded;
        boolean primaryBouncerIsShowing = primaryBouncerIsShowing();
        boolean primaryBouncerIsOrWillBeShowing = primaryBouncerIsOrWillBeShowing();
        boolean z3 = true;
        boolean z4 = !isFullscreenBouncer();
        boolean z5 = this.mRemoteInputActive;
        if (!z4 && z && !z5) {
            b = false;
        } else {
            b = true;
        }
        if (!this.mLastBouncerDismissible && this.mLastShowing && !this.mLastRemoteInputActive) {
            b2 = false;
        } else {
            b2 = true;
        }
        if (b != b2 || this.mFirstUpdate) {
            PrimaryBouncerInteractor primaryBouncerInteractor = this.mPrimaryBouncerInteractor;
            if (!z4 && z && !z5) {
                primaryBouncerInteractor.setBackButtonEnabled(false);
            } else {
                primaryBouncerInteractor.setBackButtonEnabled(true);
            }
        }
        isNavBarVisible();
        boolean z6 = this.mFirstUpdate;
        if (primaryBouncerIsShowing == this.mLastPrimaryBouncerShowing) {
            z3 = false;
        }
        this.mLastPrimaryBouncerShowing = primaryBouncerIsShowing;
        if (z3 || z6) {
            NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController;
            NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
            notificationShadeWindowState.bouncerShowing = primaryBouncerIsShowing;
            notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
        }
        if (primaryBouncerIsOrWillBeShowing != this.mLastPrimaryBouncerIsOrWillBeShowing || this.mFirstUpdate || z3) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateManager;
            keyguardUpdateMonitor.mLogger.logSendPrimaryBouncerChanged(primaryBouncerIsOrWillBeShowing, primaryBouncerIsShowing);
            Message obtainMessage = keyguardUpdateMonitor.mHandler.obtainMessage(322);
            obtainMessage.arg1 = primaryBouncerIsOrWillBeShowing ? 1 : 0;
            obtainMessage.arg2 = primaryBouncerIsShowing ? 1 : 0;
            obtainMessage.sendToTarget();
        }
        this.mFirstUpdate = false;
        this.mLastShowing = z;
        this.mLastGlobalActionsVisible = this.mGlobalActionsVisible;
        this.mLastOccluded = z2;
        this.mLastPrimaryBouncerIsOrWillBeShowing = primaryBouncerIsOrWillBeShowing;
        this.mLastBouncerDismissible = z4;
        this.mLastRemoteInputActive = z5;
        this.mLastDozing = this.mDozing;
        this.mLastPulsing = this.mPulsing;
        this.mLastScreenOffAnimationPlaying = this.mScreenOffAnimationPlaying;
        this.mLastGesturalNav = this.mGesturalNav;
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void dismissWithAction(ActivityStarter.OnDismissAction onDismissAction, Runnable runnable, boolean z, String str) {
        if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
            try {
                Trace.beginSection("StatusBarKeyguardViewManager#dismissWithAction");
                cancelPendingWakeupAction();
                if (this.mDozing && !isWakeAndUnlocking()) {
                    this.mPendingWakeupAction = new DismissWithActionRequest(onDismissAction, runnable, z, str);
                    return;
                }
                this.mAfterKeyguardGoneAction = onDismissAction;
                this.mKeyguardGoneCancelAction = runnable;
                this.mDismissActionWillAnimateOnKeyguard = onDismissAction != null && onDismissAction.willRunAnimationOnKeyguard();
                this.mAlternateBouncerInteractor.getClass();
                this.mViewMediatorCallback.setCustomMessage(str);
                PrimaryBouncerInteractor primaryBouncerInteractor = this.mPrimaryBouncerInteractor;
                if (z) {
                    primaryBouncerInteractor.show(true);
                } else {
                    primaryBouncerInteractor.setDismissAction(this.mAfterKeyguardGoneAction, this.mKeyguardGoneCancelAction);
                    primaryBouncerInteractor.show(true);
                    this.mAfterKeyguardGoneAction = null;
                    this.mKeyguardGoneCancelAction = null;
                }
            } finally {
                Trace.endSection();
            }
        }
        updateStates();
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void setTaskbarDelegate(TaskbarDelegate taskbarDelegate) {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void updateNavigationBarVisibility(boolean z) {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void blockPanelExpansionFromCurrentTouch() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void dismissAndCollapse() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void keyguardGoingAway() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void onCancelClicked() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager
    public final void onKeyguardFadedAway() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void onStartedGoingToSleep() {
    }

    @Override // com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager, com.android.keyguard.KeyguardViewController
    public final void onStartedWakingUp() {
    }
}
