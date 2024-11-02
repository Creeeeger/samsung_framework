package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$roamingId$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$roamingId$1 extends SuspendLambda implements Function5 {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    int label;
    final /* synthetic */ MobileIconInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$roamingId$1(MobileIconInteractorImpl mobileIconInteractorImpl, Continuation<? super MobileIconInteractorImpl$roamingId$1> continuation) {
        super(5, continuation);
        this.this$0 = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        boolean booleanValue3 = ((Boolean) obj4).booleanValue();
        MobileIconInteractorImpl$roamingId$1 mobileIconInteractorImpl$roamingId$1 = new MobileIconInteractorImpl$roamingId$1(this.this$0, (Continuation) obj5);
        mobileIconInteractorImpl$roamingId$1.Z$0 = booleanValue;
        mobileIconInteractorImpl$roamingId$1.Z$1 = booleanValue2;
        mobileIconInteractorImpl$roamingId$1.L$0 = (MobileServiceState) obj3;
        mobileIconInteractorImpl$roamingId$1.Z$2 = booleanValue3;
        return mobileIconInteractorImpl$roamingId$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r12.substring(0, 3), r4.substring(0, 3)) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b7, code lost:
    
        if (kotlin.collections.ArraysKt___ArraysKt.contains(new java.lang.String[]{"1836", "10009", "10010"}, r12) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c8, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual("21901", r4) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00d8, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual("311480", r4) != false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011f A[ADDED_TO_REGION] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$roamingId$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
