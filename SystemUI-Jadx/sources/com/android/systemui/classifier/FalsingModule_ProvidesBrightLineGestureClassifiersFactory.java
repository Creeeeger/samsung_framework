package com.android.systemui.classifier;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FalsingModule_ProvidesBrightLineGestureClassifiersFactory implements Provider {
    public final Provider diagonalClassifierProvider;
    public final Provider distanceClassifierProvider;
    public final Provider pointerCountClassifierProvider;
    public final Provider proximityClassifierProvider;
    public final Provider typeClassifierProvider;
    public final Provider zigZagClassifierProvider;

    public FalsingModule_ProvidesBrightLineGestureClassifiersFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5, Provider provider6) {
        this.distanceClassifierProvider = provider;
        this.proximityClassifierProvider = provider2;
        this.pointerCountClassifierProvider = provider3;
        this.typeClassifierProvider = provider4;
        this.diagonalClassifierProvider = provider5;
        this.zigZagClassifierProvider = provider6;
    }

    public static Set providesBrightLineGestureClassifiers(Object obj, Object obj2, Object obj3, TypeClassifier typeClassifier, Object obj4, Object obj5) {
        return new HashSet(Arrays.asList((PointerCountClassifier) obj3, typeClassifier, (DiagonalClassifier) obj4, (DistanceClassifier) obj, (ProximityClassifier) obj2, (ZigZagClassifier) obj5));
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesBrightLineGestureClassifiers(this.distanceClassifierProvider.get(), this.proximityClassifierProvider.get(), this.pointerCountClassifierProvider.get(), (TypeClassifier) this.typeClassifierProvider.get(), this.diagonalClassifierProvider.get(), this.zigZagClassifierProvider.get());
    }
}
