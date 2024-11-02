package com.android.systemui.shade;

import android.os.Debug;
import android.util.Log;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.DejankUtils;
import com.android.systemui.Dependency;
import com.android.systemui.ExpandHelper;
import com.android.systemui.LsRune;
import com.android.systemui.assist.AssistManager;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.keyguard.animator.KeyguardTouchAnimator;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.NotificationPresenter;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.notification.row.NotificationGutsManager;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.HeadsUpAppearanceController;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.statusbar.phone.StatusBarNotificationPresenter;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import dagger.Lazy;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeControllerImpl implements ShadeController {
    public final Lazy mAssistManagerLazy;
    public final CommandQueue mCommandQueue;
    public final int mDisplayId;
    public boolean mExpandedVisible;
    public final Lazy mGutsManager;
    public final KeyguardStateController mKeyguardStateController;
    public NotificationPanelViewController mNotificationPanelViewController;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public NotificationShadeWindowViewController mNotificationShadeWindowViewController;
    public final SecPanelLogger mPanelLogger;
    public NotificationPresenter mPresenter;
    public CentralSurfacesImpl.AnonymousClass5 mShadeVisibilityListener;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final StatusBarStateController mStatusBarStateController;
    public final StatusBarWindowController mStatusBarWindowController;
    public final ArrayList mPostCollapseRunnables = new ArrayList();
    public final StringBuilder mLogBuilder = new StringBuilder();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.shade.ShadeControllerImpl$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }
    }

    public ShadeControllerImpl(CommandQueue commandQueue, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController, StatusBarKeyguardViewManager statusBarKeyguardViewManager, StatusBarWindowController statusBarWindowController, NotificationShadeWindowController notificationShadeWindowController, WindowManager windowManager, Lazy lazy, Lazy lazy2, SecPanelLogger secPanelLogger) {
        this.mCommandQueue = commandQueue;
        this.mStatusBarStateController = statusBarStateController;
        this.mStatusBarWindowController = statusBarWindowController;
        this.mGutsManager = lazy2;
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        this.mDisplayId = windowManager.getDefaultDisplay().getDisplayId();
        this.mKeyguardStateController = keyguardStateController;
        this.mAssistManagerLazy = lazy;
        this.mPanelLogger = secPanelLogger;
    }

    public final void animateCollapsePanels(float f, int i, boolean z, boolean z2) {
        animateCollapsePanels(i, z, z2, f, false);
    }

    public final void animateCollapseShade(int i) {
        animateCollapsePanels(1.0f, i, false, false);
    }

    public final void closeShadeIfOpen() {
        if (!this.mNotificationPanelViewController.isFullyCollapsed()) {
            this.mCommandQueue.animateCollapsePanels(2, true);
            notifyVisibilityChanged(false);
            ((AssistManager) this.mAssistManagerLazy.get()).hideAssist();
        }
    }

    public final boolean collapseShade() {
        if (this.mNotificationPanelViewController.isFullyCollapsed()) {
            return false;
        }
        animateCollapsePanels(1.0f, 2, true, true);
        notifyVisibilityChanged(false);
        return true;
    }

    public final void instantCollapseShade() {
        this.mNotificationPanelViewController.instantCollapse();
        runPostCollapseRunnables();
    }

    public final void makeExpandedInvisible() {
        boolean z;
        StringBuilder sb = this.mLogBuilder;
        boolean z2 = false;
        sb.setLength(0);
        sb.append("makeExpandedInvisible returned : ");
        sb.append("\n");
        sb.append(Debug.getCallers(5, " - "));
        SecPanelLoggerImpl secPanelLoggerImpl = (SecPanelLoggerImpl) this.mPanelLogger;
        secPanelLoggerImpl.addPanelStateInfoLog(sb, true);
        boolean z3 = this.mExpandedVisible;
        if (z3 && this.mNotificationShadeWindowViewController.mView != null) {
            this.mNotificationPanelViewController.collapse(1.0f, false, false);
            this.mExpandedVisible = false;
            notifyVisibilityChanged(false);
            ((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).setPanelVisible(false);
            this.mStatusBarWindowController.setForceStatusBarVisible(false);
            ((NotificationGutsManager) this.mGutsManager.get()).closeAndSaveGuts(true, true, true, true);
            runPostCollapseRunnables();
            notifyExpandedVisibleChanged(false);
            NotificationPanelViewController notificationPanelViewController = this.mNotificationPanelViewController;
            if (notificationPanelViewController.mIsLaunchAnimationRunning) {
                z2 = notificationPanelViewController.mHideIconsDuringLaunchAnimation;
            } else {
                HeadsUpAppearanceController headsUpAppearanceController = notificationPanelViewController.mHeadsUpAppearanceController;
                if (headsUpAppearanceController == null || !headsUpAppearanceController.shouldBeVisible()) {
                    z2 = !notificationPanelViewController.mShowIconsWhenExpanded;
                }
            }
            this.mCommandQueue.recomputeDisableFlags(this.mDisplayId, z2);
            if (!((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
                WindowManagerGlobal.getInstance().trimMemory(20);
                return;
            }
            return;
        }
        if (!z3) {
            KeyguardTouchAnimator keyguardTouchAnimator = this.mNotificationPanelViewController.mKeyguardTouchAnimator;
            if (keyguardTouchAnimator.isUnlockExecuted) {
                if (keyguardTouchAnimator.notiScale == 1.0f) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    Log.i("KeyguardTouchAnimator", "NSSL wasn't restored to original scale. Need to reset in force.");
                    if (keyguardTouchAnimator.hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(2)) {
                        View view = (View) keyguardTouchAnimator.views.get(2);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                    }
                    keyguardTouchAnimator.reset();
                }
            }
        }
        sb.setLength(0);
        sb.append("makeExpandedInvisible: ");
        sb.append("!mExpandedVisible: ");
        sb.append(!this.mExpandedVisible);
        sb.append(", getNotificationShadeWindowView null?: ");
        if (this.mNotificationShadeWindowViewController.mView == null) {
            z2 = true;
        }
        sb.append(z2);
        secPanelLoggerImpl.addPanelStateInfoLog(sb, true);
    }

    public final void makeExpandedVisible(boolean z) {
        StringBuilder sb = this.mLogBuilder;
        sb.setLength(0);
        sb.append("makeExpandedVisible: !force: ");
        sb.append(!z);
        sb.append("\n");
        sb.append(Debug.getCallers(10, " - "));
        SecPanelLogger secPanelLogger = this.mPanelLogger;
        ((SecPanelLoggerImpl) secPanelLogger).addPanelStateInfoLog(sb, true);
        CommandQueue commandQueue = this.mCommandQueue;
        if (!z && (this.mExpandedVisible || !commandQueue.panelsEnabled())) {
            sb.setLength(0);
            sb.append("makeExpandedVisible retutned : !force: ");
            sb.append(!z);
            sb.append(", mExpandedVisible: ");
            sb.append(this.mExpandedVisible);
            sb.append(", !panelsEnabled: ");
            sb.append(!commandQueue.panelsEnabled());
            ((SecPanelLoggerImpl) secPanelLogger).addPanelStateInfoLog(sb, true);
            return;
        }
        this.mExpandedVisible = true;
        ((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).setPanelVisible(true);
        notifyVisibilityChanged(true);
        commandQueue.recomputeDisableFlags(this.mDisplayId, !z);
        notifyExpandedVisibleChanged(true);
    }

    public final void notifyExpandedVisibleChanged(boolean z) {
        CentralSurfacesImpl centralSurfacesImpl = CentralSurfacesImpl.this;
        if (z) {
            centralSurfacesImpl.setInteracting(1, true);
            return;
        }
        UiEventLogger uiEventLogger = CentralSurfacesImpl.sUiEventLogger;
        centralSurfacesImpl.setInteracting(1, false);
        if (!((StatusBarNotificationActivityStarter) centralSurfacesImpl.mNotificationActivityStarter).mIsCollapsingToShowActivityOverLockscreen && !centralSurfacesImpl.mKeyguardViewMediator.isHiding() && !centralSurfacesImpl.mKeyguardUpdateMonitor.mKeyguardGoingAway) {
            int i = centralSurfacesImpl.mState;
            StatusBarKeyguardViewManager statusBarKeyguardViewManager = centralSurfacesImpl.mStatusBarKeyguardViewManager;
            if (i == 2) {
                statusBarKeyguardViewManager.reset(true);
                if (LsRune.SECURITY_SUB_DISPLAY_LOCK && ((KeyguardFoldControllerImpl) ((KeyguardFoldController) Dependency.get(KeyguardFoldController.class))).isBouncerOnFoldOpened()) {
                    statusBarKeyguardViewManager.showBouncer();
                    return;
                }
                return;
            }
            if (i == 1 && !statusBarKeyguardViewManager.primaryBouncerIsOrWillBeShowing()) {
                statusBarKeyguardViewManager.showBouncer();
            }
        }
    }

    public final void notifyVisibilityChanged(boolean z) {
        CentralSurfacesImpl centralSurfacesImpl = CentralSurfacesImpl.this;
        if (centralSurfacesImpl.mVisible != z) {
            centralSurfacesImpl.mVisible = z;
            if (z) {
                DejankUtils.notifyRendererOfExpensiveFrame(centralSurfacesImpl.mNotificationShadeWindowView, "onShadeVisibilityChanged");
            } else {
                centralSurfacesImpl.mGutsManager.closeAndSaveGuts(true, true, true, true);
            }
        }
        centralSurfacesImpl.updateVisibleToUser();
    }

    public final void onClosingFinished() {
        runPostCollapseRunnables();
        if (!((StatusBarNotificationPresenter) this.mPresenter).isPresenterFullyCollapsed()) {
            ((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).setNotificationShadeFocusable(true);
        }
    }

    public final void runPostCollapseRunnables() {
        ArrayList arrayList = this.mPostCollapseRunnables;
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList.clear();
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            ((Runnable) arrayList2.get(i)).run();
        }
        this.mStatusBarKeyguardViewManager.readyForKeyguardDone();
    }

    public final void animateCollapsePanels(int i, boolean z, boolean z2, float f, boolean z3) {
        if (!z && this.mStatusBarStateController.getState() != 0) {
            runPostCollapseRunnables();
            if (z3) {
                NotificationPanelViewController notificationPanelViewController = this.mNotificationPanelViewController;
                boolean isOnKeyguard = notificationPanelViewController.isOnKeyguard();
                QuickSettingsController quickSettingsController = notificationPanelViewController.mQsController;
                if (isOnKeyguard && quickSettingsController.mExpanded && notificationPanelViewController.canBeCollapsed()) {
                    quickSettingsController.flingQs(0.0f, 1);
                    return;
                }
                if (notificationPanelViewController.mBarState != 2 || ((CentralSurfacesImpl) notificationPanelViewController.mCentralSurfaces).mBouncerShowing) {
                    return;
                }
                QS qs = (QS) quickSettingsController.mSecQuickSettingsController.qsSupplier.get();
                if (qs != null ? qs.isShowingDetail() : false) {
                    quickSettingsController.closeQs();
                }
                notificationPanelViewController.collapse(1.0f, true, false);
                return;
            }
            return;
        }
        if (this.mNotificationShadeWindowViewController.mView != null && this.mNotificationPanelViewController.canBeCollapsed() && (i & 4) == 0) {
            ((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).setNotificationShadeFocusable(false);
            NotificationStackScrollLayout notificationStackScrollLayout = this.mNotificationShadeWindowViewController.mStackScrollLayout;
            if (notificationStackScrollLayout != null) {
                ExpandHelper expandHelper = notificationStackScrollLayout.mExpandHelper;
                expandHelper.finishExpanding(0.0f, true, true);
                expandHelper.mResizedView = null;
                expandHelper.mSGD = new ScaleGestureDetector(expandHelper.mContext, expandHelper.mScaleGestureListener);
            }
            this.mNotificationPanelViewController.setMotionAborted();
            this.mNotificationPanelViewController.collapse(f, true, z2);
        }
    }

    public final void collapseShade(boolean z) {
        if (z) {
            if (collapseShade()) {
                return;
            }
            runPostCollapseRunnables();
        } else if (!((StatusBarNotificationPresenter) this.mPresenter).isPresenterFullyCollapsed()) {
            instantCollapseShade();
            notifyVisibilityChanged(false);
        } else {
            runPostCollapseRunnables();
        }
    }
}
