package com.android.systemui.unfold;

import com.android.systemui.unfold.util.NaturalRotationUnfoldProgressProvider;
import com.android.systemui.unfold.util.ScopedUnfoldTransitionProgressProvider;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1 implements Function {
    public static final UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1 INSTANCE = new UnfoldTransitionModule$provideStatusBarScopedTransitionProvider$1();

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new ScopedUnfoldTransitionProgressProvider((NaturalRotationUnfoldProgressProvider) obj);
    }
}
