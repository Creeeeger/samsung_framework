package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.systemui.Dependency;
import com.android.systemui.ExpandHelper;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.LSShadeTransitionLogger;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.wm.shell.animation.Interpolators;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragDownHelper implements Gefingerpoken {
    public float dragDownAmountOnStart;
    public final LockscreenShadeTransitionController dragDownCallback;
    public boolean draggedFarEnough;
    public ExpandHelper.Callback expandCallback;
    public final FalsingCollector falsingCollector;
    public final FalsingManager falsingManager;
    public float initialTouchX;
    public float initialTouchY;
    public boolean isDraggingDown;
    public float lastHeight;
    public int minDragDistance;
    public float slopMultiplier;
    public ExpandableView startingChild;
    public float touchSlop;

    public DragDownHelper(FalsingManager falsingManager, FalsingCollector falsingCollector, LockscreenShadeTransitionController lockscreenShadeTransitionController, Context context) {
        this.falsingManager = falsingManager;
        this.falsingCollector = falsingCollector;
        this.dragDownCallback = lockscreenShadeTransitionController;
        updateResources(context);
    }

    public final void cancelChildExpansion(final ExpandableView expandableView, long j) {
        if (expandableView.mActualHeight == expandableView.getCollapsedHeight()) {
            ExpandHelper.Callback callback = this.expandCallback;
            if (callback == null) {
                callback = null;
            }
            ((NotificationStackScrollLayout.AnonymousClass17) callback).setUserLockedChild(expandableView, false);
            return;
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(expandableView.mActualHeight, expandableView.getCollapsedHeight());
        ofInt.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        ofInt.setDuration(j);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.DragDownHelper$cancelChildExpansion$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ExpandableView.this.setActualHeight(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
            }
        });
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.DragDownHelper$cancelChildExpansion$2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ExpandHelper.Callback callback2 = DragDownHelper.this.expandCallback;
                if (callback2 == null) {
                    callback2 = null;
                }
                ((NotificationStackScrollLayout.AnonymousClass17) callback2).setUserLockedChild(expandableView, false);
            }
        });
        ofInt.start();
    }

    public final void captureStartingChild(float f, float f2) {
        if (this.startingChild == null) {
            ExpandHelper.Callback callback = this.expandCallback;
            ExpandHelper.Callback callback2 = null;
            if (callback == null) {
                callback = null;
            }
            ExpandableView childAtRawPosition = NotificationStackScrollLayout.this.getChildAtRawPosition(f, f2);
            this.startingChild = childAtRawPosition;
            if (childAtRawPosition != null) {
                if (this.dragDownCallback.isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(childAtRawPosition)) {
                    ExpandHelper.Callback callback3 = this.expandCallback;
                    if (callback3 != null) {
                        callback2 = callback3;
                    }
                    ((NotificationStackScrollLayout.AnonymousClass17) callback2).setUserLockedChild(this.startingChild, true);
                    return;
                }
                this.startingChild = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b9 A[RETURN] */
    @Override // com.android.systemui.Gefingerpoken
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            float r0 = r8.getX()
            float r1 = r8.getY()
            int r2 = r8.getActionMasked()
            r3 = 0
            r4 = 0
            if (r2 == 0) goto Lba
            r5 = 2
            if (r2 == r5) goto L15
            goto Lc4
        L15:
            float r2 = r7.initialTouchY
            float r2 = r1 - r2
            int r8 = r8.getClassification()
            r5 = 1
            if (r8 != r5) goto L26
            float r8 = r7.touchSlop
            float r6 = r7.slopMultiplier
            float r8 = r8 * r6
            goto L28
        L26:
            float r8 = r7.touchSlop
        L28:
            int r6 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r6 <= 0) goto L86
            float r6 = r7.initialTouchX
            float r6 = r0 - r6
            float r6 = java.lang.Math.abs(r6)
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 <= 0) goto L86
            com.android.systemui.classifier.FalsingCollector r8 = r7.falsingCollector
            r8.getClass()
            r7.isDraggingDown = r5
            float r8 = r7.initialTouchX
            float r2 = r7.initialTouchY
            r7.captureStartingChild(r8, r2)
            r7.initialTouchY = r1
            r7.initialTouchX = r0
            com.android.systemui.statusbar.notification.row.ExpandableView r8 = r7.startingChild
            com.android.systemui.statusbar.LockscreenShadeTransitionController r0 = r7.dragDownCallback
            com.android.systemui.statusbar.phone.LSShadeTransitionLogger r1 = r0.logger
            r1.logDragDownStarted(r8)
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r8 = r0.nsslController
            if (r8 != 0) goto L58
            r8 = r3
        L58:
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r8 = r8.mView
            r8.cancelLongPress()
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r8 = r0.nsslController
            if (r8 != 0) goto L62
            goto L63
        L62:
            r3 = r8
        L63:
            r3.checkSnoozeLeavebehind()
            android.animation.ValueAnimator r8 = r0.dragDownAnimator
            if (r8 == 0) goto L76
            boolean r2 = r8.isRunning()
            if (r2 == 0) goto L76
            r1.logAnimationCancelled(r4)
            r8.cancel()
        L76:
            float r8 = r0.dragDownAmount
            r7.dragDownAmountOnStart = r8
            com.android.systemui.statusbar.notification.row.ExpandableView r7 = r7.startingChild
            if (r7 != 0) goto L84
            boolean r7 = r0.isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()
            if (r7 == 0) goto L85
        L84:
            r4 = r5
        L85:
            return r4
        L86:
            java.lang.Class<com.android.systemui.shade.SecPanelPolicy> r1 = com.android.systemui.shade.SecPanelPolicy.class
            java.lang.Object r1 = com.android.systemui.Dependency.get(r1)
            com.android.systemui.shade.SecPanelPolicy r1 = (com.android.systemui.shade.SecPanelPolicy) r1
            float r7 = r7.initialTouchX
            com.android.systemui.statusbar.SysuiStatusBarStateController r1 = r1.mSysuiStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r1 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r1
            int r1 = r1.mState
            if (r1 != r5) goto L9a
            r1 = r5
            goto L9b
        L9a:
            r1 = r4
        L9b:
            if (r1 != 0) goto L9e
            goto Lb6
        L9e:
            float r1 = java.lang.Math.abs(r2)
            r3 = 0
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 >= 0) goto Lb6
            int r8 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r8 <= 0) goto Lb6
            float r0 = r0 - r7
            float r7 = java.lang.Math.abs(r0)
            int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r7 <= 0) goto Lb6
            r7 = r5
            goto Lb7
        Lb6:
            r7 = r4
        Lb7:
            if (r7 == 0) goto Lc4
            return r5
        Lba:
            r7.draggedFarEnough = r4
            r7.isDraggingDown = r4
            r7.startingChild = r3
            r7.initialTouchY = r1
            r7.initialTouchX = r0
        Lc4:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.DragDownHelper.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.systemui.Gefingerpoken
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        float f;
        if (!this.isDraggingDown) {
            return false;
        }
        motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        float f2 = 0.0f;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = null;
        final LockscreenShadeTransitionController lockscreenShadeTransitionController = this.dragDownCallback;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    stopDragging();
                    return false;
                }
            } else {
                float f3 = this.initialTouchY;
                this.lastHeight = y - f3;
                captureStartingChild(this.initialTouchX, f3);
                lockscreenShadeTransitionController.setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(this.lastHeight + this.dragDownAmountOnStart);
                ExpandableView expandableView = this.startingChild;
                if (expandableView != null) {
                    float f4 = this.lastHeight;
                    if (f4 >= 0.0f) {
                        f2 = f4;
                    }
                    boolean isContentExpandable = expandableView.isContentExpandable();
                    if (isContentExpandable) {
                        f = 0.5f;
                    } else {
                        f = 0.15f;
                    }
                    float f5 = f2 * f;
                    if (isContentExpandable && expandableView.getCollapsedHeight() + f5 > expandableView.getMaxContentHeight()) {
                        f5 -= ((expandableView.getCollapsedHeight() + f5) - expandableView.getMaxContentHeight()) * 0.85f;
                    }
                    expandableView.setActualHeight((int) (expandableView.getCollapsedHeight() + f5), true);
                    ((CentralSurfacesImpl) ((CentralSurfaces) Dependency.get(CentralSurfaces.class))).userActivity();
                }
                if (this.lastHeight > this.minDragDistance) {
                    if (!this.draggedFarEnough) {
                        this.draggedFarEnough = true;
                        NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = lockscreenShadeTransitionController.nsslController;
                        if (notificationStackScrollLayoutController2 != null) {
                            notificationStackScrollLayoutController = notificationStackScrollLayoutController2;
                        }
                        notificationStackScrollLayoutController.mView.setDimmed(false, true);
                    }
                } else if (this.draggedFarEnough) {
                    this.draggedFarEnough = false;
                    NotificationStackScrollLayoutController notificationStackScrollLayoutController3 = lockscreenShadeTransitionController.nsslController;
                    if (notificationStackScrollLayoutController3 != null) {
                        notificationStackScrollLayoutController = notificationStackScrollLayoutController3;
                    }
                    notificationStackScrollLayoutController.mView.setDimmed(true, true);
                }
                return true;
            }
        } else {
            FalsingManager falsingManager = this.falsingManager;
            if (!falsingManager.isUnlockingDisabled()) {
                if (((StatusBarStateControllerImpl) lockscreenShadeTransitionController.statusBarStateController).mState == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z || (!falsingManager.isFalseTouch(2) && this.draggedFarEnough)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z2 && lockscreenShadeTransitionController.canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core()) {
                    final ExpandableView expandableView2 = this.startingChild;
                    int i = (int) (y - this.initialTouchY);
                    boolean canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core = lockscreenShadeTransitionController.canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core();
                    LSShadeTransitionLogger lSShadeTransitionLogger = lockscreenShadeTransitionController.logger;
                    if (canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core) {
                        LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1 = new LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1(lockscreenShadeTransitionController);
                        NotificationStackScrollLayoutController notificationStackScrollLayoutController4 = lockscreenShadeTransitionController.nsslController;
                        if (notificationStackScrollLayoutController4 == null) {
                            notificationStackScrollLayoutController4 = null;
                        }
                        if (notificationStackScrollLayoutController4.mDynamicPrivacyController.isInLockedDownShade()) {
                            lSShadeTransitionLogger.logDraggedDownLockDownShade(expandableView2);
                            ((StatusBarStateControllerImpl) lockscreenShadeTransitionController.statusBarStateController).mLeaveOpenOnKeyguardHide = true;
                            lockscreenShadeTransitionController.activityStarter.dismissKeyguardThenExecute(new ActivityStarter.OnDismissAction() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$onDraggedDown$1
                                @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
                                public final boolean onDismiss() {
                                    LockscreenShadeTransitionController.this.nextHideKeyguardNeedsNoAnimation = true;
                                    return false;
                                }
                            }, lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1, false);
                        } else {
                            lSShadeTransitionLogger.logDraggedDown(expandableView2, i);
                            if (!lockscreenShadeTransitionController.ambientState.mDozing || expandableView2 != null) {
                                lockscreenShadeTransitionController.goToLockedShadeInternal(expandableView2, new Function1() { // from class: com.android.systemui.statusbar.LockscreenShadeTransitionController$onDraggedDown$animationHandler$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        long longValue = ((Number) obj).longValue();
                                        View view = expandableView2;
                                        if (view instanceof ExpandableNotificationRow) {
                                            ((ExpandableNotificationRow) view).onExpandedByGesture(true);
                                        }
                                        ShadeViewController shadeViewController = lockscreenShadeTransitionController.shadeViewController;
                                        if (shadeViewController == null) {
                                            shadeViewController = null;
                                        }
                                        ((NotificationPanelViewController) shadeViewController).transitionToExpandedShade(longValue);
                                        Iterator it = ((ArrayList) lockscreenShadeTransitionController.callbacks).iterator();
                                        while (it.hasNext()) {
                                            ((QuickSettingsController.LockscreenShadeTransitionCallback) it.next()).getClass();
                                        }
                                        LockscreenShadeTransitionController lockscreenShadeTransitionController2 = lockscreenShadeTransitionController;
                                        lockscreenShadeTransitionController2.forceApplyAmount = true;
                                        lockscreenShadeTransitionController2.logger.logDragDownAmountReset();
                                        lockscreenShadeTransitionController.setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(0.0f);
                                        lockscreenShadeTransitionController.forceApplyAmount = false;
                                        return Unit.INSTANCE;
                                    }
                                }, lockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1);
                                SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "1005", "Noti swipe down");
                            }
                        }
                    } else {
                        lSShadeTransitionLogger.logUnSuccessfulDragDown(expandableView2);
                        lockscreenShadeTransitionController.setDragDownAmountAnimated(0.0f, 0L, null);
                    }
                    ExpandableView expandableView3 = this.startingChild;
                    if (expandableView3 != null) {
                        ExpandHelper.Callback callback = this.expandCallback;
                        if (callback == null) {
                            callback = null;
                        }
                        ((NotificationStackScrollLayout.AnonymousClass17) callback).setUserLockedChild(expandableView3, false);
                        this.startingChild = null;
                    }
                    this.isDraggingDown = false;
                }
            }
            stopDragging();
            return false;
        }
        return false;
    }

    public final void stopDragging() {
        this.falsingCollector.getClass();
        ExpandableView expandableView = this.startingChild;
        if (expandableView != null) {
            cancelChildExpansion(expandableView, 375L);
            this.startingChild = null;
        }
        this.isDraggingDown = false;
        LockscreenShadeTransitionController lockscreenShadeTransitionController = this.dragDownCallback;
        lockscreenShadeTransitionController.logger.logDragDownAborted();
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = lockscreenShadeTransitionController.nsslController;
        if (notificationStackScrollLayoutController == null) {
            notificationStackScrollLayoutController = null;
        }
        notificationStackScrollLayoutController.mView.setDimmed(true, true);
        NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = lockscreenShadeTransitionController.nsslController;
        if (notificationStackScrollLayoutController2 == null) {
            notificationStackScrollLayoutController2 = null;
        }
        notificationStackScrollLayoutController2.mView.resetScrollPosition();
        NotificationStackScrollLayoutController notificationStackScrollLayoutController3 = lockscreenShadeTransitionController.nsslController;
        if (notificationStackScrollLayoutController3 == null) {
            notificationStackScrollLayoutController3 = null;
        }
        notificationStackScrollLayoutController3.mView.mCheckForLeavebehind = true;
        lockscreenShadeTransitionController.setDragDownAmountAnimated(0.0f, 0L, null);
    }

    public final void updateResources(Context context) {
        this.minDragDistance = context.getResources().getDimensionPixelSize(R.dimen.keyguard_drag_down_min_distance);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.slopMultiplier = viewConfiguration.getScaledAmbiguousGestureMultiplier();
    }
}
