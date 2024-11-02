package com.samsung.android.knox.ucm.plugin.service;

import android.os.Bundle;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.security.PrivateKey;
import java.security.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Signature {
    public static final String SERVICE = "Signature";
    public final String algorithm;
    public final Provider provider;
    public UcmAgentProviderImpl.UcmAgentSignatureSpi spiImpl;

    private Signature(UcmAgentProviderImpl.UcmAgentSignatureSpi ucmAgentSignatureSpi, Provider provider, String str) {
        this.algorithm = str;
        this.spiImpl = ucmAgentSignatureSpi;
        this.provider = provider;
    }

    public static Signature getInstance(String str, Provider provider) {
        if (provider != null) {
            if (str != null) {
                UcmAgentProviderImpl.UcmAgentSignatureSpi ucmAgentSignatureSpi = (UcmAgentProviderImpl.UcmAgentSignatureSpi) UcmSpiUtil.getSpi(SERVICE, UcmAgentProviderImpl.UcmAgentSignatureSpi.class, str, provider);
                if (ucmAgentSignatureSpi != null) {
                    return new Signature(ucmAgentSignatureSpi, provider, str);
                }
                throw new NullPointerException("spi == null");
            }
            throw new NullPointerException("algorithm == null");
        }
        throw new IllegalArgumentException("provider == null");
    }

    public final int getErrorStatus() {
        return this.spiImpl.getErrorCode();
    }

    public final void initSign(PrivateKey privateKey) {
        this.spiImpl.engineInitSign(privateKey);
    }

    public final void setProperty(Bundle bundle) {
        this.spiImpl.setProperty(bundle);
    }

    public final byte[] sign() {
        return this.spiImpl.engineSign();
    }

    public final void update(byte[] bArr) {
        this.spiImpl.engineUpdate(bArr, 0, bArr.length);
    }

    public final void update(byte[] bArr, int i, int i2) {
        this.spiImpl.engineUpdate(bArr, i, i2);
    }
}
