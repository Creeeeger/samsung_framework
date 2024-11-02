package com.android.wm.shell.bubbles.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.util.FloatProperty;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.systemui.R;
import com.android.wm.shell.bubbles.BadgedImageView;
import com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhysicsAnimationLayout extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public PhysicsAnimationController mController;
    public final HashMap mEndActionForProperty;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AllAnimationsForPropertyFinishedEndListener implements DynamicAnimation.OnAnimationEndListener {
        public final DynamicAnimation.ViewProperty mProperty;

        public AllAnimationsForPropertyFinishedEndListener(DynamicAnimation.ViewProperty viewProperty) {
            this.mProperty = viewProperty;
        }

        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            PhysicsAnimationLayout physicsAnimationLayout;
            Runnable runnable;
            DynamicAnimation.ViewProperty viewProperty = this.mProperty;
            DynamicAnimation.ViewProperty[] viewPropertyArr = {viewProperty};
            boolean z2 = false;
            int i = 0;
            while (true) {
                physicsAnimationLayout = PhysicsAnimationLayout.this;
                if (i >= physicsAnimationLayout.getChildCount()) {
                    break;
                }
                if (PhysicsAnimationLayout.arePropertiesAnimatingOnView(physicsAnimationLayout.getChildAt(i), viewPropertyArr)) {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (!z2 && physicsAnimationLayout.mEndActionForProperty.containsKey(viewProperty) && (runnable = (Runnable) physicsAnimationLayout.mEndActionForProperty.get(viewProperty)) != null) {
                runnable.run();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class PhysicsAnimationController {
        public PhysicsAnimationLayout mLayout;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public interface ChildAnimationConfigurator {
            void configureAnimationForChildAtIndex(int i, PhysicsPropertyAnimator physicsPropertyAnimator);
        }

        public final PhysicsPropertyAnimator animationForChild(View view) {
            PhysicsPropertyAnimator physicsPropertyAnimator = (PhysicsPropertyAnimator) view.getTag(R.id.physics_animator_tag);
            if (physicsPropertyAnimator == null) {
                PhysicsAnimationLayout physicsAnimationLayout = this.mLayout;
                Objects.requireNonNull(physicsAnimationLayout);
                physicsPropertyAnimator = new PhysicsPropertyAnimator(view);
                view.setTag(R.id.physics_animator_tag, physicsPropertyAnimator);
            }
            physicsPropertyAnimator.clearAnimator();
            physicsPropertyAnimator.mAssociatedController = this;
            return physicsPropertyAnimator;
        }

        public final PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0 animationsForChildrenFromIndex(ChildAnimationConfigurator childAnimationConfigurator) {
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.mLayout.getChildCount(); i++) {
                PhysicsPropertyAnimator animationForChild = animationForChild(this.mLayout.getChildAt(i));
                childAnimationConfigurator.configureAnimationForChildAtIndex(i, animationForChild);
                HashSet hashSet2 = new HashSet(((HashMap) animationForChild.mAnimatedProperties).keySet());
                if (animationForChild.mPathAnimator != null) {
                    hashSet2.add(DynamicAnimation.TRANSLATION_X);
                    hashSet2.add(DynamicAnimation.TRANSLATION_Y);
                }
                hashSet.addAll(hashSet2);
                arrayList.add(animationForChild);
            }
            return new PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0(this, hashSet, arrayList);
        }

        public abstract Set getAnimatedProperties();

        public abstract int getNextAnimationInChain(DynamicAnimation.ViewProperty viewProperty, int i);

        public abstract float getOffsetForChainedPropertyAnimation(DynamicAnimation.ViewProperty viewProperty, int i);

        public abstract SpringForce getSpringForce();

        public final boolean isActiveController() {
            PhysicsAnimationLayout physicsAnimationLayout = this.mLayout;
            if (physicsAnimationLayout != null && this == physicsAnimationLayout.mController) {
                return true;
            }
            return false;
        }

        public abstract void onActiveControllerForLayout(PhysicsAnimationLayout physicsAnimationLayout);

        public abstract void onChildAdded(View view, int i);

        public abstract void onChildRemoved(View view, PhysicsAnimationLayout$$ExternalSyntheticLambda1 physicsAnimationLayout$$ExternalSyntheticLambda1);

        public abstract void onChildReordered();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PhysicsPropertyAnimator {
        public PhysicsAnimationController mAssociatedController;
        public ObjectAnimator mPathAnimator;
        public Runnable[] mPositionEndActions;
        public final View mView;
        public float mDefaultStartVelocity = -3.4028235E38f;
        public long mStartDelay = 0;
        public float mDampingRatio = -1.0f;
        public float mStiffness = -1.0f;
        public final Map mEndActionsForProperty = new HashMap();
        public final Map mPositionStartVelocities = new HashMap();
        public final Map mAnimatedProperties = new HashMap();
        public final Map mInitialPropertyValues = new HashMap();
        public final PointF mCurrentPointOnPath = new PointF();
        public final AnonymousClass1 mCurrentPointOnPathXProperty = new FloatProperty("PathX") { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsPropertyAnimator.1
            @Override // android.util.Property
            public final Float get(Object obj) {
                return Float.valueOf(PhysicsPropertyAnimator.this.mCurrentPointOnPath.x);
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f) {
                PhysicsPropertyAnimator.this.mCurrentPointOnPath.x = f;
            }
        };
        public final AnonymousClass2 mCurrentPointOnPathYProperty = new FloatProperty("PathY") { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsPropertyAnimator.2
            @Override // android.util.Property
            public final Float get(Object obj) {
                return Float.valueOf(PhysicsPropertyAnimator.this.mCurrentPointOnPath.y);
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f) {
                PhysicsPropertyAnimator.this.mCurrentPointOnPath.y = f;
            }
        };

        /* JADX WARN: Type inference failed for: r3v8, types: [com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout$PhysicsPropertyAnimator$1] */
        /* JADX WARN: Type inference failed for: r3v9, types: [com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout$PhysicsPropertyAnimator$2] */
        public PhysicsPropertyAnimator(View view) {
            this.mView = view;
        }

        public final void animateValueForChild(DynamicAnimation.ViewProperty viewProperty, View view, final float f, final float f2, long j, final float f3, final float f4, final Runnable... runnableArr) {
            if (view != null) {
                int i = PhysicsAnimationLayout.$r8$clinit;
                PhysicsAnimationLayout physicsAnimationLayout = PhysicsAnimationLayout.this;
                physicsAnimationLayout.getClass();
                final SpringAnimation springAnimation = (SpringAnimation) view.getTag(PhysicsAnimationLayout.getTagIdForProperty(viewProperty));
                if (springAnimation == null) {
                    return;
                }
                if (runnableArr != null) {
                    springAnimation.addEndListener(new OneTimeEndListener(this) { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsPropertyAnimator.4
                        @Override // com.android.wm.shell.bubbles.animation.OneTimeEndListener, androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f5, float f6) {
                            dynamicAnimation.removeEndListener(this);
                            for (Runnable runnable : runnableArr) {
                                runnable.run();
                            }
                        }
                    });
                }
                final SpringForce springForce = springAnimation.mSpring;
                if (springForce == null) {
                    return;
                }
                Runnable runnable = new Runnable() { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpringForce springForce2 = SpringForce.this;
                        float f5 = f3;
                        float f6 = f4;
                        float f7 = f2;
                        SpringAnimation springAnimation2 = springAnimation;
                        float f8 = f;
                        springForce2.setStiffness(f5);
                        springForce2.setDampingRatio(f6);
                        if (f7 > -3.4028235E38f) {
                            springAnimation2.mVelocity = f7;
                        }
                        springForce2.mFinalPosition = f8;
                        springAnimation2.start();
                    }
                };
                if (j > 0) {
                    physicsAnimationLayout.postDelayed(runnable, j);
                } else {
                    runnable.run();
                }
            }
        }

        public final void clearAnimator() {
            ((HashMap) this.mInitialPropertyValues).clear();
            ((HashMap) this.mAnimatedProperties).clear();
            ((HashMap) this.mPositionStartVelocities).clear();
            this.mDefaultStartVelocity = -3.4028235E38f;
            this.mStartDelay = 0L;
            this.mStiffness = -1.0f;
            this.mDampingRatio = -1.0f;
            ((HashMap) this.mEndActionsForProperty).clear();
            this.mPathAnimator = null;
            this.mPositionEndActions = null;
        }

        public final void property(DynamicAnimation.ViewProperty viewProperty, float f, Runnable... runnableArr) {
            ((HashMap) this.mAnimatedProperties).put(viewProperty, Float.valueOf(f));
            ((HashMap) this.mEndActionsForProperty).put(viewProperty, runnableArr);
        }

        public final void start(Runnable... runnableArr) {
            boolean z;
            ObjectAnimator objectAnimator;
            PhysicsAnimationController physicsAnimationController = this.mAssociatedController;
            PhysicsAnimationLayout physicsAnimationLayout = PhysicsAnimationLayout.this;
            if (physicsAnimationLayout.mController == physicsAnimationController) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                Log.w("Bubbs.PAL", "Only the active animation controller is allowed to start animations. Use PhysicsAnimationLayout#setActiveController to set the active animation controller.");
                return;
            }
            Map map = this.mAnimatedProperties;
            HashSet hashSet = new HashSet(((HashMap) map).keySet());
            if (this.mPathAnimator != null) {
                hashSet.add(DynamicAnimation.TRANSLATION_X);
                hashSet.add(DynamicAnimation.TRANSLATION_Y);
            }
            if (runnableArr.length > 0) {
                DynamicAnimation.ViewProperty[] viewPropertyArr = (DynamicAnimation.ViewProperty[]) hashSet.toArray(new DynamicAnimation.ViewProperty[0]);
                PhysicsAnimationController physicsAnimationController2 = this.mAssociatedController;
                PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0(runnableArr, 0);
                physicsAnimationController2.getClass();
                PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1(physicsAnimationController2, viewPropertyArr, 1, physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0);
                for (DynamicAnimation.ViewProperty viewProperty : viewPropertyArr) {
                    physicsAnimationController2.mLayout.mEndActionForProperty.put(viewProperty, physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1);
                }
            }
            Runnable[] runnableArr2 = this.mPositionEndActions;
            Map map2 = this.mEndActionsForProperty;
            View view = this.mView;
            if (runnableArr2 != null) {
                DynamicAnimation.AnonymousClass1 anonymousClass1 = DynamicAnimation.TRANSLATION_X;
                SpringAnimation springAnimationFromView = PhysicsAnimationLayout.getSpringAnimationFromView(anonymousClass1, view);
                DynamicAnimation.AnonymousClass2 anonymousClass2 = DynamicAnimation.TRANSLATION_Y;
                PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda12 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1(this, springAnimationFromView, 0, PhysicsAnimationLayout.getSpringAnimationFromView(anonymousClass2, view));
                HashMap hashMap = (HashMap) map2;
                hashMap.put(anonymousClass1, new Runnable[]{physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda12});
                hashMap.put(anonymousClass2, new Runnable[]{physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda12});
            }
            if (this.mPathAnimator != null) {
                PhysicsAnimationController physicsAnimationController3 = physicsAnimationLayout.mController;
                DynamicAnimation.AnonymousClass1 anonymousClass12 = DynamicAnimation.TRANSLATION_X;
                final SpringForce springForce = physicsAnimationController3.getSpringForce();
                final SpringForce springForce2 = physicsAnimationLayout.mController.getSpringForce();
                long j = this.mStartDelay;
                if (j > 0) {
                    this.mPathAnimator.setStartDelay(j);
                }
                final PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0 physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda02 = new PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0(this, 2);
                this.mPathAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda02.run();
                    }
                });
                this.mPathAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout.PhysicsPropertyAnimator.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        physicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda02.run();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        float f;
                        PhysicsPropertyAnimator physicsPropertyAnimator = PhysicsPropertyAnimator.this;
                        DynamicAnimation.AnonymousClass1 anonymousClass13 = DynamicAnimation.TRANSLATION_X;
                        View view2 = physicsPropertyAnimator.mView;
                        float f2 = physicsPropertyAnimator.mCurrentPointOnPath.x;
                        float f3 = physicsPropertyAnimator.mDefaultStartVelocity;
                        float f4 = physicsPropertyAnimator.mStiffness;
                        if (f4 < 0.0f) {
                            double d = springForce.mNaturalFreq;
                            f4 = (float) (d * d);
                        }
                        float f5 = physicsPropertyAnimator.mDampingRatio;
                        if (f5 < 0.0f) {
                            f5 = (float) springForce.mDampingRatio;
                        }
                        physicsPropertyAnimator.animateValueForChild(anonymousClass13, view2, f2, f3, 0L, f4, f5, new Runnable[0]);
                        PhysicsPropertyAnimator physicsPropertyAnimator2 = PhysicsPropertyAnimator.this;
                        DynamicAnimation.AnonymousClass2 anonymousClass22 = DynamicAnimation.TRANSLATION_Y;
                        View view3 = physicsPropertyAnimator2.mView;
                        float f6 = physicsPropertyAnimator2.mCurrentPointOnPath.y;
                        float f7 = physicsPropertyAnimator2.mDefaultStartVelocity;
                        float f8 = physicsPropertyAnimator2.mStiffness;
                        if (f8 < 0.0f) {
                            double d2 = springForce2.mNaturalFreq;
                            f8 = (float) (d2 * d2);
                        }
                        float f9 = f8;
                        float f10 = physicsPropertyAnimator2.mDampingRatio;
                        if (f10 >= 0.0f) {
                            f = f10;
                        } else {
                            f = (float) springForce2.mDampingRatio;
                        }
                        physicsPropertyAnimator2.animateValueForChild(anonymousClass22, view3, f6, f7, 0L, f9, f, new Runnable[0]);
                    }
                });
                if (view == null) {
                    objectAnimator = null;
                } else {
                    objectAnimator = (ObjectAnimator) view.getTag(R.id.target_animator_tag);
                }
                if (objectAnimator != null) {
                    objectAnimator.cancel();
                }
                view.setTag(R.id.target_animator_tag, this.mPathAnimator);
                this.mPathAnimator.start();
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                DynamicAnimation.ViewProperty viewProperty2 = (DynamicAnimation.ViewProperty) it.next();
                if (this.mPathAnimator != null && (viewProperty2.equals(DynamicAnimation.TRANSLATION_X) || viewProperty2.equals(DynamicAnimation.TRANSLATION_Y))) {
                    return;
                }
                HashMap hashMap2 = (HashMap) this.mInitialPropertyValues;
                if (hashMap2.containsKey(viewProperty2)) {
                    viewProperty2.setValue(view, ((Float) hashMap2.get(viewProperty2)).floatValue());
                }
                SpringForce springForce3 = physicsAnimationLayout.mController.getSpringForce();
                View view2 = this.mView;
                float floatValue = ((Float) ((HashMap) map).get(viewProperty2)).floatValue();
                float floatValue2 = ((Float) ((HashMap) this.mPositionStartVelocities).getOrDefault(viewProperty2, Float.valueOf(this.mDefaultStartVelocity))).floatValue();
                long j2 = this.mStartDelay;
                float f = this.mStiffness;
                if (f < 0.0f) {
                    double d = springForce3.mNaturalFreq;
                    f = (float) (d * d);
                }
                float f2 = this.mDampingRatio;
                if (f2 < 0.0f) {
                    f2 = (float) springForce3.mDampingRatio;
                }
                animateValueForChild(viewProperty2, view2, floatValue, floatValue2, j2, f, f2, (Runnable[]) ((HashMap) map2).get(viewProperty2));
            }
            clearAnimator();
        }

        public final void translationY(float f, Runnable... runnableArr) {
            this.mPathAnimator = null;
            property(DynamicAnimation.TRANSLATION_Y, f, runnableArr);
        }

        public final void updateValueForChild(DynamicAnimation.ViewProperty viewProperty, View view, float f) {
            SpringForce springForce;
            if (view != null) {
                int i = PhysicsAnimationLayout.$r8$clinit;
                PhysicsAnimationLayout.this.getClass();
                SpringAnimation springAnimation = (SpringAnimation) view.getTag(PhysicsAnimationLayout.getTagIdForProperty(viewProperty));
                if (springAnimation == null || (springForce = springAnimation.mSpring) == null) {
                    return;
                }
                springForce.mFinalPosition = f;
                springAnimation.start();
            }
        }
    }

    public PhysicsAnimationLayout(Context context) {
        super(context);
        this.mEndActionForProperty = new HashMap();
    }

    public static boolean arePropertiesAnimatingOnView(View view, DynamicAnimation.ViewProperty... viewPropertyArr) {
        ObjectAnimator objectAnimator;
        boolean z;
        if (view == null) {
            objectAnimator = null;
        } else {
            objectAnimator = (ObjectAnimator) view.getTag(R.id.target_animator_tag);
        }
        for (DynamicAnimation.ViewProperty viewProperty : viewPropertyArr) {
            SpringAnimation springAnimationFromView = getSpringAnimationFromView(viewProperty, view);
            if (springAnimationFromView != null && springAnimationFromView.mRunning) {
                return true;
            }
            if (!viewProperty.equals(DynamicAnimation.TRANSLATION_X) && !viewProperty.equals(DynamicAnimation.TRANSLATION_Y)) {
                z = false;
            } else {
                z = true;
            }
            if (z && objectAnimator != null && objectAnimator.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public static String getReadablePropertyName(DynamicAnimation.ViewProperty viewProperty) {
        if (viewProperty.equals(DynamicAnimation.TRANSLATION_X)) {
            return "TRANSLATION_X";
        }
        if (viewProperty.equals(DynamicAnimation.TRANSLATION_Y)) {
            return "TRANSLATION_Y";
        }
        if (viewProperty.equals(DynamicAnimation.SCALE_X)) {
            return "SCALE_X";
        }
        if (viewProperty.equals(DynamicAnimation.SCALE_Y)) {
            return "SCALE_Y";
        }
        if (viewProperty.equals(DynamicAnimation.ALPHA)) {
            return "ALPHA";
        }
        return "Unknown animation property.";
    }

    public static SpringAnimation getSpringAnimationFromView(DynamicAnimation.ViewProperty viewProperty, View view) {
        if (view == null) {
            return null;
        }
        return (SpringAnimation) view.getTag(getTagIdForProperty(viewProperty));
    }

    public static int getTagIdForProperty(DynamicAnimation.ViewProperty viewProperty) {
        if (viewProperty.equals(DynamicAnimation.TRANSLATION_X)) {
            return R.id.translation_x_dynamicanimation_tag;
        }
        if (viewProperty.equals(DynamicAnimation.TRANSLATION_Y)) {
            return R.id.translation_y_dynamicanimation_tag;
        }
        if (viewProperty.equals(DynamicAnimation.SCALE_X)) {
            return R.id.scale_x_dynamicanimation_tag;
        }
        if (viewProperty.equals(DynamicAnimation.SCALE_Y)) {
            return R.id.scale_y_dynamicanimation_tag;
        }
        if (viewProperty.equals(DynamicAnimation.ALPHA)) {
            return R.id.alpha_dynamicanimation_tag;
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view, i, layoutParams, false);
    }

    public final void addViewInternal(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (view != null) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            removeTransientView(view);
        }
        super.addView(view, i, layoutParams);
        PhysicsAnimationController physicsAnimationController = this.mController;
        if (physicsAnimationController != null && !z) {
            Iterator it = physicsAnimationController.getAnimatedProperties().iterator();
            while (it.hasNext()) {
                setUpAnimationForChild((DynamicAnimation.ViewProperty) it.next(), view);
            }
            this.mController.onChildAdded(view, i);
        }
    }

    public final void cancelAllAnimationsOfProperties(DynamicAnimation.ViewProperty... viewPropertyArr) {
        ViewPropertyAnimator viewPropertyAnimator;
        if (this.mController == null) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            for (DynamicAnimation.ViewProperty viewProperty : viewPropertyArr) {
                SpringAnimation springAnimationFromView = getSpringAnimationFromView(viewProperty, getChildAt(i));
                if (springAnimationFromView != null) {
                    springAnimationFromView.cancel();
                }
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                viewPropertyAnimator = null;
            } else {
                viewPropertyAnimator = (ViewPropertyAnimator) childAt.getTag(R.id.reorder_animator_tag);
            }
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
            }
        }
    }

    public final void cancelAnimationsOnView(View view) {
        ObjectAnimator objectAnimator;
        if (view == null) {
            objectAnimator = null;
        } else {
            objectAnimator = (ObjectAnimator) view.getTag(R.id.target_animator_tag);
        }
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        Iterator it = this.mController.getAnimatedProperties().iterator();
        while (it.hasNext()) {
            SpringAnimation springAnimationFromView = getSpringAnimationFromView((DynamicAnimation.ViewProperty) it.next(), view);
            if (springAnimationFromView != null) {
                springAnimationFromView.cancel();
            }
        }
    }

    public final boolean isFirstChildXLeftOfCenter(float f) {
        if (getChildCount() <= 0 || f + (getChildAt(0).getWidth() / 2) >= getWidth() / 2) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.mController != null) {
            int indexOfChild = indexOfChild(view);
            super.removeView(view);
            addTransientView(view, indexOfChild);
            this.mController.onChildRemoved(view, new PhysicsAnimationLayout$$ExternalSyntheticLambda1(this, view));
            return;
        }
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        removeView(getChildAt(i));
    }

    public final void reorderView(BadgedImageView badgedImageView, int i) {
        if (badgedImageView == null) {
            return;
        }
        indexOfChild(badgedImageView);
        super.removeView(badgedImageView);
        if (badgedImageView.getParent() != null) {
            removeTransientView(badgedImageView);
        }
        addViewInternal(badgedImageView, i, badgedImageView.getLayoutParams(), true);
        PhysicsAnimationController physicsAnimationController = this.mController;
        if (physicsAnimationController != null) {
            physicsAnimationController.onChildReordered();
        }
    }

    public final void setActiveController(PhysicsAnimationController physicsAnimationController) {
        PhysicsAnimationController physicsAnimationController2 = this.mController;
        if (physicsAnimationController2 != null) {
            cancelAllAnimationsOfProperties((DynamicAnimation.ViewProperty[]) physicsAnimationController2.getAnimatedProperties().toArray(new DynamicAnimation.ViewProperty[0]));
        }
        this.mEndActionForProperty.clear();
        this.mController = physicsAnimationController;
        physicsAnimationController.mLayout = this;
        physicsAnimationController.onActiveControllerForLayout(this);
        for (DynamicAnimation.ViewProperty viewProperty : this.mController.getAnimatedProperties()) {
            for (int i = 0; i < getChildCount(); i++) {
                setUpAnimationForChild(viewProperty, getChildAt(i));
            }
        }
    }

    public final void setUpAnimationForChild(final DynamicAnimation.ViewProperty viewProperty, final View view) {
        SpringAnimation springAnimation = new SpringAnimation(view, viewProperty);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.wm.shell.bubbles.animation.PhysicsAnimationLayout$$ExternalSyntheticLambda0
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                SpringAnimation springAnimationFromView;
                View view2 = view;
                PhysicsAnimationLayout physicsAnimationLayout = this;
                int indexOfChild = physicsAnimationLayout.indexOfChild(view2);
                PhysicsAnimationLayout.PhysicsAnimationController physicsAnimationController = physicsAnimationLayout.mController;
                DynamicAnimation.ViewProperty viewProperty2 = viewProperty;
                int nextAnimationInChain = physicsAnimationController.getNextAnimationInChain(viewProperty2, indexOfChild);
                if (nextAnimationInChain != -1 && indexOfChild >= 0) {
                    float offsetForChainedPropertyAnimation = physicsAnimationLayout.mController.getOffsetForChainedPropertyAnimation(viewProperty2, nextAnimationInChain);
                    if (nextAnimationInChain < physicsAnimationLayout.getChildCount() && (springAnimationFromView = PhysicsAnimationLayout.getSpringAnimationFromView(viewProperty2, physicsAnimationLayout.getChildAt(nextAnimationInChain))) != null) {
                        springAnimationFromView.animateToFinalPosition(f + offsetForChainedPropertyAnimation);
                    }
                }
            }
        });
        springAnimation.mSpring = this.mController.getSpringForce();
        springAnimation.addEndListener(new AllAnimationsForPropertyFinishedEndListener(viewProperty));
        view.setTag(getTagIdForProperty(viewProperty), springAnimation);
    }
}
