package com.android.systemui.unfold;

import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldTransitionModule$providesFoldStateLogger$1 implements Function {
    public static final UnfoldTransitionModule$providesFoldStateLogger$1 INSTANCE = new UnfoldTransitionModule$providesFoldStateLogger$1();

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new FoldStateLogger((FoldStateLoggingProvider) obj);
    }
}
