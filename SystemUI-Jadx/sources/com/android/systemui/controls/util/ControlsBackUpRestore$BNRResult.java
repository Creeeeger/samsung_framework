package com.android.systemui.controls.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum ControlsBackUpRestore$BNRResult {
    SUCCESS(0),
    FAIL(1),
    /* JADX INFO: Fake field, exist only in values array */
    USER_CANCEL(2);

    private final int value;

    ControlsBackUpRestore$BNRResult(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
