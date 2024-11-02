package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import com.android.settingslib.AccessibilityContentDescriptions;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.statusbar.pipeline.mobile.ui.util.SamsungMobileIcons;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$contentDescription$1", f = "MobileIconInteractor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl$contentDescription$1 extends SuspendLambda implements Function3 {
    /* synthetic */ int I$0;
    /* synthetic */ int I$1;
    int label;
    final /* synthetic */ MobileIconInteractorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileIconInteractorImpl$contentDescription$1(MobileIconInteractorImpl mobileIconInteractorImpl, Continuation<? super MobileIconInteractorImpl$contentDescription$1> continuation) {
        super(3, continuation);
        this.this$0 = mobileIconInteractorImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int intValue = ((Number) obj).intValue();
        int intValue2 = ((Number) obj2).intValue();
        MobileIconInteractorImpl$contentDescription$1 mobileIconInteractorImpl$contentDescription$1 = new MobileIconInteractorImpl$contentDescription$1(this.this$0, (Continuation) obj3);
        mobileIconInteractorImpl$contentDescription$1.I$0 = intValue;
        mobileIconInteractorImpl$contentDescription$1.I$1 = intValue2;
        return mobileIconInteractorImpl$contentDescription$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int[] iArr;
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            int i2 = this.I$0;
            int i3 = this.I$1;
            this.this$0.signalIconResource.getClass();
            if (i3 == 5) {
                iArr = AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH;
            } else {
                SamsungMobileIcons.Companion.getClass();
                iArr = SamsungMobileIcons.PHONE_SIGNAL_STRENGTH_5LEVEL;
            }
            if (i2 >= iArr.length) {
                i = iArr[iArr.length - 1];
            } else {
                i = iArr[i2];
            }
            return new ContentDescription.Resource(i);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
