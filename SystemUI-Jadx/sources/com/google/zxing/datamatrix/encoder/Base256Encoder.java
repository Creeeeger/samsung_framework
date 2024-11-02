package com.google.zxing.datamatrix.encoder;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Base256Encoder implements Encoder {
    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public final void encode(EncoderContext encoderContext) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            sb.append(encoderContext.getCurrentChar());
            int i = encoderContext.pos + 1;
            encoderContext.pos = i;
            int lookAheadTest = HighLevelEncoder.lookAheadTest(i, 5, encoderContext.msg);
            if (lookAheadTest != 5) {
                encoderContext.newEncoding = lookAheadTest;
                break;
            }
        }
        int length = sb.length() - 1;
        int codewordCount = encoderContext.getCodewordCount() + length + 1;
        encoderContext.updateSymbolInfo(codewordCount);
        if (encoderContext.symbolInfo.dataCapacity - codewordCount > 0) {
            z = true;
        } else {
            z = false;
        }
        if (encoderContext.hasMoreCharacters() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length > 249 && length <= 1555) {
                sb.setCharAt(0, (char) ((length / IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend) + IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcut));
                sb.insert(1, (char) (length % IKnoxCustomManager.Stub.TRANSACTION_addDexURLShortcutExtend));
            } else {
                throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Message length not in valid ranges: ", length));
            }
        }
        int length2 = sb.length();
        for (int i2 = 0; i2 < length2; i2++) {
            int codewordCount2 = (((encoderContext.getCodewordCount() + 1) * 149) % 255) + 1 + sb.charAt(i2);
            if (codewordCount2 > 255) {
                codewordCount2 -= 256;
            }
            encoderContext.writeCodeword((char) codewordCount2);
        }
    }
}
