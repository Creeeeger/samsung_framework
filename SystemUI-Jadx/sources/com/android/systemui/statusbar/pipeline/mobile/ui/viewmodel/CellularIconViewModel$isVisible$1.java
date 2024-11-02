package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$isVisible$1", f = "MobileIconViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class CellularIconViewModel$isVisible$1 extends SuspendLambda implements Function5 {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    /* synthetic */ boolean Z$3;
    int label;
    final /* synthetic */ CellularIconViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularIconViewModel$isVisible$1(CellularIconViewModel cellularIconViewModel, Continuation<? super CellularIconViewModel$isVisible$1> continuation) {
        super(5, continuation);
        this.this$0 = cellularIconViewModel;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        boolean booleanValue3 = ((Boolean) obj3).booleanValue();
        boolean booleanValue4 = ((Boolean) obj4).booleanValue();
        CellularIconViewModel$isVisible$1 cellularIconViewModel$isVisible$1 = new CellularIconViewModel$isVisible$1(this.this$0, (Continuation) obj5);
        cellularIconViewModel$isVisible$1.Z$0 = booleanValue;
        cellularIconViewModel$isVisible$1.Z$1 = booleanValue2;
        cellularIconViewModel$isVisible$1.Z$2 = booleanValue3;
        cellularIconViewModel$isVisible$1.Z$3 = booleanValue4;
        return cellularIconViewModel$isVisible$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
    
        r4 = false;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r4.label
            if (r0 != 0) goto L2f
            kotlin.ResultKt.throwOnFailure(r5)
            boolean r5 = r4.Z$0
            boolean r0 = r4.Z$1
            boolean r1 = r4.Z$2
            boolean r2 = r4.Z$3
            r3 = 0
            if (r5 != 0) goto L2a
            if (r0 != 0) goto L2a
            com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel r4 = r4.this$0
            int r4 = r4.slotId
            r5 = 1
            if (r4 == 0) goto L22
            if (r1 != 0) goto L20
            goto L26
        L20:
            r4 = r3
            goto L27
        L22:
            if (r2 == 0) goto L26
            if (r1 != 0) goto L20
        L26:
            r4 = r5
        L27:
            if (r4 == 0) goto L2a
            r3 = r5
        L2a:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r3)
            return r4
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$isVisible$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
