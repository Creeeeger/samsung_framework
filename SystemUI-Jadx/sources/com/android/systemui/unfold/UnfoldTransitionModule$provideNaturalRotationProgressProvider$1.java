package com.android.systemui.unfold;

import android.content.Context;
import com.android.systemui.unfold.updates.RotationChangeProvider;
import com.android.systemui.unfold.util.NaturalRotationUnfoldProgressProvider;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldTransitionModule$provideNaturalRotationProgressProvider$1 implements Function {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ RotationChangeProvider $rotationChangeProvider;

    public UnfoldTransitionModule$provideNaturalRotationProgressProvider$1(Context context, RotationChangeProvider rotationChangeProvider) {
        this.$context = context;
        this.$rotationChangeProvider = rotationChangeProvider;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new NaturalRotationUnfoldProgressProvider(this.$context, this.$rotationChangeProvider, (UnfoldTransitionProgressProvider) obj);
    }
}
