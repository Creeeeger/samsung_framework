package com.android.systemui.keyguard.domain.interactor;

import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FromPrimaryBouncerTransitionInteractor extends TransitionInteractor {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_DURATION;
    public static final long TO_GONE_DURATION;
    public static final long TO_GONE_SHORT_DURATION;
    public final KeyguardInteractor keyguardInteractor;
    public final KeyguardSecurityModel keyguardSecurityModel;
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
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        DEFAULT_DURATION = DurationKt.toDuration(300, durationUnit);
        TO_GONE_DURATION = DurationKt.toDuration(IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend, durationUnit);
        TO_GONE_SHORT_DURATION = DurationKt.toDuration(200, durationUnit);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public FromPrimaryBouncerTransitionInteractor(kotlinx.coroutines.CoroutineScope r3, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor r4, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository r5, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor r6, com.android.keyguard.KeyguardSecurityModel r7) {
        /*
            r2 = this;
            java.lang.Class<com.android.systemui.keyguard.domain.interactor.FromPrimaryBouncerTransitionInteractor> r0 = com.android.systemui.keyguard.domain.interactor.FromPrimaryBouncerTransitionInteractor.class
            kotlin.jvm.internal.ClassReference r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            java.lang.String r0 = r0.getSimpleName()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r1 = 0
            r2.<init>(r0, r1)
            r2.scope = r3
            r2.keyguardInteractor = r4
            r2.keyguardTransitionRepository = r5
            r2.keyguardTransitionInteractor = r6
            r2.keyguardSecurityModel = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.domain.interactor.FromPrimaryBouncerTransitionInteractor.<init>(kotlinx.coroutines.CoroutineScope, com.android.systemui.keyguard.domain.interactor.KeyguardInteractor, com.android.systemui.keyguard.data.repository.KeyguardTransitionRepository, com.android.systemui.keyguard.domain.interactor.KeyguardTransitionInteractor, com.android.keyguard.KeyguardSecurityModel):void");
    }

    @Override // com.android.systemui.keyguard.domain.interactor.TransitionInteractor
    public final void start() {
        FromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToGone$1 fromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToGone$1 = new FromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToGone$1(this, null);
        CoroutineScope coroutineScope = this.scope;
        BuildersKt.launch$default(coroutineScope, null, null, fromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToGone$1, 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToAodOrDozing$1(this, null), 3);
        BuildersKt.launch$default(coroutineScope, null, null, new FromPrimaryBouncerTransitionInteractor$listenForPrimaryBouncerToLockscreenOrOccluded$1(this, null), 3);
    }
}
