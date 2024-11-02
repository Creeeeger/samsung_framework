package com.android.systemui.wallpaper.theme.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.theme.DensityUtil;
import com.android.systemui.wallpaper.theme.LockscreenCallback;
import com.android.systemui.wallpaper.theme.particle.Snow;
import java.util.Random;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SnowView extends View implements LockscreenCallback {
    public final Context mContext;
    public final Paint mPaint;
    public final Snow[] mSnowPool;
    public boolean refresh;

    public SnowView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.refresh = true;
        this.mContext = context;
        this.mSnowPool = new Snow[35];
        paint.setColor(-1);
        int i = 0;
        while (true) {
            Snow[] snowArr = this.mSnowPool;
            if (i < snowArr.length) {
                snowArr[i] = new Snow(context);
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
        for (Snow snow : this.mSnowPool) {
            this.mPaint.setAlpha(snow.alpha);
            canvas.drawCircle(DensityUtil.dip2px(snow.cx, this.mContext), DensityUtil.dip2px(snow.cy, this.mContext), DensityUtil.dip2px(snow.radius, this.mContext), this.mPaint);
            float f = snow.cx + snow.mXSpeed;
            snow.cx = f;
            float f2 = snow.cy + snow.mYSpeed;
            snow.cy = f2;
            if (snow.alpha > 0 && f > 0.0f && f < DensityUtil.sMetricsWidth && f2 < DensityUtil.sMetricsHeight) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                Random random = snow.mRandom;
                snow.cx = random.nextInt(DensityUtil.sMetricsWidth - 32) + 16;
                snow.cy = 0.0f;
                snow.alpha = Snow.FIXEDALPHAS[random.nextInt(10)];
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
