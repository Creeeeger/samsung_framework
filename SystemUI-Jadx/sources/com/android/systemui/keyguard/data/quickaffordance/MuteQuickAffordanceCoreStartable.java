package com.android.systemui.keyguard.data.quickaffordance;

import androidx.lifecycle.Observer;
import com.android.systemui.CoreStartable;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.data.repository.KeyguardQuickAffordanceRepository;
import com.android.systemui.settings.UserFileManager;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.util.RingerModeTracker;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MuteQuickAffordanceCoreStartable implements CoreStartable {
    public final CoroutineDispatcher backgroundDispatcher;
    public final CoroutineScope coroutineScope;
    public final FeatureFlags featureFlags;
    public final KeyguardQuickAffordanceRepository keyguardQuickAffordanceRepository;
    public final MuteQuickAffordanceCoreStartable$observer$1 observer = new Observer() { // from class: com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$observer$1
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            int intValue = ((Number) obj).intValue();
            MuteQuickAffordanceCoreStartable muteQuickAffordanceCoreStartable = MuteQuickAffordanceCoreStartable.this;
            BuildersKt.launch$default(muteQuickAffordanceCoreStartable.coroutineScope, muteQuickAffordanceCoreStartable.backgroundDispatcher, null, new MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1(intValue, muteQuickAffordanceCoreStartable, null), 2);
        }
    };
    public final RingerModeTracker ringerModeTracker;
    public final UserFileManager userFileManager;
    public final UserTracker userTracker;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$observer$1] */
    public MuteQuickAffordanceCoreStartable(FeatureFlags featureFlags, UserTracker userTracker, RingerModeTracker ringerModeTracker, UserFileManager userFileManager, KeyguardQuickAffordanceRepository keyguardQuickAffordanceRepository, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher) {
        this.featureFlags = featureFlags;
        this.userTracker = userTracker;
        this.ringerModeTracker = ringerModeTracker;
        this.userFileManager = userFileManager;
        this.keyguardQuickAffordanceRepository = keyguardQuickAffordanceRepository;
        this.coroutineScope = coroutineScope;
        this.backgroundDispatcher = coroutineDispatcher;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (!((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES)) {
            return;
        }
        final ReadonlyStateFlow readonlyStateFlow = this.keyguardQuickAffordanceRepository.selections;
        FlowKt.launchIn(new Flow() { // from class: com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ MuteQuickAffordanceCoreStartable this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2", f = "MuteQuickAffordanceCoreStartable.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, MuteQuickAffordanceCoreStartable muteQuickAffordanceCoreStartable) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = muteQuickAffordanceCoreStartable;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L30
                        if (r2 != r3) goto L28
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto Lab
                    L28:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L30:
                        kotlin.ResultKt.throwOnFailure(r8)
                        java.util.Map r7 = (java.util.Map) r7
                        java.util.Collection r7 = r7.values()
                        boolean r8 = r7 instanceof java.util.Collection
                        r2 = 0
                        if (r8 == 0) goto L45
                        boolean r8 = r7.isEmpty()
                        if (r8 == 0) goto L45
                        goto L83
                    L45:
                        java.util.Iterator r7 = r7.iterator()
                    L49:
                        boolean r8 = r7.hasNext()
                        if (r8 == 0) goto L83
                        java.lang.Object r8 = r7.next()
                        java.util.List r8 = (java.util.List) r8
                        boolean r4 = r8 instanceof java.util.Collection
                        if (r4 == 0) goto L60
                        boolean r4 = r8.isEmpty()
                        if (r4 == 0) goto L60
                        goto L7f
                    L60:
                        java.util.Iterator r8 = r8.iterator()
                    L64:
                        boolean r4 = r8.hasNext()
                        if (r4 == 0) goto L7f
                        java.lang.Object r4 = r8.next()
                        com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig r4 = (com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig) r4
                        java.lang.String r4 = r4.getKey()
                        java.lang.String r5 = "mute"
                        boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
                        if (r4 == 0) goto L64
                        r8 = r3
                        goto L80
                    L7f:
                        r8 = r2
                    L80:
                        if (r8 == 0) goto L49
                        r2 = r3
                    L83:
                        com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable r7 = r6.this$0
                        if (r2 == 0) goto L93
                        com.android.systemui.util.RingerModeTracker r8 = r7.ringerModeTracker
                        com.android.systemui.util.RingerModeTrackerImpl r8 = (com.android.systemui.util.RingerModeTrackerImpl) r8
                        com.android.systemui.util.RingerModeLiveData r8 = r8.ringerModeInternal
                        com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$observer$1 r7 = r7.observer
                        r8.observeForever(r7)
                        goto L9e
                    L93:
                        com.android.systemui.util.RingerModeTracker r8 = r7.ringerModeTracker
                        com.android.systemui.util.RingerModeTrackerImpl r8 = (com.android.systemui.util.RingerModeTrackerImpl) r8
                        com.android.systemui.util.RingerModeLiveData r8 = r8.ringerModeInternal
                        com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$observer$1 r7 = r7.observer
                        r8.removeObserver(r7)
                    L9e:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r6 = r6.$this_unsafeFlow
                        java.lang.Object r6 = r6.emit(r7, r0)
                        if (r6 != r1) goto Lab
                        return r1
                    Lab:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.data.quickaffordance.MuteQuickAffordanceCoreStartable$start$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, this.coroutineScope);
    }
}
