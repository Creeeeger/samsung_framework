package com.android.systemui.keyguard.domain.interactor;

import android.animation.ValueAnimator;
import com.android.app.animation.Interpolators;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FromAlternateBouncerTransitionInteractor extends TransitionInteractor {
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardTransitionInteractor keyguardTransitionInteractor;
    public final KeyguardTransitionRepository keyguardTransitionRepository;
    public final CoroutineScope scope;

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
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FromAlternateBouncerTransitionInteractor(kotlinx.coroutines.CoroutineScope r3, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor r4, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository r5, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor r6) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.keyguard.domain.interactor.FromAlternateBouncerTransitionInteractor> r0 = com.android.systemui.keyguard.domain.interactor.FromAlternateBouncerTransitionInteractor.class
            kotlin.jvm.internal.ClassReference r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            java.lang.String r0 = r0.getSimpleName()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r1 = 0
            r2.<init>(r0, r1)
            r2.scope = r3
            r2.keyguardInteractor = r4
            r2.keyguardTransitionRepository = r5
            r2.keyguardTransitionInteractor = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.FromAlternateBouncerTransitionInteractor.<init>(kotlinx.coroutines.CoroutineScope, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor):void");
    }

    public static final ValueAnimator access$getAnimator(FromAlternateBouncerTransitionInteractor fromAlternateBouncerTransitionInteractor) {
        fromAlternateBouncerTransitionInteractor.getClass();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(Interpolators.LINEAR);
        valueAnimator.setDuration(300L);
        return valueAnimator;
    }

    @Override // com.android.systemui.keyguard.domain.interactor.TransitionInteractor
    public final void start() {
        FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1 fromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1 = new FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1(this, null);
        CoroutineScope coroutineScope = this.scope;
        BuildersKt.launch$default(coroutineScope, null, null, fromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToGone$1, 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToLockscreenAodOrDozing$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromAlternateBouncerTransitionInteractor$listenForAlternateBouncerToPrimaryBouncer$1(this, null), 3);
    }
}
