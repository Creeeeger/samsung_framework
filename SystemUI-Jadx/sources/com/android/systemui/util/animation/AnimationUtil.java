package com.android.systemui.util.animation;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AnimationUtil {
    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static long getFrames(int i) {
            if (i >= 0) {
                double d = (i * 1000.0f) / 60.0f;
                if (!Double.isNaN(d)) {
                    return Math.round(d);
                }
                throw new IllegalArgumentException("Cannot round NaN value.");
            }
            throw new IllegalArgumentException("numFrames must be >= 0");
        }
    }
}
