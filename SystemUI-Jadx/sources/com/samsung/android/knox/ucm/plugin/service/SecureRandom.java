package com.samsung.android.knox.ucm.plugin.service;

import android.os.Bundle;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.security.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SecureRandom {
    public static final String SERVICE = "SecureRandom";
    public final String algorithm;
    public final Provider provider;
    public final UcmAgentProviderImpl.UcmAgentSecureRandomSpi spiImpl;

    private SecureRandom(UcmAgentProviderImpl.UcmAgentSecureRandomSpi ucmAgentSecureRandomSpi, Provider provider, String str) {
        this.provider = provider;
        this.spiImpl = ucmAgentSecureRandomSpi;
        this.algorithm = str;
    }

    public static SecureRandom getInstance(String str, Provider provider) {
        if (provider != null) {
            if (str != null) {
                UcmAgentProviderImpl.UcmAgentSecureRandomSpi ucmAgentSecureRandomSpi = (UcmAgentProviderImpl.UcmAgentSecureRandomSpi) UcmSpiUtil.getSpi("SecureRandom", UcmAgentProviderImpl.UcmAgentSecureRandomSpi.class, str, provider);
                if (ucmAgentSecureRandomSpi != null) {
                    return new SecureRandom(ucmAgentSecureRandomSpi, provider, str);
                }
                throw new NullPointerException("spi == null");
            }
            throw new NullPointerException("algorithm == null");
        }
        throw new IllegalArgumentException("provider == null");
    }

    public final byte[] generateSeed(int i) {
        return this.spiImpl.engineGenerateSeed(i);
    }

    public final int getErrorStatus() {
        return this.spiImpl.getErrorCode();
    }

    public final void setProperty(Bundle bundle) {
        this.spiImpl.setProperty(bundle);
    }
}
