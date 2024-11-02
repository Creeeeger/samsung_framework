package com.android.systemui.user.ui.dialog;

import android.app.Dialog;
import com.android.systemui.user.domain.interactor.UserInteractor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.ui.dialog.UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1", f = "UserSwitcherDialogCoordinator.kt", l = {160}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ UserSwitcherDialogCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1(UserSwitcherDialogCoordinator userSwitcherDialogCoordinator, Continuation<? super UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1> continuation) {
        super(2, continuation);
        this.this$0 = userSwitcherDialogCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(((UserInteractor) this.this$0.interactor.get()).dialogDismissRequests);
            final UserSwitcherDialogCoordinator userSwitcherDialogCoordinator = this.this$0;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.dialog.UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    UserSwitcherDialogCoordinator userSwitcherDialogCoordinator2 = UserSwitcherDialogCoordinator.this;
                    Dialog dialog = userSwitcherDialogCoordinator2.currentDialog;
                    if (dialog != null && dialog.isShowing()) {
                        dialog.cancel();
                    }
                    ((UserInteractor) userSwitcherDialogCoordinator2.interactor.get())._dialogDismissRequests.setValue(null);
                    return Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
