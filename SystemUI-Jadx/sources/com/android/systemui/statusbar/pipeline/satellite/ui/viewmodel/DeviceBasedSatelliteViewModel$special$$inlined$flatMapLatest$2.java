package com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel;

import com.android.systemui.log.LogBuffer;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2", f = "DeviceBasedSatelliteViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_addWidget, 190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2 extends SuspendLambda implements Function3 {
    final /* synthetic */ LogBuffer $logBuffer$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2(Continuation continuation, LogBuffer logBuffer) {
        super(3, continuation);
        this.$logBuffer$inlined = logBuffer;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2 deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2 = new DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2((Continuation) obj3, this.$logBuffer$inlined);
        deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2.L$0 = (FlowCollector) obj;
        deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2.L$1 = obj2;
        return deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L19
            if (r1 != r3) goto L11
            kotlin.ResultKt.throwOnFailure(r10)
            goto L76
        L11:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L19:
            java.lang.Object r1 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5c
        L21:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            r1 = r10
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            java.lang.Object r10 = r9.L$1
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L64
            com.android.systemui.log.LogLevel r10 = com.android.systemui.log.LogLevel.INFO
            com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2 r5 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2
                static {
                    /*
                        com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2 r0 = new com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT 
  (r0 I:com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2)
 com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2.INSTANCE com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public final java.lang.Object invoke(java.lang.Object r3) {
                    /*
                        r2 = this;
                        com.android.systemui.log.LogMessage r3 = (com.android.systemui.log.LogMessage) r3
                        long r2 = r3.getLong1()
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        java.lang.String r1 = "Waiting "
                        r0.<init>(r1)
                        r0.append(r2)
                        java.lang.String r2 = " seconds before showing the satellite icon"
                        r0.append(r2)
                        java.lang.String r2 = r0.toString()
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$shouldActuallyShowIcon$1$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            com.android.systemui.log.LogBuffer r6 = r9.$logBuffer$inlined
            java.lang.String r7 = "DeviceBasedSatelliteViewModel"
            com.android.systemui.log.LogMessage r10 = r6.obtain(r7, r10, r5, r2)
            long r5 = com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel.DELAY_DURATION
            kotlin.time.Duration$Companion r7 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r7 = kotlin.time.DurationUnit.SECONDS
            long r7 = kotlin.time.Duration.m2578toLongimpl(r5, r7)
            r10.setLong1(r7)
            com.android.systemui.log.LogBuffer r7 = r9.$logBuffer$inlined
            r7.commit(r10)
            r9.L$0 = r1
            r9.label = r4
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.m2580delayVtjQ1oo(r5, r9)
            if (r10 != r0) goto L5c
            return r0
        L5c:
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r4 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r4.<init>(r10)
            goto L6b
        L64:
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2 r4 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            r4.<init>(r10)
        L6b:
            r9.L$0 = r2
            r9.label = r3
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.emitAll(r9, r4, r1)
            if (r9 != r0) goto L76
            return r0
        L76:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
