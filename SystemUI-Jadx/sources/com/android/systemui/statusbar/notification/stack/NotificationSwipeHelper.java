package com.android.systemui.statusbar.notification.stack;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.systemui.SwipeHelper;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin;
import com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.util.NotificationSAUtil;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationSwipeHelper extends SwipeHelper implements NotificationSwipeActionHelper {
    protected static final long COVER_MENU_DELAY = 4000;
    public static final SourceType$Companion$from$1 SWIPE_DISMISS = SourceType.from("SwipeDismiss");
    public final NotificationCallback mCallback;
    public WeakReference mCurrMenuRowRef;
    public final NotificationSwipeHelper$$ExternalSyntheticLambda0 mFalsingCheck;
    public boolean mIsExpanded;
    public View mMenuExposedView;
    public final NotificationMenuRowPlugin.OnMenuEventListener mMenuListener;
    public final NotificationRoundnessManager mNotificationRoundnessManager;
    public boolean mPulsing;
    public View mTranslatingParentView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Builder {
        public final DumpManager mDumpManager;
        public final FalsingManager mFalsingManager;
        public final FeatureFlags mFeatureFlags;
        public NotificationCallback mNotificationCallback;
        public final NotificationRoundnessManager mNotificationRoundnessManager;
        public NotificationMenuRowPlugin.OnMenuEventListener mOnMenuEventListener;
        public final Resources mResources;
        public final ViewConfiguration mViewConfiguration;

        public Builder(Resources resources, ViewConfiguration viewConfiguration, DumpManager dumpManager, FalsingManager falsingManager, FeatureFlags featureFlags, NotificationRoundnessManager notificationRoundnessManager) {
            this.mResources = resources;
            this.mViewConfiguration = viewConfiguration;
            this.mDumpManager = dumpManager;
            this.mFalsingManager = falsingManager;
            this.mFeatureFlags = featureFlags;
            this.mNotificationRoundnessManager = notificationRoundnessManager;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface NotificationCallback extends SwipeHelper.Callback {
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper$$ExternalSyntheticLambda0] */
    public NotificationSwipeHelper(Resources resources, ViewConfiguration viewConfiguration, FalsingManager falsingManager, FeatureFlags featureFlags, NotificationCallback notificationCallback, NotificationMenuRowPlugin.OnMenuEventListener onMenuEventListener, NotificationRoundnessManager notificationRoundnessManager) {
        super(notificationCallback, resources, viewConfiguration, falsingManager, featureFlags);
        this.mNotificationRoundnessManager = notificationRoundnessManager;
        this.mMenuListener = onMenuEventListener;
        this.mCallback = notificationCallback;
        this.mFalsingCheck = new Runnable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NotificationSwipeHelper.this.resetExposedMenuView(true, true);
            }
        };
    }

    public static boolean isTouchInView(View view, MotionEvent motionEvent) {
        int height;
        if (view == null) {
            return false;
        }
        if (view instanceof ExpandableView) {
            height = ((ExpandableView) view).mActualHeight;
        } else {
            height = view.getHeight();
        }
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, height + i2).contains(rawX, rawY);
    }

    @Override // com.android.systemui.SwipeHelper
    public Animator createTranslationAnimation(View view, float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        return super.createTranslationAnimation(view, f, animatorUpdateListener);
    }

    @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper
    public final void dismiss(View view, float f) {
        dismissChild(view, f, !swipedFastEnough());
        if (view instanceof ExpandableNotificationRow) {
            NotificationSAUtil.sendCancelLog(((ExpandableNotificationRow) view).mEntry, "QPNE0006");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // com.android.systemui.SwipeHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dismissChild(android.view.View r4, float r5, boolean r6) {
        /*
            r3 = this;
            r3.superDismissChild(r4, r5, r6)
            com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper$NotificationCallback r5 = r3.mCallback
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$9 r5 = (com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.AnonymousClass9) r5
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r6 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.this
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r6 = r6.mView
            boolean r0 = r6.mIsExpanded
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L21
            com.android.systemui.statusbar.notification.stack.AmbientState r6 = r6.mAmbientState
            float r6 = r6.mDozeAmount
            r0 = 0
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 != 0) goto L1c
            r6 = r1
            goto L1d
        L1c:
            r6 = r2
        L1d:
            if (r6 == 0) goto L21
            r6 = r1
            goto L22
        L21:
            r6 = r2
        L22:
            if (r6 == 0) goto L28
            r5.handleChildViewDismissed(r4)
            goto L2f
        L28:
            java.lang.String r4 = "NotificationSwipeHelper"
            java.lang.String r6 = "dismissChild, but not shouldDismissQuickly"
            android.util.Log.d(r4, r6)
        L2f:
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r4 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.this
            com.android.systemui.statusbar.notification.row.NotificationGutsManager r4 = r4.mNotificationGutsManager
            r4.closeAndSaveGuts(r1, r2, r2, r2)
            r3.handleMenuCoveredOrDismissed()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper.dismissChild(android.view.View, float, boolean):void");
    }

    public final NotificationMenuRowPlugin getCurrentMenuRow() {
        WeakReference weakReference = this.mCurrMenuRowRef;
        if (weakReference == null) {
            return null;
        }
        return (NotificationMenuRowPlugin) weakReference.get();
    }

    @Override // com.android.systemui.SwipeHelper
    public float getEscapeVelocity() {
        return this.mDensityScale * 500.0f;
    }

    public Runnable getFalsingCheck() {
        return this.mFalsingCheck;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // com.android.systemui.SwipeHelper
    public final float getTotalTranslationLength(View view) {
        return NotificationStackScrollLayoutController.this.mView.getTotalTranslationLength(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.systemui.SwipeHelper
    public final float getTranslation(View view) {
        if (view instanceof SwipeableView) {
            return ((ExpandableNotificationRow) ((SwipeableView) view)).getTranslation();
        }
        return 0.0f;
    }

    @Override // com.android.systemui.SwipeHelper
    public Animator getViewTranslationAnimator(View view, float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        return super.getViewTranslationAnimator(view, f, animatorUpdateListener);
    }

    public void handleMenuCoveredOrDismissed() {
        View view = this.mMenuExposedView;
        if (view != null && view == this.mTranslatingParentView) {
            this.mMenuExposedView = null;
        }
    }

    public void handleMenuRowSwipe(MotionEvent motionEvent, View view, float f, NotificationMenuRowPlugin notificationMenuRowPlugin) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        if (!notificationMenuRowPlugin.shouldShowMenu()) {
            if (isDismissGesture(motionEvent)) {
                dismiss(view, f);
                return;
            } else {
                snapClosed(view, f);
                notificationMenuRowPlugin.onSnapClosed();
                return;
            }
        }
        if (notificationMenuRowPlugin.isSnappedAndOnSameSide()) {
            boolean isDismissGesture = isDismissGesture(motionEvent);
            if (notificationMenuRowPlugin.isWithinSnapMenuThreshold() && !isDismissGesture) {
                notificationMenuRowPlugin.onSnapOpen();
                snapChild(view, notificationMenuRowPlugin.getMenuSnapTarget(), f);
                return;
            } else if (isDismissGesture && !notificationMenuRowPlugin.shouldSnapBack()) {
                dismiss(view, f);
                notificationMenuRowPlugin.onDismiss();
                return;
            } else {
                snapClosed(view, f);
                notificationMenuRowPlugin.onSnapClosed();
                return;
            }
        }
        Log.d("NotificationSwipeHelper", "handleSwipeFromClosedState start");
        boolean isDismissGesture2 = isDismissGesture(motionEvent);
        boolean isTowardsMenu = notificationMenuRowPlugin.isTowardsMenu(f);
        boolean z10 = true;
        if (getEscapeVelocity() <= Math.abs(f)) {
            z = true;
        } else {
            z = false;
        }
        double eventTime = motionEvent.getEventTime() - motionEvent.getDownTime();
        if (!notificationMenuRowPlugin.canBeDismissed() && eventTime >= 200.0d) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (isTowardsMenu && !isDismissGesture2) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z && !z2) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (!swipedFarEnough() && notificationMenuRowPlugin.isSwipedEnoughToShowMenu()) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (z5 && z4) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z && !isTowardsMenu && !isDismissGesture2) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (!notificationMenuRowPlugin.shouldShowGutsOnSnapOpen() && (!this.mIsExpanded || this.mPulsing)) {
            z8 = false;
        } else {
            z8 = true;
        }
        if (!z6 && (!z7 || !z8)) {
            z9 = false;
        } else {
            z9 = true;
        }
        int menuSnapTarget = notificationMenuRowPlugin.getMenuSnapTarget();
        if (!z9 || isFalseGesture()) {
            z10 = false;
        }
        if ((z3 || z10) && menuSnapTarget != 0) {
            snapChild(view, menuSnapTarget, f);
            notificationMenuRowPlugin.onSnapOpen();
        } else {
            if (isDismissGesture2 && !isTowardsMenu) {
                if (!notificationMenuRowPlugin.getHasPopped()) {
                    view.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(41));
                }
                dismiss(view, f);
                notificationMenuRowPlugin.onDismiss();
                return;
            }
            snapClosed(view, f);
            notificationMenuRowPlugin.onSnapClosed();
        }
    }

    @Override // com.android.systemui.SwipeHelper
    public final boolean handleUpEvent(float f, MotionEvent motionEvent, View view) {
        NotificationMenuRowPlugin currentMenuRow = getCurrentMenuRow();
        if (this.mLongPressSent && (view instanceof ExpandableNotificationRow) && ((ExpandableNotificationRow) view).mIsPinned) {
            Log.d("NotificationSwipeHelper", view + " : animView is pinned and long pressed");
            return true;
        }
        if (currentMenuRow != null) {
            currentMenuRow.onTouchEnd();
            handleMenuRowSwipe(motionEvent, view, f, currentMenuRow);
            return true;
        }
        return false;
    }

    public void initializeRow(SwipeableView swipeableView) {
        if (((ExpandableNotificationRow) swipeableView).mEntry.hasFinishedInitialization()) {
            NotificationMenuRowPlugin createMenu = ((ExpandableNotificationRow) swipeableView).createMenu();
            setCurrentMenuRow(createMenu);
            if (createMenu != null) {
                createMenu.setMenuClickListener(this.mMenuListener);
                createMenu.onTouchStart();
            }
        }
    }

    @Override // com.android.systemui.SwipeHelper
    public final void onChildSnappedBack(View view, float f) {
        super.onChildSnappedBack(view, f);
        NotificationMenuRowPlugin currentMenuRow = getCurrentMenuRow();
        if (currentMenuRow != null && f == 0.0f) {
            currentMenuRow.resetMenu();
            setCurrentMenuRow(null);
        }
        InteractionJankMonitor.getInstance().end(4);
    }

    @Override // com.android.systemui.SwipeHelper
    public final void onDismissChildWithAnimationFinished() {
        InteractionJankMonitor.getInstance().end(4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.systemui.SwipeHelper
    public final void onDownUpdate(ExpandableView expandableView) {
        this.mTranslatingParentView = expandableView;
        NotificationMenuRowPlugin currentMenuRow = getCurrentMenuRow();
        if (currentMenuRow != null) {
            currentMenuRow.onTouchStart();
        }
        setCurrentMenuRow(null);
        getHandler().removeCallbacks(getFalsingCheck());
        resetExposedMenuView(true, false);
        if (expandableView instanceof SwipeableView) {
            initializeRow((SwipeableView) expandableView);
        }
    }

    @Override // com.android.systemui.SwipeHelper, com.android.systemui.Gefingerpoken
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ExpandableView expandableView;
        boolean z = this.mIsSwiping;
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (this.mIsSwiping) {
            expandableView = this.mTouchedView;
        } else {
            expandableView = null;
        }
        if (!z && expandableView != null) {
            InteractionJankMonitor.getInstance().begin(expandableView, 4);
        }
        return onInterceptTouchEvent;
    }

    @Override // com.android.systemui.SwipeHelper
    public final void onMoveUpdate(float f) {
        getHandler().removeCallbacks(getFalsingCheck());
        NotificationMenuRowPlugin currentMenuRow = getCurrentMenuRow();
        if (currentMenuRow != null) {
            currentMenuRow.onTouchMove(f);
        }
    }

    @Override // com.android.systemui.SwipeHelper
    public final void prepareDismissAnimation(Animator animator, View view) {
        if ((view instanceof ExpandableNotificationRow) && this.mNotificationRoundnessManager.mIsClearAllInProgress) {
            final ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
            animator.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator2) {
                    expandableNotificationRow.requestRoundnessReset(NotificationSwipeHelper.SWIPE_DISMISS);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator2) {
                    expandableNotificationRow.requestRoundnessReset(NotificationSwipeHelper.SWIPE_DISMISS);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator2) {
                    expandableNotificationRow.requestRoundness(1.0f, 1.0f, NotificationSwipeHelper.SWIPE_DISMISS);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void resetExposedMenuView(boolean z, boolean z2) {
        if (!shouldResetMenu(z2)) {
            return;
        }
        View view = this.mMenuExposedView;
        if (z) {
            Animator viewTranslationAnimator = getViewTranslationAnimator(view, 0.0f, null);
            if (viewTranslationAnimator != null) {
                viewTranslationAnimator.start();
            }
        } else if (view instanceof SwipeableView) {
            SwipeableView swipeableView = (SwipeableView) view;
            swipeableView.getClass();
            ((ExpandableNotificationRow) swipeableView).resetTranslation();
        }
        this.mMenuExposedView = null;
    }

    public void setCurrentMenuRow(NotificationMenuRowPlugin notificationMenuRowPlugin) {
        WeakReference weakReference;
        if (notificationMenuRowPlugin != null) {
            weakReference = new WeakReference(notificationMenuRowPlugin);
        } else {
            weakReference = null;
        }
        this.mCurrMenuRowRef = weakReference;
    }

    public void setTranslatingParentView(View view) {
        this.mTranslatingParentView = view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.systemui.SwipeHelper
    public final void setTranslation(View view, float f) {
        if (view instanceof SwipeableView) {
            ((ExpandableNotificationRow) ((SwipeableView) view)).setTranslation(f);
        }
    }

    public boolean shouldResetMenu(boolean z) {
        View view = this.mMenuExposedView;
        if (view != null) {
            if (z || view != this.mTranslatingParentView) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.systemui.SwipeHelper
    public final void snapChild(View view, float f, float f2) {
        if (view instanceof SwipeableView) {
            superSnapChild(view, f, f2);
        }
        NotificationStackScrollLayoutController.this.mFalsingCollector.getClass();
        if (f == 0.0f) {
            handleMenuCoveredOrDismissed();
        }
    }

    public void snapClosed(View view, float f) {
        snapChild(view, 0.0f, f);
    }

    @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper
    public final void snapOpen(View view, int i, float f) {
        snapChild(view, i, f);
    }

    @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper
    public final void snooze(StatusBarNotification statusBarNotification, NotificationSwipeActionHelper.SnoozeOption snoozeOption) {
        ((CentralSurfacesImpl) NotificationStackScrollLayoutController.this.mCentralSurfaces).mNotificationsController.setNotificationSnoozed(statusBarNotification, snoozeOption);
    }

    public void superDismissChild(View view, float f, boolean z) {
        super.dismissChild(view, f, z);
    }

    public void superSnapChild(View view, float f, float f2) {
        super.snapChild(view, f, f2);
    }

    @Override // com.android.systemui.SwipeHelper
    public boolean swipedFarEnough() {
        return super.swipedFarEnough();
    }

    @Override // com.android.systemui.SwipeHelper
    public boolean swipedFastEnough() {
        return super.swipedFastEnough();
    }

    @Override // com.android.systemui.SwipeHelper
    public final void updateSwipeProgressAlpha(View view, float f) {
        if (view instanceof ExpandableNotificationRow) {
            ((ExpandableNotificationRow) view).setContentAlpha(f);
        }
    }
}
