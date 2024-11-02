package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.statusbar.pipeline.mobile.domain.model.NetworkTypeIconModel;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$networkTypeIconGroup$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$networkTypeIconGroup$1 extends SuspendLambda implements Function3 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ MobileIconInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$networkTypeIconGroup$1(MobileIconInteractorImpl mobileIconInteractorImpl, Continuation<? super MobileIconInteractorImpl$networkTypeIconGroup$1> continuation) {
        super(3, continuation);
        this.this$0 = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        MobileIconInteractorImpl$networkTypeIconGroup$1 mobileIconInteractorImpl$networkTypeIconGroup$1 = new MobileIconInteractorImpl$networkTypeIconGroup$1(this.this$0, (Continuation) obj3);
        mobileIconInteractorImpl$networkTypeIconGroup$1.L$0 = (SignalIcon$MobileIconGroup) obj;
        mobileIconInteractorImpl$networkTypeIconGroup$1.Z$0 = booleanValue;
        return mobileIconInteractorImpl$networkTypeIconGroup$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NetworkTypeIconModel.DefaultIcon defaultIcon;
        SignalIcon$MobileIconGroup signalIcon$MobileIconGroup;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            SignalIcon$MobileIconGroup signalIcon$MobileIconGroup2 = (SignalIcon$MobileIconGroup) this.L$0;
            if (this.Z$0) {
                MobileIconInteractorImpl mobileIconInteractorImpl = this.this$0;
                MobileDataIconResource mobileDataIconResource = mobileIconInteractorImpl.dataIconResource;
                int i = mobileIconInteractorImpl.slotId;
                String str = signalIcon$MobileIconGroup2.name;
                Map map = (Map) mobileDataIconResource.carrierIconOverrides.get(mobileDataIconResource.carrierInfraMediator.get(CarrierInfraMediator.Values.ICON_BRANDING, i, new Object[0]));
                if (map != null) {
                    signalIcon$MobileIconGroup = (SignalIcon$MobileIconGroup) map.get(str);
                } else {
                    signalIcon$MobileIconGroup = null;
                }
                if (signalIcon$MobileIconGroup != null) {
                    return new NetworkTypeIconModel.OverriddenIcon(signalIcon$MobileIconGroup, signalIcon$MobileIconGroup.dataType);
                }
                defaultIcon = new NetworkTypeIconModel.DefaultIcon(signalIcon$MobileIconGroup2);
            } else {
                defaultIcon = new NetworkTypeIconModel.DefaultIcon(signalIcon$MobileIconGroup2);
            }
            return defaultIcon;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
