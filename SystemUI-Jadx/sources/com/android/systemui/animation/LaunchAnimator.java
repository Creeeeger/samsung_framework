package com.android.systemui.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;
import android.view.animation.Interpolator;
import com.android.app.motiontool.TraceMetadata$$ExternalSyntheticOutline0;
import com.android.systemui.animation.LaunchAnimator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LaunchAnimator {
    public static final Companion Companion = new Companion(null);
    public static final PorterDuffXfermode SRC_MODE = new PorterDuffXfermode(PorterDuff.Mode.SRC);
    public final Interpolators interpolators;
    public final Timings timings;
    public final int[] launchContainerLocation = new int[2];
    public final float[] cornerRadii = new float[8];

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static float getProgress(Timings timings, float f, long j, long j2) {
            return MathUtils.constrain(((f * ((float) timings.totalDuration)) - ((float) j)) / ((float) j2), 0.0f, 1.0f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class State {
        public int bottom;
        public float bottomCornerRadius;
        public int left;
        public int right;
        public int top;
        public float topCornerRadius;
        public boolean visible;

        public State() {
            this(0, 0, 0, 0, 0.0f, 0.0f, 63, null);
        }

        public State(int i, int i2, int i3, int i4, float f, float f2) {
            this.top = i;
            this.bottom = i2;
            this.left = i3;
            this.right = i4;
            this.topCornerRadius = f;
            this.bottomCornerRadius = f2;
            this.visible = true;
        }

        public /* synthetic */ State(int i, int i2, int i3, int i4, float f, float f2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4, (i5 & 16) != 0 ? 0.0f : f, (i5 & 32) != 0 ? 0.0f : f2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Timings {
        public final long contentAfterFadeInDelay;
        public final long contentAfterFadeInDuration;
        public final long contentBeforeFadeOutDelay;
        public final long contentBeforeFadeOutDuration;
        public final long totalDuration;

        public Timings(long j, long j2, long j3, long j4, long j5) {
            this.totalDuration = j;
            this.contentBeforeFadeOutDelay = j2;
            this.contentBeforeFadeOutDuration = j3;
            this.contentAfterFadeInDelay = j4;
            this.contentAfterFadeInDuration = j5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Timings)) {
                return false;
            }
            Timings timings = (Timings) obj;
            if (this.totalDuration == timings.totalDuration && this.contentBeforeFadeOutDelay == timings.contentBeforeFadeOutDelay && this.contentBeforeFadeOutDuration == timings.contentBeforeFadeOutDuration && this.contentAfterFadeInDelay == timings.contentAfterFadeInDelay && this.contentAfterFadeInDuration == timings.contentAfterFadeInDuration) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.contentAfterFadeInDuration) + TraceMetadata$$ExternalSyntheticOutline0.m(this.contentAfterFadeInDelay, TraceMetadata$$ExternalSyntheticOutline0.m(this.contentBeforeFadeOutDuration, TraceMetadata$$ExternalSyntheticOutline0.m(this.contentBeforeFadeOutDelay, Long.hashCode(this.totalDuration) * 31, 31), 31), 31);
        }

        public final String toString() {
            return "Timings(totalDuration=" + this.totalDuration + ", contentBeforeFadeOutDelay=" + this.contentBeforeFadeOutDelay + ", contentBeforeFadeOutDuration=" + this.contentBeforeFadeOutDuration + ", contentAfterFadeInDelay=" + this.contentAfterFadeInDelay + ", contentAfterFadeInDuration=" + this.contentAfterFadeInDuration + ")";
        }
    }

    public LaunchAnimator(Timings timings, Interpolators interpolators) {
        this.timings = timings;
        this.interpolators = interpolators;
    }

    public final boolean isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(View view, State state) {
        int[] iArr = this.launchContainerLocation;
        view.getLocationOnScreen(iArr);
        int i = state.top;
        int i2 = iArr[1];
        if (i <= i2 && state.bottom >= view.getHeight() + i2) {
            int i3 = state.left;
            int i4 = iArr[0];
            if (i3 <= i4 && state.right >= view.getWidth() + i4) {
                return true;
            }
        }
        return false;
    }

    public final LaunchAnimator$startAnimation$3 startAnimation(final Controller controller, final State state, int i, final boolean z, final boolean z2) {
        ViewOverlay viewOverlay;
        boolean z3;
        final State createAnimatorState = controller.createAnimatorState();
        final int i2 = createAnimatorState.top;
        final int i3 = createAnimatorState.bottom;
        int i4 = createAnimatorState.left;
        final float f = (i4 + r1) / 2.0f;
        final int i5 = createAnimatorState.right - i4;
        final float f2 = createAnimatorState.topCornerRadius;
        final float f3 = createAnimatorState.bottomCornerRadius;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = state.top;
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = state.bottom;
        final Ref$IntRef ref$IntRef3 = new Ref$IntRef();
        ref$IntRef3.element = state.left;
        final Ref$IntRef ref$IntRef4 = new Ref$IntRef();
        ref$IntRef4.element = state.right;
        final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.element = (ref$IntRef3.element + ref$IntRef4.element) / 2.0f;
        final Ref$IntRef ref$IntRef5 = new Ref$IntRef();
        ref$IntRef5.element = ref$IntRef4.element - ref$IntRef3.element;
        final float f4 = state.topCornerRadius;
        final float f5 = state.bottomCornerRadius;
        final ViewGroup launchContainer = controller.getLaunchContainer();
        final boolean isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib = isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(launchContainer, state);
        final GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setAlpha(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(this.timings.totalDuration);
        ofFloat.setInterpolator(com.android.app.animation.Interpolators.LINEAR);
        final View openingWindowSyncView = controller.getOpeningWindowSyncView();
        if (openingWindowSyncView != null) {
            viewOverlay = openingWindowSyncView.getOverlay();
        } else {
            viewOverlay = null;
        }
        final ViewOverlay viewOverlay2 = viewOverlay;
        if (openingWindowSyncView != null && !Intrinsics.areEqual(openingWindowSyncView.getViewRootImpl(), controller.getLaunchContainer().getViewRootImpl())) {
            z3 = true;
        } else {
            z3 = false;
        }
        final ViewGroupOverlay overlay = launchContainer.getOverlay();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
        final boolean z4 = z3;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.animation.LaunchAnimator$startAnimation$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ViewOverlay viewOverlay3;
                LaunchAnimator.Controller.this.onLaunchAnimationEnd(isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib);
                overlay.remove(gradientDrawable);
                if (z4 && (viewOverlay3 = viewOverlay2) != null) {
                    viewOverlay3.remove(gradientDrawable);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator, boolean z5) {
                LaunchAnimator.Controller.this.onLaunchAnimationStart(isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib);
                overlay.add(gradientDrawable);
            }
        });
        final boolean z5 = z3;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.animation.LaunchAnimator$startAnimation$2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                boolean z6;
                View launchContainer2;
                if (Ref$BooleanRef.this.element) {
                    return;
                }
                Ref$IntRef ref$IntRef6 = ref$IntRef;
                LaunchAnimator.State state2 = state;
                Ref$IntRef ref$IntRef7 = ref$IntRef2;
                Ref$IntRef ref$IntRef8 = ref$IntRef3;
                Ref$IntRef ref$IntRef9 = ref$IntRef4;
                Ref$FloatRef ref$FloatRef2 = ref$FloatRef;
                Ref$IntRef ref$IntRef10 = ref$IntRef5;
                LaunchAnimator.Companion companion = LaunchAnimator.Companion;
                int i6 = ref$IntRef6.element;
                int i7 = state2.top;
                if (i6 != i7 || ref$IntRef7.element != state2.bottom || ref$IntRef8.element != state2.left || ref$IntRef9.element != state2.right) {
                    ref$IntRef6.element = i7;
                    ref$IntRef7.element = state2.bottom;
                    ref$IntRef8.element = state2.left;
                    int i8 = state2.right;
                    ref$IntRef9.element = i8;
                    int i9 = ref$IntRef8.element;
                    ref$FloatRef2.element = (i9 + i8) / 2.0f;
                    ref$IntRef10.element = i8 - i9;
                }
                float animatedFraction = valueAnimator.getAnimatedFraction();
                float interpolation = this.interpolators.positionInterpolator.getInterpolation(animatedFraction);
                float lerp = MathUtils.lerp(f, ref$FloatRef.element, this.interpolators.positionXInterpolator.getInterpolation(animatedFraction));
                float lerp2 = MathUtils.lerp(i5, ref$IntRef5.element, interpolation) / 2.0f;
                createAnimatorState.top = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i2, ref$IntRef.element, interpolation));
                createAnimatorState.bottom = MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i3, ref$IntRef2.element, interpolation));
                createAnimatorState.left = MathKt__MathJVMKt.roundToInt(lerp - lerp2);
                createAnimatorState.right = MathKt__MathJVMKt.roundToInt(lerp + lerp2);
                createAnimatorState.topCornerRadius = MathUtils.lerp(f2, f4, interpolation);
                createAnimatorState.bottomCornerRadius = MathUtils.lerp(f3, f5, interpolation);
                LaunchAnimator.State state3 = createAnimatorState;
                LaunchAnimator.Companion companion2 = LaunchAnimator.Companion;
                LaunchAnimator.Timings timings = this.timings;
                long j = timings.contentBeforeFadeOutDelay;
                long j2 = timings.contentBeforeFadeOutDuration;
                companion2.getClass();
                if (LaunchAnimator.Companion.getProgress(timings, animatedFraction, j, j2) < 1.0f) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                state3.visible = z6;
                if (z5 && !createAnimatorState.visible) {
                    Ref$BooleanRef ref$BooleanRef3 = ref$BooleanRef2;
                    if (!ref$BooleanRef3.element) {
                        ref$BooleanRef3.element = true;
                        overlay.remove(gradientDrawable);
                        ViewOverlay viewOverlay3 = viewOverlay2;
                        Intrinsics.checkNotNull(viewOverlay3);
                        viewOverlay3.add(gradientDrawable);
                        ViewRootSync viewRootSync = ViewRootSync.INSTANCE;
                        ViewGroup viewGroup = launchContainer;
                        View view = openingWindowSyncView;
                        AnonymousClass1 anonymousClass1 = new Function0() { // from class: com.android.systemui.animation.LaunchAnimator$startAnimation$2.1
                            @Override // kotlin.jvm.functions.Function0
                            public final /* bridge */ /* synthetic */ Object invoke() {
                                return Unit.INSTANCE;
                            }
                        };
                        viewRootSync.getClass();
                        ViewRootSync.synchronizeNextDraw(viewGroup, view, anonymousClass1);
                    }
                }
                if (ref$BooleanRef2.element) {
                    launchContainer2 = openingWindowSyncView;
                    Intrinsics.checkNotNull(launchContainer2);
                } else {
                    launchContainer2 = controller.getLaunchContainer();
                }
                LaunchAnimator launchAnimator = this;
                GradientDrawable gradientDrawable2 = gradientDrawable;
                LaunchAnimator.State state4 = createAnimatorState;
                boolean z7 = z;
                boolean z8 = z2;
                int[] iArr = launchAnimator.launchContainerLocation;
                launchContainer2.getLocationOnScreen(iArr);
                int i10 = state4.left;
                int i11 = iArr[0];
                int i12 = state4.top;
                int i13 = iArr[1];
                gradientDrawable2.setBounds(i10 - i11, i12 - i13, state4.right - i11, state4.bottom - i13);
                float f6 = state4.topCornerRadius;
                float[] fArr = launchAnimator.cornerRadii;
                fArr[0] = f6;
                fArr[1] = f6;
                fArr[2] = f6;
                fArr[3] = f6;
                float f7 = state4.bottomCornerRadius;
                fArr[4] = f7;
                fArr[5] = f7;
                fArr[6] = f7;
                fArr[7] = f7;
                gradientDrawable2.setCornerRadii(fArr);
                LaunchAnimator.Timings timings2 = launchAnimator.timings;
                float progress = LaunchAnimator.Companion.getProgress(timings2, animatedFraction, timings2.contentBeforeFadeOutDelay, timings2.contentBeforeFadeOutDuration);
                LaunchAnimator.Interpolators interpolators = launchAnimator.interpolators;
                if (progress < 1.0f) {
                    gradientDrawable2.setAlpha(MathKt__MathJVMKt.roundToInt(interpolators.contentBeforeFadeOutInterpolator.getInterpolation(progress) * 255));
                } else if (z7) {
                    gradientDrawable2.setAlpha(MathKt__MathJVMKt.roundToInt((1 - interpolators.contentAfterFadeInInterpolator.getInterpolation(LaunchAnimator.Companion.getProgress(timings2, animatedFraction, timings2.contentAfterFadeInDelay, timings2.contentAfterFadeInDuration))) * 255));
                    if (z8) {
                        gradientDrawable2.setXfermode(LaunchAnimator.SRC_MODE);
                    }
                } else {
                    gradientDrawable2.setAlpha(255);
                }
                controller.onLaunchAnimationProgress(createAnimatorState, interpolation, animatedFraction);
            }
        });
        ofFloat.start();
        return new LaunchAnimator$startAnimation$3(ref$BooleanRef, ofFloat);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Interpolators {
        public final Interpolator contentAfterFadeInInterpolator;
        public final Interpolator contentBeforeFadeOutInterpolator;
        public final Interpolator positionInterpolator;
        public final Interpolator positionXInterpolator;

        public Interpolators(Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, Interpolator interpolator4) {
            this.positionInterpolator = interpolator;
            this.positionXInterpolator = interpolator2;
            this.contentBeforeFadeOutInterpolator = interpolator3;
            this.contentAfterFadeInInterpolator = interpolator4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interpolators)) {
                return false;
            }
            Interpolators interpolators = (Interpolators) obj;
            if (Intrinsics.areEqual(this.positionInterpolator, interpolators.positionInterpolator) && Intrinsics.areEqual(this.positionXInterpolator, interpolators.positionXInterpolator) && Intrinsics.areEqual(this.contentBeforeFadeOutInterpolator, interpolators.contentBeforeFadeOutInterpolator) && Intrinsics.areEqual(this.contentAfterFadeInInterpolator, interpolators.contentAfterFadeInInterpolator)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.contentAfterFadeInInterpolator.hashCode() + ((this.contentBeforeFadeOutInterpolator.hashCode() + ((this.positionXInterpolator.hashCode() + (this.positionInterpolator.hashCode() * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Interpolators(positionInterpolator=" + this.positionInterpolator + ", positionXInterpolator=" + this.positionXInterpolator + ", contentBeforeFadeOutInterpolator=" + this.contentBeforeFadeOutInterpolator + ", contentAfterFadeInInterpolator=" + this.contentAfterFadeInInterpolator + ")";
        }

        public /* synthetic */ Interpolators(Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, Interpolator interpolator4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(interpolator, (i & 2) != 0 ? interpolator : interpolator2, interpolator3, interpolator4);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Controller {
        State createAnimatorState();

        ViewGroup getLaunchContainer();

        default View getOpeningWindowSyncView() {
            return null;
        }

        void onLaunchAnimationEnd(boolean z);

        void onLaunchAnimationStart(boolean z);

        void setLaunchContainer(ViewGroup viewGroup);

        default void onLaunchAnimationProgress(State state, float f, float f2) {
        }
    }
}
