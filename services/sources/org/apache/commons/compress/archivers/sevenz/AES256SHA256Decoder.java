package org.apache.commons.compress.archivers.sevenz;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.compress.PasswordRequiredException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class AES256SHA256Decoder extends CoderBase {
    @Override // org.apache.commons.compress.archivers.sevenz.CoderBase
    public final InputStream decode(final String str, final InputStream inputStream, long j, final Coder coder, final byte[] bArr) {
        return new InputStream() { // from class: org.apache.commons.compress.archivers.sevenz.AES256SHA256Decoder.1
            public boolean isInitialized = false;
            public CipherInputStream cipherInputStream = null;

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            public final CipherInputStream init() {
                byte[] digest;
                if (this.isInitialized) {
                    return this.cipherInputStream;
                }
                byte[] bArr2 = Coder.this.properties;
                int i = bArr2[0];
                int i2 = i & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT;
                int i3 = i & 63;
                int i4 = bArr2[1];
                int i5 = ((i2 >> 6) & 1) + (i4 & 15);
                int i6 = ((i2 >> 7) & 1) + ((i4 & IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT) >> 4);
                int i7 = i6 + 2;
                if (i7 + i5 > bArr2.length) {
                    throw new IOException("Salt size + IV size too long in " + str);
                }
                byte[] bArr3 = new byte[i6];
                System.arraycopy(bArr2, 2, bArr3, 0, i6);
                byte[] bArr4 = new byte[16];
                System.arraycopy(Coder.this.properties, i7, bArr4, 0, i5);
                if (bArr == null) {
                    throw new PasswordRequiredException(str);
                }
                if (i3 == 63) {
                    digest = new byte[32];
                    System.arraycopy(bArr3, 0, digest, 0, i6);
                    byte[] bArr5 = bArr;
                    System.arraycopy(bArr5, 0, digest, i6, Math.min(bArr5.length, 32 - i6));
                } else {
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                        byte[] bArr6 = new byte[8];
                        for (long j2 = 0; j2 < (1 << i3); j2++) {
                            messageDigest.update(bArr3);
                            messageDigest.update(bArr);
                            messageDigest.update(bArr6);
                            for (int i8 = 0; i8 < 8; i8++) {
                                byte b = (byte) (bArr6[i8] + 1);
                                bArr6[i8] = b;
                                if (b != 0) {
                                    break;
                                }
                            }
                        }
                        digest = messageDigest.digest();
                    } catch (NoSuchAlgorithmException e) {
                        throw new IOException("SHA-256 is unsupported by your Java implementation", e);
                    }
                }
                SecretKeySpec secretKeySpec = new SecretKeySpec(digest, "AES");
                try {
                    Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
                    cipher.init(2, secretKeySpec, new IvParameterSpec(bArr4));
                    CipherInputStream cipherInputStream = new CipherInputStream(inputStream, cipher);
                    this.cipherInputStream = cipherInputStream;
                    this.isInitialized = true;
                    return cipherInputStream;
                } catch (GeneralSecurityException e2) {
                    throw new IOException("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e2);
                }
            }

            @Override // java.io.InputStream
            public final int read() {
                return init().read();
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr2, int i, int i2) {
                return init().read(bArr2, i, i2);
            }
        };
    }
}
