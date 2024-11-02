package com.samsung.android.knox.ucm.core.jcajce;

import android.os.Bundle;
import android.os.Process;
import android.security.keystore.KeyGenParameterSpec;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentProviderImpl;
import com.samsung.android.knox.ucm.plugin.agent.UcmAgentService;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class UcmKeyGenerator extends KeyGeneratorSpi {
    public static final String TAG = "UcmKeyGenerator";
    public String mAlgorithm;
    public String mAlias;
    public boolean mIsRandomizedEncryptionRequired;
    public int mKeySize;
    public int mPurposes;
    public String mSource;

    public UcmKeyGenerator(String str, String str2) {
        this.mSource = str;
        this.mAlgorithm = str2;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public final SecretKey engineGenerateKey() {
        String build = new UniversalCredentialUtil.UcmUriBuilder(this.mSource).setResourceId(2).setUid(Process.myUid()).setAlias(this.mAlias).build();
        UniversalCredentialUtil universalCredentialUtil = UniversalCredentialUtil.getInstance();
        universalCredentialUtil.delete(build);
        Bundle bundle = new Bundle();
        bundle.putBoolean(UcmAgentProviderImpl.KEY_EXTRA_RANDOMIZED_ENCRYPTION, this.mIsRandomizedEncryptionRequired);
        bundle.putInt(UcmAgentProviderImpl.KEY_EXTRA_PURPOSE, this.mPurposes);
        Bundle generateKey = universalCredentialUtil.generateKey(build, this.mAlgorithm, this.mKeySize, bundle);
        if (generateKey != null && generateKey.getBoolean(UcmAgentService.PLUGIN_BOOLEAN_RESPONSE, false)) {
            return universalCredentialUtil.getSecretKey(build, this.mAlgorithm);
        }
        return null;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public final void engineInit(SecureRandom secureRandom) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public final void engineInit(int i, SecureRandom secureRandom) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public final void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        if (algorithmParameterSpec != null && (algorithmParameterSpec instanceof KeyGenParameterSpec)) {
            KeyGenParameterSpec keyGenParameterSpec = (KeyGenParameterSpec) algorithmParameterSpec;
            this.mKeySize = keyGenParameterSpec.getKeySize();
            this.mPurposes = keyGenParameterSpec.getPurposes();
            this.mAlias = keyGenParameterSpec.getKeystoreAlias();
            this.mIsRandomizedEncryptionRequired = keyGenParameterSpec.isRandomizedEncryptionRequired();
            return;
        }
        throw new InvalidAlgorithmParameterException("params must be of type android.security.keystore.KeyGenParameterSpec");
    }
}
