package com.android.systemui.keyguard.shared.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum DevicePosture {
    UNKNOWN,
    CLOSED,
    HALF_OPENED,
    OPENED,
    FLIPPED;

    public static final Companion Companion = new Companion(null);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DevicePosture toPosture(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return DevicePosture.UNKNOWN;
                            }
                            return DevicePosture.FLIPPED;
                        }
                        return DevicePosture.OPENED;
                    }
                    return DevicePosture.HALF_OPENED;
                }
                return DevicePosture.CLOSED;
            }
            return DevicePosture.UNKNOWN;
        }
    }
}
