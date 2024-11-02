package com.android.systemui.keyguard;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class KeyguardSurfaceControllerImpl$isExpandedChangedListener$1 extends FunctionReferenceImpl implements Function1 {
    public KeyguardSurfaceControllerImpl$isExpandedChangedListener$1(Object obj) {
        super(1, obj, KeyguardSurfaceControllerImpl.class, "internalRestoreKeyguardSurfaceIfVisible", "internalRestoreKeyguardSurfaceIfVisible(Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((KeyguardSurfaceControllerImpl) this.receiver).internalRestoreKeyguardSurfaceIfVisible(((Boolean) obj).booleanValue());
        return Unit.INSTANCE;
    }
}
