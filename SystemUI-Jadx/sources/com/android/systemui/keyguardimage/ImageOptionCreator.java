package com.android.systemui.keyguardimage;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.util.LogUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ImageOptionCreator {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ImageOption {
        public int height;
        public boolean isRtl;
        public int realHeight;
        public int realWidth;
        public int width;
        public int type = -1;
        public int rotation = -1;
        public boolean useThumbnail = false;
        public boolean useDefaultColor = false;
        public float scale = 1.0f;
        public int displayType = 0;
        public final int[] color = new int[4];
        public String clockType = null;
        public int coverClockColorIndex = -1;
        public int coverClockColor = 0;
        public int coverClockColorType = -1;
        public int clockColor = 0;
        public boolean useClockColor = false;
        public int legibilityColor = -1;

        public final String toString() {
            String msg = LogUtil.getMsg("type=%d, width=%d, height=%d, scale=%f, displayType=%d, useDefaultColor=%s, useClockColor=%s, legibilityColor=%d, clockType=%s, coverClockColorIndex=%d, coverClockColor=%d,  coverClockColorType=%d, clockColor=%d", Integer.valueOf(this.type), Integer.valueOf(this.width), Integer.valueOf(this.height), Float.valueOf(this.scale), Integer.valueOf(this.displayType), Boolean.valueOf(this.useDefaultColor), Boolean.valueOf(this.useClockColor), Integer.valueOf(this.legibilityColor), this.clockType, Integer.valueOf(this.coverClockColorIndex), Integer.valueOf(this.coverClockColor), Integer.valueOf(this.coverClockColorType), Integer.valueOf(this.clockColor));
            if (!this.useDefaultColor) {
                int[] iArr = this.color;
                return msg.concat(LogUtil.getMsg(", main=0x%x, 2nd=0x%x, bg_main=0x%x, bg_2nd=0x%x", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(iArr[2]), Integer.valueOf(iArr[3])));
            }
            return msg;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0209, code lost:
    
        if (r0 == false) goto L140;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x00fc. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.systemui.keyguardimage.ImageOptionCreator.ImageOption createImageOption(android.content.Context r17, android.net.Uri r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 906
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguardimage.ImageOptionCreator.createImageOption(android.content.Context, android.net.Uri, boolean):com.android.systemui.keyguardimage.ImageOptionCreator$ImageOption");
    }

    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException unused) {
            LogUtil.w("ImageOptionCreator", KeyAttributes$$ExternalSyntheticOutline0.m("isNumeric() return false - ", str), new Object[0]);
            return false;
        }
    }
}
