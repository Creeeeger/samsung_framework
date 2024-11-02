package com.android.systemui.battery;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import androidx.vectordrawable.graphics.drawable.ArgbEvaluator;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import com.android.systemui.util.DeviceType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LegacySamsungBatteryMeterDrawable extends SamsungBatteryMeterDrawable {
    public static final float BATTERY_BACKGROUND_ALPHA;
    public static final int BLINKING_INTERVAL;
    public static final boolean DEBUG;
    public static final String INVALID_STRING;
    public static final int MSG_POST_INVALIDATE;
    public final Paint batteryFramePaint;
    public final int batteryLevelBackgroundDarkColor;
    public final int batteryLevelBackgroundLightColor;
    public final Paint batteryLevelBackgroundPaint;
    public int batteryLevelColor;
    public final Paint batteryLevelPaint;
    public final int batteryLightningBoltDarkColor;
    public final Paint batteryLightningBoltDarkPaint;
    public final int batteryLightningBoltLightColor;
    public final Paint batteryLightningBoltLightPaint;
    public SamsungBatteryState batteryState;
    public int[] colors;
    public final Context context;
    public final int criticalLevel;
    public float darkIntensity;
    public final int extraThreshold;
    public boolean flagBlinkingNeeded;
    public boolean flagDrawIcon;
    public Drawable frameOver95;
    public Drawable frameUnder15;
    public int height;
    public int iconTint;
    public int intrinsicHeight;
    public int intrinsicWidth;
    public float invalidTextHeight;
    public final Paint invalidTextPaint;
    public final LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1 postInvalidateHandler;
    public final String warningString;
    public float warningTextHeight;
    public final Paint warningTextPaint;
    public int width;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        DEBUG = DeviceType.isEngOrUTBinary();
        MSG_POST_INVALIDATE = 1;
        BLINKING_INTERVAL = 1000;
        INVALID_STRING = "X";
        BATTERY_BACKGROUND_ALPHA = 0.35f;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.battery.LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1] */
    public LegacySamsungBatteryMeterDrawable(Context context) {
        super(null);
        int[] iArr;
        this.context = context;
        this.batteryFramePaint = new Paint();
        this.batteryLevelPaint = new Paint();
        this.batteryLevelBackgroundPaint = new Paint();
        this.batteryLightningBoltDarkPaint = new Paint();
        this.batteryLightningBoltLightPaint = new Paint();
        this.iconTint = -1;
        this.warningTextPaint = new Paint(1);
        this.batteryState = new SamsungBatteryState();
        this.darkIntensity = -1.0f;
        this.flagDrawIcon = true;
        final Looper mainLooper = Looper.getMainLooper();
        this.postInvalidateHandler = new Handler(mainLooper) { // from class: com.android.systemui.battery.LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == LegacySamsungBatteryMeterDrawable.MSG_POST_INVALIDATE) {
                    final LegacySamsungBatteryMeterDrawable legacySamsungBatteryMeterDrawable = LegacySamsungBatteryMeterDrawable.this;
                    if (legacySamsungBatteryMeterDrawable.flagBlinkingNeeded) {
                        legacySamsungBatteryMeterDrawable.flagDrawIcon = !legacySamsungBatteryMeterDrawable.flagDrawIcon;
                    }
                    legacySamsungBatteryMeterDrawable.getClass();
                    legacySamsungBatteryMeterDrawable.unscheduleSelf(new Runnable() { // from class: com.android.systemui.battery.LegacySamsungBatteryMeterDrawable$postInvalidate$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            LegacySamsungBatteryMeterDrawable.this.invalidateSelf();
                        }
                    });
                    legacySamsungBatteryMeterDrawable.scheduleSelf(new Runnable() { // from class: com.android.systemui.battery.LegacySamsungBatteryMeterDrawable$postInvalidate$2
                        @Override // java.lang.Runnable
                        public final void run() {
                            LegacySamsungBatteryMeterDrawable.this.invalidateSelf();
                        }
                    }, 0L);
                }
            }
        };
        Resources resources = context.getResources();
        TypedArray obtainTypedArray = resources.obtainTypedArray(R.array.batterymeter_color_levels);
        TypedArray obtainTypedArray2 = resources.obtainTypedArray(R.array.batterymeter_color_values);
        int length = obtainTypedArray.length();
        this.colors = new int[length * 2];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int[] iArr2 = this.colors;
            int i3 = i2 * 2;
            (iArr2 == null ? null : iArr2)[i3] = obtainTypedArray.getInt(i2, 0);
            if (obtainTypedArray2.getType(i2) == 2) {
                int[] iArr3 = this.colors;
                (iArr3 == null ? null : iArr3)[i3 + 1] = Utils.getColorAttrDefaultColor(obtainTypedArray2.getThemeAttributeId(i2, 0), this.context, 0);
            } else {
                int[] iArr4 = this.colors;
                (iArr4 == null ? null : iArr4)[i3 + 1] = obtainTypedArray2.getColor(i2, 0);
            }
        }
        obtainTypedArray.recycle();
        obtainTypedArray2.recycle();
        this.criticalLevel = 4;
        this.warningString = this.context.getString(R.string.battery_meter_very_low_overlay_symbol);
        Typeface create = Typeface.create("sans-serif", 1);
        this.warningTextPaint.setTypeface(create);
        this.warningTextPaint.setTextAlign(Paint.Align.CENTER);
        int[] iArr5 = this.colors;
        if (iArr5 == null) {
            iArr = null;
        } else {
            iArr = iArr5;
        }
        if (iArr.length > 1) {
            this.warningTextPaint.setColor((iArr5 == null ? null : iArr5)[1]);
        }
        Paint paint = new Paint(1);
        this.invalidTextPaint = paint;
        paint.setColor(-1559543);
        paint.setTypeface(create);
        paint.setTextAlign(Paint.Align.CENTER);
        Resources resources2 = this.context.getResources();
        int color = resources2.getColor(R.color.status_bar_battery_frame_light_color, null);
        resources2.getColor(R.color.status_bar_battery_frame_dark_color, null);
        this.batteryLevelColor = color;
        int color2 = resources2.getColor(R.color.status_bar_battery_level_background_light_color, null);
        this.batteryLevelBackgroundLightColor = color2;
        this.batteryLevelBackgroundDarkColor = resources2.getColor(R.color.status_bar_battery_level_background_dark_color, null);
        int color3 = resources2.getColor(R.color.status_bar_battery_lightning_bolt_light_color, null);
        this.batteryLightningBoltLightColor = color3;
        int color4 = resources2.getColor(R.color.status_bar_battery_lightning_bolt_dark_color, null);
        this.batteryLightningBoltDarkColor = color4;
        this.batteryFramePaint.setAntiAlias(true);
        this.batteryFramePaint.setColor(color);
        this.batteryLevelPaint.setAntiAlias(true);
        this.batteryLevelPaint.setDither(true);
        this.batteryLevelPaint.setStrokeWidth(0.0f);
        this.batteryLevelPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.batteryLevelPaint.setColor(color);
        this.batteryLevelPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.batteryLevelBackgroundPaint.setAntiAlias(true);
        this.batteryLevelBackgroundPaint.setColor(color2);
        this.batteryLevelBackgroundPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.batteryLightningBoltDarkPaint.setAntiAlias(true);
        this.batteryLightningBoltDarkPaint.setColor(color4);
        this.batteryLightningBoltLightPaint.setAntiAlias(true);
        this.batteryLightningBoltLightPaint.setColor(color3);
        this.frameUnder15 = this.context.getResources().getDrawable(R.drawable.stat_sys_battery_under_15, null);
        this.frameOver95 = this.context.getResources().getDrawable(R.drawable.stat_sys_battery_over_95, null);
        this.intrinsicWidth = this.context.getResources().getDimensionPixelSize(R.dimen.status_bar_battery_icon_width);
        int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.status_bar_battery_icon_height);
        this.intrinsicHeight = dimensionPixelSize;
        setBounds(0, 0, this.intrinsicWidth, dimensionPixelSize);
        String str = SystemProperties.get("ro.product.name", "");
        if (str.startsWith("gta7lite") || (str.startsWith("gta9") && !str.startsWith("gta9p"))) {
            i = 10;
        }
        this.extraThreshold = i;
    }

    public static int getColorForDarkIntensity(float f, int i, int i2) {
        return ((Integer) ArgbEvaluator.sInstance.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0146 A[EDGE_INSN: B:158:0x0146->B:81:0x0146 BREAK  A[LOOP:0: B:75:0x0132->B:78:0x0141], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0176  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r25) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.battery.LegacySamsungBatteryMeterDrawable.draw(android.graphics.Canvas):void");
    }

    public final int getColorForLevel(int i) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        SamsungBatteryState samsungBatteryState = this.batteryState;
        if (samsungBatteryState.pluggedIn && samsungBatteryState.charging) {
            return this.batteryLevelColor;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr4 = this.colors;
            if (iArr4 == null) {
                iArr = null;
            } else {
                iArr = iArr4;
            }
            if (i2 >= iArr.length) {
                break;
            }
            if (iArr4 == null) {
                iArr2 = null;
            } else {
                iArr2 = iArr4;
            }
            int i4 = iArr2[i2];
            if (iArr4 == null) {
                iArr3 = null;
            } else {
                iArr3 = iArr4;
            }
            int i5 = iArr3[i2 + 1];
            if (i <= i4) {
                if (iArr4 == null) {
                    iArr4 = null;
                }
                if (i2 == iArr4.length - 2) {
                    i3 = this.iconTint;
                } else {
                    i3 = i5;
                }
            } else {
                i2 += 2;
                i3 = i5;
            }
        }
        if (i3 == this.iconTint) {
            return this.batteryLevelColor;
        }
        return i3;
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
        int i5 = i4 - i2;
        this.height = i5;
        this.width = i3 - i;
        float f = this.context.getResources().getFloat(R.dimen.battery_meter_text_size_ratio) * i5;
        this.warningTextPaint.setTextSize(f);
        this.warningTextHeight = -this.warningTextPaint.getFontMetrics().ascent;
        Paint paint = this.invalidTextPaint;
        Intrinsics.checkNotNull(paint);
        paint.setTextSize(f);
        this.invalidTextHeight = this.warningTextHeight;
    }

    public final void setColors(int i) {
        this.iconTint = i;
        this.batteryFramePaint.setColor(i);
        this.batteryLevelColor = i;
        this.batteryLevelBackgroundPaint.setColor(getColorForDarkIntensity(this.darkIntensity, this.batteryLevelBackgroundLightColor, this.batteryLevelBackgroundDarkColor));
        updateLightningBoltColor();
        invalidateSelf();
    }

    public final void setGrayColors(int i) {
        this.iconTint = i;
        this.batteryLevelBackgroundPaint.setColor(Color.argb(MathKt__MathJVMKt.roundToInt(Color.alpha(i) * BATTERY_BACKGROUND_ALPHA), Color.red(i), Color.green(i), Color.blue(i)));
        this.batteryFramePaint.setColor(i);
        this.batteryLevelColor = i;
        updateLightningBoltColor();
        invalidateSelf();
    }

    public final void updateLightningBoltColor() {
        this.batteryLightningBoltLightPaint.setColor(getColorForDarkIntensity(this.darkIntensity, this.batteryLightningBoltLightColor, this.batteryLightningBoltDarkColor));
        this.batteryLightningBoltDarkPaint.setColor(getColorForDarkIntensity(this.darkIntensity, this.batteryLightningBoltDarkColor, this.batteryLightningBoltLightColor));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
