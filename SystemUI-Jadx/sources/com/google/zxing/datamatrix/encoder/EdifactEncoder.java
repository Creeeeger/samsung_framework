package com.google.zxing.datamatrix.encoder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EdifactEncoder implements Encoder {
    public static String encodeToCodewords(CharSequence charSequence) {
        char c;
        char c2;
        StringBuilder sb = (StringBuilder) charSequence;
        char c3 = 0;
        int length = sb.length() - 0;
        if (length != 0) {
            char charAt = sb.charAt(0);
            if (length >= 2) {
                c = sb.charAt(1);
            } else {
                c = 0;
            }
            if (length >= 3) {
                c2 = sb.charAt(2);
            } else {
                c2 = 0;
            }
            if (length >= 4) {
                c3 = sb.charAt(3);
            }
            int i = (charAt << 18) + (c << '\f') + (c2 << 6) + c3;
            char c4 = (char) ((i >> 16) & 255);
            char c5 = (char) ((i >> 8) & 255);
            char c6 = (char) (i & 255);
            StringBuilder sb2 = new StringBuilder(3);
            sb2.append(c4);
            if (length >= 2) {
                sb2.append(c5);
            }
            if (length >= 3) {
                sb2.append(c6);
            }
            return sb2.toString();
        }
        throw new IllegalStateException("StringBuilder must not be empty");
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0051, code lost:
    
        com.google.zxing.datamatrix.encoder.HighLevelEncoder.illegalCharacter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0054, code lost:
    
        throw null;
     */
    @Override // com.google.zxing.datamatrix.encoder.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void encode(com.google.zxing.datamatrix.encoder.EncoderContext r11) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.encoder.EdifactEncoder.encode(com.google.zxing.datamatrix.encoder.EncoderContext):void");
    }
}
