package com.android.systemui.statusbar.pipeline.satellite.data.prod;

import android.telephony.satellite.SatelliteManager;
import android.util.Log;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.statusbar.pipeline.satellite.data.DeviceBasedSatelliteRepository;
import com.android.systemui.statusbar.pipeline.satellite.data.prod.SatelliteSupport;
import com.android.systemui.statusbar.pipeline.satellite.shared.model.SatelliteConnectionState;
import com.android.systemui.util.time.SystemClock;
import java.util.Optional;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceBasedSatelliteRepositoryImpl implements DeviceBasedSatelliteRepository {
    public static final Companion Companion = new Companion(null);
    public final StateFlowImpl isSatelliteAllowedForCurrentLocation;
    public final SatelliteManager satelliteManager;
    public final StateFlowImpl satelliteSupport;
    public final SystemClock systemClock;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1", f = "DeviceBasedSatelliteRepositoryImpl.kt", l = {163, 165, 178}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$2", f = "DeviceBasedSatelliteRepositoryImpl.kt", l = {192}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            /* synthetic */ boolean Z$0;
            int label;

            public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
                anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
                return anonymousClass2;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create(Boolean.valueOf(((Boolean) obj).booleanValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (!this.Z$0) {
                        return Unit.INSTANCE;
                    }
                }
                do {
                    Log.i("DeviceBasedSatelliteRepo", "requestIsCommunicationAllowedForCurrentLocation");
                    this.label = 1;
                } while (DelayKt.delay(3600000L, this) != coroutineSingletons);
                return coroutineSingletons;
            }
        }

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00c5  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r10.label
                java.lang.String r2 = "DeviceBasedSatelliteRepo"
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2a
                if (r1 == r5) goto L26
                if (r1 == r4) goto L1e
                if (r1 != r3) goto L16
                kotlin.ResultKt.throwOnFailure(r11)
                goto Le7
            L16:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r11)
                throw r10
            L1e:
                java.lang.Object r1 = r10.L$0
                kotlinx.coroutines.flow.MutableStateFlow r1 = (kotlinx.coroutines.flow.MutableStateFlow) r1
                kotlin.ResultKt.throwOnFailure(r11)
                goto L93
            L26:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L6d
            L2a:
                kotlin.ResultKt.throwOnFailure(r11)
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$Companion r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.Companion
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r1 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                com.android.systemui.util.time.SystemClock r1 = r1.systemClock
                r11.getClass()
                com.android.systemui.util.time.SystemClockImpl r1 = (com.android.systemui.util.time.SystemClockImpl) r1
                r1.getClass()
                long r6 = android.os.SystemClock.uptimeMillis()
                long r8 = android.os.Process.getStartUptimeMillis()
                long r6 = r6 - r8
                r8 = 60000(0xea60, double:2.9644E-319)
                long r8 = r8 - r6
                r6 = 0
                int r11 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r11 <= 0) goto L6d
                java.lang.StringBuilder r11 = new java.lang.StringBuilder
                java.lang.String r1 = "Waiting "
                r11.<init>(r1)
                r11.append(r8)
                java.lang.String r1 = " ms before checking for satellite support"
                r11.append(r1)
                java.lang.String r11 = r11.toString()
                android.util.Log.i(r2, r11)
                r10.label = r5
                java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r8, r10)
                if (r11 != r0) goto L6d
                return r0
            L6d:
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                kotlinx.coroutines.flow.MutableStateFlow r1 = r11.getSatelliteSupport()
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                android.telephony.satellite.SatelliteManager r11 = r11.satelliteManager
                r10.L$0 = r1
                r10.label = r4
                kotlinx.coroutines.CancellableContinuationImpl r4 = new kotlinx.coroutines.CancellableContinuationImpl
                kotlin.coroutines.Continuation r6 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r10)
                r4.<init>(r6, r5)
                r4.initCancellability()
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$checkSatelliteSupported$2$cb$1 r5 = new com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$checkSatelliteSupported$2$cb$1
                r5.<init>()
                java.lang.Object r11 = r4.getResult()
                if (r11 != r0) goto L93
                return r0
            L93:
                kotlinx.coroutines.flow.StateFlowImpl r1 = (kotlinx.coroutines.flow.StateFlowImpl) r1
                r1.setValue(r11)
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                kotlinx.coroutines.flow.MutableStateFlow r11 = r11.getSatelliteSupport()
                kotlinx.coroutines.flow.StateFlowImpl r11 = (kotlinx.coroutines.flow.StateFlowImpl) r11
                java.lang.Object r11 = r11.getValue()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r4 = "Checked for system support. support="
                r1.<init>(r4)
                r1.append(r11)
                java.lang.String r11 = r1.toString()
                android.util.Log.i(r2, r11)
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                kotlinx.coroutines.flow.MutableStateFlow r11 = r11.getSatelliteSupport()
                kotlinx.coroutines.flow.StateFlowImpl r11 = (kotlinx.coroutines.flow.StateFlowImpl) r11
                java.lang.Object r11 = r11.getValue()
                boolean r11 = r11 instanceof com.android.systemui.statusbar.pipeline.satellite.data.prod.SatelliteSupport.Supported
                if (r11 == 0) goto Le7
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl r11 = com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.this
                kotlinx.coroutines.flow.StateFlowImpl r11 = r11.isSatelliteAllowedForCurrentLocation
                kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow r11 = r11.getSubscriptionCount()
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$invokeSuspend$$inlined$map$1 r1 = new com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$invokeSuspend$$inlined$map$1
                r1.<init>()
                kotlinx.coroutines.flow.Flow r11 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r1)
                com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$2 r1 = new com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl$1$2
                r2 = 0
                r1.<init>(r2)
                r10.L$0 = r2
                r10.label = r3
                java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt.collectLatest(r11, r1, r10)
                if (r10 != r0) goto Le7
                return r0
            Le7:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.satellite.data.prod.DeviceBasedSatelliteRepositoryImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DeviceBasedSatelliteRepositoryImpl(Optional<SatelliteManager> optional, CoroutineDispatcher coroutineDispatcher, CoroutineScope coroutineScope, LogBuffer logBuffer, SystemClock systemClock) {
        this.systemClock = systemClock;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(SatelliteSupport.Unknown.INSTANCE);
        this.satelliteSupport = MutableStateFlow;
        SatelliteManager orElse = optional.orElse(null);
        this.satelliteManager = orElse;
        this.isSatelliteAllowedForCurrentLocation = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        if (orElse != null) {
            BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass1(null), 3);
        } else {
            Log.i("DeviceBasedSatelliteRepo", "Satellite manager is null");
            MutableStateFlow.setValue(SatelliteSupport.NotSupported.INSTANCE);
        }
        SatelliteSupport.Companion companion = SatelliteSupport.Companion;
        SatelliteConnectionState satelliteConnectionState = SatelliteConnectionState.Off;
        FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(satelliteConnectionState);
        FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$22 = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(satelliteConnectionState);
        companion.getClass();
        FlowKt.transformLatest(MutableStateFlow, new SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1(null, flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2, flowKt__BuildersKt$flowOf$$inlined$unsafeFlow$22));
        FlowKt.transformLatest(MutableStateFlow, new SatelliteSupport$Companion$whenSupported$$inlined$flatMapLatest$1(null, new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(0), new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(0)));
    }

    public final MutableStateFlow getSatelliteSupport() {
        return this.satelliteSupport;
    }
}
