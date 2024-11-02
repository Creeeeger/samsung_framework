package com.android.systemui.shared.animation;

import android.graphics.Point;
import android.view.View;
import android.view.WindowManager;
import com.android.systemui.statusbar.phone.StatusBarMoveFromCenterAnimationController;
import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldMoveFromCenterAnimator implements UnfoldTransitionProgressProvider.TransitionProgressListener {
    public final AlphaProvider alphaProvider;
    public final List animatedViews;
    public boolean isVerticalFold;
    public float lastAnimationProgress;
    public final Point screenSize;
    public final TranslationApplier translationApplier;
    public final ViewCenterProvider viewCenterProvider;
    public final WindowManager windowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface AlphaProvider {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TranslationApplier {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public abstract class DefaultImpls {
            public static void getViewCenter(View view, Point point) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int i = iArr[0];
                int i2 = iArr[1];
                point.x = (view.getWidth() / 2) + i;
                point.y = (view.getHeight() / 2) + i2;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ViewCenterProvider {
        void getViewCenter(View view, Point point);
    }

    public UnfoldMoveFromCenterAnimator(WindowManager windowManager) {
        this(windowManager, null, null, null, 14, null);
    }

    public static void updateDisplayProperties$default(UnfoldMoveFromCenterAnimator unfoldMoveFromCenterAnimator) {
        boolean z;
        int rotation = unfoldMoveFromCenterAnimator.windowManager.getDefaultDisplay().getRotation();
        unfoldMoveFromCenterAnimator.windowManager.getDefaultDisplay().getSize(unfoldMoveFromCenterAnimator.screenSize);
        if (rotation != 0 && rotation != 2) {
            z = false;
        } else {
            z = true;
        }
        unfoldMoveFromCenterAnimator.isVerticalFold = z;
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionProgress(float f) {
        View view;
        float max;
        for (AnimatedView animatedView : this.animatedViews) {
            View view2 = (View) animatedView.view.get();
            if (view2 != null) {
                float f2 = 1 - f;
                float f3 = animatedView.startTranslationX * f2;
                float f4 = animatedView.startTranslationY * f2;
                ((AnonymousClass1) this.translationApplier).getClass();
                view2.setTranslationX(f3);
                view2.setTranslationY(f4);
            }
            AlphaProvider alphaProvider = this.alphaProvider;
            if (alphaProvider != null && (view = (View) animatedView.view.get()) != null) {
                if (Intrinsics.areEqual(((StatusBarMoveFromCenterAnimationController.StatusBarIconsAlphaProvider) alphaProvider).this$0.isOnHomeActivity, Boolean.TRUE)) {
                    max = 1.0f;
                } else {
                    max = Math.max(0.0f, (f - 0.75f) / 0.25f);
                }
                view.setAlpha(max);
            }
        }
        this.lastAnimationProgress = f;
    }

    public final void updateAnimatedView(AnimatedView animatedView, View view) {
        Point point = new Point();
        this.viewCenterProvider.getViewCenter(view, point);
        int i = point.x;
        int i2 = point.y;
        boolean z = this.isVerticalFold;
        Point point2 = this.screenSize;
        if (z) {
            animatedView.startTranslationX = ((point2.x / 2) - i) * 0.08f;
            animatedView.startTranslationY = 0.0f;
        } else {
            int i3 = (point2.y / 2) - i2;
            animatedView.startTranslationX = 0.0f;
            animatedView.startTranslationY = i3 * 0.08f;
        }
    }

    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier) {
        this(windowManager, translationApplier, null, null, 12, null);
    }

    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider) {
        this(windowManager, translationApplier, viewCenterProvider, null, 8, null);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AnimatedView {
        public float startTranslationX;
        public float startTranslationY;
        public final WeakReference view;

        public AnimatedView(WeakReference<View> weakReference, float f, float f2) {
            this.view = weakReference;
            this.startTranslationX = f;
            this.startTranslationY = f2;
        }

        public /* synthetic */ AnimatedView(WeakReference weakReference, float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(weakReference, (i & 2) != 0 ? 0.0f : f, (i & 4) != 0 ? 0.0f : f2);
        }
    }

    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider, AlphaProvider alphaProvider) {
        this.windowManager = windowManager;
        this.translationApplier = translationApplier;
        this.viewCenterProvider = viewCenterProvider;
        this.alphaProvider = alphaProvider;
        this.screenSize = new Point();
        this.animatedViews = new ArrayList();
        this.lastAnimationProgress = 1.0f;
    }

    public /* synthetic */ UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider, AlphaProvider alphaProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowManager, (i & 2) != 0 ? new TranslationApplier() { // from class: com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.1
        } : translationApplier, (i & 4) != 0 ? new ViewCenterProvider() { // from class: com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.2
            @Override // com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.ViewCenterProvider
            public final void getViewCenter(View view, Point point) {
                TranslationApplier.DefaultImpls.getViewCenter(view, point);
            }
        } : viewCenterProvider, (i & 8) != 0 ? null : alphaProvider);
    }
}
