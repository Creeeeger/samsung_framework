package com.android.systemui.controls.management;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsFavoritingActivity$onActivityResult$1$1 extends FunctionReferenceImpl implements Function0 {
    public CustomControlsFavoritingActivity$onActivityResult$1$1(Object obj) {
        super(0, obj, CustomControlsFavoritingActivity.class, "updateFavorites", "updateFavorites()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        CustomControlsFavoritingActivity customControlsFavoritingActivity = (CustomControlsFavoritingActivity) this.receiver;
        int i = CustomControlsFavoritingActivity.$r8$clinit;
        customControlsFavoritingActivity.updateFavorites();
        return Unit.INSTANCE;
    }
}
