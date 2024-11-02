package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.SparseBooleanArray;
import androidx.collection.ArrayMap;
import androidx.core.graphics.ColorUtils;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Palette {
    public static final AnonymousClass1 DEFAULT_FILTER = new Filter() { // from class: androidx.palette.graphics.Palette.1
    };
    public final Swatch mDominantSwatch;
    public final List mSwatches;
    public final List mTargets;
    public final SparseBooleanArray mUsedColors = new SparseBooleanArray();
    public final ArrayMap mSelectedSwatches = new ArrayMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Filter {
    }

    public Palette(List<Swatch> list, List<Target> list2) {
        this.mSwatches = list;
        this.mTargets = list2;
        int size = list.size();
        int i = VideoPlayer.MEDIA_ERROR_SYSTEM;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = list.get(i2);
            int i3 = swatch2.mPopulation;
            if (i3 > i) {
                swatch = swatch2;
                i = i3;
            }
        }
        this.mDominantSwatch = swatch;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Swatch {
        public final int mBlue;
        public int mBodyTextColor;
        public boolean mGeneratedTextColors;
        public final int mGreen;
        public float[] mHsl;
        public final int mPopulation;
        public final int mRed;
        public final int mRgb;
        public int mTitleTextColor;

        public Swatch(int i, int i2) {
            this.mRed = Color.red(i);
            this.mGreen = Color.green(i);
            this.mBlue = Color.blue(i);
            this.mRgb = i;
            this.mPopulation = i2;
        }

        public final void ensureTextColorsGenerated() {
            int alphaComponent;
            int alphaComponent2;
            if (!this.mGeneratedTextColors) {
                int i = this.mRgb;
                int calculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(4.5f, -1, i);
                int calculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(3.0f, -1, i);
                if (calculateMinimumAlpha != -1 && calculateMinimumAlpha2 != -1) {
                    this.mBodyTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                    this.mTitleTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                    this.mGeneratedTextColors = true;
                    return;
                }
                int calculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(4.5f, EmergencyPhoneWidget.BG_COLOR, i);
                int calculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(3.0f, EmergencyPhoneWidget.BG_COLOR, i);
                if (calculateMinimumAlpha3 != -1 && calculateMinimumAlpha4 != -1) {
                    this.mBodyTextColor = ColorUtils.setAlphaComponent(EmergencyPhoneWidget.BG_COLOR, calculateMinimumAlpha3);
                    this.mTitleTextColor = ColorUtils.setAlphaComponent(EmergencyPhoneWidget.BG_COLOR, calculateMinimumAlpha4);
                    this.mGeneratedTextColors = true;
                    return;
                }
                if (calculateMinimumAlpha != -1) {
                    alphaComponent = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                } else {
                    alphaComponent = ColorUtils.setAlphaComponent(EmergencyPhoneWidget.BG_COLOR, calculateMinimumAlpha3);
                }
                this.mBodyTextColor = alphaComponent;
                if (calculateMinimumAlpha2 != -1) {
                    alphaComponent2 = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                } else {
                    alphaComponent2 = ColorUtils.setAlphaComponent(EmergencyPhoneWidget.BG_COLOR, calculateMinimumAlpha4);
                }
                this.mTitleTextColor = alphaComponent2;
                this.mGeneratedTextColors = true;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Swatch.class != obj.getClass()) {
                return false;
            }
            Swatch swatch = (Swatch) obj;
            if (this.mPopulation == swatch.mPopulation && this.mRgb == swatch.mRgb) {
                return true;
            }
            return false;
        }

        public final float[] getHsl() {
            if (this.mHsl == null) {
                this.mHsl = new float[3];
            }
            ColorUtils.RGBToHSL(this.mRed, this.mGreen, this.mBlue, this.mHsl);
            return this.mHsl;
        }

        public final int hashCode() {
            return (this.mRgb * 31) + this.mPopulation;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(Swatch.class.getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.mRgb));
            sb.append("] [HSL: ");
            sb.append(Arrays.toString(getHsl()));
            sb.append("] [Population: ");
            sb.append(this.mPopulation);
            sb.append("] [Title Text: #");
            ensureTextColorsGenerated();
            sb.append(Integer.toHexString(this.mTitleTextColor));
            sb.append("] [Body Text: #");
            ensureTextColorsGenerated();
            sb.append(Integer.toHexString(this.mBodyTextColor));
            sb.append(']');
            return sb.toString();
        }

        public Swatch(int i, int i2, int i3, int i4) {
            this.mRed = i;
            this.mGreen = i2;
            this.mBlue = i3;
            this.mRgb = Color.rgb(i, i2, i3);
            this.mPopulation = i4;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Swatch(float[] r8, int r9) {
            /*
                r7 = this;
                java.lang.ThreadLocal r0 = androidx.core.graphics.ColorUtils.TEMP_ARRAY
                r0 = 0
                r1 = r8[r0]
                r2 = 1
                r2 = r8[r2]
                r3 = 2
                r3 = r8[r3]
                r4 = 1073741824(0x40000000, float:2.0)
                float r5 = r3 * r4
                r6 = 1065353216(0x3f800000, float:1.0)
                float r5 = r5 - r6
                float r5 = java.lang.Math.abs(r5)
                float r5 = r6 - r5
                float r5 = r5 * r2
                r2 = 1056964608(0x3f000000, float:0.5)
                float r2 = r2 * r5
                float r3 = r3 - r2
                r2 = 1114636288(0x42700000, float:60.0)
                float r2 = r1 / r2
                float r2 = r2 % r4
                float r2 = r2 - r6
                float r2 = java.lang.Math.abs(r2)
                float r6 = r6 - r2
                float r6 = r6 * r5
                int r1 = (int) r1
                int r1 = r1 / 60
                r2 = 1132396544(0x437f0000, float:255.0)
                switch(r1) {
                    case 0: goto L92;
                    case 1: goto L80;
                    case 2: goto L6d;
                    case 3: goto L5a;
                    case 4: goto L47;
                    case 5: goto L34;
                    case 6: goto L34;
                    default: goto L31;
                }
            L31:
                r1 = r0
                r2 = r1
                goto La3
            L34:
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r0 = java.lang.Math.round(r5)
                float r1 = r3 * r2
                int r1 = java.lang.Math.round(r1)
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r2 = java.lang.Math.round(r6)
                goto La3
            L47:
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r0 = java.lang.Math.round(r6)
                float r1 = r3 * r2
                int r1 = java.lang.Math.round(r1)
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r2 = java.lang.Math.round(r5)
                goto La3
            L5a:
                float r0 = r3 * r2
                int r0 = java.lang.Math.round(r0)
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r1 = java.lang.Math.round(r6)
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r2 = java.lang.Math.round(r5)
                goto La3
            L6d:
                float r0 = r3 * r2
                int r0 = java.lang.Math.round(r0)
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r1 = java.lang.Math.round(r5)
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r2 = java.lang.Math.round(r6)
                goto La3
            L80:
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r0 = java.lang.Math.round(r6)
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r1 = java.lang.Math.round(r5)
                float r3 = r3 * r2
                int r2 = java.lang.Math.round(r3)
                goto La3
            L92:
                float r5 = r5 + r3
                float r5 = r5 * r2
                int r0 = java.lang.Math.round(r5)
                float r6 = r6 + r3
                float r6 = r6 * r2
                int r1 = java.lang.Math.round(r6)
                float r3 = r3 * r2
                int r2 = java.lang.Math.round(r3)
            La3:
                int r0 = androidx.core.graphics.ColorUtils.constrain(r0)
                int r1 = androidx.core.graphics.ColorUtils.constrain(r1)
                int r2 = androidx.core.graphics.ColorUtils.constrain(r2)
                int r0 = android.graphics.Color.rgb(r0, r1, r2)
                r7.<init>(r0, r9)
                r7.mHsl = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.palette.graphics.Palette.Swatch.<init>(float[], int):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public final Bitmap mBitmap;
        public final List mFilters;
        public int mMaxColors;
        public final int mResizeArea;
        public final int mResizeMaxDimension;
        public final List mSwatches;
        public final List mTargets;

        public Builder(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.mTargets = arrayList;
            this.mMaxColors = 16;
            this.mResizeArea = 12544;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList2 = new ArrayList();
            this.mFilters = arrayList2;
            if (bitmap != null && !bitmap.isRecycled()) {
                arrayList2.add(Palette.DEFAULT_FILTER);
                this.mBitmap = bitmap;
                this.mSwatches = null;
                arrayList.add(Target.LIGHT_VIBRANT);
                arrayList.add(Target.VIBRANT);
                arrayList.add(Target.DARK_VIBRANT);
                arrayList.add(Target.LIGHT_MUTED);
                arrayList.add(Target.MUTED);
                arrayList.add(Target.DARK_MUTED);
                return;
            }
            throw new IllegalArgumentException("Bitmap is not valid");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x003f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final androidx.palette.graphics.Palette generate() {
            /*
                Method dump skipped, instructions count: 439
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.palette.graphics.Palette.Builder.generate():androidx.palette.graphics.Palette");
        }

        public Builder(List<Swatch> list) {
            this.mTargets = new ArrayList();
            this.mMaxColors = 16;
            this.mResizeArea = 12544;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList = new ArrayList();
            this.mFilters = arrayList;
            if (list != null && !list.isEmpty()) {
                arrayList.add(Palette.DEFAULT_FILTER);
                this.mSwatches = list;
                this.mBitmap = null;
                return;
            }
            throw new IllegalArgumentException("List of Swatches is not valid");
        }
    }
}
