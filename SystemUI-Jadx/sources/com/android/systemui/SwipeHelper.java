package com.android.systemui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Property;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.PathInterpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import com.android.app.animation.Interpolators;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.row.ActivatableNotificationView;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda1;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.wm.shell.animation.FlingAnimationUtils;
import com.android.wm.shell.animation.PhysicsAnimator;
import java.io.PrintWriter;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SwipeHelper implements Gefingerpoken, Dumpable {
    public boolean mAlreadyExecutedDragAndDrop;
    public final Callback mCallback;
    public boolean mCanCurrViewBeDimissed;
    public float mDensityScale;
    public final boolean mFadeDependingOnAmountSwiped;
    public final FalsingManager mFalsingManager;
    public final int mFalsingThreshold;
    public final FeatureFlags mFeatureFlags;
    public final FlingAnimationUtils mFlingAnimationUtils;
    public float mInitialTouchPos;
    public float mInitialTouchPosY;
    public boolean mIsSwiping;
    public boolean mLongPressSent;
    public boolean mMenuRowIntercepting;
    public float mPagingTouchSlop;
    public float mPerpendicularInitialTouchPos;
    public final float mSlopMultiplier;
    public boolean mSnappingChild;
    public boolean mTouchAboveFalsingThreshold;
    public final int mTouchSlop;
    public ExpandableView mTouchedView;
    public final float mMaxSwipeProgress = 1.0f;
    public final PhysicsAnimator.SpringConfig mSnapBackSpringConfig = new PhysicsAnimator.SpringConfig(200.0f, 0.75f);
    public float mTranslation = 0.0f;
    public final float[] mDownLocation = new float[2];
    public final AnonymousClass1 mPerformLongPress = new AnonymousClass1();
    public final ArrayMap mDismissPendingMap = new ArrayMap();
    public final Handler mHandler = new Handler();
    public final VelocityTracker mVelocityTracker = VelocityTracker.obtain();
    public final float mTouchSlopMultiplier = ViewConfiguration.getAmbiguousGestureMultiplier();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.SwipeHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        public final int[] mViewOffset = new int[2];

        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SwipeHelper swipeHelper = SwipeHelper.this;
            ExpandableView expandableView = swipeHelper.mTouchedView;
            if (expandableView != null && !swipeHelper.mLongPressSent) {
                swipeHelper.mLongPressSent = true;
                if (expandableView instanceof ExpandableNotificationRow) {
                    expandableView.getLocationOnScreen(this.mViewOffset);
                    SwipeHelper swipeHelper2 = SwipeHelper.this;
                    float[] fArr = swipeHelper2.mDownLocation;
                    int i = (int) fArr[0];
                    int[] iArr = this.mViewOffset;
                    int i2 = i - iArr[0];
                    int i3 = ((int) fArr[1]) - iArr[1];
                    swipeHelper2.mTouchedView.sendAccessibilityEvent(2);
                    ((ExpandableNotificationRow) SwipeHelper.this.mTouchedView).doLongClickCallback(i2, i3);
                    SwipeHelper swipeHelper3 = SwipeHelper.this;
                    if (swipeHelper3.isAvailableToDragAndDrop(swipeHelper3.mTouchedView)) {
                        SwipeHelper swipeHelper4 = SwipeHelper.this;
                        NotificationStackScrollLayoutController.this.mLongPressedView = swipeHelper4.mTouchedView;
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
    }

    public SwipeHelper(Callback callback, Resources resources, ViewConfiguration viewConfiguration, FalsingManager falsingManager, FeatureFlags featureFlags) {
        this.mCallback = callback;
        this.mPagingTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mSlopMultiplier = viewConfiguration.getScaledAmbiguousGestureMultiplier();
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        ViewConfiguration.getLongPressTimeout();
        this.mDensityScale = resources.getDisplayMetrics().density;
        this.mFalsingThreshold = resources.getDimensionPixelSize(R.dimen.swipe_helper_falsing_threshold);
        this.mFadeDependingOnAmountSwiped = resources.getBoolean(R.bool.config_fadeDependingOnAmountSwiped);
        this.mFalsingManager = falsingManager;
        this.mFeatureFlags = featureFlags;
        this.mFlingAnimationUtils = new FlingAnimationUtils(resources.getDisplayMetrics(), ((float) 400) / 1000.0f);
    }

    public final void cancelLongPress() {
        this.mHandler.removeCallbacks(this.mPerformLongPress);
    }

    public Animator createTranslationAnimation(View view, float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, f);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        return ofFloat;
    }

    public void dismissChild(View view, float f, boolean z) {
        dismissChild(view, f, null, 0L, z, 0L, false);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(final PrintWriter printWriter, String[] strArr) {
        String logKey;
        printWriter.append("mTouchedView=").print(this.mTouchedView);
        if (this.mTouchedView instanceof ExpandableNotificationRow) {
            PrintWriter append = printWriter.append(" key=");
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) this.mTouchedView;
            if (expandableNotificationRow == null) {
                logKey = "null";
            } else {
                logKey = NotificationUtils.logKey(expandableNotificationRow.mEntry);
            }
            append.println(logKey);
        } else {
            printWriter.println();
        }
        printWriter.append("mIsSwiping=").println(this.mIsSwiping);
        printWriter.append("mSnappingChild=").println(this.mSnappingChild);
        printWriter.append("mLongPressSent=").println(this.mLongPressSent);
        printWriter.append("mInitialTouchPos=").println(this.mInitialTouchPos);
        printWriter.append("mTranslation=").println(this.mTranslation);
        printWriter.append("mCanCurrViewBeDimissed=").println(this.mCanCurrViewBeDimissed);
        printWriter.append("mMenuRowIntercepting=").println(this.mMenuRowIntercepting);
        printWriter.append("mDisableHwLayers=").println(false);
        PrintWriter append2 = printWriter.append("mDismissPendingMap: ");
        ArrayMap arrayMap = this.mDismissPendingMap;
        append2.println(arrayMap.size());
        if (!arrayMap.isEmpty()) {
            arrayMap.forEach(new BiConsumer() { // from class: com.android.systemui.SwipeHelper$$ExternalSyntheticLambda2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    PrintWriter printWriter2 = printWriter;
                    printWriter2.append((CharSequence) "  ").print((View) obj);
                    printWriter2.append((CharSequence) ": ").println((Animator) obj2);
                }
            });
        }
    }

    public float getEscapeVelocity() {
        return 500.0f * this.mDensityScale;
    }

    public float getMinDismissVelocity() {
        return getEscapeVelocity();
    }

    public float getSwipeAlpha(float f) {
        if (this.mFadeDependingOnAmountSwiped) {
            return Math.max(1.0f - f, 0.0f);
        }
        return 1.0f - Math.max(0.0f, Math.min(1.0f, f / 0.6f));
    }

    public float getTotalTranslationLength(View view) {
        return view.getMeasuredWidth();
    }

    public float getTranslation(View view) {
        return view.getTranslationX();
    }

    public Animator getViewTranslationAnimator(View view, float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        PhysicsAnimator.getInstance(view).cancel();
        if (view instanceof ExpandableNotificationRow) {
            return ((ExpandableNotificationRow) view).getTranslateViewAnimator(f, animatorUpdateListener);
        }
        return createTranslationAnimation(view, f, animatorUpdateListener);
    }

    public boolean handleUpEvent(float f, MotionEvent motionEvent, View view) {
        return false;
    }

    public final boolean isAvailableToDragAndDrop(View view) {
        if (((FeatureFlagsRelease) this.mFeatureFlags).isEnabled(Flags.NOTIFICATION_DRAG_TO_CONTENTS) && (view instanceof ExpandableNotificationRow)) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
            boolean canBubble = expandableNotificationRow.mEntry.canBubble();
            Notification notification2 = expandableNotificationRow.mEntry.mSbn.getNotification();
            PendingIntent pendingIntent = notification2.contentIntent;
            if (pendingIntent == null) {
                pendingIntent = notification2.fullScreenIntent;
            }
            if (pendingIntent != null && !canBubble) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean isDismissGesture(MotionEvent motionEvent) {
        getTranslation(this.mTouchedView);
        if (motionEvent.getActionMasked() == 1 && !this.mFalsingManager.isUnlockingDisabled() && !isFalseGesture() && (swipedFastEnough() || swipedFarEnough())) {
            if (((NotificationStackScrollLayoutController.AnonymousClass9) this.mCallback).canChildBeDismissed(this.mTouchedView)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isFalseGesture() {
        boolean onKeyguard = NotificationStackScrollLayoutController.this.mView.onKeyguard();
        FalsingManager falsingManager = this.mFalsingManager;
        if (falsingManager.isClassifierEnabled()) {
            if (onKeyguard && falsingManager.isFalseTouch(1)) {
                return true;
            }
        } else if (onKeyguard && !this.mTouchAboveFalsingThreshold) {
            return true;
        }
        return false;
    }

    public void onChildSnappedBack(View view, float f) {
        NotificationStackScrollLayoutController.AnonymousClass9 anonymousClass9 = (NotificationStackScrollLayoutController.AnonymousClass9) this.mCallback;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
        NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
        notificationStackScrollLayout.updateFirstAndLastBackgroundViews();
        notificationStackScrollLayout.mController.mNotificationRoundnessManager.getClass();
        notificationStackScrollLayout.mShelf.updateAppearance();
        if (view instanceof ExpandableNotificationRow) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
            if (expandableNotificationRow.mIsPinned && !anonymousClass9.canChildBeDismissed(expandableNotificationRow) && expandableNotificationRow.mEntry.mSbn.getNotification().fullScreenIntent == null) {
                notificationStackScrollLayoutController.mHeadsUpManager.removeNotification(expandableNotificationRow.mEntry.mSbn.getKey(), true);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        if (r0 != 3) goto L48;
     */
    @Override // com.android.systemui.Gefingerpoken
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.SwipeHelper.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r4 != 4) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0098, code lost:
    
        if (r4 >= r0) goto L46;
     */
    @Override // com.android.systemui.Gefingerpoken
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.SwipeHelper.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void resetSwipeStates(boolean z) {
        boolean z2;
        Animator animator;
        ExpandableView expandableView = this.mTouchedView;
        boolean z3 = this.mSnappingChild;
        boolean z4 = this.mIsSwiping;
        this.mTouchedView = null;
        this.mIsSwiping = false;
        boolean z5 = z | z4;
        if (z5) {
            this.mSnappingChild = false;
        }
        if (expandableView == null) {
            return;
        }
        if (z5 && z3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if ((expandableView instanceof ExpandableNotificationRow) && (animator = ((ExpandableNotificationRow) expandableView).mTranslateAnim) != null) {
                animator.cancel();
            }
            PhysicsAnimator.getInstance(expandableView).cancel();
        }
        if (z5) {
            snapChildIfNeeded(expandableView, 0.0f, false);
        }
        if (z4 || z2) {
            onChildSnappedBack(expandableView, 0.0f);
        }
    }

    public void setTranslation(View view, float f) {
        if (view != null) {
            view.setTranslationX(f);
        }
    }

    public void snapChild(final View view, final float f, float f2) {
        PhysicsAnimator physicsAnimator;
        Animator animator;
        final boolean canChildBeDismissed = ((NotificationStackScrollLayoutController.AnonymousClass9) this.mCallback).canChildBeDismissed(view);
        boolean z = view instanceof ExpandableNotificationRow;
        if (z && (animator = ((ExpandableNotificationRow) view).mTranslateAnim) != null) {
            animator.cancel();
        }
        PhysicsAnimator.getInstance(view).cancel();
        PhysicsAnimator.SpringConfig springConfig = this.mSnapBackSpringConfig;
        if (z) {
            physicsAnimator = PhysicsAnimator.getInstance((ExpandableNotificationRow) view);
            ExpandableNotificationRow.AnonymousClass2 anonymousClass2 = ExpandableNotificationRow.TRANSLATE_CONTENT;
            physicsAnimator.spring(new FloatPropertyCompat.AnonymousClass1(anonymousClass2.getName(), anonymousClass2), f, f2, springConfig);
        } else {
            physicsAnimator = PhysicsAnimator.getInstance(view);
            physicsAnimator.spring(DynamicAnimation.TRANSLATION_X, f, f2, springConfig);
        }
        physicsAnimator.updateListeners.add(new PhysicsAnimator.UpdateListener() { // from class: com.android.systemui.SwipeHelper$$ExternalSyntheticLambda0
            @Override // com.android.wm.shell.animation.PhysicsAnimator.UpdateListener
            public final void onAnimationUpdateForProperty(Object obj) {
                View view2 = (View) obj;
                SwipeHelper swipeHelper = SwipeHelper.this;
                swipeHelper.updateSwipeProgressFromOffset(view2, swipeHelper.getTranslation(view2), canChildBeDismissed);
            }
        });
        physicsAnimator.endListeners.add(new PhysicsAnimator.EndListener() { // from class: com.android.systemui.SwipeHelper$$ExternalSyntheticLambda1
            @Override // com.android.wm.shell.animation.PhysicsAnimator.EndListener
            public final void onAnimationEnd(Object obj, FloatPropertyCompat floatPropertyCompat, boolean z2, boolean z3, float f3, float f4) {
                ExpandableView expandableView;
                SwipeHelper swipeHelper = SwipeHelper.this;
                swipeHelper.mSnappingChild = false;
                View view2 = view;
                if (!z3) {
                    swipeHelper.updateSwipeProgressFromOffset(view2, swipeHelper.getTranslation(view2), canChildBeDismissed);
                    if (swipeHelper.mIsSwiping) {
                        expandableView = swipeHelper.mTouchedView;
                    } else {
                        expandableView = null;
                    }
                    if (expandableView == view2) {
                        swipeHelper.resetSwipeStates(false);
                    }
                    if (view2 == swipeHelper.mTouchedView && !swipeHelper.mIsSwiping) {
                        swipeHelper.mTouchedView = null;
                    }
                }
                swipeHelper.onChildSnappedBack(view2, f);
            }
        });
        this.mSnappingChild = true;
        physicsAnimator.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void snapChildIfNeeded(android.view.View r3, float r4, boolean r5) {
        /*
            r2 = this;
            boolean r0 = r2.mIsSwiping
            if (r0 == 0) goto L8
            com.android.systemui.statusbar.notification.row.ExpandableView r0 = r2.mTouchedView
            if (r0 == r3) goto Lc
        L8:
            boolean r0 = r2.mSnappingChild
            if (r0 == 0) goto Ld
        Lc:
            return
        Ld:
            android.util.ArrayMap r0 = r2.mDismissPendingMap
            java.lang.Object r0 = r0.get(r3)
            android.animation.Animator r0 = (android.animation.Animator) r0
            r1 = 0
            if (r0 == 0) goto L1c
            r0.cancel()
            goto L24
        L1c:
            float r0 = r2.getTranslation(r3)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L26
        L24:
            r0 = 1
            goto L27
        L26:
            r0 = 0
        L27:
            if (r0 == 0) goto L41
            if (r5 == 0) goto L2f
            r2.snapChild(r3, r4, r1)
            goto L41
        L2f:
            com.android.systemui.SwipeHelper$Callback r4 = r2.mCallback
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$9 r4 = (com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.AnonymousClass9) r4
            boolean r4 = r4.canChildBeDismissed(r3)
            r2.setTranslation(r3, r1)
            float r5 = r2.getTranslation(r3)
            r2.updateSwipeProgressFromOffset(r3, r5, r4)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.SwipeHelper.snapChildIfNeeded(android.view.View, float, boolean):void");
    }

    public boolean swipedFarEnough() {
        if (Math.abs(getTranslation(this.mTouchedView)) > this.mTouchedView.getMeasuredWidth() * 0.6f) {
            return true;
        }
        return false;
    }

    public boolean swipedFastEnough() {
        boolean z;
        boolean z2;
        float xVelocity = this.mVelocityTracker.getXVelocity();
        float translation = getTranslation(this.mTouchedView);
        if (Math.abs(xVelocity) <= getEscapeVelocity()) {
            return false;
        }
        if (xVelocity > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (translation > 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != z2) {
            return false;
        }
        return true;
    }

    public void updateSwipeProgressAlpha(View view, float f) {
        view.setAlpha(f);
    }

    public final void updateSwipeProgressFromOffset(View view, float f, boolean z) {
        float min = Math.min(Math.max(0.0f, Math.abs(f / view.getMeasuredWidth())), this.mMaxSwipeProgress);
        this.mCallback.getClass();
        if (z) {
            if (min != 0.0f && min != 1.0f) {
                view.setLayerType(2, null);
            } else {
                view.setLayerType(0, null);
            }
            updateSwipeProgressAlpha(view, getSwipeAlpha(min));
        }
        Trace.beginSection("SwipeHelper.invalidateGlobalRegion");
        RectF rectF = new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        while (view.getParent() != null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
            view.getMatrix().mapRect(rectF);
            view.invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        Trace.endSection();
    }

    public final void dismissChild(final View view, float f, final NotificationStackScrollLayout$$ExternalSyntheticLambda1 notificationStackScrollLayout$$ExternalSyntheticLambda1, long j, boolean z, long j2, boolean z2) {
        float f2;
        long j3;
        final boolean canChildBeDismissed = ((NotificationStackScrollLayoutController.AnonymousClass9) this.mCallback).canChildBeDismissed(view);
        boolean z3 = true;
        boolean z4 = f == 0.0f && (getTranslation(view) == 0.0f || z2) && (view.getLayoutDirection() == 1);
        if ((Math.abs(f) <= getEscapeVelocity() || f >= 0.0f) && (getTranslation(view) >= 0.0f || z2)) {
            z3 = false;
        }
        if (!z3 && !z4) {
            f2 = getTotalTranslationLength(view);
        } else {
            f2 = -getTotalTranslationLength(view);
        }
        if (j2 == 0) {
            j3 = f != 0.0f ? Math.min(400L, (int) ((Math.abs(f2 - getTranslation(view)) * 1000.0f) / Math.abs(f))) : 200L;
        } else {
            j3 = j2;
        }
        view.setLayerType(2, null);
        Animator viewTranslationAnimator = getViewTranslationAnimator(view, f2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.SwipeHelper.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SwipeHelper.this.updateSwipeProgressFromOffset(view, ((Float) valueAnimator.getAnimatedValue()).floatValue(), canChildBeDismissed);
            }
        });
        if (viewTranslationAnimator == null) {
            onDismissChildWithAnimationFinished();
            return;
        }
        if (z) {
            viewTranslationAnimator.setInterpolator(Interpolators.FAST_OUT_LINEAR_IN);
            viewTranslationAnimator.setDuration(j3);
        } else {
            float translation = getTranslation(view);
            float measuredWidth = view.getMeasuredWidth();
            FlingAnimationUtils flingAnimationUtils = this.mFlingAnimationUtils;
            float pow = (float) (Math.pow(Math.abs(r5) / measuredWidth, 0.5d) * flingAnimationUtils.mMaxLengthSeconds);
            float abs = Math.abs(f2 - translation);
            float abs2 = Math.abs(f);
            float f3 = flingAnimationUtils.mMinVelocityPxPerSecond;
            float max = Math.max(0.0f, Math.min(1.0f, (abs2 - f3) / (flingAnimationUtils.mHighVelocityPxPerSecond - f3)));
            float f4 = (max * 0.5f) + ((1.0f - max) * 0.4f);
            PathInterpolator pathInterpolator = new PathInterpolator(0.0f, 0.0f, 0.5f, f4);
            float f5 = ((f4 / 0.5f) * abs) / abs2;
            FlingAnimationUtils.AnimatorProperties animatorProperties = flingAnimationUtils.mAnimatorProperties;
            if (f5 <= pow) {
                animatorProperties.mInterpolator = pathInterpolator;
                pow = f5;
            } else if (abs2 >= f3) {
                animatorProperties.mInterpolator = new FlingAnimationUtils.InterpolatorInterpolator(new FlingAnimationUtils.VelocityInterpolator(pow, abs2, abs, 0), pathInterpolator, com.android.wm.shell.animation.Interpolators.LINEAR_OUT_SLOW_IN);
            } else {
                animatorProperties.mInterpolator = com.android.wm.shell.animation.Interpolators.FAST_OUT_LINEAR_IN;
            }
            animatorProperties.getClass();
            viewTranslationAnimator = viewTranslationAnimator;
            viewTranslationAnimator.setDuration(pow * 1000.0f);
            viewTranslationAnimator.setInterpolator(animatorProperties.mInterpolator);
        }
        if (j > 0) {
            viewTranslationAnimator.setStartDelay(j);
        }
        viewTranslationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.SwipeHelper.3
            public boolean mCancelled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                this.mCancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ExpandableView expandableView;
                Log.d("com.android.systemui.SwipeHelper", "swiped dismiss anim end : " + view);
                SwipeHelper swipeHelper = SwipeHelper.this;
                View view2 = view;
                swipeHelper.updateSwipeProgressFromOffset(view2, swipeHelper.getTranslation(view2), canChildBeDismissed);
                SwipeHelper.this.mDismissPendingMap.remove(view);
                View view3 = view;
                if (view3 instanceof ExpandableNotificationRow) {
                    ((ExpandableNotificationRow) view3).getClass();
                }
                if (this.mCancelled) {
                    View view4 = view;
                    if (view4 instanceof ExpandableNotificationRow) {
                        Log.d("com.android.systemui.SwipeHelper", "onAnimationCancel removeFromTransientContainer");
                        ((ExpandableNotificationRow) view4).removeFromTransientContainer();
                    }
                } else {
                    Callback callback = SwipeHelper.this.mCallback;
                    View view5 = view;
                    NotificationStackScrollLayoutController.AnonymousClass9 anonymousClass9 = (NotificationStackScrollLayoutController.AnonymousClass9) callback;
                    anonymousClass9.getClass();
                    if (view5 instanceof ActivatableNotificationView) {
                        ActivatableNotificationView activatableNotificationView = (ActivatableNotificationView) view5;
                        if (!activatableNotificationView.mDismissed) {
                            anonymousClass9.handleChildViewDismissed(view5);
                        }
                        activatableNotificationView.removeFromTransientContainer();
                        if (activatableNotificationView instanceof ExpandableNotificationRow) {
                            ((ExpandableNotificationRow) activatableNotificationView).removeChildrenWithKeepInParent();
                        }
                    }
                    SwipeHelper swipeHelper2 = SwipeHelper.this;
                    View view6 = view;
                    if (swipeHelper2.mIsSwiping) {
                        expandableView = swipeHelper2.mTouchedView;
                    } else {
                        expandableView = null;
                    }
                    if (expandableView == view6) {
                        swipeHelper2.resetSwipeStates(false);
                    }
                }
                Consumer consumer = notificationStackScrollLayout$$ExternalSyntheticLambda1;
                if (consumer != null) {
                    consumer.accept(Boolean.valueOf(this.mCancelled));
                }
                SwipeHelper.this.getClass();
                view.setLayerType(0, null);
                SwipeHelper.this.onDismissChildWithAnimationFinished();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                ((NotificationStackScrollLayoutController.AnonymousClass9) SwipeHelper.this.mCallback).onBeginDrag(view);
            }
        });
        prepareDismissAnimation(viewTranslationAnimator, view);
        this.mDismissPendingMap.put(view, viewTranslationAnimator);
        viewTranslationAnimator.start();
    }

    public void onDownUpdate(ExpandableView expandableView) {
    }

    public void onMoveUpdate(float f) {
    }

    public void onDismissChildWithAnimationFinished() {
    }

    public void prepareDismissAnimation(Animator animator, View view) {
    }
}
