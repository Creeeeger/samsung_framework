package com.google.android.material.shape;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoundedCornerTreatment extends CornerTreatment {
    public final float radius;

    public RoundedCornerTreatment() {
        this.radius = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public final void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(0.0f, f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        shapePath.addArc(0.0f, 0.0f, f3, f3, 180.0f, 90.0f);
    }

    @Deprecated
    public RoundedCornerTreatment(float f) {
        this.radius = -1.0f;
        this.radius = f;
    }
}
