package com.android.systemui.util.animation;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WidgetState {
    public final float alpha;
    public final boolean gone;
    public final int height;
    public final int measureHeight;
    public final int measureWidth;
    public final float scale;
    public final int width;
    public final float x;
    public final float y;

    public WidgetState() {
        this(0.0f, 0.0f, 0, 0, 0, 0, 0.0f, 0.0f, false, 511, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WidgetState)) {
            return false;
        }
        WidgetState widgetState = (WidgetState) obj;
        if (Float.compare(this.x, widgetState.x) == 0 && Float.compare(this.y, widgetState.y) == 0 && this.width == widgetState.width && this.height == widgetState.height && this.measureWidth == widgetState.measureWidth && this.measureHeight == widgetState.measureHeight && Float.compare(this.alpha, widgetState.alpha) == 0 && Float.compare(this.scale, widgetState.scale) == 0 && this.gone == widgetState.gone) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.scale, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.alpha, AppInfoViewData$$ExternalSyntheticOutline0.m(this.measureHeight, AppInfoViewData$$ExternalSyntheticOutline0.m(this.measureWidth, AppInfoViewData$$ExternalSyntheticOutline0.m(this.height, AppInfoViewData$$ExternalSyntheticOutline0.m(this.width, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.y, Float.hashCode(this.x) * 31, 31), 31), 31), 31), 31), 31), 31);
        boolean z = this.gone;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WidgetState(x=");
        sb.append(this.x);
        sb.append(", y=");
        sb.append(this.y);
        sb.append(", width=");
        sb.append(this.width);
        sb.append(", height=");
        sb.append(this.height);
        sb.append(", measureWidth=");
        sb.append(this.measureWidth);
        sb.append(", measureHeight=");
        sb.append(this.measureHeight);
        sb.append(", alpha=");
        sb.append(this.alpha);
        sb.append(", scale=");
        sb.append(this.scale);
        sb.append(", gone=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.gone, ")");
    }

    public WidgetState(float f, float f2, int i, int i2, int i3, int i4, float f3, float f4, boolean z) {
        this.x = f;
        this.y = f2;
        this.width = i;
        this.height = i2;
        this.measureWidth = i3;
        this.measureHeight = i4;
        this.alpha = f3;
        this.scale = f4;
        this.gone = z;
    }

    public /* synthetic */ WidgetState(float f, float f2, int i, int i2, int i3, int i4, float f3, float f4, boolean z, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 0.0f : f, (i5 & 2) != 0 ? 0.0f : f2, (i5 & 4) != 0 ? 0 : i, (i5 & 8) != 0 ? 0 : i2, (i5 & 16) != 0 ? 0 : i3, (i5 & 32) != 0 ? 0 : i4, (i5 & 64) != 0 ? 1.0f : f3, (i5 & 128) != 0 ? 1.0f : f4, (i5 & 256) != 0 ? false : z);
    }
}
