package com.sec.internal.helper.httpclient;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.log.IMSLog;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.Locale;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class DigestAuth {
    private static final String AKAV1_MD5 = "AKAv1-MD5";
    private static final String AKAV2_MD5 = "AKAv2-MD5";
    private static final String AKAV2_PASSWORD_KEY = "http-digest-akav2-password";
    private static final String AUTH = "auth";
    private static final String AUTH_INT = "auth-int";
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final String HMACMD5 = "HmacMD5";
    private static final String LOG_TAG = "DigestAuth";
    private static final String MD5 = "MD5";
    private static final String MD5_SESSION = "MD5-sess";
    private static final String md5 = "md5";
    private Algo mAlgorithm;
    private String mCnonce;
    private String mDigestURI;
    private String mEntity;
    private String mMethod;
    private int mNC;
    private String mNonce;
    private String mPassword;
    private String mQOP;
    private String mRealm;
    private String mUsername;

    public enum Algo {
        UNKNOWN,
        MD5,
        MD5_SESSION,
        AKAV1_MD5,
        AKAV2_MD5,
        md5;

        public static Algo getAlgoType(String str) {
            if (TextUtils.isEmpty(str)) {
                return UNKNOWN;
            }
            str.hashCode();
            switch (str) {
            }
            return UNKNOWN;
        }

        @Override // java.lang.Enum
        public String toString() {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : DigestAuth.AKAV2_MD5 : DigestAuth.AKAV1_MD5 : DigestAuth.MD5_SESSION : DigestAuth.md5 : DigestAuth.MD5;
        }
    }

    /* renamed from: com.sec.internal.helper.httpclient.DigestAuth$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo;

        static {
            int[] iArr = new int[Algo.values().length];
            $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo = iArr;
            try {
                iArr[Algo.MD5.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo[Algo.md5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo[Algo.MD5_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo[Algo.AKAV1_MD5.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo[Algo.AKAV2_MD5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public DigestAuth() {
        this.mNC = 0;
    }

    public DigestAuth(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mNC = 0;
        this.mUsername = str;
        this.mPassword = str2;
        this.mRealm = str3;
        this.mNonce = str4;
        this.mMethod = str5;
        this.mDigestURI = str6;
        this.mAlgorithm = Algo.getAlgoType(str7);
        this.mQOP = str8;
        this.mEntity = "";
    }

    public void setDigestAuth(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mUsername = str;
        this.mPassword = str2;
        this.mRealm = str3;
        this.mNonce = str4;
        this.mMethod = str5;
        this.mDigestURI = str6;
        this.mAlgorithm = Algo.getAlgoType(str7);
        this.mQOP = str8;
        this.mEntity = "";
    }

    public void setDigestAuth(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.mUsername = str;
        this.mPassword = str2;
        this.mRealm = str3;
        this.mNonce = str4;
        this.mMethod = str5;
        this.mDigestURI = str6;
        this.mAlgorithm = Algo.getAlgoType(str7);
        this.mQOP = str8;
        this.mEntity = str9;
    }

    public void setBody(String str) {
        this.mEntity = str;
    }

    public void setDigestURI(String str) {
        this.mDigestURI = str;
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        ImsUtil.getRandom().nextBytes(bArr);
        return encode(bArr);
    }

    public static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i2] = cArr2[(b & 240) >> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public String getNC() {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb, Locale.US);
        formatter.format("%08x", Integer.valueOf(this.mNC));
        formatter.close();
        IMSLog.d(LOG_TAG, "getNC(): " + sb.toString());
        return sb.toString();
    }

    public String getCnonce() {
        if (!AUTH.equalsIgnoreCase(this.mQOP) && !AUTH_INT.equalsIgnoreCase(this.mQOP)) {
            IMSLog.d(LOG_TAG, "not auth: " + this.mQOP);
            return "";
        }
        return this.mCnonce;
    }

    public String getUsername() {
        return this.mUsername;
    }

    public String getRealm() {
        return this.mRealm;
    }

    public String getNonce() {
        return this.mNonce;
    }

    public String getQop() {
        return this.mQOP;
    }

    public String getAlgorithm() {
        return this.mAlgorithm.toString();
    }

    public String getDigestUri() {
        return this.mDigestURI;
    }

    public String getResp() {
        if (this.mAlgorithm == Algo.AKAV2_MD5) {
            this.mPassword = calculatePasswordForAkav2();
        }
        return calcResponseForMD5();
    }

    private String calcResponseForMD5() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MD5);
            this.mNC++;
            this.mCnonce = createCnonce();
            StringBuilder sb = new StringBuilder();
            sb.append(getHexHA1(messageDigest));
            sb.append(":");
            sb.append(this.mNonce);
            sb.append(":");
            if (AUTH.equalsIgnoreCase(this.mQOP) || AUTH_INT.equalsIgnoreCase(this.mQOP)) {
                sb.append(getNC());
                sb.append(":");
                sb.append(this.mCnonce);
                sb.append(":");
                sb.append(this.mQOP);
                sb.append(":");
            }
            sb.append(getHexHA2(messageDigest));
            String encode = encode(messageDigest.digest(sb.toString().getBytes()));
            IMSLog.d(LOG_TAG, "calcResponseForMD5(): contents: " + sb.toString() + ", HEX RESP: " + encode);
            return encode;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    private String getHexHA1(MessageDigest messageDigest) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mUsername);
        sb.append(":");
        sb.append(this.mRealm);
        sb.append(":");
        sb.append(this.mPassword);
        if (this.mAlgorithm == Algo.MD5_SESSION) {
            sb.append(":");
            sb.append(this.mNonce);
            sb.append(":");
            sb.append(this.mCnonce);
        }
        String encode = encode(messageDigest.digest(sb.toString().getBytes(Charset.forName("CP1252"))));
        IMSLog.d(LOG_TAG, "getHexHA1(): contents: " + sb.toString() + ", HEX HA1: " + encode);
        return encode;
    }

    private String getHexHA2(MessageDigest messageDigest) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mMethod);
        sb.append(":");
        sb.append(this.mDigestURI);
        if (AUTH_INT.equalsIgnoreCase(this.mQOP)) {
            sb.append(":");
            sb.append(getEntityHash(messageDigest));
        }
        String encode = encode(messageDigest.digest(sb.toString().getBytes()));
        IMSLog.d(LOG_TAG, "getHexHA2(): : contents: " + sb.toString() + ", HEX HA2: " + encode);
        return encode;
    }

    private String getEntityHash(MessageDigest messageDigest) {
        String encode = encode(messageDigest.digest(this.mEntity.getBytes()));
        IMSLog.d(LOG_TAG, "getEntityHash(): contents: " + this.mEntity + ", HEX entityHash: " + encode);
        return encode;
    }

    private String calculatePasswordForAkav2() {
        try {
            return encode(hmacMD5(AKAV2_PASSWORD_KEY.getBytes(), this.mPassword.getBytes()));
        } catch (Exception unused) {
            Log.e(LOG_TAG, "Hmac encryption failed");
            return "";
        }
    }

    private byte[] hmacMD5(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance(HMACMD5);
        mac.init(new SecretKeySpec(bArr, HMACMD5));
        return mac.doFinal(bArr2);
    }
}
