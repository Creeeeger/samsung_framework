package com.android.systemui.controls.util;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum ControlsBackUpRestore$BNRSecurityLevel {
    /* JADX INFO: Fake field, exist only in values array */
    LOW(0),
    /* JADX INFO: Fake field, exist only in values array */
    HIGH(1);

    public static final Companion Companion = new Companion(null);
    private final int value;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    ControlsBackUpRestore$BNRSecurityLevel(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
