package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.android.systemui.R;
import com.android.systemui.util.DeviceType;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardBatteryMeterDrawable extends Drawable {
    public int batteryLevel;
    public final int batteryLevelBackgroundDarkColor;
    public final int batteryLevelBackgroundLightColor;
    public final Paint batteryLevelBackgroundPaint;
    public int batteryLevelColor;
    public final Paint batteryLevelPaint;
    public final int batteryLightningBoltDarkColor;
    public final Paint batteryLightningBoltDarkPaint;
    public final int batteryLightningBoltLightColor;
    public final Paint batteryLightningBoltLightPaint;
    public final Context context;
    public float darkIntensity;
    public Drawable frameOver95;
    public Drawable frameUnder15;
    public int height;
    public int intrinsicHeight;
    public int intrinsicWidth;
    public boolean isNeedBoltAndWarning;
    public int width;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        DeviceType.isEngOrUTBinary();
    }

    public KeyguardBatteryMeterDrawable(Context context) {
        this.context = context;
        Paint paint = new Paint();
        this.batteryLevelPaint = paint;
        Paint paint2 = new Paint();
        this.batteryLevelBackgroundPaint = paint2;
        Paint paint3 = new Paint();
        this.batteryLightningBoltDarkPaint = paint3;
        Paint paint4 = new Paint();
        this.batteryLightningBoltLightPaint = paint4;
        this.darkIntensity = -1.0f;
        this.isNeedBoltAndWarning = true;
        Resources resources = context.getResources();
        int color = resources.getColor(R.color.keyguard_battery_frame_light_color, null);
        resources.getColor(R.color.keyguard_battery_frame_dark_color, null);
        this.batteryLevelColor = color;
        int color2 = resources.getColor(R.color.keyguard_battery_level_background_light_color, null);
        this.batteryLevelBackgroundLightColor = color2;
        this.batteryLevelBackgroundDarkColor = resources.getColor(R.color.keyguard_battery_level_background_dark_color, null);
        int color3 = resources.getColor(R.color.keyguard_battery_lightning_bolt_light_color, null);
        this.batteryLightningBoltLightColor = color3;
        int color4 = resources.getColor(R.color.keyguard_battery_lightning_bolt_dark_color, null);
        this.batteryLightningBoltDarkColor = color4;
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStrokeWidth(0.0f);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(color);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint2.setAntiAlias(true);
        paint2.setColor(color2);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint3.setAntiAlias(true);
        paint3.setColor(color4);
        paint4.setAntiAlias(true);
        paint4.setColor(color3);
        this.frameUnder15 = context.getResources().getDrawable(R.drawable.keyguard_battery_under_15, null);
        this.frameOver95 = context.getResources().getDrawable(R.drawable.keyguard_battery_over_95, null);
        this.intrinsicWidth = context.getResources().getDimensionPixelSize(R.dimen.keyguard_battery_icon_width);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.keyguard_battery_icon_height);
        this.intrinsicHeight = dimensionPixelSize;
        setBounds(0, 0, this.intrinsicWidth, dimensionPixelSize);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        int i;
        int i2 = this.batteryLevel;
        if (i2 == -1) {
            return;
        }
        if (i2 > 95) {
            paint = this.batteryLevelPaint;
        } else {
            paint = this.batteryLevelBackgroundPaint;
        }
        int color = paint.getColor();
        int argb = Color.argb(255, Color.red(color), Color.green(color), Color.blue(color));
        Drawable drawable = this.frameOver95;
        if (drawable == null) {
            drawable = null;
        }
        drawable.setColorFilter(new BlendModeColorFilter(argb, BlendMode.SRC_ATOP));
        Drawable drawable2 = this.frameOver95;
        if (drawable2 == null) {
            drawable2 = null;
        }
        drawable2.setBounds(0, 0, this.width, this.height);
        Drawable drawable3 = this.frameOver95;
        if (drawable3 == null) {
            drawable3 = null;
        }
        if (this.batteryLevel > 95) {
            i = 255;
        } else {
            i = 89;
        }
        drawable3.setAlpha(i);
        Drawable drawable4 = this.frameUnder15;
        if (drawable4 == null) {
            drawable4 = null;
        }
        drawable4.setColorFilter(new BlendModeColorFilter(this.batteryLevelColor, BlendMode.SRC_ATOP));
        Drawable drawable5 = this.frameUnder15;
        if (drawable5 == null) {
            drawable5 = null;
        }
        drawable5.setBounds(0, 0, this.width, this.height);
        Drawable drawable6 = this.frameUnder15;
        if (drawable6 == null) {
            drawable6 = null;
        }
        drawable6.setAlpha(255);
        int i3 = this.width;
        int i4 = this.height;
        Bitmap createBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        Drawable drawable7 = this.frameOver95;
        if (drawable7 == null) {
            drawable7 = null;
        }
        drawable7.draw(canvas2);
        Drawable drawable8 = this.frameUnder15;
        if (drawable8 == null) {
            drawable8 = null;
        }
        drawable8.draw(canvas2);
        Rect rect = new Rect();
        int i5 = i3 / 2;
        int i6 = i4 / 2;
        int i7 = i6;
        int i8 = i7;
        while (true) {
            if (i7 <= 0) {
                break;
            }
            if (Color.alpha(createBitmap.getPixel(i5, i7)) >= 89) {
                i8++;
                break;
            } else {
                i8--;
                i7--;
            }
        }
        int i9 = i6;
        int i10 = i9;
        while (i9 < i4 && Color.alpha(createBitmap.getPixel(i5, i9)) < 255) {
            i10++;
            i9++;
        }
        int i11 = i5;
        int i12 = i11;
        while (i11 > 0 && Color.alpha(createBitmap.getPixel(i11, i6)) < 89) {
            i12--;
            i11--;
        }
        int i13 = i5;
        while (i5 < i3) {
            i13++;
            if (Color.alpha(createBitmap.getPixel(i5, i6)) >= 89) {
                break;
            } else {
                i5++;
            }
        }
        rect.set(i12, i8, i13, i10);
        Drawable drawable9 = this.frameOver95;
        if (drawable9 == null) {
            drawable9 = null;
        }
        drawable9.draw(canvas);
        Drawable drawable10 = this.frameUnder15;
        if (drawable10 == null) {
            drawable10 = null;
        }
        drawable10.draw(canvas);
        int height = (int) (rect.height() * ((i2 - 15) / 80.0f));
        int i14 = rect.bottom - height;
        Rect rect2 = new Rect();
        rect2.set(rect.left, rect.top, rect.right, i14);
        canvas.drawRect(rect2, this.batteryLevelBackgroundPaint);
        Rect rect3 = new Rect();
        this.batteryLevelPaint.setColor(this.batteryLevelColor);
        rect3.set(rect.left, i14, rect.right, rect.bottom);
        canvas.drawRect(rect3, this.batteryLevelPaint);
        if (this.isNeedBoltAndWarning) {
            Drawable drawable11 = this.context.getResources().getDrawable(R.drawable.keyguard_battery_charging, null);
            int color2 = this.batteryLightningBoltLightPaint.getColor();
            int color3 = this.batteryLightningBoltDarkPaint.getColor();
            float f = height;
            LinearGradient linearGradient = new LinearGradient(0.0f, rect.bottom, 0.0f, rect.top, new int[]{color3, color3, color2, color2}, new float[]{0.0f, f / rect.height(), f / rect.height(), 1.0f}, Shader.TileMode.CLAMP);
            Context context = this.context;
            int i15 = this.width;
            int i16 = this.height;
            Paint paint2 = new Paint();
            paint2.setColor(EmergencyPhoneWidget.BG_COLOR);
            paint2.setDither(false);
            paint2.setStrokeWidth(10.0f);
            paint2.setStyle(Paint.Style.FILL_AND_STROKE);
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            paint2.setShader(linearGradient);
            Matrix matrix = new Matrix();
            linearGradient.getLocalMatrix(matrix);
            float f2 = i15;
            float f3 = i16;
            matrix.postRotate(0.0f, f2 / 2.0f, f3 / 2.0f);
            linearGradient.setLocalMatrix(matrix);
            drawable11.setBounds(0, 0, i15, i16);
            Bitmap createBitmap2 = Bitmap.createBitmap(i15, i16, Bitmap.Config.ARGB_8888);
            Canvas canvas3 = new Canvas(createBitmap2);
            drawable11.draw(canvas3);
            canvas3.drawRect(0.0f, 0.0f, f2, f3, paint2);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), createBitmap2);
            bitmapDrawable.setBounds(0, 0, this.width, this.height);
            bitmapDrawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.intrinsicHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.intrinsicWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i, int i2, int i3, int i4) {
        this.height = i4 - i2;
        this.width = i3 - i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
