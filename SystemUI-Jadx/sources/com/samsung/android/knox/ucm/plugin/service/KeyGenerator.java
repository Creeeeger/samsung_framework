package com.samsung.android.knox.ucm.plugin.service;

import android.os.Bundle;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.security.Provider;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KeyGenerator {
    public static final String SERVICE = "KeyGenerator";
    public final String algorithm;
    public final Provider provider;
    public UcmAgentProviderImpl.UcmAgentKeyGeneratorSpi spiImpl;

    private KeyGenerator(UcmAgentProviderImpl.UcmAgentKeyGeneratorSpi ucmAgentKeyGeneratorSpi, Provider provider, String str) {
        this.algorithm = str;
        this.spiImpl = ucmAgentKeyGeneratorSpi;
        this.provider = provider;
    }

    public static KeyGenerator getInstance(String str, Provider provider) {
        if (provider != null) {
            if (str != null) {
                UcmAgentProviderImpl.UcmAgentKeyGeneratorSpi ucmAgentKeyGeneratorSpi = (UcmAgentProviderImpl.UcmAgentKeyGeneratorSpi) UcmSpiUtil.getSpi(SERVICE, UcmAgentProviderImpl.UcmAgentKeyGeneratorSpi.class, str, provider);
                if (ucmAgentKeyGeneratorSpi != null) {
                    return new KeyGenerator(ucmAgentKeyGeneratorSpi, provider, str);
                }
                throw new NullPointerException("spi == null");
            }
            throw new NullPointerException("algorithm == null");
        }
        throw new IllegalArgumentException("provider == null");
    }

    public final SecretKey generateKey() {
        return this.spiImpl.engineGenerateKey();
    }

    public final int getErrorStatus() {
        return this.spiImpl.getErrorCode();
    }

    public final void init(AlgorithmParameterSpec algorithmParameterSpec, java.security.SecureRandom secureRandom) {
        this.spiImpl.engineInit(algorithmParameterSpec, secureRandom);
    }

    public final void setProperty(Bundle bundle) {
        this.spiImpl.setProperty(bundle);
    }
}
