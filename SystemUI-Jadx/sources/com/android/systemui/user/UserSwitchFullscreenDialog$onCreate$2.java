package com.android.systemui.user;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final /* synthetic */ class UserSwitchFullscreenDialog$onCreate$2 extends FunctionReferenceImpl implements Function0 {
    public UserSwitchFullscreenDialog$onCreate$2(Object obj) {
        super(0, obj, UserSwitchFullscreenDialog.class, "dismiss", "dismiss()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ((UserSwitchFullscreenDialog) this.receiver).dismiss();
        return Unit.INSTANCE;
    }
}
