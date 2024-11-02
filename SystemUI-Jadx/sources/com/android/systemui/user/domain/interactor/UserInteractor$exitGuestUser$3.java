package com.android.systemui.user.domain.interactor;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class UserInteractor$exitGuestUser$3 extends FunctionReferenceImpl implements Function1 {
    public UserInteractor$exitGuestUser$3(Object obj) {
        super(1, obj, UserInteractor.class, "switchUser", "switchUser(I)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int intValue = ((Number) obj).intValue();
        UserInteractor userInteractor = (UserInteractor) this.receiver;
        int i = UserInteractor.$r8$clinit;
        userInteractor.switchUser(intValue);
        return Unit.INSTANCE;
    }
}
