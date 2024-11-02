package com.android.systemui.statusbar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface LightRevealEffect {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static float getPercentPastThreshold(float f, float f2) {
            float f3 = f - f2;
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            return (1.0f / (1.0f - f2)) * f3;
        }
    }

    void setRevealAmountOnScrim(float f, LightRevealScrim lightRevealScrim);
}
