package com.sec.internal.helper;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.spec.ECGenParameterSpec;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class KeyPairManager {
    static final String ALIAS_RCS_SIP_DIGEST_AUTH = "rcs_sip_digest_auth";
    static final String PROVIDER_ANDROID_KEYSTORE = "AndroidKeyStore";
    static final String SIGNATURE_ALGORITHM = "SHA256withECDSA";
    private static final String TAG = "KeyPairManager";
    private KeyPair mKeyPair;

    public KeyPairManager() {
        boolean hasPrivateKey = hasPrivateKey();
        IMSLog.i(TAG, "KeyPairManager: hasKey: " + hasPrivateKey);
        if (hasPrivateKey) {
            retrieveGeneratedKey();
        } else {
            generateKeyPair();
        }
    }

    private boolean hasPrivateKey() {
        return ((Boolean) Optional.ofNullable(getKeyStore()).map(new KeyPairManager$$ExternalSyntheticLambda0(this)).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$hasPrivateKey$0;
                lambda$hasPrivateKey$0 = KeyPairManager.lambda$hasPrivateKey$0((Key) obj);
                return lambda$hasPrivateKey$0;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$hasPrivateKey$0(Key key) {
        return Boolean.valueOf(key instanceof PrivateKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Key getPrivateKey(KeyStore keyStore) {
        try {
            return keyStore.getKey(ALIAS_RCS_SIP_DIGEST_AUTH, null);
        } catch (KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException e) {
            IMSLog.e(TAG, "getPrivateKey failed! " + e);
            return null;
        }
    }

    private void retrieveGeneratedKey() {
        KeyStore keyStore = getKeyStore();
        this.mKeyPair = new KeyPair((PublicKey) Optional.ofNullable(keyStore).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Certificate certificate;
                certificate = KeyPairManager.this.getCertificate((KeyStore) obj);
                return certificate;
            }
        }).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Certificate) obj).getPublicKey();
            }
        }).orElse(null), (PrivateKey) ((Key) Optional.ofNullable(keyStore).map(new KeyPairManager$$ExternalSyntheticLambda0(this)).orElse(null)));
    }

    private KeyStore getKeyStore() {
        try {
            return (KeyStore) Optional.of(KeyStore.getInstance(PROVIDER_ANDROID_KEYSTORE)).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    KeyStore loadAndGet;
                    loadAndGet = KeyPairManager.this.loadAndGet((KeyStore) obj);
                    return loadAndGet;
                }
            }).get();
        } catch (KeyStoreException e) {
            IMSLog.e(TAG, "getKeyStore: init failed! " + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KeyStore loadAndGet(KeyStore keyStore) {
        try {
            keyStore.load(null);
        } catch (IOException | NoSuchAlgorithmException | CertificateException e) {
            IMSLog.e(TAG, "getKeyStore: load failed! " + e);
        }
        return keyStore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Certificate getCertificate(KeyStore keyStore) {
        try {
            return keyStore.getCertificate(ALIAS_RCS_SIP_DIGEST_AUTH);
        } catch (KeyStoreException e) {
            IMSLog.e(TAG, "getCertificate failed! " + e);
            return null;
        }
    }

    private void generateKeyPair() {
        this.mKeyPair = (KeyPair) Optional.ofNullable(getKeyPairGenerator()).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((KeyPairGenerator) obj).generateKeyPair();
            }
        }).orElseGet(new Supplier() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda8
            @Override // java.util.function.Supplier
            public final Object get() {
                KeyPair lambda$generateKeyPair$1;
                lambda$generateKeyPair$1 = KeyPairManager.lambda$generateKeyPair$1();
                return lambda$generateKeyPair$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ KeyPair lambda$generateKeyPair$1() {
        IMSLog.e(TAG, "Failed to generate KeyPair!");
        return new KeyPair(null, null);
    }

    private KeyPairGenerator getKeyPairGenerator() {
        try {
            return (KeyPairGenerator) Optional.of(KeyPairGenerator.getInstance(DiagnosisConstants.RCSM_MTYP_EC, PROVIDER_ANDROID_KEYSTORE)).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    KeyPairGenerator initAndGet;
                    initAndGet = KeyPairManager.this.initAndGet((KeyPairGenerator) obj);
                    return initAndGet;
                }
            }).get();
        } catch (NoSuchAlgorithmException | NoSuchProviderException e) {
            IMSLog.e(TAG, "generateKeyPair failed!" + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KeyPairGenerator initAndGet(KeyPairGenerator keyPairGenerator) {
        try {
            keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(ALIAS_RCS_SIP_DIGEST_AUTH, 12).setAlgorithmParameterSpec(new ECGenParameterSpec("secp256r1")).setDigests("SHA-256", "SHA-384", "SHA-512").build());
        } catch (InvalidAlgorithmParameterException e) {
            IMSLog.e(TAG, "generateKeyPair failed!" + e);
        }
        return keyPairGenerator;
    }

    KeyPair getKeyPair() {
        return this.mKeyPair;
    }

    public String getPublicKey() {
        return (String) Optional.ofNullable(this.mKeyPair.getPublic()).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((PublicKey) obj).getEncoded();
            }
        }).map(new Function() { // from class: com.sec.internal.helper.KeyPairManager$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getPublicKey$2;
                lambda$getPublicKey$2 = KeyPairManager.lambda$getPublicKey$2((byte[]) obj);
                return lambda$getPublicKey$2;
            }
        }).orElse("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getPublicKey$2(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    public String signWithPrivateKey(String str) {
        try {
            Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM);
            signature.initSign(this.mKeyPair.getPrivate());
            signature.update(str.getBytes(StandardCharsets.UTF_8));
            return Base64.encodeToString(signature.sign(), 2);
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            e.printStackTrace();
            IMSLog.e(TAG, "signWithPrivateKey failed! " + e);
            return "";
        }
    }
}
