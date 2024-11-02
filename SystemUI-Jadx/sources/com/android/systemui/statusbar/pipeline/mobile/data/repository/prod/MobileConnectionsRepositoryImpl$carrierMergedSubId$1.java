package com.android.systemui.statusbar.pipeline.mobile.data.repository.prod;

import com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel;
import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionsRepositoryImpl$carrierMergedSubId$1", f = "MobileConnectionsRepositoryImpl.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileConnectionsRepositoryImpl$carrierMergedSubId$1 extends SuspendLambda implements Function4 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ boolean Z$0;
    int label;

    public MobileConnectionsRepositoryImpl$carrierMergedSubId$1(Continuation<? super MobileConnectionsRepositoryImpl$carrierMergedSubId$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj3).booleanValue();
        MobileConnectionsRepositoryImpl$carrierMergedSubId$1 mobileConnectionsRepositoryImpl$carrierMergedSubId$1 = new MobileConnectionsRepositoryImpl$carrierMergedSubId$1((Continuation) obj4);
        mobileConnectionsRepositoryImpl$carrierMergedSubId$1.L$0 = (WifiNetworkModel) obj;
        mobileConnectionsRepositoryImpl$carrierMergedSubId$1.L$1 = (DefaultConnectionModel) obj2;
        mobileConnectionsRepositoryImpl$carrierMergedSubId$1.Z$0 = booleanValue;
        return mobileConnectionsRepositoryImpl$carrierMergedSubId$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            WifiNetworkModel wifiNetworkModel = (WifiNetworkModel) this.L$0;
            DefaultConnectionModel defaultConnectionModel = (DefaultConnectionModel) this.L$1;
            boolean z2 = this.Z$0;
            if (!defaultConnectionModel.carrierMerged.isDefault && !defaultConnectionModel.wifi.isDefault && !z2) {
                z = false;
            } else {
                z = true;
            }
            if ((wifiNetworkModel instanceof WifiNetworkModel.CarrierMerged) && z) {
                return new Integer(((WifiNetworkModel.CarrierMerged) wifiNetworkModel).subscriptionId);
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
