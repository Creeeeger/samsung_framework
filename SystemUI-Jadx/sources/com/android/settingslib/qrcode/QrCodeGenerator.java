package com.android.settingslib.qrcode;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class QrCodeGenerator {
    public static Bitmap encodeQrCode(int i, String str) {
        int i2;
        HashMap hashMap = new HashMap();
        if (!StandardCharsets.ISO_8859_1.newEncoder().canEncode(str)) {
            hashMap.put(EncodeHintType.CHARACTER_SET, StandardCharsets.UTF_8.name());
        }
        BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, i, i, hashMap);
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.RGB_565);
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                if (encode.get(i3, i4)) {
                    i2 = EmergencyPhoneWidget.BG_COLOR;
                } else {
                    i2 = -1;
                }
                createBitmap.setPixel(i3, i4, i2);
            }
        }
        return createBitmap;
    }
}
