package com.android.systemui.keyguard.ui.viewmodel;

import com.android.app.animation.Interpolators;
import com.android.systemui.keyguard.domain.interactor.FromOccludedTransitionInteractor;
import com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor;
import com.android.systemui.keyguard.ui.KeyguardTransitionAnimationFlow;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OccludedToLockscreenTransitionViewModel {
    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 lockscreenAlpha;
    public final KeyguardTransitionAnimationFlow transitionAnimation;

    public OccludedToLockscreenTransitionViewModel(KeyguardTransitionInteractor keyguardTransitionInteractor) {
        FromOccludedTransitionInteractor.Companion.getClass();
        KeyguardTransitionAnimationFlow keyguardTransitionAnimationFlow = new KeyguardTransitionAnimationFlow(FromOccludedTransitionInteractor.TO_LOCKSCREEN_DURATION, keyguardTransitionInteractor.occludedToLockscreenTransition, null);
        this.transitionAnimation = keyguardTransitionAnimationFlow;
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        this.lockscreenAlpha = KeyguardTransitionAnimationFlow.m1287createFlow53AowQI$default(keyguardTransitionAnimationFlow, DurationKt.toDuration(IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend, durationUnit), new Function1() { // from class: com.android.systemui.keyguard.ui.viewmodel.OccludedToLockscreenTransitionViewModel$lockscreenAlpha$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Float.valueOf(((Number) obj).floatValue());
            }
        }, DurationKt.toDuration(IKnoxCustomManager.Stub.TRANSACTION_removeWidget, durationUnit), null, null, null, null, 120);
    }

    public final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 lockscreenTranslationY(final int i) {
        KeyguardTransitionAnimationFlow keyguardTransitionAnimationFlow = this.transitionAnimation;
        FromOccludedTransitionInteractor.Companion.getClass();
        return KeyguardTransitionAnimationFlow.m1287createFlow53AowQI$default(keyguardTransitionAnimationFlow, FromOccludedTransitionInteractor.TO_LOCKSCREEN_DURATION, new Function1() { // from class: com.android.systemui.keyguard.ui.viewmodel.OccludedToLockscreenTransitionViewModel$lockscreenTranslationY$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Float.valueOf((((Number) obj).floatValue() * i) + (-r1));
            }
        }, 0L, null, new Function0() { // from class: com.android.systemui.keyguard.ui.viewmodel.OccludedToLockscreenTransitionViewModel$lockscreenTranslationY$2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Float.valueOf(0.0f);
            }
        }, null, Interpolators.EMPHASIZED_DECELERATE, 44);
    }
}
