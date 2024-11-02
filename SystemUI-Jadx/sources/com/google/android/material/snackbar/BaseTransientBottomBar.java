package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.android.systemui.R;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.snackbar.SnackbarManager;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseTransientBottomBar {
    public static final int[] SNACKBAR_STYLE_ATTR = {R.attr.snackbarStyle};
    public static final Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean z;
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                final BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                final int i2 = message.arg1;
                AccessibilityManager accessibilityManager = baseTransientBottomBar.accessibilityManager;
                if (accessibilityManager == null || ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) != null && enabledAccessibilityServiceList.isEmpty())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
                    if (snackbarBaseLayout.getVisibility() == 0) {
                        if (snackbarBaseLayout.animationMode == 1) {
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                            ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
                            ofFloat.addUpdateListener(new AnonymousClass11());
                            ofFloat.setInterpolator(android.view.animation.AnimationUtils.loadInterpolator(baseTransientBottomBar.context, android.R.interpolator.accelerate_quad));
                            ofFloat.setDuration(500L);
                            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    BaseTransientBottomBar.this.onViewHidden(i2);
                                }
                            });
                            ofFloat.start();
                        } else {
                            ValueAnimator valueAnimator = new ValueAnimator();
                            int height = snackbarBaseLayout.getHeight();
                            ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
                            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                                height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            }
                            valueAnimator.setIntValues(0, height);
                            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                            valueAnimator.setDuration(250L);
                            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    BaseTransientBottomBar.this.onViewHidden(i2);
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                    SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) BaseTransientBottomBar.this.contentViewCallback;
                                    snackbarContentLayout.messageView.setAlpha(1.0f);
                                    long j = 180;
                                    long j2 = 0;
                                    snackbarContentLayout.messageView.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
                                    if (snackbarContentLayout.actionView.getVisibility() == 0) {
                                        snackbarContentLayout.actionView.setAlpha(1.0f);
                                        snackbarContentLayout.actionView.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
                                    }
                                }
                            });
                            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                                    Handler handler2 = BaseTransientBottomBar.handler;
                                    BaseTransientBottomBar.this.view.setTranslationY(intValue);
                                }
                            });
                            valueAnimator.start();
                        }
                        return true;
                    }
                }
                baseTransientBottomBar.onViewHidden(i2);
                return true;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            SnackbarBaseLayout snackbarBaseLayout2 = baseTransientBottomBar2.view;
            if (snackbarBaseLayout2.getParent() == null) {
                ViewGroup.LayoutParams layoutParams2 = snackbarBaseLayout2.getLayoutParams();
                if (layoutParams2 instanceof CoordinatorLayout.LayoutParams) {
                    CoordinatorLayout.LayoutParams layoutParams3 = (CoordinatorLayout.LayoutParams) layoutParams2;
                    Behavior behavior = new Behavior();
                    BehaviorDelegate behaviorDelegate = behavior.delegate;
                    behaviorDelegate.getClass();
                    behaviorDelegate.managerCallback = baseTransientBottomBar2.managerCallback;
                    behavior.listener = new AnonymousClass7();
                    layoutParams3.setBehavior(behavior);
                    layoutParams3.insetEdge = 80;
                }
                snackbarBaseLayout2.addingToTargetParent = true;
                baseTransientBottomBar2.targetParent.addView(snackbarBaseLayout2);
                snackbarBaseLayout2.addingToTargetParent = false;
                snackbarBaseLayout2.setVisibility(4);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api19Impl.isLaidOut(snackbarBaseLayout2)) {
                baseTransientBottomBar2.showViewImpl();
            } else {
                baseTransientBottomBar2.pendingShowingView = true;
            }
            return true;
        }
    });
    public final AccessibilityManager accessibilityManager;
    public final AnonymousClass2 bottomMarginGestureInsetRunnable;
    public List callbacks;
    public final ContentViewCallback contentViewCallback;
    public final Context context;
    public int duration;
    public int extraBottomMarginGestureInset;
    public int extraBottomMarginWindowInset;
    public int extraLeftMarginWindowInset;
    public int extraRightMarginWindowInset;
    public final AnonymousClass5 managerCallback;
    public boolean pendingShowingView;
    public final ViewGroup targetParent;
    public final SnackbarBaseLayout view;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$11, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass11 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass11() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass5 implements SnackbarManager.Callback {
        public AnonymousClass5() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$7, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass7 implements SwipeDismissBehavior.OnDismissListener {
        public AnonymousClass7() {
        }

        public final void onDismiss(View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.dispatchDismiss(0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class Behavior extends SwipeDismissBehavior<View> {
        public final BehaviorDelegate delegate = new BehaviorDelegate(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean canSwipeDismissView(View view) {
            this.delegate.getClass();
            return view instanceof SnackbarBaseLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            BehaviorDelegate behaviorDelegate = this.delegate;
            behaviorDelegate.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    SnackbarManager snackbarManager = SnackbarManager.getInstance();
                    AnonymousClass5 anonymousClass5 = behaviorDelegate.managerCallback;
                    synchronized (snackbarManager.lock) {
                        if (snackbarManager.isCurrentSnackbarLocked(anonymousClass5)) {
                            SnackbarManager.SnackbarRecord snackbarRecord = snackbarManager.currentSnackbar;
                            if (snackbarRecord.paused) {
                                snackbarRecord.paused = false;
                                snackbarManager.scheduleTimeoutLocked(snackbarRecord);
                            }
                        }
                    }
                }
            } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                SnackbarManager snackbarManager2 = SnackbarManager.getInstance();
                AnonymousClass5 anonymousClass52 = behaviorDelegate.managerCallback;
                synchronized (snackbarManager2.lock) {
                    if (snackbarManager2.isCurrentSnackbarLocked(anonymousClass52)) {
                        SnackbarManager.SnackbarRecord snackbarRecord2 = snackbarManager2.currentSnackbar;
                        if (!snackbarRecord2.paused) {
                            snackbarRecord2.paused = true;
                            snackbarManager2.handler.removeCallbacksAndMessages(snackbarRecord2);
                        }
                    }
                }
            }
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BehaviorDelegate {
        public AnonymousClass5 managerCallback;

        public BehaviorDelegate(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.getClass();
            swipeDismissBehavior.alphaStartSwipeDistance = Math.min(Math.max(0.0f, 0.1f), 1.0f);
            swipeDismissBehavior.alphaEndSwipeDistance = Math.min(Math.max(0.0f, 0.6f), 1.0f);
            swipeDismissBehavior.swipeDirection = 0;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class SnackbarBaseLayout extends FrameLayout {
        public static final AnonymousClass1 consumeAllTouchListener = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                View view2;
                boolean z;
                if (!(view instanceof ViewGroup)) {
                    return true;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                ViewGroup viewGroup = (ViewGroup) view;
                AnonymousClass1 anonymousClass1 = SnackbarBaseLayout.consumeAllTouchListener;
                int childCount = viewGroup.getChildCount() - 1;
                while (true) {
                    if (childCount >= 0) {
                        view2 = viewGroup.getChildAt(childCount);
                        float x2 = view2.getX();
                        float y2 = view2.getY();
                        float width = view2.getWidth() + x2;
                        float height = view2.getHeight() + y2;
                        if (x >= x2 && y >= y2 && x < width && y < height) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            break;
                        }
                        childCount--;
                    } else {
                        view2 = null;
                        break;
                    }
                }
                if (view2 != null) {
                    return true;
                }
                return false;
            }
        };
        public final float actionTextColorAlpha;
        public boolean addingToTargetParent;
        public final int animationMode;
        public ColorStateList backgroundTint;
        public PorterDuff.Mode backgroundTintMode;
        public BaseTransientBottomBar baseTransientBottomBar;
        public Rect originalMargins;
        public final ShapeAppearanceModel shapeAppearanceModel;

        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            WindowInsets rootWindowInsets;
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null && (rootWindowInsets = baseTransientBottomBar.view.getRootWindowInsets()) != null) {
                baseTransientBottomBar.extraBottomMarginGestureInset = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                baseTransientBottomBar.updateMargins();
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api20Impl.requestApplyInsets(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onDetachedFromWindow() {
            /*
                r5 = this;
                super.onDetachedFromWindow()
                com.google.android.material.snackbar.BaseTransientBottomBar r5 = r5.baseTransientBottomBar
                if (r5 == 0) goto L44
                com.google.android.material.snackbar.SnackbarManager r0 = com.google.android.material.snackbar.SnackbarManager.getInstance()
                com.google.android.material.snackbar.BaseTransientBottomBar$5 r1 = r5.managerCallback
                java.lang.Object r2 = r0.lock
                monitor-enter(r2)
                boolean r3 = r0.isCurrentSnackbarLocked(r1)     // Catch: java.lang.Throwable -> L28
                r4 = 1
                if (r3 != 0) goto L34
                com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r0 = r0.nextSnackbar     // Catch: java.lang.Throwable -> L28
                r3 = 0
                if (r0 == 0) goto L2f
                if (r1 == 0) goto L2a
                java.lang.ref.WeakReference r0 = r0.callback     // Catch: java.lang.Throwable -> L28
                java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L28
                if (r0 != r1) goto L2a
                r0 = r4
                goto L2b
            L28:
                r5 = move-exception
                goto L42
            L2a:
                r0 = r3
            L2b:
                if (r0 == 0) goto L2f
                r0 = r4
                goto L30
            L2f:
                r0 = r3
            L30:
                if (r0 == 0) goto L33
                goto L34
            L33:
                r4 = r3
            L34:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L28
                if (r4 == 0) goto L44
                android.os.Handler r0 = com.google.android.material.snackbar.BaseTransientBottomBar.handler
                com.google.android.material.snackbar.BaseTransientBottomBar$6 r1 = new com.google.android.material.snackbar.BaseTransientBottomBar$6
                r1.<init>()
                r0.post(r1)
                goto L44
            L42:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L28
                throw r5
            L44:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.onDetachedFromWindow():void");
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null && baseTransientBottomBar.pendingShowingView) {
                baseTransientBottomBar.showViewImpl();
                baseTransientBottomBar.pendingShowingView = false;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            super.onMeasure(i, i2);
        }

        @Override // android.view.View
        public final void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public final void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.backgroundTint != null) {
                drawable = drawable.mutate();
                drawable.setTintList(this.backgroundTint);
                drawable.setTintMode(this.backgroundTintMode);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public final void setBackgroundTintList(ColorStateList colorStateList) {
            this.backgroundTint = colorStateList;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintList(colorStateList);
                mutate.setTintMode(this.backgroundTintMode);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public final void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.backgroundTintMode = mode;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintMode(mode);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public final void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (!this.addingToTargetParent && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.originalMargins = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
                if (baseTransientBottomBar != null) {
                    Handler handler = BaseTransientBottomBar.handler;
                    baseTransientBottomBar.updateMargins();
                }
            }
        }

        @Override // android.view.View
        public final void setOnClickListener(View.OnClickListener onClickListener) {
            AnonymousClass1 anonymousClass1;
            if (onClickListener != null) {
                anonymousClass1 = null;
            } else {
                anonymousClass1 = consumeAllTouchListener;
            }
            setOnTouchListener(anonymousClass1);
            super.setOnClickListener(onClickListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.wrap(context, attributeSet, 0, 0), attributeSet);
            GradientDrawable gradientDrawable;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(6)) {
                float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(6, 0);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api21Impl.setElevation(this, dimensionPixelSize);
            }
            this.animationMode = obtainStyledAttributes.getInt(2, 1);
            if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
                this.shapeAppearanceModel = ShapeAppearanceModel.builder(context2, attributeSet, 0, 0).build();
            }
            float f = obtainStyledAttributes.getFloat(3, 1.0f);
            setBackgroundTintList(MaterialResources.getColorStateList(context2, obtainStyledAttributes, 4));
            setBackgroundTintMode(ViewUtils.parseTintMode(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
            this.actionTextColorAlpha = obtainStyledAttributes.getFloat(1, 1.0f);
            obtainStyledAttributes.getDimensionPixelSize(0, -1);
            obtainStyledAttributes.getDimensionPixelSize(7, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(consumeAllTouchListener);
            setFocusable(true);
            if (getBackground() == null) {
                int layer = MaterialColors.layer(f, MaterialColors.getColor(this, R.attr.colorSurface), MaterialColors.getColor(this, R.attr.colorOnSurface));
                ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
                if (shapeAppearanceModel != null) {
                    Handler handler = BaseTransientBottomBar.handler;
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(layer));
                    gradientDrawable = materialShapeDrawable;
                } else {
                    Resources resources = getResources();
                    Handler handler2 = BaseTransientBottomBar.handler;
                    float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(0);
                    gradientDrawable2.setCornerRadius(dimension);
                    gradientDrawable2.setColor(layer);
                    gradientDrawable = gradientDrawable2;
                }
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    gradientDrawable.setTintList(colorStateList);
                }
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.setBackground(this, gradientDrawable);
            }
        }
    }

    public BaseTransientBottomBar(ViewGroup viewGroup, View view, ContentViewCallback contentViewCallback) {
        this(viewGroup.getContext(), viewGroup, view, contentViewCallback);
    }

    public final void addCallback(BaseCallback baseCallback) {
        if (this.callbacks == null) {
            this.callbacks = new ArrayList();
        }
        ((ArrayList) this.callbacks).add(baseCallback);
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public final void dispatchDismiss(int i) {
        boolean z;
        SnackbarManager snackbarManager = SnackbarManager.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (snackbarManager.lock) {
            if (snackbarManager.isCurrentSnackbarLocked(anonymousClass5)) {
                snackbarManager.cancelSnackbarLocked(snackbarManager.currentSnackbar, i);
            } else {
                SnackbarManager.SnackbarRecord snackbarRecord = snackbarManager.nextSnackbar;
                boolean z2 = false;
                if (snackbarRecord != null) {
                    if (anonymousClass5 != null && snackbarRecord.callback.get() == anonymousClass5) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        z2 = true;
                    }
                }
                if (z2) {
                    snackbarManager.cancelSnackbarLocked(snackbarManager.nextSnackbar, i);
                }
            }
        }
    }

    public final void onViewHidden(int i) {
        SnackbarManager snackbarManager = SnackbarManager.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (snackbarManager.lock) {
            if (snackbarManager.isCurrentSnackbarLocked(anonymousClass5)) {
                snackbarManager.currentSnackbar = null;
                if (snackbarManager.nextSnackbar != null) {
                    snackbarManager.showNextSnackbarLocked();
                }
            }
        }
        List list = this.callbacks;
        if (list != null) {
            int size = ((ArrayList) list).size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((BaseCallback) ((ArrayList) this.callbacks).get(size)).onDismissed(this);
                }
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    public final void onViewShown() {
        SnackbarManager snackbarManager = SnackbarManager.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (snackbarManager.lock) {
            if (snackbarManager.isCurrentSnackbarLocked(anonymousClass5)) {
                snackbarManager.scheduleTimeoutLocked(snackbarManager.currentSnackbar);
            }
        }
        List list = this.callbacks;
        if (list != null) {
            int size = ((ArrayList) list).size();
            while (true) {
                size--;
                if (size >= 0) {
                    ((BaseCallback) ((ArrayList) this.callbacks).get(size)).getClass();
                } else {
                    return;
                }
            }
        }
    }

    public final void showViewImpl() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        SnackbarBaseLayout snackbarBaseLayout = this.view;
        if (z) {
            snackbarBaseLayout.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
                @Override // java.lang.Runnable
                public final void run() {
                    SnackbarBaseLayout snackbarBaseLayout2 = BaseTransientBottomBar.this.view;
                    if (snackbarBaseLayout2 == null) {
                        return;
                    }
                    if (snackbarBaseLayout2.getParent() != null) {
                        BaseTransientBottomBar.this.view.setVisibility(0);
                    }
                    final BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                    SnackbarBaseLayout snackbarBaseLayout3 = baseTransientBottomBar.view;
                    if (snackbarBaseLayout3.animationMode == 1) {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
                        ofFloat.addUpdateListener(new AnonymousClass11());
                        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                        ofFloat2.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
                        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                BaseTransientBottomBar.this.view.setScaleX(floatValue);
                                BaseTransientBottomBar.this.view.setScaleY(floatValue);
                            }
                        });
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ofFloat);
                        animatorSet.setInterpolator(android.view.animation.AnimationUtils.loadInterpolator(baseTransientBottomBar.context, android.R.interpolator.decelerate_quad));
                        animatorSet.setDuration(500L);
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                BaseTransientBottomBar.this.onViewShown();
                            }
                        });
                        animatorSet.start();
                        return;
                    }
                    int height = snackbarBaseLayout3.getHeight();
                    ViewGroup.LayoutParams layoutParams = snackbarBaseLayout3.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    }
                    baseTransientBottomBar.view.setTranslationY(height);
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(height, 0);
                    valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                    valueAnimator.setDuration(250L);
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            BaseTransientBottomBar.this.onViewShown();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) BaseTransientBottomBar.this.contentViewCallback;
                            snackbarContentLayout.messageView.setAlpha(0.0f);
                            long j = 180;
                            long j2 = 70;
                            snackbarContentLayout.messageView.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
                            if (snackbarContentLayout.actionView.getVisibility() == 0) {
                                snackbarContentLayout.actionView.setAlpha(0.0f);
                                snackbarContentLayout.actionView.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
                            }
                        }
                    });
                    valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(height) { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                            Handler handler2 = BaseTransientBottomBar.handler;
                            BaseTransientBottomBar.this.view.setTranslationY(intValue);
                        }
                    });
                    valueAnimator.start();
                }
            });
            return;
        }
        if (snackbarBaseLayout.getParent() != null) {
            snackbarBaseLayout.setVisibility(0);
        }
        onViewShown();
    }

    public final void updateMargins() {
        boolean z;
        SnackbarBaseLayout snackbarBaseLayout = this.view;
        ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && snackbarBaseLayout.originalMargins != null) {
            if (snackbarBaseLayout.getParent() == null) {
                return;
            }
            int i = this.extraBottomMarginWindowInset;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            Rect rect = snackbarBaseLayout.originalMargins;
            marginLayoutParams.bottomMargin = rect.bottom + i;
            marginLayoutParams.leftMargin = rect.left + this.extraLeftMarginWindowInset;
            marginLayoutParams.rightMargin = rect.right + this.extraRightMarginWindowInset;
            marginLayoutParams.topMargin = rect.top;
            snackbarBaseLayout.requestLayout();
            boolean z2 = false;
            if (this.extraBottomMarginGestureInset > 0) {
                ViewGroup.LayoutParams layoutParams2 = snackbarBaseLayout.getLayoutParams();
                if ((layoutParams2 instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams2).mBehavior instanceof SwipeDismissBehavior)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
            if (z2) {
                AnonymousClass2 anonymousClass2 = this.bottomMarginGestureInsetRunnable;
                snackbarBaseLayout.removeCallbacks(anonymousClass2);
                snackbarBaseLayout.post(anonymousClass2);
                return;
            }
            return;
        }
        Log.w("BaseTransientBottomBar", "Unable to update margins because layout params are not MarginLayoutParams");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.snackbar.BaseTransientBottomBar$2] */
    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, ContentViewCallback contentViewCallback) {
        this.bottomMarginGestureInsetRunnable = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // java.lang.Runnable
            public final void run() {
                Context context2;
                BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                if (baseTransientBottomBar.view != null && (context2 = baseTransientBottomBar.context) != null) {
                    WindowManager windowManager = (WindowManager) context2.getSystemService("window");
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
                    int i = displayMetrics.heightPixels;
                    int[] iArr = new int[2];
                    SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.view;
                    snackbarBaseLayout.getLocationOnScreen(iArr);
                    int height = (i - (snackbarBaseLayout.getHeight() + iArr[1])) + ((int) BaseTransientBottomBar.this.view.getTranslationY());
                    BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                    if (height >= baseTransientBottomBar2.extraBottomMarginGestureInset) {
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams = baseTransientBottomBar2.view.getLayoutParams();
                    if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                        Handler handler2 = BaseTransientBottomBar.handler;
                        Log.w("BaseTransientBottomBar", "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                        return;
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    int i2 = marginLayoutParams.bottomMargin;
                    BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
                    marginLayoutParams.bottomMargin = (baseTransientBottomBar3.extraBottomMarginGestureInset - height) + i2;
                    baseTransientBottomBar3.view.requestLayout();
                }
            }
        };
        this.managerCallback = new AnonymousClass5();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (contentViewCallback != null) {
            this.targetParent = viewGroup;
            this.contentViewCallback = contentViewCallback;
            this.context = context;
            ThemeEnforcement.checkTheme(context, ThemeEnforcement.APPCOMPAT_CHECK_ATTRS, "Theme.AppCompat");
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) from.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
            this.view = snackbarBaseLayout;
            snackbarBaseLayout.baseTransientBottomBar = this;
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                float f = snackbarBaseLayout.actionTextColorAlpha;
                if (f != 1.0f) {
                    snackbarContentLayout.actionView.setTextColor(MaterialColors.layer(f, MaterialColors.getColor(snackbarContentLayout, R.attr.colorSurface), snackbarContentLayout.actionView.getCurrentTextColor()));
                }
            }
            snackbarBaseLayout.addView(view);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api19Impl.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
            ViewCompat.Api16Impl.setImportantForAccessibility(snackbarBaseLayout, 1);
            snackbarBaseLayout.setFitsSystemWindows(true);
            ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(snackbarBaseLayout, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
                    BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                    baseTransientBottomBar.extraBottomMarginWindowInset = systemWindowInsetBottom;
                    baseTransientBottomBar.extraLeftMarginWindowInset = windowInsetsCompat.getSystemWindowInsetLeft();
                    baseTransientBottomBar.extraRightMarginWindowInset = windowInsetsCompat.getSystemWindowInsetRight();
                    baseTransientBottomBar.updateMargins();
                    return windowInsetsCompat;
                }
            });
            ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new AccessibilityDelegateCompat() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                    accessibilityNodeInfoCompat.addAction(QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING);
                    accessibilityNodeInfo.setDismissable(true);
                }

                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final boolean performAccessibilityAction(View view2, int i, Bundle bundle) {
                    if (i == 1048576) {
                        BaseTransientBottomBar.this.dismiss();
                        return true;
                    }
                    return super.performAccessibilityAction(view2, i, bundle);
                }
            });
            this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class BaseCallback {
        public void onDismissed(Object obj) {
        }
    }
}
