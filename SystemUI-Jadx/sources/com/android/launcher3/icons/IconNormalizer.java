package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import java.nio.ByteBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IconNormalizer {
    public final RectF mAdaptiveIconBounds;
    public float mAdaptiveIconScale;
    public final Bitmap mBitmap;
    public final Rect mBounds;
    public final Canvas mCanvas;
    public final boolean mEnableShapeDetection;
    public final float[] mLeftBorder;
    public final Matrix mMatrix;
    public final int mMaxSize;
    public final Paint mPaintMaskShape;
    public final Paint mPaintMaskShapeOutline;
    public final byte[] mPixels;
    public final float[] mRightBorder;
    public final Path mShapePath;

    public IconNormalizer(Context context, int i, boolean z) {
        int i2 = i * 2;
        this.mMaxSize = i2;
        Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ALPHA_8);
        this.mBitmap = createBitmap;
        this.mCanvas = new Canvas(createBitmap);
        this.mPixels = new byte[i2 * i2];
        this.mLeftBorder = new float[i2];
        this.mRightBorder = new float[i2];
        this.mBounds = new Rect();
        this.mAdaptiveIconBounds = new RectF();
        Paint paint = new Paint();
        this.mPaintMaskShape = paint;
        paint.setColor(-65536);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Paint paint2 = new Paint();
        this.mPaintMaskShapeOutline = paint2;
        paint2.setStrokeWidth(context.getResources().getDisplayMetrics().density * 2.0f);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(EmergencyPhoneWidget.BG_COLOR);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.mShapePath = new Path();
        this.mMatrix = new Matrix();
        this.mAdaptiveIconScale = 0.0f;
        this.mEnableShapeDetection = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        if ((r5 * r4) < 0.0f) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        if (r2 <= r9) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (((((r11[r1] - r11[r2]) / (r1 - r2)) - r0[r2]) * r4) < 0.0f) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void convertToConvexArray(int r8, int r9, int r10, float[] r11) {
        /*
            int r0 = r11.length
            int r0 = r0 + (-1)
            float[] r0 = new float[r0]
            int r1 = r9 + 1
            r2 = -1
            r3 = 2139095039(0x7f7fffff, float:3.4028235E38)
            r4 = r3
        Lc:
            if (r1 > r10) goto L5f
            r5 = r11[r1]
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 > 0) goto L17
            goto L5c
        L17:
            int r6 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r6 != 0) goto L1d
            r2 = r9
            goto L41
        L1d:
            r6 = r11[r2]
            float r5 = r5 - r6
            int r6 = r1 - r2
            float r6 = (float) r6
            float r5 = r5 / r6
            float r5 = r5 - r4
            float r4 = (float) r8
            float r5 = r5 * r4
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 >= 0) goto L41
        L2c:
            if (r2 <= r9) goto L41
            int r2 = r2 + (-1)
            r5 = r11[r1]
            r7 = r11[r2]
            float r5 = r5 - r7
            int r7 = r1 - r2
            float r7 = (float) r7
            float r5 = r5 / r7
            r7 = r0[r2]
            float r5 = r5 - r7
            float r5 = r5 * r4
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 < 0) goto L2c
        L41:
            r4 = r11[r1]
            r5 = r11[r2]
            float r4 = r4 - r5
            int r5 = r1 - r2
            float r5 = (float) r5
            float r4 = r4 / r5
            r5 = r2
        L4b:
            if (r5 >= r1) goto L5b
            r0[r5] = r4
            r6 = r11[r2]
            int r7 = r5 - r2
            float r7 = (float) r7
            float r7 = r7 * r4
            float r7 = r7 + r6
            r11[r5] = r7
            int r5 = r5 + 1
            goto L4b
        L5b:
            r2 = r1
        L5c:
            int r1 = r1 + 1
            goto Lc
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconNormalizer.convertToConvexArray(int, int, int, float[]):void");
    }

    public static float getScale(float f, float f2, float f3) {
        float f4 = f / f2;
        if (f / f3 > (f4 < 0.7853982f ? 0.6597222f : DependencyGraph$$ExternalSyntheticOutline0.m(1.0f, f4, 0.040449437f, 0.6510417f))) {
            return (float) Math.sqrt(r4 / r3);
        }
        return 1.0f;
    }

    public static float normalizeAdaptiveIcon(Drawable drawable, int i, RectF rectF) {
        Rect rect = new Rect(drawable.getBounds());
        int i2 = 0;
        drawable.setBounds(0, 0, i, i);
        Path iconMask = ((AdaptiveIconDrawable) drawable).getIconMask();
        Region region = new Region();
        region.setPath(iconMask, new Region(0, 0, i, i));
        Rect bounds = region.getBounds();
        GraphicsUtils$$ExternalSyntheticLambda0 graphicsUtils$$ExternalSyntheticLambda0 = GraphicsUtils.sOnNewBitmapRunnable;
        RegionIterator regionIterator = new RegionIterator(region);
        Rect rect2 = new Rect();
        while (regionIterator.next(rect2)) {
            i2 += rect2.height() * rect2.width();
        }
        if (rectF != null) {
            float f = i;
            rectF.set(bounds.left / f, bounds.top / f, 1.0f - (bounds.right / f), 1.0f - (bounds.bottom / f));
        }
        drawable.setBounds(rect);
        float f2 = i2;
        return getScale(f2, f2, i * i);
    }

    public final boolean isShape(Path path) {
        Rect rect = this.mBounds;
        if (Math.abs((rect.width() / rect.height()) - 1.0f) > 0.05f) {
            return false;
        }
        Matrix matrix = this.mMatrix;
        matrix.reset();
        matrix.setScale(rect.width(), rect.height());
        matrix.postTranslate(rect.left, rect.top);
        Path path2 = this.mShapePath;
        path.transform(matrix, path2);
        Canvas canvas = this.mCanvas;
        canvas.drawPath(path2, this.mPaintMaskShape);
        canvas.drawPath(path2, this.mPaintMaskShapeOutline);
        byte[] bArr = this.mPixels;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.rewind();
        this.mBitmap.copyPixelsToBuffer(wrap);
        int i = rect.top;
        int i2 = this.mMaxSize;
        int i3 = i * i2;
        int i4 = i2 - rect.right;
        int i5 = 0;
        while (i < rect.bottom) {
            int i6 = rect.left;
            int i7 = i3 + i6;
            while (i6 < rect.right) {
                if ((bArr[i7] & 255) > 40) {
                    i5++;
                }
                i7++;
                i6++;
            }
            i3 = i7 + i4;
            i++;
        }
        if (i5 / (rect.height() * rect.width()) >= 0.005f) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x004c, code lost:
    
        if (r4 <= r16.mMaxSize) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d4 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:15:0x0029, B:19:0x0036, B:22:0x0058, B:26:0x0085, B:33:0x0094, B:36:0x009b, B:40:0x00ac, B:42:0x00b6, B:49:0x00c5, B:51:0x00d4, B:55:0x00e7, B:56:0x00df, B:59:0x00ea, B:61:0x00f6, B:64:0x010a, B:66:0x010e, B:68:0x0111, B:69:0x011a, B:74:0x003c, B:76:0x004a, B:79:0x0052, B:81:0x0056, B:82:0x004e), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f6 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:15:0x0029, B:19:0x0036, B:22:0x0058, B:26:0x0085, B:33:0x0094, B:36:0x009b, B:40:0x00ac, B:42:0x00b6, B:49:0x00c5, B:51:0x00d4, B:55:0x00e7, B:56:0x00df, B:59:0x00ea, B:61:0x00f6, B:64:0x010a, B:66:0x010e, B:68:0x0111, B:69:0x011a, B:74:0x003c, B:76:0x004a, B:79:0x0052, B:81:0x0056, B:82:0x004e), top: B:3:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized float getScale(android.graphics.drawable.Drawable r17, android.graphics.RectF r18, android.graphics.Path r19, boolean[] r20) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconNormalizer.getScale(android.graphics.drawable.Drawable, android.graphics.RectF, android.graphics.Path, boolean[]):float");
    }
}
