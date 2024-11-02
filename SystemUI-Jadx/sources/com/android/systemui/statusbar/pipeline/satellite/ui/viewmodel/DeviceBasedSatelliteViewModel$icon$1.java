package com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel;

import com.android.systemui.R;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.statusbar.pipeline.satellite.shared.model.SatelliteConnectionState;
import com.android.systemui.statusbar.pipeline.satellite.ui.model.SatelliteIconModel;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.satellite.ui.viewmodel.DeviceBasedSatelliteViewModel$icon$1", f = "DeviceBasedSatelliteViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DeviceBasedSatelliteViewModel$icon$1 extends SuspendLambda implements Function4 {
    /* synthetic */ int I$0;
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    public DeviceBasedSatelliteViewModel$icon$1(Continuation<? super DeviceBasedSatelliteViewModel$icon$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int intValue = ((Number) obj3).intValue();
        DeviceBasedSatelliteViewModel$icon$1 deviceBasedSatelliteViewModel$icon$1 = new DeviceBasedSatelliteViewModel$icon$1((Continuation) obj4);
        deviceBasedSatelliteViewModel$icon$1.Z$0 = booleanValue;
        deviceBasedSatelliteViewModel$icon$1.L$0 = (SatelliteConnectionState) obj2;
        deviceBasedSatelliteViewModel$icon$1.I$0 = intValue;
        return deviceBasedSatelliteViewModel$icon$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            SatelliteConnectionState satelliteConnectionState = (SatelliteConnectionState) this.L$0;
            int i = this.I$0;
            if (z) {
                SatelliteIconModel.INSTANCE.getClass();
                int i2 = SatelliteIconModel.WhenMappings.$EnumSwitchMapping$0[satelliteConnectionState.ordinal()];
                if (i2 != 1 && i2 != 2 && i2 != 3) {
                    if (i2 == 4) {
                        return SatelliteIconModel.fromSignalStrength(i);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return new Icon.Resource(R.drawable.stat_sys_sos_satellite_anim, new ContentDescription.Resource(R.string.accessibility_status_bar_satellite_available));
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
