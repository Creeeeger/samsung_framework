package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState;
import com.android.systemui.statusbar.pipeline.mobile.data.model.ResolvedNetworkType;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$carrierIdIconOverrideExists$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$carrierIdIconOverrideExists$1 extends SuspendLambda implements Function4 {
    /* synthetic */ int I$0;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ MobileIconInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$carrierIdIconOverrideExists$1(MobileIconInteractorImpl mobileIconInteractorImpl, Continuation<? super MobileIconInteractorImpl$carrierIdIconOverrideExists$1> continuation) {
        super(4, continuation);
        this.this$0 = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int intValue = ((Number) obj).intValue();
        MobileIconInteractorImpl$carrierIdIconOverrideExists$1 mobileIconInteractorImpl$carrierIdIconOverrideExists$1 = new MobileIconInteractorImpl$carrierIdIconOverrideExists$1(this.this$0, (Continuation) obj4);
        mobileIconInteractorImpl$carrierIdIconOverrideExists$1.I$0 = intValue;
        mobileIconInteractorImpl$carrierIdIconOverrideExists$1.L$0 = (ResolvedNetworkType) obj2;
        mobileIconInteractorImpl$carrierIdIconOverrideExists$1.L$1 = (MobileServiceState) obj3;
        return mobileIconInteractorImpl$carrierIdIconOverrideExists$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0236, code lost:
    
        if (r1.useGlobal5gIcon(r11) != false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        if (r1.useGlobal5gIcon(r11) != false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ca, code lost:
    
        if (r11 != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e4, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r6.get(r3, r11, new java.lang.Object[0]), "PCT") != false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011c, code lost:
    
        if (r1.useGlobal5gIcon(r11) == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01bf, code lost:
    
        if (r1.useGlobal5gIcon(r11) != false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01fb, code lost:
    
        if (r1.useGlobal5gIcon(r11) == false) goto L118;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$carrierIdIconOverrideExists$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
