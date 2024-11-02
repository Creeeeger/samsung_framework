package com.android.systemui.unfold;

import com.android.systemui.unfold.updates.FoldProvider;
import com.android.systemui.unfold.util.UnfoldOnlyProgressProvider;
import java.util.concurrent.Executor;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldTransitionModule$provideUnfoldOnlyProvider$1 implements Function {
    public final /* synthetic */ Executor $executor;
    public final /* synthetic */ FoldProvider $foldProvider;

    public UnfoldTransitionModule$provideUnfoldOnlyProvider$1(FoldProvider foldProvider, Executor executor) {
        this.$foldProvider = foldProvider;
        this.$executor = executor;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new UnfoldOnlyProgressProvider(this.$foldProvider, this.$executor, (UnfoldTransitionProgressProvider) obj, null, 8, null);
    }
}
