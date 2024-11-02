package com.android.systemui.keyguard.domain.interactor;

import android.animation.ValueAnimator;
import com.android.app.animation.Interpolators;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository;
import com.android.systemui.keyguard.shared.model.KeyguardState;
import com.android.systemui.shade.data.repository.ShadeRepository;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FromLockscreenTransitionInteractor extends TransitionInteractor {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_DURATION;
    public static final long TO_DREAMING_DURATION;
    public static final long TO_OCCLUDED_DURATION;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardTransitionInteractor keyguardTransitionInteractor;
    public final KeyguardTransitionRepository keyguardTransitionRepository;
    public final CoroutineScope scope;
    public final ShadeRepository shadeRepository;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        DEFAULT_DURATION = DurationKt.toDuration(500, durationUnit);
        TO_DREAMING_DURATION = DurationKt.toDuration(933, durationUnit);
        TO_OCCLUDED_DURATION = DurationKt.toDuration(450, durationUnit);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FromLockscreenTransitionInteractor(kotlinx.coroutines.CoroutineScope r3, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor r4, com.android.systemui.shade.data.repository.ShadeRepository r5, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor r6, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository r7) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor> r0 = com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor.class
            kotlin.jvm.internal.ClassReference r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            java.lang.String r0 = r0.getSimpleName()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r1 = 0
            r2.<init>(r0, r1)
            r2.scope = r3
            r2.keyguardInteractor = r4
            r2.shadeRepository = r5
            r2.keyguardTransitionInteractor = r6
            r2.keyguardTransitionRepository = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.FromLockscreenTransitionInteractor.<init>(kotlinx.coroutines.CoroutineScope, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor, com.android.systemui.shade.data.repository.ShadeRepository, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository):void");
    }

    /* renamed from: getAnimator-LRDsOJo, reason: not valid java name */
    public final ValueAnimator m1286getAnimatorLRDsOJo(long j) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(Interpolators.LINEAR);
        valueAnimator.setDuration(Duration.m2575getInWholeMillisecondsimpl(j));
        return valueAnimator;
    }

    @Override // com.android.systemui.keyguard.domain.interactor.TransitionInteractor
    public final void start() {
        FromLockscreenTransitionInteractor$listenForLockscreenToGone$1 fromLockscreenTransitionInteractor$listenForLockscreenToGone$1 = new FromLockscreenTransitionInteractor$listenForLockscreenToGone$1(this, null);
        CoroutineScope coroutineScope = this.scope;
        BuildersKt.launch$default(coroutineScope, null, null, fromLockscreenTransitionInteractor$listenForLockscreenToGone$1, 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToOccluded$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToCamera$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToAodOrDozing$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncer$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1(this, SetsKt__SetsKt.setOf(KeyguardState.AOD, KeyguardState.DOZING), null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1(this, new Ref$ObjectRef(), null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromLockscreenTransitionInteractor$listenForLockscreenToAlternateBouncer$1(this, null), 3);
    }
}
