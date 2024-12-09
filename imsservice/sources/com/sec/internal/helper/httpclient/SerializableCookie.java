package com.sec.internal.helper.httpclient;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Locale;
import okhttp3.Cookie;

/* loaded from: classes.dex */
public class SerializableCookie implements Serializable {
    public static final String TAG = SerializableCookie.class.getSimpleName();
    private static final long serialVersionUID = 1;
    private transient Cookie cookie;

    /* JADX WARN: Removed duplicated region for block: B:29:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String encodeCookie(okhttp3.Cookie r6) {
        /*
            r5 = this;
            java.lang.String r0 = "error2: "
            r5.cookie = r6
            java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream
            r6.<init>()
            r1 = 0
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L3c
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L3c
            r2.writeObject(r5)     // Catch: java.io.IOException -> L38 java.lang.Throwable -> L78
            r2.close()     // Catch: java.io.IOException -> L16
            goto L2f
        L16:
            r1 = move-exception
            java.lang.String r2 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r0 = r1.toString()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            com.sec.internal.log.IMSLog.e(r2, r0)
        L2f:
            byte[] r6 = r6.toByteArray()
            java.lang.String r5 = r5.byteArrayToHexString(r6)
            return r5
        L38:
            r5 = move-exception
            goto L3e
        L3a:
            r5 = move-exception
            goto L7a
        L3c:
            r5 = move-exception
            r2 = r1
        L3e:
            java.lang.String r6 = com.sec.internal.helper.httpclient.SerializableCookie.TAG     // Catch: java.lang.Throwable -> L78
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78
            r3.<init>()     // Catch: java.lang.Throwable -> L78
            java.lang.String r4 = "error1: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L78
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L78
            r3.append(r5)     // Catch: java.lang.Throwable -> L78
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L78
            com.sec.internal.log.IMSLog.e(r6, r5)     // Catch: java.lang.Throwable -> L78
            if (r2 == 0) goto L77
            r2.close()     // Catch: java.io.IOException -> L5e
            goto L77
        L5e:
            r5 = move-exception
            java.lang.String r6 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r5 = r5.toString()
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            com.sec.internal.log.IMSLog.e(r6, r5)
        L77:
            return r1
        L78:
            r5 = move-exception
            r1 = r2
        L7a:
            if (r1 == 0) goto L99
            r1.close()     // Catch: java.io.IOException -> L80
            goto L99
        L80:
            r6 = move-exception
            java.lang.String r1 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r6 = r6.toString()
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            com.sec.internal.log.IMSLog.e(r1, r6)
        L99:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.httpclient.SerializableCookie.encodeCookie(okhttp3.Cookie):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v11, types: [okhttp3.Cookie] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v8, types: [okhttp3.Cookie] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okhttp3.Cookie decodeCookie(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "decodeCookie error2: "
            byte[] r5 = r5.hexStringToByteArray(r6)
            java.io.ByteArrayInputStream r6 = new java.io.ByteArrayInputStream
            r6.<init>(r5)
            r5 = 0
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L3f
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L3f
            java.lang.Object r6 = r1.readObject()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L67
            if (r6 == 0) goto L1f
            java.lang.Object r6 = r1.readObject()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L67
            com.sec.internal.helper.httpclient.SerializableCookie r6 = (com.sec.internal.helper.httpclient.SerializableCookie) r6     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L67
            okhttp3.Cookie r5 = r6.cookie     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L67
        L1f:
            r1.close()     // Catch: java.io.IOException -> L23
            goto L66
        L23:
            r6 = move-exception
            java.lang.String r1 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
        L2b:
            r2.append(r0)
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            com.sec.internal.log.IMSLog.e(r1, r6)
            goto L66
        L39:
            r6 = move-exception
            goto L41
        L3b:
            r6 = move-exception
            r1 = r5
            r5 = r6
            goto L68
        L3f:
            r6 = move-exception
            r1 = r5
        L41:
            java.lang.String r2 = com.sec.internal.helper.httpclient.SerializableCookie.TAG     // Catch: java.lang.Throwable -> L67
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67
            r3.<init>()     // Catch: java.lang.Throwable -> L67
            java.lang.String r4 = "decodeCookie error1:"
            r3.append(r4)     // Catch: java.lang.Throwable -> L67
            r3.append(r6)     // Catch: java.lang.Throwable -> L67
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L67
            com.sec.internal.log.IMSLog.e(r2, r6)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L66
            r1.close()     // Catch: java.io.IOException -> L5d
            goto L66
        L5d:
            r6 = move-exception
            java.lang.String r1 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            goto L2b
        L66:
            return r5
        L67:
            r5 = move-exception
        L68:
            if (r1 == 0) goto L83
            r1.close()     // Catch: java.io.IOException -> L6e
            goto L83
        L6e:
            r6 = move-exception
            java.lang.String r1 = com.sec.internal.helper.httpclient.SerializableCookie.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            com.sec.internal.log.IMSLog.e(r1, r6)
        L83:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.httpclient.SerializableCookie.decodeCookie(java.lang.String):okhttp3.Cookie");
    }

    protected String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString().toUpperCase(Locale.US);
    }

    protected byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.cookie.name());
        objectOutputStream.writeObject(this.cookie.value());
        objectOutputStream.writeObject(Long.valueOf(this.cookie.persistent() ? this.cookie.expiresAt() : -1L));
        objectOutputStream.writeObject(this.cookie.domain());
        objectOutputStream.writeObject(this.cookie.path());
        objectOutputStream.writeObject(Boolean.valueOf(this.cookie.secure()));
        objectOutputStream.writeObject(Boolean.valueOf(this.cookie.httpOnly()));
        objectOutputStream.writeObject(Boolean.valueOf(this.cookie.hostOnly()));
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Cookie.Builder builder = new Cookie.Builder();
        builder.name((String) objectInputStream.readObject());
        builder.value((String) objectInputStream.readObject());
        long longValue = ((Long) objectInputStream.readObject()).longValue();
        if (longValue != -1) {
            builder.expiresAt(longValue);
        }
        String str = (String) objectInputStream.readObject();
        builder.domain(str);
        builder.path((String) objectInputStream.readObject());
        if (((Boolean) objectInputStream.readObject()).booleanValue()) {
            builder.secure();
        }
        if (((Boolean) objectInputStream.readObject()).booleanValue()) {
            builder.httpOnly();
        }
        if (((Boolean) objectInputStream.readObject()).booleanValue()) {
            builder.hostOnlyDomain(str);
        }
        this.cookie = builder.build();
    }
}
