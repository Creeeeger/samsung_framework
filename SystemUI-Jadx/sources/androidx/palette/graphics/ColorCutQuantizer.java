package androidx.palette.graphics;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ColorCutQuantizer {
    public static final AnonymousClass1 VBOX_COMPARATOR_VOLUME = new Comparator() { // from class: androidx.palette.graphics.ColorCutQuantizer.1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Vbox vbox = (Vbox) obj;
            Vbox vbox2 = (Vbox) obj2;
            return (((vbox2.mMaxBlue - vbox2.mMinBlue) + 1) * (((vbox2.mMaxGreen - vbox2.mMinGreen) + 1) * ((vbox2.mMaxRed - vbox2.mMinRed) + 1))) - (((vbox.mMaxBlue - vbox.mMinBlue) + 1) * (((vbox.mMaxGreen - vbox.mMinGreen) + 1) * ((vbox.mMaxRed - vbox.mMinRed) + 1)));
        }
    };
    public final int[] mColors;
    public final Palette.Filter[] mFilters;
    public final int[] mHistogram;
    public final List mQuantizedColors;
    public final float[] mTempHsl = new float[3];

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Vbox {
        public final int mLowerIndex;
        public int mMaxBlue;
        public int mMaxGreen;
        public int mMaxRed;
        public int mMinBlue;
        public int mMinGreen;
        public int mMinRed;
        public int mPopulation;
        public int mUpperIndex;

        public Vbox(int i, int i2) {
            this.mLowerIndex = i;
            this.mUpperIndex = i2;
            fitBox();
        }

        public final void fitBox() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE;
            int i4 = 0;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = this.mLowerIndex; i8 <= this.mUpperIndex; i8++) {
                int i9 = iArr[i8];
                i4 += iArr2[i9];
                int i10 = (i9 >> 10) & 31;
                int i11 = (i9 >> 5) & 31;
                int i12 = i9 & 31;
                if (i10 > i7) {
                    i7 = i10;
                }
                if (i10 < i) {
                    i = i10;
                }
                if (i11 > i2) {
                    i2 = i11;
                }
                if (i11 < i5) {
                    i5 = i11;
                }
                if (i12 > i3) {
                    i3 = i12;
                }
                if (i12 < i6) {
                    i6 = i12;
                }
            }
            this.mMinRed = i;
            this.mMaxRed = i7;
            this.mMinGreen = i5;
            this.mMaxGreen = i2;
            this.mMinBlue = i6;
            this.mMaxBlue = i3;
            this.mPopulation = i4;
        }
    }

    public ColorCutQuantizer(int[] iArr, int i, Palette.Filter[] filterArr) {
        Vbox vbox;
        int i2;
        int i3;
        int i4;
        this.mFilters = filterArr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr.length; i6++) {
            int i7 = iArr[i6];
            int modifyWordWidth = modifyWordWidth(Color.blue(i7), 8, 5) | (modifyWordWidth(Color.red(i7), 8, 5) << 10) | (modifyWordWidth(Color.green(i7), 8, 5) << 5);
            iArr[i6] = modifyWordWidth;
            iArr2[modifyWordWidth] = iArr2[modifyWordWidth] + 1;
        }
        int i8 = 0;
        for (int i9 = 0; i9 < 32768; i9++) {
            if (iArr2[i9] > 0) {
                int rgb = Color.rgb(modifyWordWidth((i9 >> 10) & 31, 5, 8), modifyWordWidth((i9 >> 5) & 31, 5, 8), modifyWordWidth(i9 & 31, 5, 8));
                float[] fArr = this.mTempHsl;
                ThreadLocal threadLocal = ColorUtils.TEMP_ARRAY;
                ColorUtils.RGBToHSL(Color.red(rgb), Color.green(rgb), Color.blue(rgb), fArr);
                if (shouldIgnoreColor(fArr)) {
                    iArr2[i9] = 0;
                }
            }
            if (iArr2[i9] > 0) {
                i8++;
            }
        }
        int[] iArr3 = new int[i8];
        this.mColors = iArr3;
        int i10 = 0;
        for (int i11 = 0; i11 < 32768; i11++) {
            if (iArr2[i11] > 0) {
                iArr3[i10] = i11;
                i10++;
            }
        }
        if (i8 <= i) {
            this.mQuantizedColors = new ArrayList();
            while (i5 < i8) {
                int i12 = iArr3[i5];
                ((ArrayList) this.mQuantizedColors).add(new Palette.Swatch(Color.rgb(modifyWordWidth((i12 >> 10) & 31, 5, 8), modifyWordWidth((i12 >> 5) & 31, 5, 8), modifyWordWidth(i12 & 31, 5, 8)), iArr2[i12]));
                i5++;
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, VBOX_COMPARATOR_VOLUME);
        priorityQueue.offer(new Vbox(0, this.mColors.length - 1));
        while (priorityQueue.size() < i && (vbox = (Vbox) priorityQueue.poll()) != null) {
            int i13 = vbox.mUpperIndex;
            int i14 = vbox.mLowerIndex;
            if ((i13 + 1) - i14 > 1) {
                i2 = 1;
            } else {
                i2 = i5;
            }
            if (i2 == 0) {
                break;
            }
            if ((i13 + 1) - i14 > 1) {
                i3 = 1;
            } else {
                i3 = i5;
            }
            if (i3 != 0) {
                int i15 = vbox.mMaxRed - vbox.mMinRed;
                int i16 = vbox.mMaxGreen - vbox.mMinGreen;
                int i17 = vbox.mMaxBlue - vbox.mMinBlue;
                if (i15 >= i16 && i15 >= i17) {
                    i4 = -3;
                } else if (i16 >= i15 && i16 >= i17) {
                    i4 = -2;
                } else {
                    i4 = -1;
                }
                ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
                int[] iArr4 = colorCutQuantizer.mColors;
                modifySignificantOctet(i4, i14, i13, iArr4);
                Arrays.sort(iArr4, i14, vbox.mUpperIndex + 1);
                modifySignificantOctet(i4, i14, vbox.mUpperIndex, iArr4);
                int i18 = vbox.mPopulation / 2;
                int i19 = i5;
                int i20 = i14;
                while (true) {
                    int i21 = vbox.mUpperIndex;
                    if (i20 <= i21) {
                        i19 += colorCutQuantizer.mHistogram[iArr4[i20]];
                        if (i19 >= i18) {
                            i14 = Math.min(i21 - 1, i20);
                            break;
                        }
                        i20++;
                    }
                }
                Vbox vbox2 = new Vbox(i14 + 1, vbox.mUpperIndex);
                vbox.mUpperIndex = i14;
                vbox.fitBox();
                priorityQueue.offer(vbox2);
                priorityQueue.offer(vbox);
                i5 = 0;
            } else {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            Vbox vbox3 = (Vbox) it.next();
            ColorCutQuantizer colorCutQuantizer2 = ColorCutQuantizer.this;
            int[] iArr5 = colorCutQuantizer2.mColors;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            for (int i26 = vbox3.mLowerIndex; i26 <= vbox3.mUpperIndex; i26++) {
                int i27 = iArr5[i26];
                int i28 = colorCutQuantizer2.mHistogram[i27];
                i23 += i28;
                i22 += ((i27 >> 10) & 31) * i28;
                i24 += ((i27 >> 5) & 31) * i28;
                i25 += i28 * (i27 & 31);
            }
            float f = i23;
            Palette.Swatch swatch = new Palette.Swatch(Color.rgb(modifyWordWidth(Math.round(i22 / f), 5, 8), modifyWordWidth(Math.round(i24 / f), 5, 8), modifyWordWidth(Math.round(i25 / f), 5, 8)), i23);
            if (!shouldIgnoreColor(swatch.getHsl())) {
                arrayList.add(swatch);
            }
        }
        this.mQuantizedColors = arrayList;
    }

    public static void modifySignificantOctet(int i, int i2, int i3, int[] iArr) {
        if (i != -2) {
            if (i == -1) {
                while (i2 <= i3) {
                    int i4 = iArr[i2];
                    iArr[i2] = ((i4 >> 10) & 31) | ((i4 & 31) << 10) | (((i4 >> 5) & 31) << 5);
                    i2++;
                }
                return;
            }
            return;
        }
        while (i2 <= i3) {
            int i5 = iArr[i2];
            iArr[i2] = (i5 & 31) | (((i5 >> 5) & 31) << 10) | (((i5 >> 10) & 31) << 5);
            i2++;
        }
    }

    public static int modifyWordWidth(int i, int i2, int i3) {
        int i4;
        if (i3 > i2) {
            i4 = i << (i3 - i2);
        } else {
            i4 = i >> (i2 - i3);
        }
        return i4 & ((1 << i3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[LOOP:0: B:6:0x000a->B:25:0x0051, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean shouldIgnoreColor(float[] r7) {
        /*
            r6 = this;
            r0 = 0
            androidx.palette.graphics.Palette$Filter[] r6 = r6.mFilters
            if (r6 == 0) goto L54
            int r1 = r6.length
            if (r1 <= 0) goto L54
            int r1 = r6.length
            r2 = r0
        La:
            if (r2 >= r1) goto L54
            r3 = r6[r2]
            androidx.palette.graphics.Palette$1 r3 = (androidx.palette.graphics.Palette.AnonymousClass1) r3
            r3.getClass()
            r3 = 2
            r3 = r7[r3]
            r4 = 1064514355(0x3f733333, float:0.95)
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            r5 = 1
            if (r4 < 0) goto L20
            r4 = r5
            goto L21
        L20:
            r4 = r0
        L21:
            if (r4 != 0) goto L4d
            r4 = 1028443341(0x3d4ccccd, float:0.05)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 > 0) goto L2c
            r3 = r5
            goto L2d
        L2c:
            r3 = r0
        L2d:
            if (r3 != 0) goto L4d
            r3 = r7[r0]
            r4 = 1092616192(0x41200000, float:10.0)
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r4 < 0) goto L48
            r4 = 1108606976(0x42140000, float:37.0)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 > 0) goto L48
            r3 = r7[r5]
            r4 = 1062333317(0x3f51eb85, float:0.82)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 > 0) goto L48
            r3 = r5
            goto L49
        L48:
            r3 = r0
        L49:
            if (r3 != 0) goto L4d
            r3 = r5
            goto L4e
        L4d:
            r3 = r0
        L4e:
            if (r3 != 0) goto L51
            return r5
        L51:
            int r2 = r2 + 1
            goto La
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.palette.graphics.ColorCutQuantizer.shouldIgnoreColor(float[]):boolean");
    }
}
