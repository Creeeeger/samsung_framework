package android.security.keystore2;

import android.hardware.security.keymint.KeyParameter;
import java.security.InvalidKeyException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AndroidKeyStoreRSASignatureSpi extends AndroidKeyStoreSignatureSpiBase {
    private final int mKeymasterDigest;
    private final int mKeymasterPadding;

    /* loaded from: classes3.dex */
    static abstract class PKCS1Padding extends AndroidKeyStoreRSASignatureSpi {
        PKCS1Padding(int keymasterDigest) {
            super(keymasterDigest, 5);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected final int getAdditionalEntropyAmountForSign() {
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    public static final class NONEWithPKCS1Padding extends PKCS1Padding {
        public NONEWithPKCS1Padding() {
            super(0);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "NONEwithRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class MD5WithPKCS1Padding extends PKCS1Padding {
        public MD5WithPKCS1Padding() {
            super(1);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "MD5withRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA1WithPKCS1Padding extends PKCS1Padding {
        public SHA1WithPKCS1Padding() {
            super(2);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA1withRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA224WithPKCS1Padding extends PKCS1Padding {
        public SHA224WithPKCS1Padding() {
            super(3);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA224withRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA256WithPKCS1Padding extends PKCS1Padding {
        public SHA256WithPKCS1Padding() {
            super(4);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA256withRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA384WithPKCS1Padding extends PKCS1Padding {
        public SHA384WithPKCS1Padding() {
            super(5);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA384withRSA";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA512WithPKCS1Padding extends PKCS1Padding {
        public SHA512WithPKCS1Padding() {
            super(6);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA512withRSA";
        }
    }

    /* loaded from: classes3.dex */
    static abstract class PSSPadding extends AndroidKeyStoreRSASignatureSpi {
        private static final int SALT_LENGTH_BYTES = 20;

        PSSPadding(int keymasterDigest) {
            super(keymasterDigest, 3);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected final int getAdditionalEntropyAmountForSign() {
            return 20;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA1WithPSSPadding extends PSSPadding {
        public SHA1WithPSSPadding() {
            super(2);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA1withRSA/PSS";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA224WithPSSPadding extends PSSPadding {
        public SHA224WithPSSPadding() {
            super(3);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA224withRSA/PSS";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA256WithPSSPadding extends PSSPadding {
        public SHA256WithPSSPadding() {
            super(4);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA256withRSA/PSS";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA384WithPSSPadding extends PSSPadding {
        public SHA384WithPSSPadding() {
            super(5);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA384withRSA/PSS";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SHA512WithPSSPadding extends PSSPadding {
        public SHA512WithPSSPadding() {
            super(6);
        }

        @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
        protected String getAlgorithm() {
            return "SHA512withRSA/PSS";
        }
    }

    AndroidKeyStoreRSASignatureSpi(int keymasterDigest, int keymasterPadding) {
        this.mKeymasterDigest = keymasterDigest;
        this.mKeymasterPadding = keymasterPadding;
    }

    @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
    public final void initKey(AndroidKeyStoreKey key) throws InvalidKeyException {
        if (!"RSA".equalsIgnoreCase(key.getAlgorithm())) {
            throw new InvalidKeyException("Unsupported key algorithm: " + key.getAlgorithm() + ". OnlyRSA supported");
        }
        super.initKey(key);
    }

    @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
    public final void resetAll() {
        super.resetAll();
    }

    @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
    public final void resetWhilePreservingInitState() {
        super.resetWhilePreservingInitState();
    }

    @Override // android.security.keystore2.AndroidKeyStoreSignatureSpiBase
    protected final void addAlgorithmSpecificParametersToBegin(List<KeyParameter> parameters) {
        parameters.add(KeyStore2ParameterUtils.makeEnum(268435458, 1));
        parameters.add(KeyStore2ParameterUtils.makeEnum(536870917, this.mKeymasterDigest));
        parameters.add(KeyStore2ParameterUtils.makeEnum(536870918, this.mKeymasterPadding));
    }
}
