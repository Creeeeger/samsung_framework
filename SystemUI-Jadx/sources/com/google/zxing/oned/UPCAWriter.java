package com.google.zxing.oned;

import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.sec.ims.configuration.DATA;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UPCAWriter implements Writer {
    public final EAN13Writer subWriter = new EAN13Writer();

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map map) {
        int i3;
        if (barcodeFormat == BarcodeFormat.UPC_A) {
            EAN13Writer eAN13Writer = this.subWriter;
            int length = str.length();
            if (length == 11) {
                int i4 = 0;
                for (int i5 = 0; i5 < 11; i5++) {
                    int charAt = str.charAt(i5) - '0';
                    if (i5 % 2 == 0) {
                        i3 = 3;
                    } else {
                        i3 = 1;
                    }
                    i4 += charAt * i3;
                }
                StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
                m.append((1000 - i4) % 10);
                str = m.toString();
            } else if (length != 12) {
                throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
            }
            return eAN13Writer.encode(KeyAttributes$$ExternalSyntheticOutline0.m(DATA.DM_FIELD_INDEX.PCSCF_DOMAIN, str), BarcodeFormat.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
    }
}
