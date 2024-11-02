package com.samsung.android.nexus.particle.emitter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum ParticleConfigType {
    DISABLE_WHEN_DISAPPEARED(true),
    DISABLE_WHEN_OUTSIDE(true),
    AUTO_ROTATE_ALONG_MOVE_DIRECTION,
    APPLY_DRAW_MORPHING_BY_SPEED;

    final boolean defaultValue;
    int idx;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Holder {
        public static final int sCount;
        public static final ParticleConfigType[] sValuesCache;

        static {
            ParticleConfigType[] values = ParticleConfigType.values();
            sValuesCache = values;
            sCount = values.length;
        }

        private Holder() {
        }
    }

    ParticleConfigType() {
        this.idx = ordinal();
        this.defaultValue = false;
    }

    ParticleConfigType(boolean z) {
        this.idx = ordinal();
        this.defaultValue = z;
    }
}
