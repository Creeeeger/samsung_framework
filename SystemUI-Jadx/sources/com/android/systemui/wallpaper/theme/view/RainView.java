package com.android.systemui.wallpaper.theme.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.android.systemui.R;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.theme.DensityUtil;
import com.android.systemui.wallpaper.theme.LockscreenCallback;
import com.android.systemui.wallpaper.theme.particle.Rain;
import java.util.Vector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RainView extends View implements LockscreenCallback {
    public final Context mContext;
    public final Paint mPaint;
    public final Rain[] mRainPool;
    public final Bitmap rainline;
    public boolean refresh;

    public RainView(Context context) {
        super(context);
        new Vector();
        this.refresh = true;
        this.mPaint = new Paint();
        this.mContext = context;
        this.mRainPool = new Rain[60];
        int i = 0;
        while (true) {
            Rain[] rainArr = this.mRainPool;
            if (i < rainArr.length) {
                rainArr[i] = new Rain(context);
                i++;
            } else {
                this.rainline = ((BitmapDrawable) getContext().getResources().getDrawable(R.drawable.rainline)).getBitmap();
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
        for (Rain rain : this.mRainPool) {
            canvas.drawBitmap(this.rainline, DensityUtil.dip2px(rain.x, this.mContext), DensityUtil.dip2px(rain.y, this.mContext), this.mPaint);
            float f = (float) (rain.x + rain.mXSpeed);
            rain.x = f;
            float f2 = rain.y + rain.mYSpeed;
            rain.y = f2;
            if (f > 0.0f && f < DensityUtil.sMetricsWidth && f2 < DensityUtil.sMetricsHeight) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                rain.x = rain.mRandom.nextInt(DensityUtil.sMetricsWidth - 32) + 16;
                rain.y = 0.0f;
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
