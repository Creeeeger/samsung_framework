package com.google.zxing.datamatrix.encoder;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ASCIIEncoder implements Encoder {
    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public final void encode(EncoderContext encoderContext) {
        int i;
        boolean z;
        boolean z2;
        int i2 = encoderContext.pos;
        String str = encoderContext.msg;
        int length = str.length();
        boolean z3 = true;
        if (i2 < length) {
            char charAt = str.charAt(i2);
            i = 0;
            while (true) {
                if (charAt >= '0' && charAt <= '9') {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2 || i2 >= length) {
                    break;
                }
                i++;
                i2++;
                if (i2 < length) {
                    charAt = str.charAt(i2);
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char charAt2 = str.charAt(encoderContext.pos);
            char charAt3 = str.charAt(encoderContext.pos + 1);
            if (charAt2 >= '0' && charAt2 <= '9') {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (charAt3 < '0' || charAt3 > '9') {
                    z3 = false;
                }
                if (z3) {
                    encoderContext.writeCodeword((char) ((charAt3 - '0') + ((charAt2 - '0') * 10) + 130));
                    encoderContext.pos += 2;
                    return;
                }
            }
            throw new IllegalArgumentException("not digits: " + charAt2 + charAt3);
        }
        char currentChar = encoderContext.getCurrentChar();
        int lookAheadTest = HighLevelEncoder.lookAheadTest(encoderContext.pos, 0, str);
        if (lookAheadTest != 0) {
            if (lookAheadTest != 1) {
                if (lookAheadTest != 2) {
                    if (lookAheadTest != 3) {
                        if (lookAheadTest != 4) {
                            if (lookAheadTest == 5) {
                                encoderContext.writeCodeword((char) 231);
                                encoderContext.newEncoding = 5;
                                return;
                            }
                            throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Illegal mode: ", lookAheadTest));
                        }
                        encoderContext.writeCodeword((char) 240);
                        encoderContext.newEncoding = 4;
                        return;
                    }
                    encoderContext.writeCodeword((char) 238);
                    encoderContext.newEncoding = 3;
                    return;
                }
                encoderContext.writeCodeword((char) 239);
                encoderContext.newEncoding = 2;
                return;
            }
            encoderContext.writeCodeword((char) 230);
            encoderContext.newEncoding = 1;
            return;
        }
        if (HighLevelEncoder.isExtendedASCII(currentChar)) {
            encoderContext.writeCodeword((char) 235);
            encoderContext.writeCodeword((char) ((currentChar - 128) + 1));
            encoderContext.pos++;
        } else {
            encoderContext.writeCodeword((char) (currentChar + 1));
            encoderContext.pos++;
        }
    }
}
