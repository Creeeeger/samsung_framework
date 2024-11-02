package com.facebook.rebound;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SpringConfig {
    public static final SpringConfig defaultConfig = new SpringConfig(OrigamiValueConverter.tensionFromOrigamiValue(40.0d), OrigamiValueConverter.frictionFromOrigamiValue(7.0d));
    public double friction;
    public double tension;

    public SpringConfig(double d, double d2) {
        this.tension = d;
        this.friction = d2;
    }
}
