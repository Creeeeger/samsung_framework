package com.android.systemui.user.domain.interactor;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class UserInteractor$executeAction$2 extends FunctionReferenceImpl implements Function0 {
    public UserInteractor$executeAction$2(Object obj) {
        super(0, obj, UserInteractor.class, "dismissDialog", "dismissDialog()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ((UserInteractor) this.receiver).dismissDialog();
        return Unit.INSTANCE;
    }
}
