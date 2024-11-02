package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$shownLevel$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$shownLevel$1 extends SuspendLambda implements Function5 {
    /* synthetic */ int I$0;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    int label;
    final /* synthetic */ MobileIconInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$shownLevel$1(MobileIconInteractorImpl mobileIconInteractorImpl, Continuation<? super MobileIconInteractorImpl$shownLevel$1> continuation) {
        super(5, continuation);
        this.this$0 = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        int intValue = ((Number) obj).intValue();
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        boolean booleanValue2 = ((Boolean) obj3).booleanValue();
        boolean booleanValue3 = ((Boolean) obj4).booleanValue();
        MobileIconInteractorImpl$shownLevel$1 mobileIconInteractorImpl$shownLevel$1 = new MobileIconInteractorImpl$shownLevel$1(this.this$0, (Continuation) obj5);
        mobileIconInteractorImpl$shownLevel$1.I$0 = intValue;
        mobileIconInteractorImpl$shownLevel$1.Z$0 = booleanValue;
        mobileIconInteractorImpl$shownLevel$1.Z$1 = booleanValue2;
        mobileIconInteractorImpl$shownLevel$1.Z$2 = booleanValue3;
        return mobileIconInteractorImpl$shownLevel$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if (r1 != false) goto L13;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r5.label
            if (r0 != 0) goto L30
            kotlin.ResultKt.throwOnFailure(r6)
            int r6 = r5.I$0
            boolean r0 = r5.Z$0
            boolean r1 = r5.Z$1
            boolean r2 = r5.Z$2
            if (r0 != 0) goto L2a
            r0 = 0
            if (r2 != 0) goto L29
            com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl r5 = r5.this$0
            com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator r2 = r5.carrierInfraMediator
            com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator$Conditions r3 = com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator.Conditions.SIGNAL_BAR_WHEN_EMERGENCY
            int r5 = r5.slotId
            java.lang.Object[] r4 = new java.lang.Object[r0]
            boolean r5 = r2.isEnabled(r3, r5, r4)
            if (r5 == 0) goto L29
            if (r1 == 0) goto L29
            goto L2a
        L29:
            r6 = r0
        L2a:
            java.lang.Integer r5 = new java.lang.Integer
            r5.<init>(r6)
            return r5
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$shownLevel$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
