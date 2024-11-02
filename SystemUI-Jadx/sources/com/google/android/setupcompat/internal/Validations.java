package com.google.android.setupcompat.internal;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Validations {
    private Validations() {
        throw new AssertionError("Should not be instantiated");
    }

    public static void assertLengthInRange(int i, int i2, String str, String str2) {
        boolean z;
        String format = String.format("%s cannot be null.", str2);
        if (str != null) {
            int length = str.length();
            if (length <= i2 && length >= i) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(String.format("Length of %s should be in the range [%s-%s]", str2, Integer.valueOf(i), Integer.valueOf(i2)), z);
            return;
        }
        throw new NullPointerException(format);
    }
}
