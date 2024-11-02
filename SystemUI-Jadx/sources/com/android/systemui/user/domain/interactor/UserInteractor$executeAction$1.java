package com.android.systemui.user.domain.interactor;

import com.android.systemui.user.domain.model.ShowDialogRequestModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class UserInteractor$executeAction$1 extends FunctionReferenceImpl implements Function1 {
    public UserInteractor$executeAction$1(Object obj) {
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
