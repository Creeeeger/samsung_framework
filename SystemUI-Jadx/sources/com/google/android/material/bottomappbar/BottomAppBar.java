package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.android.systemui.R;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Behavior behavior;
    public int bottomInset;
    public int fabAlignmentMode;
    public final int fabAlignmentModeEndMargin;
    public final int fabAnchorMode;
    public final AnonymousClass1 fabAnimationListener;
    public boolean fabAttached;
    public final int fabOffsetEndMode;
    public final AnonymousClass2 fabTransformationCallback;
    public final boolean hideOnScroll;
    public int leftInset;
    public final MaterialShapeDrawable materialShapeDrawable;
    public final int menuAlignmentMode;
    public boolean menuAnimatingWithFabAlignmentMode;
    public Animator menuAnimator;
    public Integer navigationIconTint;
    public final boolean paddingBottomSystemWindowInsets;
    public final boolean paddingLeftSystemWindowInsets;
    public final boolean paddingRightSystemWindowInsets;
    public final boolean removeEmbeddedFabElevation;
    public int rightInset;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends AnimatorListenerAdapter {
        public AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            final ActionMenuView actionMenuView;
            int i;
            final BottomAppBar bottomAppBar = BottomAppBar.this;
            if (!bottomAppBar.menuAnimatingWithFabAlignmentMode) {
                final int i2 = bottomAppBar.fabAlignmentMode;
                final boolean z = bottomAppBar.fabAttached;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (!ViewCompat.Api19Impl.isLaidOut(bottomAppBar)) {
                    bottomAppBar.menuAnimatingWithFabAlignmentMode = false;
                    return;
                }
                Animator animator2 = bottomAppBar.menuAnimator;
                if (animator2 != null) {
                    animator2.cancel();
                }
                ArrayList arrayList = new ArrayList();
                if (!bottomAppBar.isFabVisibleOrWillBeShown()) {
                    i2 = 0;
                    z = false;
                }
                int i3 = 0;
                while (true) {
                    if (i3 < bottomAppBar.getChildCount()) {
                        View childAt = bottomAppBar.getChildAt(i3);
                        if (childAt instanceof ActionMenuView) {
                            actionMenuView = (ActionMenuView) childAt;
                            break;
                        }
                        i3++;
                    } else {
                        actionMenuView = null;
                        break;
                    }
                }
                if (actionMenuView != null) {
                    TypedValue resolve = MaterialAttributes.resolve(R.attr.motionDurationLong2, bottomAppBar.getContext());
                    if (resolve != null && resolve.type == 16) {
                        i = resolve.data;
                    } else {
                        i = 300;
                    }
                    float f = i;
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                    ofFloat.setDuration(0.8f * f);
                    if (Math.abs(actionMenuView.getTranslationX() - bottomAppBar.getActionMenuViewTranslationX(actionMenuView, i2, z)) > 1.0f) {
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                        ofFloat2.setDuration(f * 0.2f);
                        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7
                            public boolean cancelled;

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationCancel(Animator animator3) {
                                this.cancelled = true;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator3) {
                                if (!this.cancelled) {
                                    BottomAppBar.this.getClass();
                                    BottomAppBar.this.getClass();
                                    BottomAppBar.this.translateActionMenuView(actionMenuView, i2, z);
                                }
                            }
                        });
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playSequentially(ofFloat2, ofFloat);
                        arrayList.add(animatorSet);
                    } else if (actionMenuView.getAlpha() < 1.0f) {
                        arrayList.add(ofFloat);
                    }
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(arrayList);
                bottomAppBar.menuAnimator = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator3) {
                        BottomAppBar bottomAppBar2 = BottomAppBar.this;
                        bottomAppBar2.getClass();
                        bottomAppBar2.menuAnimatingWithFabAlignmentMode = false;
                        bottomAppBar2.menuAnimator = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator3) {
                        BottomAppBar.this.getClass();
                    }
                });
                bottomAppBar.menuAnimator.start();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements TransformationCallback {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: com.google.android.material.bottomappbar.BottomAppBar.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };
        public int fabAlignmentMode;
        public boolean fabAttached;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }
    }

    public BottomAppBar(Context context) {
        this(context, null);
    }

    public final View findDependentView() {
        List<View> arrayList;
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        ArrayList arrayList2 = (ArrayList) ((CoordinatorLayout) getParent()).mChildDag.mGraph.get(this);
        if (arrayList2 == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(arrayList2);
        }
        if (arrayList == null) {
            arrayList = Collections.emptyList();
        }
        for (View view : arrayList) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public final int getActionMenuViewTranslationX(ActionMenuView actionMenuView, int i, boolean z) {
        int i2;
        int left;
        int i3;
        boolean z2;
        int i4 = 0;
        if (this.menuAlignmentMode != 1 && (i != 1 || !z)) {
            return 0;
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        if (isLayoutRtl) {
            i2 = getMeasuredWidth();
        } else {
            i2 = 0;
        }
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & 8388615) == 8388611) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (isLayoutRtl) {
                    i2 = Math.min(i2, childAt.getLeft());
                } else {
                    i2 = Math.max(i2, childAt.getRight());
                }
            }
        }
        if (isLayoutRtl) {
            left = actionMenuView.getRight();
        } else {
            left = actionMenuView.getLeft();
        }
        if (isLayoutRtl) {
            i3 = this.rightInset;
        } else {
            i3 = -this.leftInset;
        }
        if (getNavigationIcon() == null) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_bottomappbar_horizontal_padding);
            if (!isLayoutRtl) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
            i4 = dimensionPixelOffset;
        }
        return i2 - ((left + i3) + i4);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public final CoordinatorLayout.Behavior getBehavior() {
        if (this.behavior == null) {
            this.behavior = new Behavior();
        }
        return this.behavior;
    }

    public final float getFabTranslationX$1() {
        int i;
        int i2;
        int i3 = this.fabAlignmentMode;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i4 = 1;
        if (i3 == 1) {
            View findDependentView = findDependentView();
            if (isLayoutRtl) {
                i = this.leftInset;
            } else {
                i = this.rightInset;
            }
            if (this.fabAlignmentModeEndMargin != -1 && findDependentView != null) {
                i2 = (findDependentView.getMeasuredWidth() / 2) + this.fabAlignmentModeEndMargin;
            } else {
                i2 = this.fabOffsetEndMode;
            }
            int measuredWidth = (getMeasuredWidth() / 2) - (i2 + i);
            if (isLayoutRtl) {
                i4 = -1;
            }
            return measuredWidth * i4;
        }
        return 0.0f;
    }

    public final BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        return (BottomAppBarTopEdgeTreatment) this.materialShapeDrawable.drawableState.shapeAppearanceModel.topEdge;
    }

    public final boolean isFabVisibleOrWillBeShown() {
        FloatingActionButton floatingActionButton;
        boolean z;
        View findDependentView = findDependentView();
        if (findDependentView instanceof FloatingActionButton) {
            floatingActionButton = (FloatingActionButton) findDependentView;
        } else {
            floatingActionButton = null;
        }
        if (floatingActionButton == null) {
            return false;
        }
        FloatingActionButtonImpl impl = floatingActionButton.getImpl();
        if (impl.view.getVisibility() == 0 ? impl.animState != 1 : impl.animState == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.materialShapeDrawable);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            Animator animator = this.menuAnimator;
            if (animator != null) {
                animator.cancel();
            }
            setCutoutStateAndTranslateFab();
        }
        setActionMenuViewPosition();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        this.fabAlignmentMode = savedState.fabAlignmentMode;
        this.fabAttached = savedState.fabAttached;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.fabAlignmentMode;
        savedState.fabAttached = this.fabAttached;
        return savedState;
    }

    public final void setActionMenuViewPosition() {
        ActionMenuView actionMenuView;
        int i = 0;
        while (true) {
            if (i < getChildCount()) {
                View childAt = getChildAt(i);
                if (childAt instanceof ActionMenuView) {
                    actionMenuView = (ActionMenuView) childAt;
                    break;
                }
                i++;
            } else {
                actionMenuView = null;
                break;
            }
        }
        if (actionMenuView != null && this.menuAnimator == null) {
            actionMenuView.setAlpha(1.0f);
            if (!isFabVisibleOrWillBeShown()) {
                translateActionMenuView(actionMenuView, 0, false);
            } else {
                translateActionMenuView(actionMenuView, this.fabAlignmentMode, this.fabAttached);
            }
        }
    }

    public final void setCutoutStateAndTranslateFab() {
        float f;
        getTopEdgeTreatment().horizontalOffset = getFabTranslationX$1();
        MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
        float f2 = 0.0f;
        if (this.fabAttached && isFabVisibleOrWillBeShown() && this.fabAnchorMode == 1) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        materialShapeDrawable.setInterpolation(f);
        View findDependentView = findDependentView();
        if (findDependentView != null) {
            if (this.fabAnchorMode == 1) {
                f2 = -getTopEdgeTreatment().cradleVerticalOffset;
            }
            findDependentView.setTranslationY(f2);
            findDependentView.setTranslationX(getFabTranslationX$1());
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        this.materialShapeDrawable.setElevation(f);
        MaterialShapeDrawable materialShapeDrawable = this.materialShapeDrawable;
        int shadowOffsetY = materialShapeDrawable.drawableState.shadowCompatRadius - materialShapeDrawable.getShadowOffsetY();
        if (this.behavior == null) {
            this.behavior = new Behavior();
        }
        Behavior behavior = this.behavior;
        behavior.additionalHiddenOffsetY = shadowOffsetY;
        if (behavior.currentState == 1) {
            setTranslationY(behavior.height + shadowOffsetY);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.navigationIconTint != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.navigationIconTint.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public final void translateActionMenuView(final ActionMenuView actionMenuView, final int i, final boolean z) {
        new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public final void run() {
                actionMenuView.setTranslationX(BottomAppBar.this.getActionMenuViewTranslationX(r0, i, z));
            }
        }.run();
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        public final Rect fabContentRect;
        public final AnonymousClass1 fabLayoutListener;
        public int originalBottomMargin;
        public WeakReference viewRef;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.bottomappbar.BottomAppBar$Behavior$1] */
        public Behavior() {
            this.fabLayoutListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.viewRef.get();
                    if (bottomAppBar != null && ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                        int height = view.getHeight();
                        if (view instanceof FloatingActionButton) {
                            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                            Rect rect = Behavior.this.fabContentRect;
                            rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                            floatingActionButton.offsetRectWithShadow(rect);
                            int height2 = Behavior.this.fabContentRect.height();
                            float f = height2;
                            if (f != bottomAppBar.getTopEdgeTreatment().fabDiameter) {
                                bottomAppBar.getTopEdgeTreatment().fabDiameter = f;
                                bottomAppBar.materialShapeDrawable.invalidateSelf();
                            }
                            ShapeAppearanceModel shapeAppearanceModel = floatingActionButton.getImpl().shapeAppearance;
                            shapeAppearanceModel.getClass();
                            float cornerSize = shapeAppearanceModel.topLeftCornerSize.getCornerSize(new RectF(Behavior.this.fabContentRect));
                            if (cornerSize != bottomAppBar.getTopEdgeTreatment().fabCornerSize) {
                                bottomAppBar.getTopEdgeTreatment().fabCornerSize = cornerSize;
                                bottomAppBar.materialShapeDrawable.invalidateSelf();
                            }
                            height = height2;
                        }
                        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                        if (Behavior.this.originalBottomMargin == 0) {
                            int measuredHeight = (view.getMeasuredHeight() - height) / 2;
                            int i9 = bottomAppBar.fabAnchorMode;
                            if (i9 == 1) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.bottomInset + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - measuredHeight);
                            } else if (i9 == 0) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = ((bottomAppBar.getMeasuredHeight() + bottomAppBar.bottomInset) - view.getMeasuredHeight()) / 2;
                            }
                            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.leftInset;
                            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.rightInset;
                            if (ViewUtils.isLayoutRtl(view)) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            }
                        }
                        return;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.fabContentRect = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            final BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.viewRef = new WeakReference(bottomAppBar);
            int i2 = BottomAppBar.$r8$clinit;
            View findDependentView = bottomAppBar.findDependentView();
            if (findDependentView != null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (!ViewCompat.Api19Impl.isLaidOut(findDependentView)) {
                    CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) findDependentView.getLayoutParams();
                    layoutParams.anchorGravity = 17;
                    int i3 = bottomAppBar.fabAnchorMode;
                    if (i3 == 1) {
                        layoutParams.anchorGravity = 49;
                    }
                    if (i3 == 0) {
                        layoutParams.anchorGravity |= 80;
                    }
                    this.originalBottomMargin = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) findDependentView.getLayoutParams())).bottomMargin;
                    if (findDependentView instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) findDependentView;
                        if (bottomAppBar.fabAnchorMode == 0 && bottomAppBar.removeEmbeddedFabElevation) {
                            ViewCompat.Api21Impl.setElevation(floatingActionButton, 0.0f);
                            FloatingActionButtonImpl impl = floatingActionButton.getImpl();
                            if (impl.elevation != 0.0f) {
                                impl.elevation = 0.0f;
                                impl.onElevationsChanged(0.0f, impl.hoveredFocusedTranslationZ, impl.pressedTranslationZ);
                            }
                        }
                        if (floatingActionButton.getImpl().showMotionSpec == null) {
                            floatingActionButton.getImpl().showMotionSpec = MotionSpec.createFromResource(R.animator.mtrl_fab_show_motion_spec, floatingActionButton.getContext());
                        }
                        if (floatingActionButton.getImpl().hideMotionSpec == null) {
                            floatingActionButton.getImpl().hideMotionSpec = MotionSpec.createFromResource(R.animator.mtrl_fab_hide_motion_spec, floatingActionButton.getContext());
                        }
                        AnonymousClass1 anonymousClass1 = bottomAppBar.fabAnimationListener;
                        FloatingActionButtonImpl impl2 = floatingActionButton.getImpl();
                        if (impl2.hideListeners == null) {
                            impl2.hideListeners = new ArrayList();
                        }
                        impl2.hideListeners.add(anonymousClass1);
                        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationStart(Animator animator) {
                                FloatingActionButton floatingActionButton2;
                                BottomAppBar.this.fabAnimationListener.onAnimationStart(animator);
                                View findDependentView2 = BottomAppBar.this.findDependentView();
                                if (findDependentView2 instanceof FloatingActionButton) {
                                    floatingActionButton2 = (FloatingActionButton) findDependentView2;
                                } else {
                                    floatingActionButton2 = null;
                                }
                                if (floatingActionButton2 != null) {
                                    floatingActionButton2.setTranslationX(BottomAppBar.this.getFabTranslationX$1());
                                }
                            }
                        };
                        FloatingActionButtonImpl impl3 = floatingActionButton.getImpl();
                        if (impl3.showListeners == null) {
                            impl3.showListeners = new ArrayList();
                        }
                        impl3.showListeners.add(animatorListenerAdapter);
                        AnonymousClass2 anonymousClass2 = bottomAppBar.fabTransformationCallback;
                        FloatingActionButtonImpl impl4 = floatingActionButton.getImpl();
                        FloatingActionButton.TransformationCallbackWrapper transformationCallbackWrapper = new FloatingActionButton.TransformationCallbackWrapper(anonymousClass2);
                        if (impl4.transformationCallbacks == null) {
                            impl4.transformationCallbacks = new ArrayList();
                        }
                        impl4.transformationCallbacks.add(transformationCallbackWrapper);
                    }
                    findDependentView.addOnLayoutChangeListener(this.fabLayoutListener);
                    bottomAppBar.setCutoutStateAndTranslateFab();
                }
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            super.onLayoutChild(coordinatorLayout, bottomAppBar, i);
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            if (bottomAppBar.hideOnScroll && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view2, view3, i, i2)) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.bottomappbar.BottomAppBar$Behavior$1] */
        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.fabLayoutListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.viewRef.get();
                    if (bottomAppBar != null && ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                        int height = view.getHeight();
                        if (view instanceof FloatingActionButton) {
                            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                            Rect rect = Behavior.this.fabContentRect;
                            rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                            floatingActionButton.offsetRectWithShadow(rect);
                            int height2 = Behavior.this.fabContentRect.height();
                            float f = height2;
                            if (f != bottomAppBar.getTopEdgeTreatment().fabDiameter) {
                                bottomAppBar.getTopEdgeTreatment().fabDiameter = f;
                                bottomAppBar.materialShapeDrawable.invalidateSelf();
                            }
                            ShapeAppearanceModel shapeAppearanceModel = floatingActionButton.getImpl().shapeAppearance;
                            shapeAppearanceModel.getClass();
                            float cornerSize = shapeAppearanceModel.topLeftCornerSize.getCornerSize(new RectF(Behavior.this.fabContentRect));
                            if (cornerSize != bottomAppBar.getTopEdgeTreatment().fabCornerSize) {
                                bottomAppBar.getTopEdgeTreatment().fabCornerSize = cornerSize;
                                bottomAppBar.materialShapeDrawable.invalidateSelf();
                            }
                            height = height2;
                        }
                        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                        if (Behavior.this.originalBottomMargin == 0) {
                            int measuredHeight = (view.getMeasuredHeight() - height) / 2;
                            int i9 = bottomAppBar.fabAnchorMode;
                            if (i9 == 1) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.bottomInset + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - measuredHeight);
                            } else if (i9 == 0) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = ((bottomAppBar.getMeasuredHeight() + bottomAppBar.bottomInset) - view.getMeasuredHeight()) / 2;
                            }
                            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.leftInset;
                            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.rightInset;
                            if (ViewUtils.isLayoutRtl(view)) {
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            } else {
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.fabOffsetEndMode;
                                return;
                            }
                        }
                        return;
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.fabContentRect = new Rect();
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 2132019076), attributeSet, i);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.materialShapeDrawable = materialShapeDrawable;
        this.menuAnimatingWithFabAlignmentMode = false;
        this.fabAttached = true;
        this.fabAnimationListener = new AnonymousClass1();
        this.fabTransformationCallback = new AnonymousClass2();
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.BottomAppBar, i, 2132019076, new int[0]);
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, obtainStyledAttributes, 0);
        if (obtainStyledAttributes.hasValue(11)) {
            this.navigationIconTint = Integer.valueOf(obtainStyledAttributes.getColor(11, -1));
            Drawable navigationIcon = getNavigationIcon();
            if (navigationIcon != null) {
                setNavigationIcon(navigationIcon);
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        float dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(6, 0);
        float dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(7, 0);
        float dimensionPixelOffset3 = obtainStyledAttributes.getDimensionPixelOffset(8, 0);
        this.fabAlignmentMode = obtainStyledAttributes.getInt(2, 0);
        obtainStyledAttributes.getInt(5, 0);
        this.fabAnchorMode = obtainStyledAttributes.getInt(4, 1);
        this.removeEmbeddedFabElevation = obtainStyledAttributes.getBoolean(15, true);
        this.menuAlignmentMode = obtainStyledAttributes.getInt(10, 0);
        this.hideOnScroll = obtainStyledAttributes.getBoolean(9, false);
        this.paddingBottomSystemWindowInsets = obtainStyledAttributes.getBoolean(12, false);
        this.paddingLeftSystemWindowInsets = obtainStyledAttributes.getBoolean(13, false);
        this.paddingRightSystemWindowInsets = obtainStyledAttributes.getBoolean(14, false);
        this.fabAlignmentModeEndMargin = obtainStyledAttributes.getDimensionPixelOffset(3, -1);
        obtainStyledAttributes.recycle();
        this.fabOffsetEndMode = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        BottomAppBarTopEdgeTreatment bottomAppBarTopEdgeTreatment = new BottomAppBarTopEdgeTreatment(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        RelativeCornerSize relativeCornerSize = ShapeAppearanceModel.PILL;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.topEdge = bottomAppBarTopEdgeTreatment;
        materialShapeDrawable.setShapeAppearanceModel(builder.build());
        materialShapeDrawable.setShadowCompatibilityMode();
        materialShapeDrawable.setPaintStyle(Paint.Style.FILL);
        materialShapeDrawable.initializeElevationOverlay(context2);
        setElevation(dimensionPixelSize);
        materialShapeDrawable.setTintList(colorStateList);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setBackground(this, materialShapeDrawable);
        ViewUtils.OnApplyWindowInsetsListener onApplyWindowInsetsListener = new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                boolean z;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                if (bottomAppBar.paddingBottomSystemWindowInsets) {
                    bottomAppBar.bottomInset = windowInsetsCompat.getSystemWindowInsetBottom();
                }
                boolean z2 = true;
                boolean z3 = false;
                if (bottomAppBar.paddingLeftSystemWindowInsets) {
                    if (bottomAppBar.leftInset != windowInsetsCompat.getSystemWindowInsetLeft()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    bottomAppBar.leftInset = windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    z = false;
                }
                if (bottomAppBar.paddingRightSystemWindowInsets) {
                    if (bottomAppBar.rightInset == windowInsetsCompat.getSystemWindowInsetRight()) {
                        z2 = false;
                    }
                    bottomAppBar.rightInset = windowInsetsCompat.getSystemWindowInsetRight();
                    z3 = z2;
                }
                if (z || z3) {
                    Animator animator = bottomAppBar.menuAnimator;
                    if (animator != null) {
                        animator.cancel();
                    }
                    bottomAppBar.setCutoutStateAndTranslateFab();
                    bottomAppBar.setActionMenuViewPosition();
                }
                return windowInsetsCompat;
            }
        };
        TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, R$styleable.Insets, i, 2132019076);
        boolean z = obtainStyledAttributes2.getBoolean(3, false);
        boolean z2 = obtainStyledAttributes2.getBoolean(4, false);
        boolean z3 = obtainStyledAttributes2.getBoolean(5, false);
        obtainStyledAttributes2.recycle();
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.2
            public final /* synthetic */ OnApplyWindowInsetsListener val$listener;
            public final /* synthetic */ boolean val$paddingBottomSystemWindowInsets;
            public final /* synthetic */ boolean val$paddingLeftSystemWindowInsets;
            public final /* synthetic */ boolean val$paddingRightSystemWindowInsets;

            public AnonymousClass2(boolean z4, boolean z22, boolean z32, OnApplyWindowInsetsListener onApplyWindowInsetsListener2) {
                r1 = z4;
                r2 = z22;
                r3 = z32;
                r4 = onApplyWindowInsetsListener2;
            }

            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding) {
                if (r1) {
                    relativePadding.bottom = windowInsetsCompat.getSystemWindowInsetBottom() + relativePadding.bottom;
                }
                boolean isLayoutRtl = ViewUtils.isLayoutRtl(view);
                if (r2) {
                    if (isLayoutRtl) {
                        relativePadding.end = windowInsetsCompat.getSystemWindowInsetLeft() + relativePadding.end;
                    } else {
                        relativePadding.start = windowInsetsCompat.getSystemWindowInsetLeft() + relativePadding.start;
                    }
                }
                if (r3) {
                    if (isLayoutRtl) {
                        relativePadding.start = windowInsetsCompat.getSystemWindowInsetRight() + relativePadding.start;
                    } else {
                        relativePadding.end = windowInsetsCompat.getSystemWindowInsetRight() + relativePadding.end;
                    }
                }
                int i2 = relativePadding.start;
                int i3 = relativePadding.top;
                int i4 = relativePadding.end;
                int i5 = relativePadding.bottom;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setPaddingRelative(view, i2, i3, i4, i5);
                OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = r4;
                if (onApplyWindowInsetsListener2 != null) {
                    return onApplyWindowInsetsListener2.onApplyWindowInsets(view, windowInsetsCompat, relativePadding);
                }
                return windowInsetsCompat;
            }
        });
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void setTitle(CharSequence charSequence) {
    }
}
