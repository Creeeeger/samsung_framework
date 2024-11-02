package com.android.systemui.statusbar.policy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSClockUtils {
    public static String getBasicClockFormat(String str) {
        int i = 0;
        boolean z = false;
        while (true) {
            if (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt == '\'') {
                    z = !z;
                }
                if (!z && charAt == 'a') {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i >= 0) {
            int i2 = i;
            while (i2 > 0) {
                int i3 = i2 - 1;
                if (!Character.isWhitespace(str.charAt(i3))) {
                    break;
                }
                i2 = i3;
            }
            return str.substring(0, i2) + (char) 61184 + str.substring(i2, i) + "a\uef01" + str.substring(i + 1);
        }
        return str;
    }
}
