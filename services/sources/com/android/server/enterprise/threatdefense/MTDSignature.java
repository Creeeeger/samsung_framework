package com.android.server.enterprise.threatdefense;

import android.util.Base64;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class MTDSignature {
    public static final String TAG = "MTDSignature";
    public byte[] mData;
    public byte[] mSignature;

    public MTDSignature(String str) {
        byte[] decode = Base64.decode(str, 0);
        if (decode.length > 256) {
            this.mData = Arrays.copyOfRange(decode, 0, decode.length - 256);
            this.mSignature = Arrays.copyOfRange(decode, decode.length - 256, decode.length);
            return;
        }
        Log.e(TAG, "data size=" + decode.length);
        throw new IllegalArgumentException("Invalid SHA256. please encode the String as UTF_8");
    }

    public String getVerifiedData() {
        if (verify()) {
            String str = new String(this.mData, StandardCharsets.UTF_8);
            if (ThreatDefenseService.DEBUG) {
                Log.i(TAG, "Verified !!! data=" + str);
            } else {
                Log.i(TAG, "Verified !!!");
            }
            return str;
        }
        Log.i(TAG, "Verification failed !!!");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.security.cert.CertificateFactory] */
    public final Certificate getCertificate() {
        ?? e;
        Certificate certificate = null;
        try {
            try {
                try {
                    e = new FileInputStream("/etc/mtdl.crt");
                } catch (FileNotFoundException e2) {
                    e = e2;
                    e = 0;
                } catch (SecurityException e3) {
                    e = e3;
                    e = 0;
                } catch (CertificateException e4) {
                    e = e4;
                    e = 0;
                } catch (Throwable th) {
                    e = 0;
                    th = th;
                    if (e != 0) {
                        try {
                            e.close();
                        } catch (IOException e5) {
                            Log.e(TAG, "IOException", e5);
                        }
                    }
                    throw th;
                }
                try {
                    certificate = CertificateFactory.getInstance("X.509").generateCertificate(e);
                    e.close();
                    e = e;
                } catch (FileNotFoundException e6) {
                    e = e6;
                    Log.e(TAG, "FileNotFoundException : " + e.getMessage());
                    if (e != 0) {
                        e.close();
                        e = e;
                    }
                    return certificate;
                } catch (SecurityException e7) {
                    e = e7;
                    Log.e(TAG, "SecurityException", e);
                    if (e != 0) {
                        e.close();
                        e = e;
                    }
                    return certificate;
                } catch (CertificateException e8) {
                    e = e8;
                    Log.e(TAG, "CertificateException : " + e.getMessage());
                    e.printStackTrace();
                    if (e != 0) {
                        e.close();
                        e = e;
                    }
                    return certificate;
                }
            } catch (IOException e9) {
                e = e9;
                Log.e(TAG, "IOException", e);
            }
            return certificate;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean verify() {
        try {
            Certificate certificate = getCertificate();
            if (certificate != null) {
                Signature signature = Signature.getInstance("SHA256withRSA/PSS");
                PublicKey publicKey = getPublicKey(certificate.getEncoded());
                if (publicKey == null) {
                    return false;
                }
                signature.initVerify(publicKey);
                signature.update(this.mData);
                return signature.verify(this.mSignature);
            }
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException | CertificateEncodingException e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.security.PublicKey getPublicKey(byte[] r2) {
        /*
            r1 = this;
            r1 = 0
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L21 java.security.cert.CertificateException -> L25
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L21 java.security.cert.CertificateException -> L25
            java.lang.String r2 = "X.509"
            java.security.cert.CertificateFactory r2 = java.security.cert.CertificateFactory.getInstance(r2)     // Catch: java.security.cert.CertificateException -> L1f java.lang.Throwable -> L35
            java.security.cert.Certificate r2 = r2.generateCertificate(r0)     // Catch: java.security.cert.CertificateException -> L1f java.lang.Throwable -> L35
            java.security.cert.X509Certificate r2 = (java.security.cert.X509Certificate) r2     // Catch: java.security.cert.CertificateException -> L1f java.lang.Throwable -> L35
            java.security.PublicKey r1 = r2.getPublicKey()     // Catch: java.security.cert.CertificateException -> L1f java.lang.Throwable -> L35
            r0.close()     // Catch: java.io.IOException -> L1a
            goto L1e
        L1a:
            r2 = move-exception
            r2.printStackTrace()
        L1e:
            return r1
        L1f:
            r2 = move-exception
            goto L27
        L21:
            r2 = move-exception
            r0 = r1
            r1 = r2
            goto L36
        L25:
            r2 = move-exception
            r0 = r1
        L27:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L34
            r0.close()     // Catch: java.io.IOException -> L30
            goto L34
        L30:
            r2 = move-exception
            r2.printStackTrace()
        L34:
            return r1
        L35:
            r1 = move-exception
        L36:
            if (r0 == 0) goto L40
            r0.close()     // Catch: java.io.IOException -> L3c
            goto L40
        L3c:
            r2 = move-exception
            r2.printStackTrace()
        L40:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.threatdefense.MTDSignature.getPublicKey(byte[]):java.security.PublicKey");
    }
}
