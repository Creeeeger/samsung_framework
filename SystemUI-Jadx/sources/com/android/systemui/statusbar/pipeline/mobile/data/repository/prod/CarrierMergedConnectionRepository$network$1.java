package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import android.util.Log;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.CarrierMergedConnectionRepository$network$1", f = "CarrierMergedConnectionRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CarrierMergedConnectionRepository$network$1 extends SuspendLambda implements Function4 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;
    final /* synthetic */ CarrierMergedConnectionRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarrierMergedConnectionRepository$network$1(CarrierMergedConnectionRepository carrierMergedConnectionRepository, Continuation<? super CarrierMergedConnectionRepository$network$1> continuation) {
        super(4, continuation);
        this.this$0 = carrierMergedConnectionRepository;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        CarrierMergedConnectionRepository$network$1 carrierMergedConnectionRepository$network$1 = new CarrierMergedConnectionRepository$network$1(this.this$0, (Continuation) obj4);
        carrierMergedConnectionRepository$network$1.Z$0 = booleanValue;
        carrierMergedConnectionRepository$network$1.Z$1 = booleanValue2;
        carrierMergedConnectionRepository$network$1.L$0 = (WifiNetworkModel) obj3;
        return carrierMergedConnectionRepository$network$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            boolean z2 = this.Z$1;
            WifiNetworkModel wifiNetworkModel = (WifiNetworkModel) this.L$0;
            if (!z || !z2 || !(wifiNetworkModel instanceof WifiNetworkModel.CarrierMerged)) {
                return null;
            }
            WifiNetworkModel.CarrierMerged carrierMerged = (WifiNetworkModel.CarrierMerged) wifiNetworkModel;
            int i = carrierMerged.subscriptionId;
            int i2 = this.this$0.subId;
            if (i != i2) {
                Log.w("CarrierMergedConnectionRepository", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("Connection repo subId=", i2, " does not equal wifi repo subId=", i, "; not showing carrier merged"));
                return null;
            }
            return carrierMerged;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
