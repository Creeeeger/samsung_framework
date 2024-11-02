package com.android.keyguard.dagger;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.keyguard.KeyguardSecurityContainer;
import com.android.systemui.R;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBouncerModule_ProvidesKeyguardSecurityContainerFactory implements Provider {
    public final Provider layoutInflaterProvider;
    public final Provider rootViewProvider;

    public KeyguardBouncerModule_ProvidesKeyguardSecurityContainerFactory(Provider provider, Provider provider2) {
        this.rootViewProvider = provider;
        this.layoutInflaterProvider = provider2;
    }

    public static KeyguardSecurityContainer providesKeyguardSecurityContainer(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        KeyguardSecurityContainer keyguardSecurityContainer = (KeyguardSecurityContainer) layoutInflater.inflate(R.layout.keyguard_security_container_view, viewGroup, false);
        Preconditions.checkNotNullFromProvides(keyguardSecurityContainer);
        return keyguardSecurityContainer;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesKeyguardSecurityContainer((LayoutInflater) this.layoutInflaterProvider.get(), (ViewGroup) this.rootViewProvider.get());
    }
}
