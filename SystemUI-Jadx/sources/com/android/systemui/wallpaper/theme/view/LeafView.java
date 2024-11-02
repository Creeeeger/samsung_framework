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
import com.android.systemui.wallpaper.theme.particle.Leaf;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LeafView extends View implements LockscreenCallback {
    public final Context mContext;
    public final int[] mLeafImageId;
    public final Leaf[] mLeafPool;
    public final float[] mLeafSizeScale;
    public final Paint mPaint;
    public final Matrix matrix;
    public boolean refresh;

    public LeafView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.refresh = true;
        this.mLeafImageId = new int[]{R.drawable.leaf_01, R.drawable.leaf_02, R.drawable.leaf_03, R.drawable.leaf_04};
        this.mLeafSizeScale = new float[]{0.6f, 0.7f, 0.8f, 0.9f, 1.2f, 1.3f};
        this.matrix = new Matrix();
        this.mContext = context;
        this.mLeafPool = new Leaf[35];
        int i = 0;
        while (true) {
            Leaf[] leafArr = this.mLeafPool;
            if (i < leafArr.length) {
                leafArr[i] = new Leaf(context);
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
        for (Leaf leaf : this.mLeafPool) {
            this.matrix.setRotate(leaf.rotate);
            Matrix matrix = this.matrix;
            float f = this.mLeafSizeScale[leaf.leafSize];
            matrix.setScale(f, f);
            Bitmap bitmap = ((BitmapDrawable) getResources().getDrawable(this.mLeafImageId[leaf.leafKind])).getBitmap();
            this.matrix.postTranslate(DensityUtil.dip2px(leaf.cx, this.mContext), DensityUtil.dip2px(leaf.cy, this.mContext));
            canvas.drawBitmap(bitmap, this.matrix, this.mPaint);
            float f2 = leaf.cx + leaf.mXSpeed;
            leaf.cx = f2;
            float f3 = leaf.cy + leaf.mYSpeed;
            leaf.cy = f3;
            leaf.rotate += 2;
            if (f2 > 0.0f && f2 < DensityUtil.sMetricsWidth && f3 < DensityUtil.sMetricsHeight) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                leaf.cx = leaf.mRandom.nextInt(DensityUtil.sMetricsWidth - 32) + 16;
                leaf.cy = 0.0f;
            }
            if (leaf.rotate >= 360) {
                leaf.rotate = 0;
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
