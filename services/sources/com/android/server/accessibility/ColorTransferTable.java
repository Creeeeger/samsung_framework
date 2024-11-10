package com.android.server.accessibility;

import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import com.android.internal.util.FrameworkStatsLog;

/* loaded from: classes.dex */
public class ColorTransferTable {
    public static final double[] Protan_severity = {0.1d, 0.5d, 0.5d, 0.2d, 0.5d, 0.2d, 0.5d, 0.2d, 0.5d, 0.2d, 0.5d, 0.2d, 0.5d, 0.2d, 0.5d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d};
    public static final double[] Protan_userParameter = {0.1d, 0.2d, 0.4d, 0.5d, 0.5d, 0.6d, 0.6d, 0.7d, 0.7d, 0.8d, 0.8d, 0.9d, 0.9d, 1.0d, 1.0d, 0.1d, 0.2d, 0.3d, 0.4d, 0.5d, 0.6d, 0.7d, 0.8d, 0.9d, 1.0d};
    public static final double[] Deutan_severity = {0.1d, 0.1d, 0.1d, 0.2d, 0.3d, 0.4d, 0.5d, 0.5d, 0.5d, 0.5d, 0.5d, 0.5d, 0.6d, 0.6d, 0.6d, 0.6d, 0.7d, 0.7d, 0.8d, 0.9d, 0.9d, 0.9d, 1.0d, 1.0d, 1.0d};
    public static final double[] Deutan_userParameter = {0.0d, 0.1d, 0.2d, 0.3d, 0.4d, 0.5d, 0.5d, 0.6d, 0.7d, 0.8d, 0.9d, 1.0d, 0.0d, 0.1d, 0.2d, 0.3d, 0.4d, 0.5d, 0.6d, 0.6d, 0.7d, 0.8d, 0.8d, 0.9d, 1.0d};
    public static final double[] Tritan_severity = {0.1d, 0.1d, 0.1d, 0.1d, 0.2d, 0.2d, 0.2d, 0.3d, 0.4d, 0.4d, 0.5d, 0.5d, 0.6d, 0.6d, 0.7d, 0.7d, 0.8d, 0.8d, 0.9d, 0.9d, 0.9d, 0.9d, 0.9d, 1.0d, 1.0d};
    public static final double[] Tritan_userParameter = {0.0d, 0.1d, 0.2d, 0.3d, 0.3d, 0.4d, 0.5d, 0.6d, 0.8d, 0.9d, 0.9d, 1.0d, 0.0d, 0.3d, 0.5d, 0.7d, 0.7d, 1.0d, 0.2d, 0.3d, 0.5d, 0.6d, 1.0d, 0.9d, 1.0d};

