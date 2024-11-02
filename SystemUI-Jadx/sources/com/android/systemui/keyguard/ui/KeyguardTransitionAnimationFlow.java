package com.android.systemui.keyguard.ui;

import android.view.animation.Interpolator;
import com.android.systemui.keyguard.shared.model.TransitionState;
import com.android.systemui.keyguard.shared.model.TransitionStep;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardTransitionAnimationFlow {
    public final long transitionDuration;
    public final Flow transitionFlow;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransitionState.values().length];
            try {
                iArr[TransitionState.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransitionState.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransitionState.CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ KeyguardTransitionAnimationFlow(long j, Flow flow, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, flow);
    }

    public static final Float access$createFlow_53AowQI$stepToValue(float f, float f2, Ref$BooleanRef ref$BooleanRef, Function0 function0, Function1 function1, Interpolator interpolator, TransitionStep transitionStep) {
        Float valueOf;
        float f3 = (transitionStep.value - f) * f2;
        int i = WhenMappings.$EnumSwitchMapping$0[transitionStep.transitionState.ordinal()];
        if (i != 1) {
            if (i == 2 && !ref$BooleanRef.element) {
                if (f3 >= 1.0f) {
                    ref$BooleanRef.element = true;
                    valueOf = Float.valueOf(1.0f);
                } else if (f3 >= 0.0f) {
                    valueOf = Float.valueOf(f3);
                }
            }
            valueOf = null;
        } else {
            ref$BooleanRef.element = false;
            if (function0 != null) {
                function0.invoke();
            }
            valueOf = Float.valueOf(Math.max(0.0f, Math.min(1.0f, f3)));
        }
        if (valueOf == null) {
            return null;
        }
        return Float.valueOf(((Number) function1.invoke(Float.valueOf(interpolator.getInterpolation(valueOf.floatValue())))).floatValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016a  */
    /* renamed from: createFlow-53AowQI$default */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 m1287createFlow53AowQI$default(com.android.systemui.keyguard.ui.KeyguardTransitionAnimationFlow r18, long r19, final kotlin.jvm.functions.Function1 r21, long r22, kotlin.jvm.functions.Function0 r24, kotlin.jvm.functions.Function0 r25, kotlin.jvm.functions.Function0 r26, android.view.animation.Interpolator r27, int r28) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.KeyguardTransitionAnimationFlow.m1287createFlow53AowQI$default(com.android.systemui.keyguard.ui.KeyguardTransitionAnimationFlow, long, kotlin.jvm.functions.Function1, long, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, android.view.animation.Interpolator, int):kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1");
    }

    private KeyguardTransitionAnimationFlow(long j, Flow flow) {
        this.transitionDuration = j;
        this.transitionFlow = flow;
    }
}
