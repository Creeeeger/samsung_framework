package com.samsung.android.knox.ucm.plugin.service;

import android.os.Bundle;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.security.KeyPair;
import java.security.Provider;
import java.security.spec.AlgorithmParameterSpec;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KeyPairGenerator {
    public static final String SERVICE = "KeyPairGenerator";
    public final String algorithm;
    public final Provider provider;
    public UcmAgentProviderImpl.UcmAgentKeyPairGeneratorSpi spiImpl;

    private KeyPairGenerator(UcmAgentProviderImpl.UcmAgentKeyPairGeneratorSpi ucmAgentKeyPairGeneratorSpi, Provider provider, String str) {
        this.algorithm = str;
        this.spiImpl = ucmAgentKeyPairGeneratorSpi;
        this.provider = provider;
    }

    public static KeyPairGenerator getInstance(String str, Provider provider) {
        if (provider != null) {
            if (str != null) {
                UcmAgentProviderImpl.UcmAgentKeyPairGeneratorSpi ucmAgentKeyPairGeneratorSpi = (UcmAgentProviderImpl.UcmAgentKeyPairGeneratorSpi) UcmSpiUtil.getSpi("KeyPairGenerator", UcmAgentProviderImpl.UcmAgentKeyPairGeneratorSpi.class, str, provider);
                if (ucmAgentKeyPairGeneratorSpi != null) {
                    return new KeyPairGenerator(ucmAgentKeyPairGeneratorSpi, provider, str);
                }
                throw new NullPointerException("spi == null");
            }
            throw new NullPointerException("algorithm == null");
        }
        throw new IllegalArgumentException("provider == null");
    }

    public final KeyPair generateKeyPair() {
        return this.spiImpl.generateKeyPair();
    }

    public final int getErrorStatus() {
        return this.spiImpl.getErrorCode();
    }

    public final void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        this.spiImpl.initialize(algorithmParameterSpec, (java.security.SecureRandom) null);
    }

    public final void setProperty(Bundle bundle) {
        this.spiImpl.setProperty(bundle);
    }
}
