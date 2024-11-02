package com.android.systemui.user.domain.interactor;

import android.widget.Toast;
import com.android.systemui.R;
import com.android.systemui.qs.QSUserSwitcherEvent;
import com.android.systemui.user.domain.model.ShowDialogRequestModel;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.domain.interactor.GuestUserInteractor$create$2", f = "GuestUserInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastExternal}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class GuestUserInteractor$create$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function0 $dismissDialog;
    final /* synthetic */ Function1 $showDialog;
    int label;
    final /* synthetic */ GuestUserInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GuestUserInteractor$create$2(Function1 function1, GuestUserInteractor guestUserInteractor, Function0 function0, Continuation<? super GuestUserInteractor$create$2> continuation) {
        super(2, continuation);
        this.$showDialog = function1;
        this.this$0 = guestUserInteractor;
        this.$dismissDialog = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GuestUserInteractor$create$2(this.$showDialog, this.this$0, this.$dismissDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GuestUserInteractor$create$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            this.$showDialog.invoke(new ShowDialogRequestModel.ShowUserCreationDialog(true));
            GuestUserInteractor guestUserInteractor = this.this$0;
            this.label = 1;
            int i2 = GuestUserInteractor.$r8$clinit;
            guestUserInteractor.getClass();
            obj = BuildersKt.withContext(guestUserInteractor.backgroundDispatcher, new GuestUserInteractor$createInBackground$2(guestUserInteractor, null), this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        int intValue = ((Number) obj).intValue();
        this.$dismissDialog.invoke();
        if (intValue != -10000) {
            this.this$0.uiEventLogger.log(QSUserSwitcherEvent.QS_USER_GUEST_ADD);
        } else {
            Toast.makeText(this.this$0.applicationContext, R.string.add_guest_failed, 0).show();
        }
        return new Integer(intValue);
    }
}
