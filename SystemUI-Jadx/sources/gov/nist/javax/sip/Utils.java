package gov.nist.javax.sip;

import java.security.MessageDigest;
import java.util.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Utils {
    public static final char[] toHex;

    static {
        new Utils();
        toHex = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest.getInstance("MD5");
            byte[] bytes = Integer.toString(Math.abs(new Random().nextInt() % 1000)).getBytes();
            char[] cArr = new char[bytes.length * 2];
            int i = 0;
            for (byte b : bytes) {
                int i2 = i + 1;
                char[] cArr2 = toHex;
                cArr[i] = cArr2[(b >> 4) & 15];
                i = i2 + 1;
                cArr[i2] = cArr2[b & 15];
            }
            new String(cArr);
        } catch (Exception e) {
            throw new RuntimeException("Could not intialize Digester ", e);
        }
    }
}
