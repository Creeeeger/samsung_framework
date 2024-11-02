package com.android.internal.util;

/* loaded from: classes5.dex */
public class CharSequences {

    /* renamed from: com.android.internal.util.CharSequences$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements CharSequence {
        final /* synthetic */ byte[] val$bytes;

        AnonymousClass1(byte[] bArr) {
            bytes = bArr;
        }

        @Override // java.lang.CharSequence
        public char charAt(int index) {
            return (char) bytes[index];
        }

        @Override // java.lang.CharSequence
        public int length() {
            return bytes.length;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int start, int end) {
            return CharSequences.forAsciiBytes(bytes, start, end);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return new String(bytes);
        }
    }

    public static CharSequence forAsciiBytes(byte[] bytes) {
        return new CharSequence() { // from class: com.android.internal.util.CharSequences.1
            final /* synthetic */ byte[] val$bytes;

            AnonymousClass1(byte[] bytes2) {
                bytes = bytes2;
            }

            @Override // java.lang.CharSequence
            public char charAt(int index) {
                return (char) bytes[index];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return bytes.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int start, int end) {
                return CharSequences.forAsciiBytes(bytes, start, end);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bytes);
            }
        };
    }

    /* renamed from: com.android.internal.util.CharSequences$2 */
    /* loaded from: classes5.dex */
    public class AnonymousClass2 implements CharSequence {
        final /* synthetic */ byte[] val$bytes;
        final /* synthetic */ int val$end;
        final /* synthetic */ int val$start;

        AnonymousClass2(byte[] bArr, int i, int i2) {
            bytes = bArr;
            start = i;
            end = i2;
        }

        @Override // java.lang.CharSequence
        public char charAt(int index) {
            return (char) bytes[start + index];
        }

        @Override // java.lang.CharSequence
        public int length() {
            return end - start;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int newStart, int newEnd) {
            int i = start;
            int newStart2 = newStart - i;
            int newEnd2 = newEnd - i;
            CharSequences.validate(newStart2, newEnd2, length());
            return CharSequences.forAsciiBytes(bytes, newStart2, newEnd2);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return new String(bytes, start, length());
        }
    }

    public static CharSequence forAsciiBytes(byte[] bytes, int start, int end) {
        validate(start, end, bytes.length);
        return new CharSequence() { // from class: com.android.internal.util.CharSequences.2
            final /* synthetic */ byte[] val$bytes;
            final /* synthetic */ int val$end;
            final /* synthetic */ int val$start;

            AnonymousClass2(byte[] bytes2, int start2, int end2) {
                bytes = bytes2;
                start = start2;
                end = end2;
            }

            @Override // java.lang.CharSequence
            public char charAt(int index) {
                return (char) bytes[start + index];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return end - start;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int newStart, int newEnd) {
                int i = start;
                int newStart2 = newStart - i;
                int newEnd2 = newEnd - i;
                CharSequences.validate(newStart2, newEnd2, length());
                return CharSequences.forAsciiBytes(bytes, newStart2, newEnd2);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bytes, start, length());
            }
        };
    }

    static void validate(int start, int end, int length) {
        if (start < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (end < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (end > length) {
            throw new IndexOutOfBoundsException();
        }
        if (start > end) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static boolean equals(CharSequence a, CharSequence b) {
        if (a.length() != b.length()) {
            return false;
        }
        int length = a.length();
        for (int i = 0; i < length; i++) {
            if (a.charAt(i) != b.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static int compareToIgnoreCase(CharSequence me, CharSequence another) {
        int myLen = me.length();
        int anotherLen = another.length();
        int myPos = 0;
        int result = 0;
        int end = myLen < anotherLen ? myLen : anotherLen;
        while (myPos < end) {
            int myPos2 = myPos + 1;
            int anotherPos = result + 1;
            int result2 = Character.toLowerCase(me.charAt(myPos)) - Character.toLowerCase(another.charAt(result));
            if (result2 != 0) {
                return result2;
            }
            myPos = myPos2;
            result = anotherPos;
        }
        int myPos3 = myLen - anotherLen;
        return myPos3;
    }
}
