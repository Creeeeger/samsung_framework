package com.samsung.android.knox.ucm.plugin.service;

import android.os.Bundle;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreSpi;
import java.security.Provider;
import java.security.cert.Certificate;
import java.util.Enumeration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KeyStore {
    public static final String SERVICE = "KeyStore";
    public final String algorithm;
    public final Provider provider;
    public KeyStoreSpi spiImpl;

    private KeyStore(UcmAgentProviderImpl.UcmAgentKeyStoreSpi ucmAgentKeyStoreSpi, Provider provider, String str) {
        this.algorithm = str;
        this.spiImpl = ucmAgentKeyStoreSpi;
        this.provider = provider;
    }

    public static KeyStore getInstance(String str, Provider provider) {
        if (provider != null) {
            if (str != null) {
                UcmAgentProviderImpl.UcmAgentKeyStoreSpi ucmAgentKeyStoreSpi = (UcmAgentProviderImpl.UcmAgentKeyStoreSpi) UcmSpiUtil.getSpi("KeyStore", UcmAgentProviderImpl.UcmAgentKeyStoreSpi.class, str, provider);
                if (ucmAgentKeyStoreSpi != null) {
                    return new KeyStore(ucmAgentKeyStoreSpi, provider, str);
                }
                throw new NullPointerException("spi == null");
            }
            throw new NullPointerException("algorithm == null");
        }
        throw new IllegalArgumentException("provider == null");
    }

    public final Enumeration<String> aliases() {
        return this.spiImpl.engineAliases();
    }

    public final void deleteEntry(String str) {
        this.spiImpl.engineDeleteEntry(str);
    }

    public final Certificate[] getCertificateChain(String str) {
        return this.spiImpl.engineGetCertificateChain(str);
    }

    public final KeyStore.Entry getEntry(String str, KeyStore.ProtectionParameter protectionParameter) {
        return this.spiImpl.engineGetEntry(str, protectionParameter);
    }

    public final int getErrorStatus() {
        return ((UcmAgentProviderImpl.UcmAgentKeyStoreSpi) this.spiImpl).getErrorCode();
    }

    public final Key getKey(String str, char[] cArr) {
        return this.spiImpl.engineGetKey(str, cArr);
    }

    public final void load(InputStream inputStream, char[] cArr) {
        this.spiImpl.engineLoad(inputStream, cArr);
    }

    public final void setEntry(String str, KeyStore.Entry entry, KeyStore.ProtectionParameter protectionParameter) {
        this.spiImpl.engineSetEntry(str, entry, protectionParameter);
    }

    public final void setProperty(Bundle bundle) {
        ((UcmAgentProviderImpl.UcmAgentKeyStoreSpi) this.spiImpl).setProperty(bundle);
    }

    public final void load(KeyStore.LoadStoreParameter loadStoreParameter) {
        this.spiImpl.engineLoad(loadStoreParameter);
    }
}
