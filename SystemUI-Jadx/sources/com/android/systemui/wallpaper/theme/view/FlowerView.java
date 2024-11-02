package com.android.systemui.wallpaper.theme.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.android.systemui.R;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.theme.DensityUtil;
import com.android.systemui.wallpaper.theme.LockscreenCallback;
import com.android.systemui.wallpaper.theme.particle.Flower;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FlowerView extends View implements LockscreenCallback {
    public final Context mContext;
    public final int[] mFlowerImageId;
    public final Flower[] mFlowerPool;
    public final float[] mFlowerSizeScale;
    public final Paint mPaint;
    public final Matrix matrix;
    public boolean refresh;

    public FlowerView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.refresh = true;
        this.mFlowerImageId = new int[]{R.drawable.flower_01, R.drawable.flower_02, R.drawable.flower_03};
        this.mFlowerSizeScale = new float[]{0.6f, 0.7f, 0.8f, 0.9f, 1.2f, 1.3f};
        this.matrix = new Matrix();
        this.mContext = context;
        this.mFlowerPool = new Flower[35];
        int i = 0;
        while (true) {
            Flower[] flowerArr = this.mFlowerPool;
            if (i < flowerArr.length) {
                flowerArr[i] = new Flower(context);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        if (this.refresh && WallpaperUtils.sDrawState) {
            invalidate();
        }
        for (Flower flower : this.mFlowerPool) {
            this.matrix.setRotate(flower.rotate);
            Matrix matrix = this.matrix;
            float f = this.mFlowerSizeScale[flower.flowerSize];
            matrix.setScale(f, f);
            Bitmap bitmap = ((BitmapDrawable) getResources().getDrawable(this.mFlowerImageId[flower.flowerKind])).getBitmap();
            this.matrix.postTranslate(DensityUtil.dip2px(flower.cx, this.mContext), DensityUtil.dip2px(flower.cy, this.mContext));
            canvas.drawBitmap(bitmap, this.matrix, this.mPaint);
            float f2 = flower.cx + flower.mXSpeed;
            flower.cx = f2;
            float f3 = flower.cy + flower.mYSpeed;
            flower.cy = f3;
            flower.rotate += 2;
            if (f2 > 0.0f && f2 < DensityUtil.sMetricsWidth && f3 < DensityUtil.sMetricsHeight) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                flower.cx = flower.mRandom.nextInt(DensityUtil.sMetricsWidth - 32) + 16;
                flower.cy = 0.0f;
            }
            if (flower.rotate >= 360) {
                flower.rotate = 0;
            }
        }
    }

    @Override // com.android.systemui.wallpaper.theme.LockscreenCallback
    public final void screenTurnedOff() {
        this.refresh = false;
    }

    @Override // com.android.systemui.wallpaper.theme.LockscreenCallback
    public final void screenTurnedOn() {
        this.refresh = true;
        invalidate();
    }
}
