package com.android.systemui.controls.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum ControlsBackUpRestore$BNRErrCode {
    SUCCESS(0),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN_ERROR(1),
    /* JADX INFO: Fake field, exist only in values array */
    STORAGE_FULL(2),
    INVALID_DATA(3),
    /* JADX INFO: Fake field, exist only in values array */
    PERMISSION_FAIL(4),
    /* JADX INFO: Fake field, exist only in values array */
    LOCKED(5),
    /* JADX INFO: Fake field, exist only in values array */
    PARTIAL_SUCCESS(6);

    private final int value;

    ControlsBackUpRestore$BNRErrCode(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
