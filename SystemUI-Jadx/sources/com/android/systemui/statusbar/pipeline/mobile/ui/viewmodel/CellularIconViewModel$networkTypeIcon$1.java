package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.statusbar.pipeline.mobile.domain.model.NetworkTypeIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DisabledDataIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.IconLocation;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$networkTypeIcon$1", f = "MobileIconViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CellularIconViewModel$networkTypeIcon$1 extends SuspendLambda implements Function4 {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ boolean Z$0;
    int label;

    public CellularIconViewModel$networkTypeIcon$1(Continuation<? super CellularIconViewModel$networkTypeIcon$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        CellularIconViewModel$networkTypeIcon$1 cellularIconViewModel$networkTypeIcon$1 = new CellularIconViewModel$networkTypeIcon$1((Continuation) obj4);
        cellularIconViewModel$networkTypeIcon$1.L$0 = (NetworkTypeIconModel) obj;
        cellularIconViewModel$networkTypeIcon$1.Z$0 = booleanValue;
        cellularIconViewModel$networkTypeIcon$1.L$1 = (DisabledDataIconModel) obj3;
        return cellularIconViewModel$networkTypeIcon$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ContentDescription.Resource resource;
        Icon.Resource resource2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            NetworkTypeIconModel networkTypeIconModel = (NetworkTypeIconModel) this.L$0;
            boolean z = this.Z$0;
            DisabledDataIconModel disabledDataIconModel = (DisabledDataIconModel) this.L$1;
            if (networkTypeIconModel.getContentDescription() != 0) {
                resource = new ContentDescription.Resource(networkTypeIconModel.getContentDescription());
            } else {
                resource = null;
            }
            if (networkTypeIconModel.getIconId() != 0) {
                resource2 = new Icon.Resource(networkTypeIconModel.getIconId(), resource);
            } else {
                resource2 = null;
            }
            boolean equals = disabledDataIconModel.iconLocation.equals(IconLocation.DATA_ICON);
            Icon.Resource resource3 = new Icon.Resource(disabledDataIconModel.iconId, null);
            if (!z) {
                if (!equals) {
                    return null;
                }
                return resource3;
            }
            return resource2;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
