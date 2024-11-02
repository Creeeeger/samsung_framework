package com.android.app.motiontool;

import android.media.permission.SafeCloseable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class MotionToolManager$beginTrace$1 extends FunctionReferenceImpl implements Function0 {
    public MotionToolManager$beginTrace$1(Object obj) {
        super(0, obj, SafeCloseable.class, "close", "close()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ((SafeCloseable) this.receiver).close();
        return Unit.INSTANCE;
    }
}
