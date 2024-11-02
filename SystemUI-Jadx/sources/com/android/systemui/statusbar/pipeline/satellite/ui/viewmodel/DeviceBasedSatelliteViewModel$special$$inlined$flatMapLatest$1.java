package com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel;

import com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepository;
import com.android.systemui.statusbar.pipeline.airplane.data.repository.AirplaneModeRepositoryImpl;
import com.android.systemui.statusbar.pipeline.satellite.domain.interactor.DeviceBasedSatelliteInteractor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1", f = "DeviceBasedSatelliteViewModel.kt", l = {190}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ AirplaneModeRepository $airplaneModeRepository$inlined;
    final /* synthetic */ DeviceBasedSatelliteInteractor $interactor$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1(Continuation continuation, DeviceBasedSatelliteInteractor deviceBasedSatelliteInteractor, AirplaneModeRepository airplaneModeRepository) {
        super(3, continuation);
        this.$interactor$inlined = deviceBasedSatelliteInteractor;
        this.$airplaneModeRepository$inlined = airplaneModeRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1 deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1 = new DeviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1((Continuation) obj3, this.$interactor$inlined, this.$airplaneModeRepository$inlined);
        deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1.L$0 = (FlowCollector) obj;
        deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1.L$1 = obj2;
        return deviceBasedSatelliteViewModel$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flowKt__ZipKt$combine$$inlined$unsafeFlow$1;
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
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            if (!((Boolean) this.L$1).booleanValue()) {
                flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(Boolean.FALSE);
            } else {
                flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(this.$interactor$inlined.isSatelliteAllowed, ((AirplaneModeRepositoryImpl) this.$airplaneModeRepository$inlined).isAirplaneMode, new DeviceBasedSatelliteViewModel$shouldShowIcon$1$1(null));
            }
            this.label = 1;
            if (FlowKt.emitAll(this, flowKt__ZipKt$combine$$inlined$unsafeFlow$1, flowCollector) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
