package com.android.systemui.media.controls.ui;

import com.android.keyguard.punchhole.VIDirector$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RippleData {
    public float alpha;
    public float highlight;
    public float maxSize;
    public float minSize;
    public float progress;
    public float x;
    public float y;

    public RippleData(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        this.x = f;
        this.y = f2;
        this.alpha = f3;
        this.progress = f4;
        this.minSize = f5;
        this.maxSize = f6;
        this.highlight = f7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleData)) {
            return false;
        }
        RippleData rippleData = (RippleData) obj;
        if (Float.compare(this.x, rippleData.x) == 0 && Float.compare(this.y, rippleData.y) == 0 && Float.compare(this.alpha, rippleData.alpha) == 0 && Float.compare(this.progress, rippleData.progress) == 0 && Float.compare(this.minSize, rippleData.minSize) == 0 && Float.compare(this.maxSize, rippleData.maxSize) == 0 && Float.compare(this.highlight, rippleData.highlight) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.highlight) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.maxSize, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.minSize, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.progress, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.alpha, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.y, Float.hashCode(this.x) * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.alpha;
        float f4 = this.progress;
        float f5 = this.minSize;
        float f6 = this.maxSize;
        float f7 = this.highlight;
        StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("RippleData(x=", f, ", y=", f2, ", alpha=");
        m.append(f3);
        m.append(", progress=");
        m.append(f4);
        m.append(", minSize=");
        m.append(f5);
        m.append(", maxSize=");
        m.append(f6);
        m.append(", highlight=");
        m.append(f7);
        m.append(")");
        return m.toString();
    }
}
