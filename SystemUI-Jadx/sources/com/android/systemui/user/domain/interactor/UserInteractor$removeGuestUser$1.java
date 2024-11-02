package com.android.systemui.user.domain.interactor;

import com.android.systemui.user.domain.model.ShowDialogRequestModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$removeGuestUser$1", f = "UserInteractor.kt", l = {521}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserInteractor$removeGuestUser$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $guestUserId;
    final /* synthetic */ int $targetUserId;
    int label;
    final /* synthetic */ UserInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$removeGuestUser$1$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1 {
        public AnonymousClass1(Object obj) {
            super(1, obj, UserInteractor.class, "showDialog", "showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            UserInteractor userInteractor = (UserInteractor) this.receiver;
            int i = UserInteractor.$r8$clinit;
            userInteractor.showDialog((ShowDialogRequestModel) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$removeGuestUser$1$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function0 {
        public AnonymousClass2(Object obj) {
            super(0, obj, UserInteractor.class, "dismissDialog", "dismissDialog()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ((UserInteractor) this.receiver).dismissDialog();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$removeGuestUser$1$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class AnonymousClass3 extends AdaptedFunctionReference implements Function1 {
        public AnonymousClass3(Object obj) {
            super(1, obj, UserInteractor.class, "selectUser", "selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            int intValue = ((Number) obj).intValue();
            UserInteractor userInteractor = (UserInteractor) this.receiver;
            int i = UserInteractor.$r8$clinit;
            userInteractor.selectUser(intValue, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserInteractor$removeGuestUser$1(UserInteractor userInteractor, int i, int i2, Continuation<? super UserInteractor$removeGuestUser$1> continuation) {
        super(2, continuation);
        this.this$0 = userInteractor;
        this.$guestUserId = i;
        this.$targetUserId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserInteractor$removeGuestUser$1(this.this$0, this.$guestUserId, this.$targetUserId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserInteractor$removeGuestUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            GuestUserInteractor guestUserInteractor = this.this$0.guestUserInteractor;
            int i2 = this.$guestUserId;
            int i3 = this.$targetUserId;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0);
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0);
            this.label = 1;
            if (guestUserInteractor.remove(i2, i3, anonymousClass1, anonymousClass2, anonymousClass3, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
