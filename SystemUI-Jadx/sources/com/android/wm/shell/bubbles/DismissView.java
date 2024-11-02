package com.android.wm.shell.bubbles;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.IntProperty;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.android.systemui.R;
import com.android.wm.shell.animation.PhysicsAnimator;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DismissView extends FrameLayout {
    public final long DISMISS_SCRIM_FADE_MS;
    public final DismissView$GRADIENT_ALPHA$1 GRADIENT_ALPHA;
    public final PhysicsAnimator animator;
    public final FrameLayout circle;
    public final Rect dismissArea;
    public final GradientDrawable gradientDrawable;
    public boolean isBeingEntered;
    public boolean isShowing;
    public final PhysicsAnimator.SpringConfig spring;

    /* JADX WARN: Type inference failed for: r1v12, types: [com.android.wm.shell.bubbles.DismissView$GRADIENT_ALPHA$1] */
    public DismissView(Context context) {
        super(context);
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.bubble_dismiss_view, (ViewGroup) this, false);
        this.circle = frameLayout;
        PhysicsAnimator.Companion.getClass();
        this.animator = PhysicsAnimator.Companion.getInstance(frameLayout);
        this.spring = new PhysicsAnimator.SpringConfig(200.0f, 0.75f);
        this.DISMISS_SCRIM_FADE_MS = 200L;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        int color = getContext().getResources().getColor(android.R.color.Teal_700);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{Color.argb((int) 178.5f, Color.red(color), Color.green(color), Color.blue(color)), 0});
        gradientDrawable.setDither(true);
        gradientDrawable.setAlpha(0);
        this.gradientDrawable = gradientDrawable;
        this.GRADIENT_ALPHA = new IntProperty() { // from class: com.android.wm.shell.bubbles.DismissView$GRADIENT_ALPHA$1
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((GradientDrawable) obj).getAlpha());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i) {
                ((GradientDrawable) obj).setAlpha(i);
            }
        };
        setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.floating_dismiss_gradient_height), 80));
        setPadding(0, 0, 0, getResources().getDimensionPixelSize(R.dimen.floating_dismiss_bottom_margin) + windowManager.getCurrentWindowMetrics().getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars()).bottom);
        setClipToPadding(false);
        setClipChildren(false);
        setVisibility(4);
        addView(frameLayout);
        this.dismissArea = new Rect();
    }

    public final void hide() {
        if (!this.isShowing) {
            return;
        }
        this.isShowing = false;
        GradientDrawable gradientDrawable = this.gradientDrawable;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(gradientDrawable, this.GRADIENT_ALPHA, gradientDrawable.getAlpha(), 0);
        ofInt.setDuration(this.DISMISS_SCRIM_FADE_MS);
        ofInt.start();
        this.isBeingEntered = false;
        PhysicsAnimator physicsAnimator = this.animator;
        physicsAnimator.spring(DynamicAnimation.TRANSLATION_Y, getHeight(), 0.0f, this.spring);
        physicsAnimator.endActions.addAll(ArraysKt___ArraysKt.filterNotNull(new Function0[]{new Function0() { // from class: com.android.wm.shell.bubbles.DismissView$hide$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                DismissView.this.setVisibility(4);
                return Unit.INSTANCE;
            }
        }}));
        physicsAnimator.start();
    }

    public final void resetCircle() {
        boolean z;
        if ((getResources().getConfiguration().uiMode & 48) == 32) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.circle.setBackgroundResource(R.drawable.bubble_delete_ic_d);
        } else {
            this.circle.setBackgroundResource(R.drawable.bubble_delete_ic);
        }
    }
}
