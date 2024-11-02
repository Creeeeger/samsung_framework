package com.android.systemui.controls.util;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackupFormat {
    public final ControlsBackupControl controls;
    public final ControlsBackupSetting setting;

    public ControlsBackupFormat(ControlsBackupSetting controlsBackupSetting, ControlsBackupControl controlsBackupControl) {
        this.setting = controlsBackupSetting;
        this.controls = controlsBackupControl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlsBackupFormat)) {
            return false;
        }
        ControlsBackupFormat controlsBackupFormat = (ControlsBackupFormat) obj;
        if (Intrinsics.areEqual(this.setting, controlsBackupFormat.setting) && Intrinsics.areEqual(this.controls, controlsBackupFormat.controls)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.controls.hashCode() + (this.setting.hashCode() * 31);
    }

    public final String toString() {
        return "ControlsBackupFormat(setting=" + this.setting + ", controls=" + this.controls + ")";
    }
}
