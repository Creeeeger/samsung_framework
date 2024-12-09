package com.sec.internal.ims.config.util;

import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;

/* loaded from: classes.dex */
public class SHA1 {
    protected int H0;
    protected int H1;
    protected int H2;
    protected int H3;
    protected int H4;
    private long currentLen;
    private int currentPos;
    private final int[] w = new int[80];

    public SHA1() {
        reset();
    }

    public final void reset() {
        this.H0 = 1732584193;
        this.H1 = -271733879;
        this.H2 = -1732584194;
        this.H3 = 271733878;
        this.H4 = -1009589776;
        this.currentPos = 0;
        this.currentLen = 0L;
    }

    public final void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public final void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2;
        if (i4 >= 4) {
            int i5 = this.currentPos;
            int i6 = i5 >> 2;
            int i7 = i5 & 3;
            if (i7 == 0) {
                int[] iArr = this.w;
                int i8 = i + 1;
                int i9 = i8 + 1;
                int i10 = i9 + 1;
                int i11 = ((bArr[i8] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i9] & 255) << 8);
                i3 = i10 + 1;
                iArr[i6] = i11 | (bArr[i10] & 255);
                i4 -= 4;
                int i12 = i5 + 4;
                this.currentPos = i12;
                this.currentLen += 32;
                if (i12 == 64) {
                    perform();
                    this.currentPos = 0;
                }
            } else if (i7 == 1) {
                int[] iArr2 = this.w;
                int i13 = i + 1;
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                iArr2[i6] = (bArr[i14] & 255) | ((bArr[i13] & 255) << 8) | ((bArr[i] & 255) << 16) | (iArr2[i6] << 24);
                i4 -= 3;
                int i16 = i5 + 3;
                this.currentPos = i16;
                this.currentLen += 24;
                if (i16 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                i3 = i15;
            } else if (i7 == 2) {
                int[] iArr3 = this.w;
                int i17 = i + 1;
                int i18 = i17 + 1;
                iArr3[i6] = (iArr3[i6] << 16) | (bArr[i17] & 255) | ((bArr[i] & 255) << 8);
                i4 -= 2;
                int i19 = i5 + 2;
                this.currentPos = i19;
                this.currentLen += 16;
                if (i19 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                i3 = i18;
            } else if (i7 != 3) {
                i3 = i;
            } else {
                int[] iArr4 = this.w;
                i3 = i + 1;
                iArr4[i6] = (iArr4[i6] << 8) | (bArr[i] & 255);
                i4--;
                int i20 = i5 + 1;
                this.currentPos = i20;
                this.currentLen += 8;
                if (i20 == 64) {
                    perform();
                    this.currentPos = 0;
                }
            }
            while (i4 >= 8) {
                int[] iArr5 = this.w;
                int i21 = this.currentPos;
                int i22 = i3 + 1;
                int i23 = (bArr[i3] & 255) << 24;
                int i24 = i22 + 1;
                int i25 = ((bArr[i22] & 255) << 16) | i23;
                int i26 = i24 + 1;
                int i27 = i25 | ((bArr[i24] & 255) << 8);
                int i28 = i26 + 1;
                iArr5[i21 >> 2] = i27 | (bArr[i26] & 255);
                int i29 = i21 + 4;
                this.currentPos = i29;
                if (i29 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                int[] iArr6 = this.w;
                int i30 = this.currentPos;
                int i31 = i28 + 1;
                int i32 = (bArr[i28] & 255) << 24;
                int i33 = i31 + 1;
                int i34 = ((bArr[i31] & 255) << 16) | i32;
                int i35 = i33 + 1;
                int i36 = i34 | ((bArr[i33] & 255) << 8);
                i3 = i35 + 1;
                iArr6[i30 >> 2] = i36 | (bArr[i35] & 255);
                int i37 = i30 + 4;
                this.currentPos = i37;
                if (i37 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                this.currentLen += 64;
                i4 -= 8;
            }
        } else {
            i3 = i;
        }
        while (i4 > 0) {
            int i38 = this.currentPos;
            int i39 = i38 >> 2;
            int[] iArr7 = this.w;
            int i40 = i3 + 1;
            iArr7[i39] = (iArr7[i39] << 8) | (bArr[i3] & 255);
            this.currentLen += 8;
            int i41 = i38 + 1;
            this.currentPos = i41;
            if (i41 == 64) {
                perform();
                this.currentPos = 0;
            }
            i4--;
            i3 = i40;
        }
    }

    public final void update(byte b) {
        int i = this.currentPos;
        int i2 = i >> 2;
        int[] iArr = this.w;
        iArr[i2] = (b & 255) | (iArr[i2] << 8);
        this.currentLen += 8;
        int i3 = i + 1;
        this.currentPos = i3;
        if (i3 == 64) {
            perform();
            this.currentPos = 0;
        }
    }

    private final void putInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public final void digest(byte[] bArr) {
        digest(bArr, 0);
    }

    public final void digest(byte[] bArr, int i) {
        int i2 = this.currentPos;
        int i3 = i2 >> 2;
        int[] iArr = this.w;
        iArr[i3] = ((iArr[i3] << 8) | 128) << ((3 - (i2 & 3)) << 3);
        int i4 = (i2 & (-4)) + 4;
        this.currentPos = i4;
        if (i4 == 64) {
            this.currentPos = 0;
            perform();
        } else if (i4 == 60) {
            this.currentPos = 0;
            iArr[15] = 0;
            perform();
        }
        for (int i5 = this.currentPos >> 2; i5 < 14; i5++) {
            this.w[i5] = 0;
        }
        int[] iArr2 = this.w;
        long j = this.currentLen;
        iArr2[14] = (int) (j >> 32);
        iArr2[15] = (int) j;
        perform();
        putInt(bArr, i, this.H0);
        putInt(bArr, i + 4, this.H1);
        putInt(bArr, i + 8, this.H2);
        putInt(bArr, i + 12, this.H3);
        putInt(bArr, i + 16, this.H4);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r14v407 ?? I:??[int, boolean]), method size: 1893
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private final void perform() {
        /*
            Method dump skipped, instructions count: 1893
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.util.SHA1.perform():void");
    }

    private static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            sb.append("0123456789ABCDEF".charAt((bArr[i] >> 4) & 15));
            sb.append("0123456789ABCDEF".charAt(bArr[i] & 15));
        }
        return sb.toString();
    }

    public static void main(String[] strArr) {
        SHA1 sha1 = new SHA1();
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[20];
        byte[] bArr3 = new byte[20];
        sha1.update("abc".getBytes());
        sha1.digest(bArr);
        sha1.update("abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq".getBytes());
        sha1.digest(bArr2);
        for (int i = 0; i < 1000000; i++) {
            sha1.update(ReqMsg.request_handle_dtmf);
        }
        sha1.digest(bArr3);
        String hexString = toHexString(bArr);
        String hexString2 = toHexString(bArr2);
        String hexString3 = toHexString(bArr3);
        if (hexString.equals("A9993E364706816ABA3E25717850C26C9CD0D89D")) {
            System.out.println("SHA-1 Test 1 OK.");
        } else {
            System.out.println("SHA-1 Test 1 FAILED.");
        }
        if (hexString2.equals("84983E441C3BD26EBAAE4AA1F95129E5E54670F1")) {
            System.out.println("SHA-1 Test 2 OK.");
        } else {
            System.out.println("SHA-1 Test 2 FAILED.");
        }
        if (hexString3.equals("34AA973CD4C4DAA4F61EEB2BDBAD27316534016F")) {
            System.out.println("SHA-1 Test 3 OK.");
        } else {
            System.out.println("SHA-1 Test 3 FAILED.");
        }
        if (hexString3.equals("34AA973CD4C4DAA4F61EEB2BDBAD27316534016F")) {
            System.out.println("SHA-1 Test 3 OK.");
        } else {
            System.out.println("SHA-1 Test 3 FAILED.");
        }
    }
}
