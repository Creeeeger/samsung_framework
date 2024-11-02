package com.samsung.android.nexus.particle.emitter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum EmissionConfigType {
    APPLY_PARENT_ANGULAR_VELOCITY,
    APPLY_PARENT_POS_VECTOR,
    APPLY_PARENT_ROTATION_TO_SHAPE;

    final boolean defaultValue;
    int idx;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Holder {
        public static final int sCount;
        public static final EmissionConfigType[] sValuesCache;

        static {
            EmissionConfigType[] values = EmissionConfigType.values();
            sValuesCache = values;
            sCount = values.length;
        }

        private Holder() {
        }
    }

    EmissionConfigType() {
        this.idx = ordinal();
        this.defaultValue = false;
    }

    EmissionConfigType(boolean z) {
        this.idx = ordinal();
        this.defaultValue = z;
    }
}
