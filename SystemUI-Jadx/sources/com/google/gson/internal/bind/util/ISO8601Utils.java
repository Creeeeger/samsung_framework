package com.google.gson.internal.bind.util;

import java.util.TimeZone;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ISO8601Utils {
    public static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");

    public static boolean checkOffset(String str, int i, char c) {
        if (i < str.length() && str.charAt(i) == c) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e1 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0050, B:20:0x0060, B:21:0x0062, B:23:0x006e, B:24:0x0070, B:26:0x0076, B:30:0x0080, B:35:0x0090, B:37:0x0098, B:38:0x009c, B:40:0x00a2, B:44:0x00af, B:47:0x00b6, B:52:0x00db, B:54:0x00e1, B:59:0x0196, B:59:0x0196, B:59:0x0196, B:64:0x00f6, B:64:0x00f6, B:64:0x00f6, B:65:0x0111, B:65:0x0111, B:65:0x0111, B:66:0x0112, B:66:0x0112, B:66:0x0112, B:69:0x012e, B:69:0x012e, B:69:0x012e, B:71:0x013b, B:71:0x013b, B:71:0x013b, B:74:0x0144, B:74:0x0144, B:74:0x0144, B:76:0x0163, B:76:0x0163, B:76:0x0163, B:79:0x0173, B:79:0x0173, B:79:0x0173, B:80:0x0195, B:80:0x0195, B:80:0x0195, B:81:0x011d, B:81:0x011d, B:81:0x011d, B:82:0x01c6, B:82:0x01c6, B:82:0x01c6, B:83:0x01cd, B:83:0x01cd, B:83:0x01cd, B:84:0x00c6, B:85:0x00c9, B:88:0x00b2), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c6 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0050, B:20:0x0060, B:21:0x0062, B:23:0x006e, B:24:0x0070, B:26:0x0076, B:30:0x0080, B:35:0x0090, B:37:0x0098, B:38:0x009c, B:40:0x00a2, B:44:0x00af, B:47:0x00b6, B:52:0x00db, B:54:0x00e1, B:59:0x0196, B:59:0x0196, B:59:0x0196, B:64:0x00f6, B:64:0x00f6, B:64:0x00f6, B:65:0x0111, B:65:0x0111, B:65:0x0111, B:66:0x0112, B:66:0x0112, B:66:0x0112, B:69:0x012e, B:69:0x012e, B:69:0x012e, B:71:0x013b, B:71:0x013b, B:71:0x013b, B:74:0x0144, B:74:0x0144, B:74:0x0144, B:76:0x0163, B:76:0x0163, B:76:0x0163, B:79:0x0173, B:79:0x0173, B:79:0x0173, B:80:0x0195, B:80:0x0195, B:80:0x0195, B:81:0x011d, B:81:0x011d, B:81:0x011d, B:82:0x01c6, B:82:0x01c6, B:82:0x01c6, B:83:0x01cd, B:83:0x01cd, B:83:0x01cd, B:84:0x00c6, B:85:0x00c9, B:88:0x00b2), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date parse(java.lang.String r18, java.text.ParsePosition r19) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int parseInt(int i, int i2, String str) {
        int i3;
        int i4;
        if (i >= 0 && i2 <= str.length() && i <= i2) {
            if (i < i2) {
                i4 = i + 1;
                int digit = Character.digit(str.charAt(i), 10);
                if (digit >= 0) {
                    i3 = -digit;
                } else {
                    throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
                }
            } else {
                i3 = 0;
                i4 = i;
            }
            while (i4 < i2) {
                int i5 = i4 + 1;
                int digit2 = Character.digit(str.charAt(i4), 10);
                if (digit2 >= 0) {
                    i3 = (i3 * 10) - digit2;
                    i4 = i5;
                } else {
                    throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
                }
            }
            return -i3;
        }
        throw new NumberFormatException(str);
    }
}