    public int getColorTransferValue_DMC(int i, int i2, int i3, double d, double d2) {
        int[] iArr;
        int i4;
        if (i == 1) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_RR_DMC(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_RG_DMC(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_RB_DMC(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 2) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_YR_DMC(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_YG_DMC(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_YB_DMC(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 3) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_GR_DMC(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_GG_DMC(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_GB_DMC(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 4) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_CR_DMC(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_CG_DMC(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_CB_DMC(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 5) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_BR_DMC(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_BG_DMC(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_BB_DMC(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i != 6) {
            iArr = new int[]{-1, -1};
        } else if (i2 == 1) {
            iArr = getMaxMinColorTrnasferValue_MR_DMC(i3, d, d2);
        } else if (i2 == 3) {
            iArr = getMaxMinColorTrnasferValue_MG_DMC(i3, d, d2);
        } else {
            if (i2 == 5) {
                iArr = getMaxMinColorTrnasferValue_MB_DMC(i3, d, d2);
            }
            iArr = null;
        }
        if (iArr == null || ((i4 = iArr[0]) == -1 && iArr[1] == -1)) {
            return -1;
        }
        return (int) (((i4 - iArr[1]) * (roundHalfUp(d2) / 10.0d)) + iArr[1]);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029 A[FALL_THROUGH, PHI: r5
      0x0029: PHI (r5v3 int) = (r5v1 int), (r5v0 int), (r5v6 int), (r5v0 int) binds: [B:17:0x0028, B:11:0x0018, B:4:0x0012, B:3:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_RR_DMC(int r3, double r4, double r6) {
        /*
            r2 = this;
            r6 = 2
            int[] r7 = new int[r6]
            int r2 = r2.roundHalfUp(r4)
            r4 = 1
            r5 = 254(0xfe, float:3.56E-43)
            r0 = 255(0xff, float:3.57E-43)
            r1 = 0
            if (r3 != 0) goto L16
            switch(r2) {
                case 0: goto L14;
                case 1: goto L29;
                case 2: goto L29;
                case 3: goto L29;
                case 4: goto L29;
                case 5: goto L29;
                case 6: goto L29;
                case 7: goto L29;
                case 8: goto L29;
                case 9: goto L29;
                case 10: goto L29;
                default: goto L12;
            }
        L12:
            r5 = r1
            goto L29
        L14:
            r5 = r0
            goto L2a
        L16:
            if (r3 != r4) goto L1c
            switch(r2) {
                case 0: goto L14;
                case 1: goto L2a;
                case 2: goto L2a;
                case 3: goto L2a;
                case 4: goto L2a;
                case 5: goto L2a;
                case 6: goto L2a;
                case 7: goto L29;
                case 8: goto L2a;
                case 9: goto L2a;
                case 10: goto L2a;
                default: goto L1b;
            }
        L1b:
            goto L12
        L1c:
            if (r3 != r6) goto L28
            switch(r2) {
                case 0: goto L24;
                case 1: goto L24;
                case 2: goto L24;
                case 3: goto L24;
                case 4: goto L24;
                case 5: goto L24;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                case 9: goto L24;
                case 10: goto L24;
                default: goto L21;
            }
        L21:
            r2 = r1
            r0 = r2
            goto L25
        L24:
            r2 = r0
        L25:
            r5 = r0
            r0 = r2
            goto L2a
        L28:
            r5 = -1
        L29:
            r0 = r5
        L2a:
            r7[r1] = r0
            r7[r4] = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_RR_DMC(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_RG_DMC(int i, double d, double d2) {
        int i2;
        int i3;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                default:
                    i2 = 0;
                    break;
                case 4:
                case 7:
                    i2 = 1;
                    break;
            }
            i3 = 0;
        } else if (i == 1) {
            switch (roundHalfUp) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
            i3 = i2;
        } else {
            if (i != 2) {
                i2 = -1;
                i3 = i2;
            }
            i2 = 0;
            i3 = i2;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_RB_DMC(int r11, double r12, double r14) {
        /*
            r10 = this;
            r14 = 2
            int[] r15 = new int[r14]
            int r10 = r10.roundHalfUp(r12)
            r12 = 216(0xd8, float:3.03E-43)
            r13 = 202(0xca, float:2.83E-43)
            r0 = 188(0xbc, float:2.63E-43)
            r1 = 172(0xac, float:2.41E-43)
            r2 = 156(0x9c, float:2.19E-43)
            r3 = 136(0x88, float:1.9E-43)
            r4 = 117(0x75, float:1.64E-43)
            r5 = 92
            r6 = 66
            r7 = 36
            r8 = 1
            r9 = 0
            if (r11 != 0) goto L37
            switch(r10) {
                case 0: goto L22;
                case 1: goto L34;
                case 2: goto L32;
                case 3: goto L30;
                case 4: goto L2e;
                case 5: goto L2c;
                case 6: goto L2a;
                case 7: goto L28;
                case 8: goto L26;
                case 9: goto L24;
                case 10: goto L35;
                default: goto L22;
            }
        L22:
            r12 = r9
            goto L35
        L24:
            r12 = r13
            goto L35
        L26:
            r12 = r0
            goto L35
        L28:
            r12 = r1
            goto L35
        L2a:
            r12 = r2
            goto L35
        L2c:
            r12 = r3
            goto L35
        L2e:
            r12 = r4
            goto L35
        L30:
            r12 = r5
            goto L35
        L32:
            r12 = r6
            goto L35
        L34:
            r12 = r7
        L35:
            r10 = r9
            goto L44
        L37:
            if (r11 != r8) goto L3d
            switch(r10) {
                case 0: goto L3c;
                case 1: goto L34;
                case 2: goto L32;
                case 3: goto L30;
                case 4: goto L2e;
                case 5: goto L2c;
                case 6: goto L2a;
                case 7: goto L28;
                case 8: goto L26;
                case 9: goto L24;
                case 10: goto L35;
                default: goto L3c;
            }
        L3c:
            goto L22
        L3d:
            if (r11 != r14) goto L42
            r10 = r9
            r12 = r10
            goto L44
        L42:
            r12 = -1
            r10 = r12
        L44:
            r15[r9] = r12
            r15[r8] = r10
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_RB_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GR_DMC(int r1, double r2, double r4) {
        /*
            r0 = this;
            r4 = 2
            int[] r5 = new int[r4]
            int r0 = r0.roundHalfUp(r2)
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L12
            switch(r0) {
                case 0: goto Le;
                case 1: goto L10;
                case 2: goto L10;
                case 3: goto L10;
                case 4: goto L10;
                case 5: goto L10;
                case 6: goto L10;
                case 7: goto L10;
                case 8: goto L10;
                case 9: goto L10;
                case 10: goto L10;
                default: goto Le;
            }
        Le:
            r0 = r3
            goto L31
        L10:
            r0 = r2
            goto L31
        L12:
            if (r1 != r2) goto L18
            switch(r0) {
                case 0: goto Le;
                case 1: goto L10;
                case 2: goto Le;
                case 3: goto Le;
                case 4: goto Le;
                case 5: goto Le;
                case 6: goto Le;
                case 7: goto L10;
                case 8: goto Le;
                case 9: goto Le;
                case 10: goto Le;
                default: goto L17;
            }
        L17:
            goto Le
        L18:
            if (r1 != r4) goto L30
            switch(r0) {
                case 0: goto Le;
                case 1: goto Le;
                case 2: goto Le;
                case 3: goto Le;
                case 4: goto Le;
                case 5: goto L2d;
                case 6: goto L2a;
                case 7: goto L27;
                case 8: goto L24;
                case 9: goto L21;
                case 10: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto Le
        L1e:
            r0 = 81
            goto L31
        L21:
            r0 = 73
            goto L31
        L24:
            r0 = 63
            goto L31
        L27:
            r0 = 51
            goto L31
        L2a:
            r0 = 38
            goto L31
        L2d:
            r0 = 21
            goto L31
        L30:
            r0 = -1
        L31:
            r1 = r0
            r5[r3] = r1
            r5[r2] = r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GR_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029 A[FALL_THROUGH, PHI: r5
      0x0029: PHI (r5v3 int) = (r5v1 int), (r5v0 int), (r5v6 int), (r5v0 int) binds: [B:17:0x0028, B:11:0x0018, B:4:0x0012, B:3:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GG_DMC(int r3, double r4, double r6) {
        /*
            r2 = this;
            r6 = 2
            int[] r7 = new int[r6]
            int r2 = r2.roundHalfUp(r4)
            r4 = 1
            r5 = 254(0xfe, float:3.56E-43)
            r0 = 255(0xff, float:3.57E-43)
            r1 = 0
            if (r3 != 0) goto L16
            switch(r2) {
                case 0: goto L14;
                case 1: goto L14;
                case 2: goto L14;
                case 3: goto L14;
                case 4: goto L14;
                case 5: goto L14;
                case 6: goto L14;
                case 7: goto L29;
                case 8: goto L29;
                case 9: goto L14;
                case 10: goto L14;
                default: goto L12;
            }
        L12:
            r5 = r1
            goto L29
        L14:
            r5 = r0
            goto L2a
        L16:
            if (r3 != r4) goto L1c
            switch(r2) {
                case 0: goto L14;
                case 1: goto L29;
                case 2: goto L29;
                case 3: goto L29;
                case 4: goto L29;
                case 5: goto L29;
                case 6: goto L29;
                case 7: goto L29;
                case 8: goto L29;
                case 9: goto L29;
                case 10: goto L29;
                default: goto L1b;
            }
        L1b:
            goto L12
        L1c:
            if (r3 != r6) goto L28
            switch(r2) {
                case 0: goto L24;
                case 1: goto L24;
                case 2: goto L24;
                case 3: goto L24;
                case 4: goto L24;
                case 5: goto L24;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                case 9: goto L24;
                case 10: goto L24;
                default: goto L21;
            }
        L21:
            r2 = r1
            r0 = r2
            goto L25
        L24:
            r2 = r0
        L25:
            r5 = r0
            r0 = r2
            goto L2a
        L28:
            r5 = -1
        L29:
            r0 = r5
        L2a:
            r7[r1] = r0
            r7[r4] = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GG_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050 A[PHI: r5
      0x0050: PHI (r5v10 int) = 
      (r5v1 int)
      (r5v0 int)
      (r5v2 int)
      (r5v3 int)
      (r5v4 int)
      (r5v5 int)
      (r5v6 int)
      (r5v7 int)
      (r5v8 int)
      (r5v9 int)
      (r5v11 int)
      (r5v0 int)
      (r5v14 int)
      (r5v15 int)
      (r5v16 int)
      (r5v17 int)
      (r5v18 int)
      (r5v19 int)
      (r5v20 int)
      (r5v21 int)
     binds: [B:29:0x004f, B:19:0x002f, B:27:0x0048, B:26:0x0045, B:25:0x0042, B:24:0x003f, B:23:0x003c, B:22:0x0039, B:21:0x0036, B:20:0x0033, B:16:0x004d, B:3:0x000f, B:11:0x0028, B:10:0x0025, B:9:0x0022, B:8:0x001f, B:7:0x001c, B:6:0x0019, B:5:0x0016, B:4:0x0013] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GB_DMC(int r3, double r4, double r6) {
        /*
            r2 = this;
            r6 = 2
            int[] r7 = new int[r6]
            int r2 = r2.roundHalfUp(r4)
            r4 = 1
            r5 = 85
            r0 = 19
            r1 = 0
            if (r3 != 0) goto L2d
            switch(r2) {
                case 0: goto L4d;
                case 1: goto L2b;
                case 2: goto L28;
                case 3: goto L25;
                case 4: goto L22;
                case 5: goto L1f;
                case 6: goto L50;
                case 7: goto L1c;
                case 8: goto L19;
                case 9: goto L16;
                case 10: goto L13;
                default: goto L12;
            }
        L12:
            goto L4d
        L13:
            r5 = 115(0x73, float:1.61E-43)
            goto L50
        L16:
            r5 = 109(0x6d, float:1.53E-43)
            goto L50
        L19:
            r5 = 103(0x67, float:1.44E-43)
            goto L50
        L1c:
            r5 = 93
            goto L50
        L1f:
            r5 = 75
            goto L50
        L22:
            r5 = 63
            goto L50
        L25:
            r5 = 51
            goto L50
        L28:
            r5 = 37
            goto L50
        L2b:
            r5 = r0
            goto L51
        L2d:
            if (r3 != r4) goto L4b
            switch(r2) {
                case 0: goto L4d;
                case 1: goto L2b;
                case 2: goto L48;
                case 3: goto L45;
                case 4: goto L42;
                case 5: goto L3f;
                case 6: goto L3c;
                case 7: goto L39;
                case 8: goto L50;
                case 9: goto L36;
                case 10: goto L33;
                default: goto L32;
            }
        L32:
            goto L4d
        L33:
            r5 = 94
            goto L50
        L36:
            r5 = 89
            goto L50
        L39:
            r5 = 79
            goto L50
        L3c:
            r5 = 73
            goto L50
        L3f:
            r5 = 65
            goto L50
        L42:
            r5 = 57
            goto L50
        L45:
            r5 = 47
            goto L50
        L48:
            r5 = 35
            goto L50
        L4b:
            if (r3 != r6) goto L4f
        L4d:
            r5 = r1
            goto L50
        L4f:
            r5 = -1
        L50:
            r0 = r5
        L51:
            r7[r1] = r0
            r7[r4] = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GB_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int[] getMaxMinColorTrnasferValue_MR_DMC(int i, double d, double d2) {
        int i2;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        int i3 = FrameworkStatsLog.APP_FREEZE_CHANGED;
        int i4 = IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT;
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                    i3 = 255;
                    break;
                default:
                    i3 = 0;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i4 = i3;
                    break;
            }
        } else if (i == 1) {
            switch (roundHalfUp) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i3 = 255;
                    break;
                case 1:
                    break;
                default:
                    i3 = 0;
                    i4 = 0;
                    break;
            }
            int i5 = i4;
            i4 = i3;
            i3 = i5;
        } else if (i == 2) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    i2 = i4;
                    break;
                case 7:
                    i4 = 240;
                    i2 = i4;
                    break;
                case 8:
                    i4 = FrameworkStatsLog.EXCLUSION_RECT_STATE_CHANGED;
                    i2 = i4;
                    break;
                case 9:
                    i4 = 204;
                    i2 = i4;
                    break;
                case 10:
                    i4 = 182;
                    i2 = i4;
                    break;
                default:
                    i2 = 0;
                    i4 = 0;
                    break;
            }
            i3 = i4;
            i4 = i2;
        } else {
            i3 = -1;
            i4 = i3;
        }
        iArr[0] = i4;
        iArr[1] = i3;
        return iArr;
    }

    public final int[] getMaxMinColorTrnasferValue_MG_DMC(int i, double d, double d2) {
        int i2;
        int i3;
        int i4;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                default:
                    i2 = 0;
                    break;
                case 7:
                case 8:
                    i2 = 1;
                    break;
            }
            i4 = 0;
        } else {
            if (i == 1) {
                switch (roundHalfUp) {
                    case 0:
                    default:
                        i2 = 0;
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i2 = 1;
                        break;
                }
            } else if (i == 2) {
                switch (roundHalfUp) {
                    case 0:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    default:
                        i4 = 0;
                        break;
                    case 1:
                        i3 = 5;
                        i4 = i3;
                        break;
                    case 2:
                        i3 = 11;
                        i4 = i3;
                        break;
                    case 3:
                        i3 = 13;
                        i4 = i3;
                        break;
                    case 4:
                        i3 = 10;
                        i4 = i3;
                        break;
                    case 5:
                        i3 = 4;
                        i4 = i3;
                        break;
                }
                i2 = 0;
            } else {
                i2 = -1;
            }
            i4 = i2;
        }
        iArr[0] = i4;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_MB_DMC(int r24, double r25, double r27) {
        /*
            r23 = this;
            r0 = r24
            r1 = 2
            int[] r2 = new int[r1]
            r3 = r23
            r4 = r25
            int r3 = r3.roundHalfUp(r4)
            r5 = 138(0x8a, float:1.93E-43)
            r6 = 250(0xfa, float:3.5E-43)
            r7 = 144(0x90, float:2.02E-43)
            r8 = 246(0xf6, float:3.45E-43)
            r9 = 152(0x98, float:2.13E-43)
            r10 = 240(0xf0, float:3.36E-43)
            r11 = 161(0xa1, float:2.26E-43)
            r12 = 169(0xa9, float:2.37E-43)
            r13 = 179(0xb3, float:2.51E-43)
            r14 = 190(0xbe, float:2.66E-43)
            r15 = 226(0xe2, float:3.17E-43)
            r16 = 204(0xcc, float:2.86E-43)
            r17 = 218(0xda, float:3.05E-43)
            r18 = 238(0xee, float:3.34E-43)
            r4 = 1
            r19 = 234(0xea, float:3.28E-43)
            r20 = 228(0xe4, float:3.2E-43)
            r21 = 255(0xff, float:3.57E-43)
            r22 = 0
            if (r0 != 0) goto L63
            switch(r3) {
                case 0: goto L60;
                case 1: goto L5b;
                case 2: goto L58;
                case 3: goto L53;
                case 4: goto L51;
                case 5: goto L4f;
                case 6: goto L4b;
                case 7: goto L47;
                case 8: goto L43;
                case 9: goto L3f;
                case 10: goto L3c;
                default: goto L37;
            }
        L37:
            r5 = r22
        L39:
            r20 = r5
            goto L7e
        L3c:
            r20 = 252(0xfc, float:3.53E-43)
            goto L7e
        L3f:
            r20 = r6
            r5 = r7
            goto L7e
        L43:
            r20 = r8
            r5 = r9
            goto L7e
        L47:
            r20 = r10
            r5 = r11
            goto L7e
        L4b:
            r5 = r12
            r20 = r19
            goto L7e
        L4f:
            r5 = r13
            goto L7e
        L51:
            r5 = r14
            goto L7e
        L53:
            r20 = r15
            r5 = r16
            goto L7e
        L58:
            r5 = r17
            goto L7e
        L5b:
            r20 = r18
            r5 = r19
            goto L7e
        L60:
            r5 = r21
            goto L39
        L63:
            if (r0 != r4) goto L69
            switch(r3) {
                case 0: goto L60;
                case 1: goto L5b;
                case 2: goto L58;
                case 3: goto L53;
                case 4: goto L51;
                case 5: goto L4f;
                case 6: goto L4b;
                case 7: goto L47;
                case 8: goto L43;
                case 9: goto L3f;
                case 10: goto L3c;
                default: goto L68;
            }
        L68:
            goto L37
        L69:
            if (r0 != r1) goto L7a
            switch(r3) {
                case 0: goto L73;
                case 1: goto L73;
                case 2: goto L73;
                case 3: goto L73;
                case 4: goto L73;
                case 5: goto L73;
                case 6: goto L73;
                case 7: goto L73;
                case 8: goto L73;
                case 9: goto L73;
                case 10: goto L73;
                default: goto L6e;
            }
        L6e:
            r0 = r22
            r21 = r0
            goto L75
        L73:
            r0 = r21
        L75:
            r20 = r0
            r5 = r21
            goto L7e
        L7a:
            r20 = -1
            r5 = r20
        L7e:
            r2[r22] = r20
            r2[r4] = r5
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_MB_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_YR_DMC(int r2, double r3, double r5) {
        /*
            r1 = this;
            r5 = 2
            int[] r6 = new int[r5]
            int r1 = r1.roundHalfUp(r3)
            r3 = 1
            r4 = 255(0xff, float:3.57E-43)
            r0 = 0
            if (r2 != 0) goto L15
            r2 = 254(0xfe, float:3.56E-43)
            switch(r1) {
                case 0: goto L27;
                case 1: goto L13;
                case 2: goto L13;
                case 3: goto L13;
                case 4: goto L13;
                case 5: goto L13;
                case 6: goto L13;
                case 7: goto L13;
                case 8: goto L13;
                case 9: goto L13;
                case 10: goto L13;
                default: goto L12;
            }
        L12:
            r2 = r0
        L13:
            r4 = r2
            goto L28
        L15:
            if (r2 != r3) goto L20
            switch(r1) {
                case 0: goto L1d;
                case 1: goto L1d;
                case 2: goto L1d;
                case 3: goto L1d;
                case 4: goto L1d;
                case 5: goto L1d;
                case 6: goto L1d;
                case 7: goto L1d;
                case 8: goto L1d;
                case 9: goto L1d;
                case 10: goto L1d;
                default: goto L1a;
            }
        L1a:
            r1 = r0
            r4 = r1
            goto L1e
        L1d:
            r1 = r4
        L1e:
            r2 = r1
            goto L28
        L20:
            if (r2 != r5) goto L26
            switch(r1) {
                case 0: goto L1d;
                case 1: goto L1d;
                case 2: goto L1d;
                case 3: goto L1d;
                case 4: goto L1d;
                case 5: goto L1d;
                case 6: goto L1d;
                case 7: goto L1d;
                case 8: goto L1d;
                case 9: goto L1d;
                case 10: goto L1d;
                default: goto L25;
            }
        L25:
            goto L1a
        L26:
            r4 = -1
        L27:
            r2 = r4
        L28:
            r6[r0] = r2
            r6[r3] = r4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_YR_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_YG_DMC(int r2, double r3, double r5) {
        /*
            r1 = this;
            r5 = 2
            int[] r6 = new int[r5]
            int r1 = r1.roundHalfUp(r3)
            r3 = 1
            r4 = 255(0xff, float:3.57E-43)
            r0 = 0
            if (r2 != 0) goto L18
            switch(r1) {
                case 0: goto L2c;
                case 1: goto L13;
                case 2: goto L2c;
                case 3: goto L2c;
                case 4: goto L2c;
                case 5: goto L2c;
                case 6: goto L2c;
                case 7: goto L2c;
                case 8: goto L2c;
                case 9: goto L2c;
                case 10: goto L2c;
                default: goto L10;
            }
        L10:
            r1 = r0
            r4 = r1
            goto L2d
        L13:
            r4 = 204(0xcc, float:2.86E-43)
            r1 = 207(0xcf, float:2.9E-43)
            goto L2d
        L18:
            if (r2 != r3) goto L25
            r2 = 254(0xfe, float:3.56E-43)
            switch(r1) {
                case 0: goto L22;
                case 1: goto L20;
                case 2: goto L20;
                case 3: goto L20;
                case 4: goto L20;
                case 5: goto L20;
                case 6: goto L20;
                case 7: goto L20;
                case 8: goto L20;
                case 9: goto L20;
                case 10: goto L20;
                default: goto L1f;
            }
        L1f:
            r2 = r0
        L20:
            r4 = r2
            goto L23
        L22:
            r2 = r4
        L23:
            r1 = r2
            goto L2d
        L25:
            if (r2 != r5) goto L2b
            switch(r1) {
                case 0: goto L2c;
                case 1: goto L2c;
                case 2: goto L2c;
                case 3: goto L2c;
                case 4: goto L2c;
                case 5: goto L2c;
                case 6: goto L2c;
                case 7: goto L2c;
                case 8: goto L2c;
                case 9: goto L2c;
                case 10: goto L2c;
                default: goto L2a;
            }
        L2a:
            goto L10
        L2b:
            r4 = -1
        L2c:
            r1 = r4
        L2d:
            r6[r0] = r1
            r6[r3] = r4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_YG_DMC(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_YB_DMC(int i, double d, double d2) {
        int[] iArr = new int[2];
        roundHalfUp(d);
        int i2 = (i == 0 || i == 1 || i == 2) ? 0 : -1;
        int i3 = i2;
        iArr[0] = i2;
        iArr[1] = i3;
        return iArr;
    }

    public final int[] getMaxMinColorTrnasferValue_CR_DMC(int i, double d, double d2) {
        int i2;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
        } else {
            if (i != 1 && i != 2) {
                i2 = -1;
            }
            i2 = 0;
        }
        iArr[0] = i2;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_CG_DMC(int r2, double r3, double r5) {
        /*
            r1 = this;
            r5 = 2
            int[] r6 = new int[r5]
            int r1 = r1.roundHalfUp(r3)
            r3 = 1
            r4 = 255(0xff, float:3.57E-43)
            r0 = 0
            if (r2 != 0) goto L13
            switch(r1) {
                case 0: goto L27;
                case 1: goto L27;
                case 2: goto L27;
                case 3: goto L27;
                case 4: goto L27;
                case 5: goto L27;
                case 6: goto L27;
                case 7: goto L27;
                case 8: goto L27;
                case 9: goto L27;
                case 10: goto L27;
                default: goto L10;
            }
        L10:
            r1 = r0
            r4 = r1
            goto L28
        L13:
            if (r2 != r3) goto L20
            r2 = 254(0xfe, float:3.56E-43)
            switch(r1) {
                case 0: goto L1d;
                case 1: goto L1b;
                case 2: goto L1b;
                case 3: goto L1b;
                case 4: goto L1b;
                case 5: goto L1b;
                case 6: goto L1b;
                case 7: goto L1b;
                case 8: goto L1b;
                case 9: goto L1b;
                case 10: goto L1b;
                default: goto L1a;
            }
        L1a:
            r2 = r0
        L1b:
            r4 = r2
            goto L1e
        L1d:
            r2 = r4
        L1e:
            r1 = r2
            goto L28
        L20:
            if (r2 != r5) goto L26
            switch(r1) {
                case 0: goto L27;
                case 1: goto L27;
                case 2: goto L27;
                case 3: goto L27;
                case 4: goto L27;
                case 5: goto L27;
                case 6: goto L27;
                case 7: goto L27;
                case 8: goto L27;
                case 9: goto L27;
                case 10: goto L27;
                default: goto L25;
            }
        L25:
            goto L10
        L26:
            r4 = -1
        L27:
            r1 = r4
        L28:
            r6[r0] = r1
            r6[r3] = r4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_CG_DMC(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020 A[PHI: r4
      0x0020: PHI (r4v2 int) = (r4v1 int), (r4v0 int), (r4v0 int), (r4v0 int) binds: [B:13:0x001f, B:12:0x001b, B:10:0x0015, B:3:0x000d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_CB_DMC(int r2, double r3, double r5) {
        /*
            r1 = this;
            r5 = 2
            int[] r6 = new int[r5]
            int r1 = r1.roundHalfUp(r3)
            r3 = 1
            r4 = 255(0xff, float:3.57E-43)
            r0 = 0
            if (r2 != 0) goto L13
            switch(r1) {
                case 0: goto L20;
                case 1: goto L20;
                case 2: goto L20;
                case 3: goto L20;
                case 4: goto L20;
                case 5: goto L20;
                case 6: goto L20;
                case 7: goto L20;
                case 8: goto L20;
                case 9: goto L20;
                case 10: goto L20;
                default: goto L10;
            }
        L10:
            r1 = r0
            r4 = r1
            goto L21
        L13:
            if (r2 != r3) goto L19
            switch(r1) {
                case 0: goto L20;
                case 1: goto L20;
                case 2: goto L20;
                case 3: goto L20;
                case 4: goto L20;
                case 5: goto L20;
                case 6: goto L20;
                case 7: goto L20;
                case 8: goto L20;
                case 9: goto L20;
                case 10: goto L20;
                default: goto L18;
            }
        L18:
            goto L10
        L19:
            if (r2 != r5) goto L1f
            switch(r1) {
                case 0: goto L20;
                case 1: goto L20;
                case 2: goto L20;
                case 3: goto L20;
                case 4: goto L20;
                case 5: goto L20;
                case 6: goto L20;
                case 7: goto L20;
                case 8: goto L20;
                case 9: goto L20;
                case 10: goto L20;
                default: goto L1e;
            }
        L1e:
            goto L10
        L1f:
            r4 = -1
        L20:
            r1 = r4
        L21:
            r6[r0] = r1
            r6[r3] = r4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_CB_DMC(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_BR_DMC(int i, double d, double d2) {
        int i2;
        int i3;
        int i4;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
            i3 = i2;
        } else {
            if (i != 1) {
                if (i == 2) {
                    i3 = 41;
                    switch (roundHalfUp) {
                        case 1:
                            i4 = 6;
                            i3 = i4;
                            i2 = 0;
                            break;
                        case 2:
                            i4 = 12;
                            i3 = i4;
                            i2 = 0;
                            break;
                        case 3:
                            i4 = 16;
                            i3 = i4;
                            i2 = 0;
                            break;
                        case 4:
                            i4 = 21;
                            i3 = i4;
                            i2 = 0;
                            break;
                        case 5:
                            i4 = 26;
                            i3 = i4;
                            i2 = 0;
                            break;
                        case 6:
                            i2 = 0;
                            i3 = 32;
                            break;
                        case 7:
                            i2 = 0;
                            break;
                        case 8:
                            i3 = 83;
                            i2 = 32;
                            break;
                        case 9:
                            i3 = 102;
                            i2 = 41;
                            break;
                        case 10:
                            i2 = 47;
                            i3 = 118;
                            break;
                    }
                } else {
                    i2 = -1;
                    i3 = i2;
                }
            }
            i2 = 0;
            i3 = i2;
        }
        iArr[0] = i3;
        iArr[1] = i2;
        return iArr;
    }

    public final int[] getMaxMinColorTrnasferValue_BG_DMC(int i, double d, double d2) {
        int i2;
        int i3;
        int i4;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i != 0) {
            if (i == 1) {
                switch (roundHalfUp) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i2 = 1;
                        break;
                }
            } else {
                if (i == 2) {
                    switch (roundHalfUp) {
                        case 0:
                        default:
                            i4 = 0;
                            break;
                        case 1:
                            i3 = 6;
                            i4 = i3;
                            break;
                        case 2:
                            i3 = 12;
                            i4 = i3;
                            break;
                        case 3:
                            i3 = 16;
                            i4 = i3;
                            break;
                        case 4:
                            i3 = 21;
                            i4 = i3;
                            break;
                        case 5:
                            i3 = 26;
                            i4 = i3;
                            break;
                        case 6:
                            i3 = 32;
                            i4 = i3;
                            break;
                        case 7:
                            i3 = 41;
                            i4 = i3;
                            break;
                        case 8:
                            i3 = 51;
                            i4 = i3;
                            break;
                        case 9:
                            i3 = 61;
                            i4 = i3;
                            break;
                        case 10:
                            i3 = 71;
                            i4 = i3;
                            break;
                    }
                    i2 = 0;
                    iArr[0] = i4;
                    iArr[1] = i2;
                    return iArr;
                }
                i2 = -1;
            }
            i4 = i2;
            iArr[0] = i4;
            iArr[1] = i2;
            return iArr;
        }
        i2 = 0;
        i4 = i2;
        iArr[0] = i4;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_BB_DMC(int r3, double r4, double r6) {
        /*
            r2 = this;
            r6 = 2
            int[] r7 = new int[r6]
            int r2 = r2.roundHalfUp(r4)
            r4 = 1
            r5 = 255(0xff, float:3.57E-43)
            r0 = 254(0xfe, float:3.56E-43)
            r1 = 0
            if (r3 != 0) goto L16
            switch(r2) {
                case 0: goto L28;
                case 1: goto L14;
                case 2: goto L14;
                case 3: goto L14;
                case 4: goto L14;
                case 5: goto L14;
                case 6: goto L14;
                case 7: goto L14;
                case 8: goto L14;
                case 9: goto L14;
                case 10: goto L14;
                default: goto L12;
            }
        L12:
            r5 = r1
            goto L28
        L14:
            r5 = r0
            goto L29
        L16:
            if (r3 != r4) goto L1c
            switch(r2) {
                case 0: goto L28;
                case 1: goto L14;
                case 2: goto L14;
                case 3: goto L14;
                case 4: goto L14;
                case 5: goto L14;
                case 6: goto L14;
                case 7: goto L14;
                case 8: goto L14;
                case 9: goto L14;
                case 10: goto L14;
                default: goto L1b;
            }
        L1b:
            goto L12
        L1c:
            if (r3 != r6) goto L27
            switch(r2) {
                case 0: goto L24;
                case 1: goto L24;
                case 2: goto L24;
                case 3: goto L24;
                case 4: goto L24;
                case 5: goto L24;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                case 9: goto L24;
                case 10: goto L24;
                default: goto L21;
            }
        L21:
            r2 = r1
            r5 = r2
            goto L25
        L24:
            r2 = r5
        L25:
            r0 = r2
            goto L29
        L27:
            r5 = -1
        L28:
            r0 = r5
        L29:
            r7[r1] = r0
            r7[r4] = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_BB_DMC(int, double, double):int[]");
    }

    public int getColorTransferValue_Hybrid(int i, int i2, int i3, double d, double d2) {
        int[] iArr;
        int i4;
        if (i == 1) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_RR_Hybrid(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_RG_Hybrid(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_RB_Hybrid(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 2) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_YR_Hybrid(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_YG_Hybrid(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_YB_Hybrid(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 3) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_GR_Hybrid(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_GG_Hybrid(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_GB_Hybrid(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 4) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_CR_Hybrid(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_CG_Hybrid(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_CB_Hybrid(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i == 5) {
            if (i2 == 1) {
                iArr = getMaxMinColorTrnasferValue_BR_Hybrid(i3, d, d2);
            } else if (i2 == 3) {
                iArr = getMaxMinColorTrnasferValue_BG_Hybrid(i3, d, d2);
            } else {
                if (i2 == 5) {
                    iArr = getMaxMinColorTrnasferValue_BB_Hybrid(i3, d, d2);
                }
                iArr = null;
            }
        } else if (i != 6) {
            iArr = new int[]{-1, -1};
        } else if (i2 == 1) {
            iArr = getMaxMinColorTrnasferValue_MR_Hybrid(i3, d, d2);
        } else if (i2 == 3) {
            iArr = getMaxMinColorTrnasferValue_MG_Hybrid(i3, d, d2);
        } else {
            if (i2 == 5) {
                iArr = getMaxMinColorTrnasferValue_MB_Hybrid(i3, d, d2);
            }
            iArr = null;
        }
        if (iArr == null || ((i4 = iArr[0]) == -1 && iArr[1] == -1)) {
            return -1;
        }
        return (int) (((i4 - iArr[1]) * (roundHalfUp(d2) / 10.0d)) + iArr[1]);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[FALL_THROUGH, PHI: r1 r6
      0x003c: PHI (r1v5 int) = (r1v0 int), (r1v1 int), (r1v2 int), (r1v3 int), (r1v4 int), (r1v0 int), (r1v0 int), (r1v0 int) binds: [B:24:0x003b, B:23:0x0038, B:22:0x0036, B:21:0x0034, B:20:0x0031, B:14:0x001f, B:15:0x0023, B:3:0x0011] A[DONT_GENERATE, DONT_INLINE]
      0x003c: PHI (r6v5 int) = (r6v2 int), (r6v0 int), (r6v0 int), (r6v0 int), (r6v3 int), (r6v0 int), (r6v4 int), (r6v0 int) binds: [B:24:0x003b, B:23:0x0038, B:22:0x0036, B:21:0x0034, B:20:0x0031, B:14:0x001f, B:15:0x0023, B:3:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_RR_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 1
            r6 = 204(0xcc, float:2.86E-43)
            r0 = 254(0xfe, float:3.56E-43)
            r1 = 255(0xff, float:3.57E-43)
            r2 = 0
            if (r4 != 0) goto L1d
            switch(r3) {
                case 0: goto L1b;
                case 1: goto L18;
                case 2: goto L3c;
                case 3: goto L3c;
                case 4: goto L3c;
                case 5: goto L3c;
                case 6: goto L16;
                case 7: goto L16;
                case 8: goto L16;
                case 9: goto L16;
                case 10: goto L16;
                default: goto L14;
            }
        L14:
            r6 = r2
            goto L3f
        L16:
            r6 = r0
            goto L40
        L18:
            r0 = 239(0xef, float:3.35E-43)
            goto L40
        L1b:
            r6 = r1
            goto L3f
        L1d:
            if (r4 != r5) goto L28
            switch(r3) {
                case 0: goto L1b;
                case 1: goto L25;
                case 2: goto L3c;
                case 3: goto L3c;
                case 4: goto L3c;
                case 5: goto L3c;
                case 6: goto L23;
                case 7: goto L16;
                case 8: goto L23;
                case 9: goto L23;
                case 10: goto L23;
                default: goto L22;
            }
        L22:
            goto L14
        L23:
            r6 = r0
            goto L3c
        L25:
            r0 = 238(0xee, float:3.34E-43)
            goto L40
        L28:
            if (r4 != r7) goto L3e
            r4 = 228(0xe4, float:3.2E-43)
            r7 = 226(0xe2, float:3.17E-43)
            switch(r3) {
                case 0: goto L3b;
                case 1: goto L38;
                case 2: goto L36;
                case 3: goto L34;
                case 4: goto L34;
                case 5: goto L36;
                case 6: goto L3b;
                case 7: goto L3b;
                case 8: goto L3b;
                case 9: goto L3b;
                case 10: goto L3b;
                default: goto L31;
            }
        L31:
            r6 = r2
            r1 = r6
            goto L3c
        L34:
            r1 = r4
            goto L3c
        L36:
            r1 = r7
            goto L3c
        L38:
            r1 = 220(0xdc, float:3.08E-43)
            goto L3c
        L3b:
            r6 = r1
        L3c:
            r0 = r1
            goto L40
        L3e:
            r6 = -1
        L3f:
            r0 = r6
        L40:
            r8[r2] = r0
            r8[r5] = r6
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_RR_Hybrid(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_RG_Hybrid(int i, double d, double d2) {
        int i2;
        int i3;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                default:
                    i2 = 0;
                    break;
                case 7:
                    i2 = 1;
                    break;
            }
            i3 = 0;
        } else if (i == 1) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                default:
                    i2 = 0;
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
            i3 = i2;
        } else {
            if (i != 2) {
                i2 = -1;
                i3 = i2;
            }
            i2 = 0;
            i3 = i2;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        return iArr;
    }

    public final int[] getMaxMinColorTrnasferValue_RB_Hybrid(int i, double d, double d2) {
        int i2;
        int i3 = 2;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        int i4 = FrameworkStatsLog.DEVICE_POLICY_EVENT__EVENT_ID__SET_MTE_POLICY;
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                default:
                    i4 = 0;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    i4 = 1;
                    break;
                case 6:
                    i4 = 156;
                    break;
                case 7:
                    i4 = 172;
                    break;
                case 8:
                    i4 = 188;
                    break;
                case 9:
                    i4 = 202;
                    break;
                case 10:
                    break;
            }
        } else {
            if (i != 1) {
                if (i == 2) {
                    i2 = 0;
                    i4 = 0;
                } else {
                    i4 = -1;
                    i2 = -1;
                }
                iArr[0] = i4;
                iArr[1] = i2;
                return iArr;
            }
            switch (roundHalfUp) {
                case 0:
                case 1:
                default:
                    i3 = 0;
                    break;
                case 2:
                    i3 = 1;
                    break;
                case 3:
                case 4:
                    break;
                case 5:
                    i3 = 3;
                    break;
                case 6:
                    i3 = 156;
                    break;
                case 7:
                    i3 = 172;
                    break;
                case 8:
                    i3 = 188;
                    break;
                case 9:
                    i3 = 202;
                    break;
                case 10:
                    i3 = 216;
                    break;
            }
            i4 = i3;
        }
        i2 = 0;
        iArr[0] = i4;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GR_Hybrid(int r1, double r2, double r4) {
        /*
            r0 = this;
            r4 = 2
            int[] r5 = new int[r4]
            int r0 = r0.roundHalfUp(r2)
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L12
            switch(r0) {
                case 0: goto Le;
                case 1: goto Le;
                case 2: goto Le;
                case 3: goto Le;
                case 4: goto Le;
                case 5: goto Le;
                case 6: goto L10;
                case 7: goto L10;
                case 8: goto L10;
                case 9: goto L10;
                case 10: goto L10;
                default: goto Le;
            }
        Le:
            r0 = r3
            goto L2e
        L10:
            r0 = r2
            goto L2e
        L12:
            if (r1 != r2) goto L18
            switch(r0) {
                case 0: goto Le;
                case 1: goto Le;
                case 2: goto Le;
                case 3: goto Le;
                case 4: goto Le;
                case 5: goto Le;
                case 6: goto Le;
                case 7: goto L10;
                case 8: goto Le;
                case 9: goto Le;
                case 10: goto Le;
                default: goto L17;
            }
        L17:
            goto Le
        L18:
            if (r1 != r4) goto L2d
            switch(r0) {
                case 0: goto Le;
                case 1: goto Le;
                case 2: goto Le;
                case 3: goto Le;
                case 4: goto Le;
                case 5: goto Le;
                case 6: goto L2a;
                case 7: goto L27;
                case 8: goto L24;
                case 9: goto L21;
                case 10: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto Le
        L1e:
            r0 = 81
            goto L2e
        L21:
            r0 = 73
            goto L2e
        L24:
            r0 = 63
            goto L2e
        L27:
            r0 = 51
            goto L2e
        L2a:
            r0 = 38
            goto L2e
        L2d:
            r0 = -1
        L2e:
            r1 = r0
            r5[r3] = r1
            r5[r2] = r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GR_Hybrid(int, double, double):int[]");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[FALL_THROUGH, PHI: r6
      0x0053: PHI (r6v6 int) = (r6v1 int), (r6v0 int), (r6v11 int), (r6v0 int) binds: [B:32:0x0052, B:18:0x002a, B:4:0x0014, B:3:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GG_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 1
            r6 = 254(0xfe, float:3.56E-43)
            r0 = 204(0xcc, float:2.86E-43)
            r1 = 255(0xff, float:3.57E-43)
            r2 = 0
            if (r4 != 0) goto L28
            switch(r3) {
                case 0: goto L26;
                case 1: goto L22;
                case 2: goto L1f;
                case 3: goto L1c;
                case 4: goto L19;
                case 5: goto L16;
                case 6: goto L26;
                case 7: goto L53;
                case 8: goto L53;
                case 9: goto L26;
                case 10: goto L26;
                default: goto L14;
            }
        L14:
            r6 = r2
            goto L53
        L16:
            r6 = 243(0xf3, float:3.4E-43)
            goto L24
        L19:
            r6 = 235(0xeb, float:3.3E-43)
            goto L24
        L1c:
            r6 = 227(0xe3, float:3.18E-43)
            goto L24
        L1f:
            r6 = 221(0xdd, float:3.1E-43)
            goto L24
        L22:
            r6 = 214(0xd6, float:3.0E-43)
        L24:
            r1 = r6
            goto L50
        L26:
            r6 = r1
            goto L54
        L28:
            if (r4 != r5) goto L3a
            switch(r3) {
                case 0: goto L26;
                case 1: goto L37;
                case 2: goto L34;
                case 3: goto L31;
                case 4: goto L2e;
                case 5: goto L50;
                case 6: goto L53;
                case 7: goto L53;
                case 8: goto L53;
                case 9: goto L53;
                case 10: goto L53;
                default: goto L2d;
            }
        L2d:
            goto L14
        L2e:
            r6 = 251(0xfb, float:3.52E-43)
            goto L24
        L31:
            r6 = 239(0xef, float:3.35E-43)
            goto L24
        L34:
            r6 = 229(0xe5, float:3.21E-43)
            goto L24
        L37:
            r6 = 220(0xdc, float:3.08E-43)
            goto L24
        L3a:
            if (r4 != r7) goto L52
            r4 = 218(0xda, float:3.05E-43)
            switch(r3) {
                case 0: goto L4f;
                case 1: goto L4c;
                case 2: goto L49;
                case 3: goto L46;
                case 4: goto L44;
                case 5: goto L44;
                case 6: goto L4f;
                case 7: goto L4f;
                case 8: goto L4f;
                case 9: goto L4f;
                case 10: goto L4f;
                default: goto L41;
            }
        L41:
            r0 = r2
            r1 = r0
            goto L50
        L44:
            r1 = r4
            goto L50
        L46:
            r1 = 217(0xd9, float:3.04E-43)
            goto L50
        L49:
            r1 = 215(0xd7, float:3.01E-43)
            goto L50
        L4c:
            r1 = 212(0xd4, float:2.97E-43)
            goto L50
        L4f:
            r0 = r1
        L50:
            r6 = r0
            goto L54
        L52:
            r6 = -1
        L53:
            r1 = r6
        L54:
            r8[r2] = r1
            r8[r5] = r6
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GG_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[PHI: r4
      0x0035: PHI (r4v6 int) = 
      (r4v1 int)
      (r4v0 int)
      (r4v2 int)
      (r4v3 int)
      (r4v4 int)
      (r4v5 int)
      (r4v0 int)
      (r4v9 int)
      (r4v10 int)
      (r4v11 int)
      (r4v12 int)
     binds: [B:20:0x0034, B:14:0x001f, B:18:0x002c, B:17:0x0029, B:16:0x0026, B:15:0x0023, B:3:0x000d, B:7:0x001a, B:6:0x0017, B:5:0x0014, B:4:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_GB_Hybrid(int r2, double r3, double r5) {
        /*
            r1 = this;
            r5 = 2
            int[] r6 = new int[r5]
            int r1 = r1.roundHalfUp(r3)
            r3 = 1
            r4 = 85
            r0 = 0
            if (r2 != 0) goto L1d
            switch(r1) {
                case 0: goto L31;
                case 1: goto L31;
                case 2: goto L31;
                case 3: goto L31;
                case 4: goto L31;
                case 5: goto L31;
                case 6: goto L35;
                case 7: goto L1a;
                case 8: goto L17;
                case 9: goto L14;
                case 10: goto L11;
                default: goto L10;
            }
        L10:
            goto L31
        L11:
            r4 = 115(0x73, float:1.61E-43)
            goto L35
        L14:
            r4 = 109(0x6d, float:1.53E-43)
            goto L35
        L17:
            r4 = 103(0x67, float:1.44E-43)
            goto L35
        L1a:
            r4 = 93
            goto L35
        L1d:
            if (r2 != r3) goto L2f
            switch(r1) {
                case 0: goto L31;
                case 1: goto L31;
                case 2: goto L31;
                case 3: goto L31;
                case 4: goto L31;
                case 5: goto L31;
                case 6: goto L2c;
                case 7: goto L29;
                case 8: goto L35;
                case 9: goto L26;
                case 10: goto L23;
                default: goto L22;
            }
        L22:
            goto L31
        L23:
            r4 = 94
            goto L35
        L26:
            r4 = 89
            goto L35
        L29:
            r4 = 79
            goto L35
        L2c:
            r4 = 73
            goto L35
        L2f:
            if (r2 != r5) goto L34
        L31:
            r1 = r0
            r4 = r1
            goto L36
        L34:
            r4 = -1
        L35:
            r1 = r4
        L36:
            r6[r0] = r1
            r6[r3] = r4
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_GB_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_MR_Hybrid(int r3, double r4, double r6) {
        /*
            r2 = this;
            r6 = 2
            int[] r7 = new int[r6]
            int r2 = r2.roundHalfUp(r4)
            r4 = 1
            r5 = 204(0xcc, float:2.86E-43)
            r0 = 255(0xff, float:3.57E-43)
            r1 = 0
            if (r3 != 0) goto L1d
            r3 = 254(0xfe, float:3.56E-43)
            switch(r2) {
                case 0: goto L1b;
                case 1: goto L18;
                case 2: goto L4d;
                case 3: goto L4d;
                case 4: goto L4d;
                case 5: goto L4d;
                case 6: goto L16;
                case 7: goto L16;
                case 8: goto L16;
                case 9: goto L16;
                case 10: goto L16;
                default: goto L14;
            }
        L14:
            r5 = r1
            goto L4c
        L16:
            r5 = r3
            goto L4c
        L18:
            r0 = 249(0xf9, float:3.49E-43)
            goto L4d
        L1b:
            r5 = r0
            goto L4d
        L1d:
            if (r3 != r4) goto L26
            switch(r2) {
                case 0: goto L1b;
                case 1: goto L23;
                case 2: goto L4d;
                case 3: goto L4d;
                case 4: goto L4d;
                case 5: goto L4d;
                case 6: goto L1b;
                case 7: goto L1b;
                case 8: goto L1b;
                case 9: goto L1b;
                case 10: goto L1b;
                default: goto L22;
            }
        L22:
            goto L14
        L23:
            r0 = 250(0xfa, float:3.5E-43)
            goto L4d
        L26:
            if (r3 != r6) goto L4b
            switch(r2) {
                case 0: goto L47;
                case 1: goto L44;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L3b;
                case 5: goto L38;
                case 6: goto L47;
                case 7: goto L34;
                case 8: goto L31;
                case 9: goto L36;
                case 10: goto L2e;
                default: goto L2b;
            }
        L2b:
            r2 = r1
        L2c:
            r5 = r2
            goto L49
        L2e:
            r5 = 182(0xb6, float:2.55E-43)
            goto L36
        L31:
            r5 = 223(0xdf, float:3.12E-43)
            goto L36
        L34:
            r5 = 240(0xf0, float:3.36E-43)
        L36:
            r2 = r5
            goto L49
        L38:
            r2 = 236(0xec, float:3.31E-43)
            goto L49
        L3b:
            r2 = 238(0xee, float:3.34E-43)
            goto L49
        L3e:
            r2 = 237(0xed, float:3.32E-43)
            goto L49
        L41:
            r2 = 232(0xe8, float:3.25E-43)
            goto L49
        L44:
            r2 = 225(0xe1, float:3.15E-43)
            goto L49
        L47:
            r2 = r0
            goto L2c
        L49:
            r0 = r2
            goto L4d
        L4b:
            r5 = -1
        L4c:
            r0 = r5
        L4d:
            r7[r1] = r0
            r7[r4] = r5
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_MR_Hybrid(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_MG_Hybrid(int i, double d, double d2) {
        int i2;
        int i3;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                default:
                    i2 = 0;
                    break;
                case 7:
                case 8:
                    i2 = 1;
                    break;
            }
            i3 = 0;
        } else if (i == 1) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                default:
                    i2 = 0;
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
            i3 = i2;
        } else {
            if (i != 2) {
                i2 = -1;
                i3 = i2;
            }
            i2 = 0;
            i3 = i2;
        }
        iArr[0] = i3;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_MB_Hybrid(int r19, double r20, double r22) {
        /*
            r18 = this;
            r0 = r19
            r1 = 2
            int[] r2 = new int[r1]
            r3 = r18
            r4 = r20
            int r3 = r3.roundHalfUp(r4)
            r4 = 252(0xfc, float:3.53E-43)
            r5 = 138(0x8a, float:1.93E-43)
            r6 = 250(0xfa, float:3.5E-43)
            r7 = 144(0x90, float:2.02E-43)
            r8 = 246(0xf6, float:3.45E-43)
            r9 = 152(0x98, float:2.13E-43)
            r10 = 240(0xf0, float:3.36E-43)
            r11 = 161(0xa1, float:2.26E-43)
            r12 = 234(0xea, float:3.28E-43)
            r13 = 169(0xa9, float:2.37E-43)
            r14 = 1
            r15 = 204(0xcc, float:2.86E-43)
            r16 = 255(0xff, float:3.57E-43)
            r17 = 0
            if (r0 != 0) goto L46
            r0 = 203(0xcb, float:2.84E-43)
            switch(r3) {
                case 0: goto L43;
                case 1: goto L40;
                case 2: goto L40;
                case 3: goto L40;
                case 4: goto L40;
                case 5: goto L40;
                case 6: goto L3d;
                case 7: goto L3a;
                case 8: goto L37;
                case 9: goto L33;
                case 10: goto L7c;
                default: goto L2f;
            }
        L2f:
            r4 = r17
            goto L7b
        L33:
            r4 = r6
            r5 = r7
            goto L7c
        L37:
            r4 = r8
            r5 = r9
            goto L7c
        L3a:
            r4 = r10
            r5 = r11
            goto L7c
        L3d:
            r4 = r12
            r5 = r13
            goto L7c
        L40:
            r4 = r0
        L41:
            r5 = r15
            goto L7c
        L43:
            r4 = r16
            goto L7b
        L46:
            if (r0 != r14) goto L5b
            switch(r3) {
                case 0: goto L43;
                case 1: goto L58;
                case 2: goto L55;
                case 3: goto L52;
                case 4: goto L4f;
                case 5: goto L4c;
                case 6: goto L3d;
                case 7: goto L3a;
                case 8: goto L37;
                case 9: goto L33;
                case 10: goto L7c;
                default: goto L4b;
            }
        L4b:
            goto L2f
        L4c:
            r4 = 210(0xd2, float:2.94E-43)
            goto L41
        L4f:
            r4 = 209(0xd1, float:2.93E-43)
            goto L41
        L52:
            r4 = 207(0xcf, float:2.9E-43)
            goto L41
        L55:
            r4 = 206(0xce, float:2.89E-43)
            goto L41
        L58:
            r4 = 205(0xcd, float:2.87E-43)
            goto L41
        L5b:
            if (r0 != r1) goto L7a
            switch(r3) {
                case 0: goto L74;
                case 1: goto L71;
                case 2: goto L6e;
                case 3: goto L6b;
                case 4: goto L68;
                case 5: goto L65;
                case 6: goto L74;
                case 7: goto L74;
                case 8: goto L74;
                case 9: goto L74;
                case 10: goto L74;
                default: goto L60;
            }
        L60:
            r15 = r17
            r16 = r15
            goto L76
        L65:
            r16 = 241(0xf1, float:3.38E-43)
            goto L76
        L68:
            r16 = 235(0xeb, float:3.3E-43)
            goto L76
        L6b:
            r16 = 228(0xe4, float:3.2E-43)
            goto L76
        L6e:
            r16 = 222(0xde, float:3.11E-43)
            goto L76
        L71:
            r16 = 216(0xd8, float:3.03E-43)
            goto L76
        L74:
            r15 = r16
        L76:
            r5 = r15
            r4 = r16
            goto L7c
        L7a:
            r4 = -1
        L7b:
            r5 = r4
        L7c:
            r2[r17] = r4
            r2[r14] = r5
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_MB_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_YR_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 194(0xc2, float:2.72E-43)
            r6 = 1
            r0 = 204(0xcc, float:2.86E-43)
            r1 = 255(0xff, float:3.57E-43)
            r2 = 0
            if (r4 != 0) goto L28
            r4 = 254(0xfe, float:3.56E-43)
            switch(r3) {
                case 0: goto L26;
                case 1: goto L56;
                case 2: goto L23;
                case 3: goto L20;
                case 4: goto L1d;
                case 5: goto L1a;
                case 6: goto L18;
                case 7: goto L18;
                case 8: goto L18;
                case 9: goto L18;
                case 10: goto L18;
                default: goto L16;
            }
        L16:
            r5 = r2
            goto L55
        L18:
            r5 = r4
            goto L55
        L1a:
            r5 = 164(0xa4, float:2.3E-43)
            goto L56
        L1d:
            r5 = 173(0xad, float:2.42E-43)
            goto L56
        L20:
            r5 = 181(0xb5, float:2.54E-43)
            goto L56
        L23:
            r5 = 188(0xbc, float:2.63E-43)
            goto L56
        L26:
            r5 = r1
            goto L55
        L28:
            if (r4 != r6) goto L42
            switch(r3) {
                case 0: goto L3f;
                case 1: goto L3c;
                case 2: goto L39;
                case 3: goto L36;
                case 4: goto L33;
                case 5: goto L30;
                case 6: goto L3f;
                case 7: goto L3f;
                case 8: goto L3f;
                case 9: goto L3f;
                case 10: goto L3f;
                default: goto L2d;
            }
        L2d:
            r0 = r2
            r1 = r0
            goto L40
        L30:
            r1 = 162(0xa2, float:2.27E-43)
            goto L40
        L33:
            r1 = 171(0xab, float:2.4E-43)
            goto L40
        L36:
            r1 = 179(0xb3, float:2.51E-43)
            goto L40
        L39:
            r1 = 186(0xba, float:2.6E-43)
            goto L40
        L3c:
            r1 = 192(0xc0, float:2.69E-43)
            goto L40
        L3f:
            r0 = r1
        L40:
            r5 = r1
            goto L56
        L42:
            if (r4 != r7) goto L54
            switch(r3) {
                case 0: goto L26;
                case 1: goto L51;
                case 2: goto L4e;
                case 3: goto L4b;
                case 4: goto L56;
                case 5: goto L48;
                case 6: goto L26;
                case 7: goto L26;
                case 8: goto L26;
                case 9: goto L26;
                case 10: goto L26;
                default: goto L47;
            }
        L47:
            goto L16
        L48:
            r5 = 193(0xc1, float:2.7E-43)
            goto L56
        L4b:
            r5 = 195(0xc3, float:2.73E-43)
            goto L56
        L4e:
            r5 = 197(0xc5, float:2.76E-43)
            goto L56
        L51:
            r5 = 199(0xc7, float:2.79E-43)
            goto L56
        L54:
            r5 = -1
        L55:
            r0 = r5
        L56:
            r8[r2] = r5
            r8[r6] = r0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_YR_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047 A[PHI: r1 r3
      0x0047: PHI (r1v8 int) = (r1v0 int), (r1v2 int), (r1v3 int), (r1v4 int), (r1v5 int), (r1v6 int), (r1v0 int), (r1v0 int) binds: [B:21:0x0035, B:27:0x0043, B:26:0x0041, B:25:0x003e, B:24:0x003b, B:23:0x0039, B:17:0x002b, B:3:0x0017] A[DONT_GENERATE, DONT_INLINE]
      0x0047: PHI (r3v3 int) = (r3v0 int), (r3v0 int), (r3v0 int), (r3v0 int), (r3v0 int), (r3v1 int), (r3v0 int), (r3v0 int) binds: [B:21:0x0035, B:27:0x0043, B:26:0x0041, B:25:0x003e, B:24:0x003b, B:23:0x0039, B:17:0x002b, B:3:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_YG_Hybrid(int r8, double r9, double r11) {
        /*
            r7 = this;
            r11 = 2
            int[] r12 = new int[r11]
            int r7 = r7.roundHalfUp(r9)
            r9 = 216(0xd8, float:3.03E-43)
            r10 = 213(0xd5, float:2.98E-43)
            r0 = 1
            r1 = 211(0xd3, float:2.96E-43)
            r2 = 207(0xcf, float:2.9E-43)
            r3 = 204(0xcc, float:2.86E-43)
            r4 = 255(0xff, float:3.57E-43)
            r5 = 0
            if (r8 != 0) goto L25
            switch(r7) {
                case 0: goto L23;
                case 1: goto L21;
                case 2: goto L1e;
                case 3: goto L47;
                case 4: goto L1c;
                case 5: goto L4b;
                case 6: goto L23;
                case 7: goto L23;
                case 8: goto L23;
                case 9: goto L23;
                case 10: goto L23;
                default: goto L1a;
            }
        L1a:
            r9 = r5
            goto L4a
        L1c:
            r9 = r10
            goto L4b
        L1e:
            r9 = 209(0xd1, float:2.93E-43)
            goto L4b
        L21:
            r9 = r2
            goto L4b
        L23:
            r9 = r4
            goto L4a
        L25:
            r6 = 208(0xd0, float:2.91E-43)
            if (r8 != r0) goto L33
            r8 = 254(0xfe, float:3.56E-43)
            switch(r7) {
                case 0: goto L23;
                case 1: goto L21;
                case 2: goto L31;
                case 3: goto L47;
                case 4: goto L1c;
                case 5: goto L4b;
                case 6: goto L2f;
                case 7: goto L2f;
                case 8: goto L2f;
                case 9: goto L2f;
                case 10: goto L2f;
                default: goto L2e;
            }
        L2e:
            goto L1a
        L2f:
            r9 = r8
            goto L4a
        L31:
            r9 = r6
            goto L4b
        L33:
            if (r8 != r11) goto L49
            switch(r7) {
                case 0: goto L45;
                case 1: goto L43;
                case 2: goto L41;
                case 3: goto L3e;
                case 4: goto L47;
                case 5: goto L3b;
                case 6: goto L45;
                case 7: goto L45;
                case 8: goto L45;
                case 9: goto L45;
                case 10: goto L45;
                default: goto L38;
            }
        L38:
            r1 = r5
        L39:
            r3 = r1
            goto L47
        L3b:
            r1 = 212(0xd4, float:2.97E-43)
            goto L47
        L3e:
            r1 = 210(0xd2, float:2.94E-43)
            goto L47
        L41:
            r1 = r6
            goto L47
        L43:
            r1 = r2
            goto L47
        L45:
            r1 = r4
            goto L39
        L47:
            r9 = r1
            goto L4b
        L49:
            r9 = -1
        L4a:
            r3 = r9
        L4b:
            r12[r5] = r9
            r12[r0] = r3
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_YG_Hybrid(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_YB_Hybrid(int i, double d, double d2) {
        int i2;
        int i3 = 2;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    i3 = 0;
                    break;
                case 2:
                case 3:
                    i3 = 1;
                    break;
                case 4:
                case 5:
                    break;
            }
            i2 = 0;
        } else if (i == 1 || i == 2) {
            i2 = 0;
            i3 = 0;
        } else {
            i3 = -1;
            i2 = -1;
        }
        iArr[0] = i3;
        iArr[1] = i2;
        return iArr;
    }

    public final int[] getMaxMinColorTrnasferValue_CR_Hybrid(int i, double d, double d2) {
        int i2;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i == 0) {
            switch (roundHalfUp) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                default:
                    i2 = 0;
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    i2 = 1;
                    break;
            }
        } else {
            if (i != 1 && i != 2) {
                i2 = -1;
            }
            i2 = 0;
        }
        iArr[0] = i2;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a A[FALL_THROUGH, PHI: r0 r4
      0x001a: PHI (r0v7 int) = (r0v0 int), (r0v0 int), (r0v9 int) binds: [B:30:0x0046, B:4:0x0013, B:7:0x0018] A[DONT_GENERATE, DONT_INLINE]
      0x001a: PHI (r4v3 int) = (r4v1 int), (r4v4 int), (r4v4 int) binds: [B:30:0x0046, B:4:0x0013, B:7:0x0018] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_CG_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 1
            r6 = 211(0xd3, float:2.96E-43)
            r0 = 204(0xcc, float:2.86E-43)
            r1 = 255(0xff, float:3.57E-43)
            r2 = 0
            if (r4 != 0) goto L24
            r4 = 230(0xe6, float:3.22E-43)
            switch(r3) {
                case 0: goto L22;
                case 1: goto L4f;
                case 2: goto L1f;
                case 3: goto L1c;
                case 4: goto L1a;
                case 5: goto L18;
                case 6: goto L22;
                case 7: goto L22;
                case 8: goto L22;
                case 9: goto L22;
                case 10: goto L22;
                default: goto L16;
            }
        L16:
            r6 = r2
            goto L4e
        L18:
            r0 = 207(0xcf, float:2.9E-43)
        L1a:
            r6 = r4
            goto L4f
        L1c:
            r6 = 225(0xe1, float:3.15E-43)
            goto L4f
        L1f:
            r6 = 215(0xd7, float:3.01E-43)
            goto L4f
        L22:
            r6 = r1
            goto L4e
        L24:
            if (r4 != r5) goto L42
            r4 = 254(0xfe, float:3.56E-43)
            switch(r3) {
                case 0: goto L3f;
                case 1: goto L3c;
                case 2: goto L39;
                case 3: goto L36;
                case 4: goto L33;
                case 5: goto L30;
                case 6: goto L2e;
                case 7: goto L2e;
                case 8: goto L2e;
                case 9: goto L2e;
                case 10: goto L2e;
                default: goto L2b;
            }
        L2b:
            r0 = r2
        L2c:
            r1 = r0
            goto L40
        L2e:
            r0 = r4
            goto L2c
        L30:
            r1 = 253(0xfd, float:3.55E-43)
            goto L40
        L33:
            r1 = 242(0xf2, float:3.39E-43)
            goto L40
        L36:
            r1 = 232(0xe8, float:3.25E-43)
            goto L40
        L39:
            r1 = 224(0xe0, float:3.14E-43)
            goto L40
        L3c:
            r1 = 216(0xd8, float:3.03E-43)
            goto L40
        L3f:
            r0 = r1
        L40:
            r6 = r1
            goto L4f
        L42:
            if (r4 != r7) goto L4d
            r4 = 210(0xd2, float:2.94E-43)
            switch(r3) {
                case 0: goto L22;
                case 1: goto L4a;
                case 2: goto L1a;
                case 3: goto L4f;
                case 4: goto L4f;
                case 5: goto L1a;
                case 6: goto L22;
                case 7: goto L22;
                case 8: goto L22;
                case 9: goto L22;
                case 10: goto L22;
                default: goto L49;
            }
        L49:
            goto L16
        L4a:
            r6 = 208(0xd0, float:2.91E-43)
            goto L4f
        L4d:
            r6 = -1
        L4e:
            r0 = r6
        L4f:
            r8[r2] = r6
            r8[r5] = r0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_CG_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_CB_Hybrid(int r5, double r6, double r8) {
        /*
            r4 = this;
            r8 = 2
            int[] r9 = new int[r8]
            int r4 = r4.roundHalfUp(r6)
            r6 = 203(0xcb, float:2.84E-43)
            r7 = 1
            r0 = 202(0xca, float:2.83E-43)
            r1 = 204(0xcc, float:2.86E-43)
            r2 = 255(0xff, float:3.57E-43)
            r3 = 0
            if (r5 != 0) goto L1c
            switch(r4) {
                case 0: goto L1a;
                case 1: goto L3d;
                case 2: goto L18;
                case 3: goto L18;
                case 4: goto L18;
                case 5: goto L18;
                case 6: goto L1a;
                case 7: goto L1a;
                case 8: goto L1a;
                case 9: goto L1a;
                case 10: goto L1a;
                default: goto L16;
            }
        L16:
            r6 = r3
            goto L3c
        L18:
            r6 = r0
            goto L3d
        L1a:
            r6 = r2
            goto L3c
        L1c:
            if (r5 != r7) goto L29
            r5 = 201(0xc9, float:2.82E-43)
            switch(r4) {
                case 0: goto L1a;
                case 1: goto L3d;
                case 2: goto L18;
                case 3: goto L27;
                case 4: goto L27;
                case 5: goto L24;
                case 6: goto L1a;
                case 7: goto L1a;
                case 8: goto L1a;
                case 9: goto L1a;
                case 10: goto L1a;
                default: goto L23;
            }
        L23:
            goto L16
        L24:
            r6 = 200(0xc8, float:2.8E-43)
            goto L3d
        L27:
            r6 = r5
            goto L3d
        L29:
            if (r5 != r8) goto L3b
            r5 = 206(0xce, float:2.89E-43)
            switch(r4) {
                case 0: goto L38;
                case 1: goto L35;
                case 2: goto L33;
                case 3: goto L33;
                case 4: goto L33;
                case 5: goto L33;
                case 6: goto L38;
                case 7: goto L38;
                case 8: goto L38;
                case 9: goto L38;
                case 10: goto L38;
                default: goto L30;
            }
        L30:
            r1 = r3
            r2 = r1
            goto L39
        L33:
            r2 = r5
            goto L39
        L35:
            r2 = 205(0xcd, float:2.87E-43)
            goto L39
        L38:
            r1 = r2
        L39:
            r6 = r2
            goto L3d
        L3b:
            r6 = -1
        L3c:
            r1 = r6
        L3d:
            r9[r3] = r6
            r9[r7] = r1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_CB_Hybrid(int, double, double):int[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_BR_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 9
            r6 = 1
            r0 = 0
            if (r4 != 0) goto L22
            switch(r3) {
                case 0: goto L10;
                case 1: goto L3a;
                case 2: goto L1f;
                case 3: goto L1c;
                case 4: goto L19;
                case 5: goto L16;
                case 6: goto L14;
                case 7: goto L14;
                case 8: goto L14;
                case 9: goto L14;
                case 10: goto L14;
                default: goto L10;
            }
        L10:
            r3 = r0
        L11:
            r5 = r3
            goto L61
        L14:
            r3 = r6
            goto L11
        L16:
            r5 = 39
            goto L3a
        L19:
            r5 = 30
            goto L3a
        L1c:
            r5 = 22
            goto L3a
        L1f:
            r5 = 15
            goto L3a
        L22:
            r1 = 41
            r2 = 32
            if (r4 != r6) goto L3c
            switch(r3) {
                case 0: goto L2b;
                case 1: goto L37;
                case 2: goto L34;
                case 3: goto L31;
                case 4: goto L2f;
                case 5: goto L2d;
                case 6: goto L2b;
                case 7: goto L2b;
                case 8: goto L2b;
                case 9: goto L2b;
                case 10: goto L2b;
                default: goto L2b;
            }
        L2b:
            r5 = r0
            goto L3a
        L2d:
            r5 = r1
            goto L3a
        L2f:
            r5 = r2
            goto L3a
        L31:
            r3 = 24
            goto L39
        L34:
            r3 = 17
            goto L39
        L37:
            r3 = 11
        L39:
            r5 = r3
        L3a:
            r3 = r0
            goto L61
        L3c:
            if (r4 != r7) goto L5f
            switch(r3) {
                case 0: goto L10;
                case 1: goto L5d;
                case 2: goto L5b;
                case 3: goto L58;
                case 4: goto L3a;
                case 5: goto L55;
                case 6: goto L52;
                case 7: goto L4f;
                case 8: goto L4b;
                case 9: goto L47;
                case 10: goto L42;
                default: goto L41;
            }
        L41:
            goto L10
        L42:
            r3 = 47
            r5 = 118(0x76, float:1.65E-43)
            goto L61
        L47:
            r5 = 102(0x66, float:1.43E-43)
            r3 = r1
            goto L61
        L4b:
            r5 = 83
            r3 = r2
            goto L61
        L4f:
            r3 = r0
            r5 = r1
            goto L61
        L52:
            r3 = r0
            r5 = r2
            goto L61
        L55:
            r5 = 10
            goto L3a
        L58:
            r5 = 8
            goto L3a
        L5b:
            r5 = 6
            goto L3a
        L5d:
            r5 = 4
            goto L3a
        L5f:
            r5 = -1
            r3 = r5
        L61:
            r8[r0] = r5
            r8[r6] = r3
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_BR_Hybrid(int, double, double):int[]");
    }

    public final int[] getMaxMinColorTrnasferValue_BG_Hybrid(int i, double d, double d2) {
        int i2;
        int i3;
        int i4;
        int[] iArr = new int[2];
        int roundHalfUp = roundHalfUp(d);
        if (i != 0) {
            if (i == 1) {
                switch (roundHalfUp) {
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i2 = 1;
                        break;
                }
            } else {
                if (i == 2) {
                    switch (roundHalfUp) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        default:
                            i4 = 0;
                            break;
                        case 6:
                            i3 = 32;
                            i4 = i3;
                            break;
                        case 7:
                            i3 = 41;
                            i4 = i3;
                            break;
                        case 8:
                            i3 = 51;
                            i4 = i3;
                            break;
                        case 9:
                            i3 = 61;
                            i4 = i3;
                            break;
                        case 10:
                            i3 = 71;
                            i4 = i3;
                            break;
                    }
                    i2 = 0;
                    iArr[0] = i4;
                    iArr[1] = i2;
                    return iArr;
                }
                i2 = -1;
            }
            i4 = i2;
            iArr[0] = i4;
            iArr[1] = i2;
            return iArr;
        }
        i2 = 0;
        i4 = i2;
        iArr[0] = i4;
        iArr[1] = i2;
        return iArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int[] getMaxMinColorTrnasferValue_BB_Hybrid(int r4, double r5, double r7) {
        /*
            r3 = this;
            r7 = 2
            int[] r8 = new int[r7]
            int r3 = r3.roundHalfUp(r5)
            r5 = 1
            r6 = 204(0xcc, float:2.86E-43)
            r0 = 255(0xff, float:3.57E-43)
            r1 = 254(0xfe, float:3.56E-43)
            r2 = 0
            if (r4 != 0) goto L25
            r4 = 201(0xc9, float:2.82E-43)
            r7 = 202(0xca, float:2.83E-43)
            switch(r3) {
                case 0: goto L23;
                case 1: goto L20;
                case 2: goto L1e;
                case 3: goto L1e;
                case 4: goto L1c;
                case 5: goto L1c;
                case 6: goto L1a;
                case 7: goto L1a;
                case 8: goto L1a;
                case 9: goto L1a;
                case 10: goto L1a;
                default: goto L18;
            }
        L18:
            r6 = r2
            goto L51
        L1a:
            r6 = r1
            goto L51
        L1c:
            r0 = r4
            goto L52
        L1e:
            r0 = r7
            goto L52
        L20:
            r0 = 203(0xcb, float:2.84E-43)
            goto L52
        L23:
            r6 = r0
            goto L52
        L25:
            if (r4 != r5) goto L3b
            r4 = 206(0xce, float:2.89E-43)
            r7 = 205(0xcd, float:2.87E-43)
            switch(r3) {
                case 0: goto L37;
                case 1: goto L2f;
                case 2: goto L35;
                case 3: goto L35;
                case 4: goto L33;
                case 5: goto L33;
                case 6: goto L31;
                case 7: goto L31;
                case 8: goto L31;
                case 9: goto L31;
                case 10: goto L31;
                default: goto L2e;
            }
        L2e:
            r6 = r2
        L2f:
            r1 = r6
            goto L39
        L31:
            r6 = r1
            goto L39
        L33:
            r1 = r4
            goto L39
        L35:
            r1 = r7
            goto L39
        L37:
            r6 = r0
            goto L2f
        L39:
            r0 = r1
            goto L52
        L3b:
            if (r4 != r7) goto L50
            switch(r3) {
                case 0: goto L23;
                case 1: goto L4d;
                case 2: goto L4a;
                case 3: goto L47;
                case 4: goto L44;
                case 5: goto L41;
                case 6: goto L23;
                case 7: goto L23;
                case 8: goto L23;
                case 9: goto L23;
                case 10: goto L23;
                default: goto L40;
            }
        L40:
            goto L18
        L41:
            r0 = 244(0xf4, float:3.42E-43)
            goto L52
        L44:
            r0 = 237(0xed, float:3.32E-43)
            goto L52
        L47:
            r0 = 231(0xe7, float:3.24E-43)
            goto L52
        L4a:
            r0 = 225(0xe1, float:3.15E-43)
            goto L52
        L4d:
            r0 = 218(0xda, float:3.05E-43)
            goto L52
        L50:
            r6 = -1
        L51:
            r0 = r6
        L52:
            r8[r2] = r0
            r8[r5] = r6
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.ColorTransferTable.getMaxMinColorTrnasferValue_BB_Hybrid(int, double, double):int[]");
    }

    public double[] getPredefinedValueForEachType(int i, int i2) {
        double[] dArr = new double[2];
        int i3 = i - 1;
        if (i3 == 0) {
            dArr[0] = Protan_severity[i2];
            dArr[1] = Protan_userParameter[i2];
        } else if (i3 == 1) {
            dArr[0] = Deutan_severity[i2];
            dArr[1] = Deutan_userParameter[i2];
        } else {
            if (i3 != 2) {
                return null;
            }
            dArr[0] = Tritan_severity[i2];
            dArr[1] = Tritan_userParameter[i2];
        }
        return dArr;
    }

    public final int roundHalfUp(double d) {
        return (int) Math.round(d * 10.0d);
    }
}
