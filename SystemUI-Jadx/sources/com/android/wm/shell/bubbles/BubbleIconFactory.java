package com.android.wm.shell.bubbles;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class BubbleIconFactory extends BaseIconFactory {
    public BubbleIconFactory(Context context) {
        super(context, context.getResources().getConfiguration().densityDpi, context.getResources().getDimensionPixelSize(R.dimen.bubble_size));
    }

    public final Bitmap getCircledBubble(Drawable drawable, boolean z) {
        Bitmap createIconBitmap;
        int i;
        int i2;
        int width;
        int height;
        if (drawable instanceof AdaptiveIconDrawable) {
            createIconBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createIconBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            if (adaptiveIconDrawable.getBackground() != null) {
                adaptiveIconDrawable.getBackground().draw(canvas);
            }
            if (adaptiveIconDrawable.getForeground() != null) {
                adaptiveIconDrawable.getForeground().draw(canvas);
            }
        } else {
            createIconBitmap = createIconBitmap(drawable, 1.0f, this.mContext.getResources().getDimensionPixelSize(R.dimen.bubble_size));
        }
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.bubble_size);
        if (z) {
            dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_noti_bubble_overflow_button_size);
        }
        float dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_noti_bubble_icon_outline_border);
        Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        Paint paint = new Paint();
        if (z) {
            paint.setColor(this.mContext.getResources().getColor(R.color.sec_bubble_overflow_icon_color));
            dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_noti_bubble_overflow_plus_button_size);
        } else {
            paint.setColor(-12303292);
        }
        if (z) {
            i = (canvas2.getWidth() / 2) - (dimensionPixelSize / 2);
        } else {
            i = 0;
        }
        if (z) {
            i2 = (canvas2.getHeight() / 2) - (dimensionPixelSize / 2);
        } else {
            i2 = 0;
        }
        if (z) {
            width = (dimensionPixelSize / 2) + (canvas2.getWidth() / 2);
        } else {
            width = canvas2.getWidth();
        }
        if (z) {
            height = (dimensionPixelSize / 2) + (canvas2.getHeight() / 2);
        } else {
            height = canvas2.getHeight();
        }
        Rect rect = new Rect(i, i2, width, height);
        paint.setAntiAlias(true);
        canvas2.drawARGB(0, 0, 0, 0);
        canvas2.drawCircle(canvas2.getWidth() / 2, canvas2.getHeight() / 2, (canvas2.getWidth() / 2) - dimensionPixelSize2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        canvas2.drawBitmap(createIconBitmap, (Rect) null, rect, paint);
        paint.setColor(this.mContext.getResources().getColor(R.color.sec_bubble_noti_icon_outline_border_color));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        canvas2.drawCircle(canvas2.getWidth() / 2, canvas2.getHeight() / 2, canvas2.getWidth() / 2, paint);
        return createBitmap;
    }
}
