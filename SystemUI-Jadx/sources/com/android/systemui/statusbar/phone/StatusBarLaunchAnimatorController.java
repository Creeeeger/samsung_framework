package com.android.systemui.statusbar.phone;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarLaunchAnimatorController implements ActivityLaunchAnimator.Controller {
    public final CentralSurfaces centralSurfaces;
    public final ActivityLaunchAnimator.Controller delegate;
    public final boolean isLaunchForActivity;

    public StatusBarLaunchAnimatorController(ActivityLaunchAnimator.Controller controller, CentralSurfaces centralSurfaces, boolean z) {
        this.delegate = controller;
        this.centralSurfaces = centralSurfaces;
        this.isLaunchForActivity = z;
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final LaunchAnimator.State createAnimatorState() {
        return this.delegate.createAnimatorState();
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final ViewGroup getLaunchContainer() {
        return this.delegate.getLaunchContainer();
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final View getOpeningWindowSyncView() {
        return ((CentralSurfacesImpl) this.centralSurfaces).mNotificationShadeWindowView;
    }

    @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
    public final boolean isBelowAnimatingWindow() {
        return this.delegate.isBelowAnimatingWindow();
    }

    @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
    public final boolean isDialogLaunch() {
        return this.delegate.isDialogLaunch();
    }

    @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
    public final void onIntentStarted(boolean z) {
        this.delegate.onIntentStarted(z);
        CentralSurfaces centralSurfaces = this.centralSurfaces;
        if (z) {
            ((NotificationPanelViewController) ((CentralSurfacesImpl) centralSurfaces).mShadeSurface).setIsLaunchAnimationRunning(true);
        } else {
            ((CentralSurfacesImpl) centralSurfaces).collapsePanelOnMainThread();
        }
    }

    @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
    public final void onLaunchAnimationCancelled(Boolean bool) {
        this.delegate.onLaunchAnimationCancelled(null);
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.centralSurfaces;
        ((NotificationPanelViewController) centralSurfacesImpl.mShadeSurface).setIsLaunchAnimationRunning(false);
        boolean isPresenterFullyCollapsed = ((StatusBarNotificationPresenter) centralSurfacesImpl.mPresenter).isPresenterFullyCollapsed();
        ShadeController shadeController = centralSurfacesImpl.mShadeController;
        if (isPresenterFullyCollapsed && !((StatusBarNotificationPresenter) centralSurfacesImpl.mPresenter).isCollapsing() && this.isLaunchForActivity) {
            ((ShadeControllerImpl) shadeController).onClosingFinished();
        } else {
            ((ShadeControllerImpl) shadeController).collapseShade(true);
        }
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final void onLaunchAnimationEnd(boolean z) {
        this.delegate.onLaunchAnimationEnd(z);
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.centralSurfaces;
        ((NotificationPanelViewController) centralSurfacesImpl.mShadeSurface).setIsLaunchAnimationRunning(false);
        boolean isCollapsing = ((StatusBarNotificationPresenter) centralSurfacesImpl.mPresenter).isCollapsing();
        ShadeController shadeController = centralSurfacesImpl.mShadeController;
        if (!isCollapsing) {
            ((ShadeControllerImpl) shadeController).onClosingFinished();
        }
        if (z) {
            ((ShadeControllerImpl) shadeController).instantCollapseShade();
        }
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final void onLaunchAnimationProgress(LaunchAnimator.State state, float f, float f2) {
        boolean z;
        this.delegate.onLaunchAnimationProgress(state, f, f2);
        NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) ((CentralSurfacesImpl) this.centralSurfaces).mShadeSurface;
        notificationPanelViewController.getClass();
        LaunchAnimator.Timings timings = ActivityLaunchAnimator.TIMINGS;
        long j = NotificationPanelViewController.ANIMATION_DELAY_ICON_FADE_IN;
        LaunchAnimator.Companion.getClass();
        if (LaunchAnimator.Companion.getProgress(timings, f2, j, 100L) == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z != notificationPanelViewController.mHideIconsDuringLaunchAnimation) {
            notificationPanelViewController.mHideIconsDuringLaunchAnimation = z;
            if (!z) {
                notificationPanelViewController.mCommandQueue.recomputeDisableFlags(notificationPanelViewController.mDisplayId, true);
            }
        }
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final void onLaunchAnimationStart(boolean z) {
        this.delegate.onLaunchAnimationStart(z);
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.centralSurfaces;
        ((NotificationPanelViewController) centralSurfacesImpl.mShadeSurface).setIsLaunchAnimationRunning(true);
        if (!z) {
            NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) centralSurfacesImpl.mShadeSurface;
            notificationPanelViewController.mFixedDuration = (int) ActivityLaunchAnimator.TIMINGS.totalDuration;
            notificationPanelViewController.collapse(1.0f, false);
            notificationPanelViewController.mFixedDuration = -1;
        }
    }

    @Override // com.android.systemui.animation.LaunchAnimator.Controller
    public final void setLaunchContainer(ViewGroup viewGroup) {
        this.delegate.setLaunchContainer(viewGroup);
    }

    public /* synthetic */ StatusBarLaunchAnimatorController(ActivityLaunchAnimator.Controller controller, CentralSurfaces centralSurfaces, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(controller, centralSurfaces, (i & 4) != 0 ? true : z);
    }
}
