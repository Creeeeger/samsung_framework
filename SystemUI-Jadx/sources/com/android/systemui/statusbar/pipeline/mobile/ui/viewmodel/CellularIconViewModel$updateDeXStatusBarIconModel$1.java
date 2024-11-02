package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DeXStatusBarIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$updateDeXStatusBarIconModel$1", f = "MobileIconViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CellularIconViewModel$updateDeXStatusBarIconModel$1 extends SuspendLambda implements Function6 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    /* synthetic */ boolean Z$0;
    int label;
    final /* synthetic */ CellularIconViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularIconViewModel$updateDeXStatusBarIconModel$1(CellularIconViewModel cellularIconViewModel, Continuation<? super CellularIconViewModel$updateDeXStatusBarIconModel$1> continuation) {
        super(6, continuation);
        this.this$0 = cellularIconViewModel;
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        CellularIconViewModel$updateDeXStatusBarIconModel$1 cellularIconViewModel$updateDeXStatusBarIconModel$1 = new CellularIconViewModel$updateDeXStatusBarIconModel$1(this.this$0, (Continuation) obj6);
        cellularIconViewModel$updateDeXStatusBarIconModel$1.Z$0 = booleanValue;
        cellularIconViewModel$updateDeXStatusBarIconModel$1.L$0 = (SignalIconModel) obj2;
        cellularIconViewModel$updateDeXStatusBarIconModel$1.L$1 = (Icon.Resource) obj3;
        cellularIconViewModel$updateDeXStatusBarIconModel$1.L$2 = (Icon.Resource) obj4;
        cellularIconViewModel$updateDeXStatusBarIconModel$1.L$3 = (Icon.Resource) obj5;
        return cellularIconViewModel$updateDeXStatusBarIconModel$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            boolean z = this.Z$0;
            SignalIconModel signalIconModel = (SignalIconModel) this.L$0;
            Icon.Resource resource = (Icon.Resource) this.L$1;
            Icon.Resource resource2 = (Icon.Resource) this.L$2;
            Icon.Resource resource3 = (Icon.Resource) this.L$3;
            CellularIconViewModel cellularIconViewModel = this.this$0;
            int i5 = cellularIconViewModel.slotId;
            int i6 = cellularIconViewModel.subscriptionId;
            if (signalIconModel instanceof SignalIconModel.Cellular) {
                i = ((SignalIconModel.Cellular) signalIconModel).iconId;
            } else {
                i = 0;
            }
            if (resource != null) {
                i2 = resource.res;
            } else {
                i2 = 0;
            }
            if (resource2 != null) {
                i3 = resource2.res;
            } else {
                i3 = 0;
            }
            if (resource3 != null) {
                i4 = resource3.res;
            } else {
                i4 = 0;
            }
            DeXStatusBarIconModel deXStatusBarIconModel = new DeXStatusBarIconModel(z, i5, i6, i, i2, z, i3, i4);
            CellularIconViewModel.access$sendDeXStatusBarIconModel(this.this$0, deXStatusBarIconModel);
            return deXStatusBarIconModel;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
