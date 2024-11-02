package com.android.systemui.controls.util;

import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackupSetting {
    public boolean controlDevice;
    public boolean isOOBECompleted;
    public String selectedComponent;
    public boolean showDevice;

    public ControlsBackupSetting(boolean z, boolean z2, boolean z3, String str) {
        this.showDevice = z;
        this.controlDevice = z2;
        this.isOOBECompleted = z3;
        this.selectedComponent = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlsBackupSetting)) {
            return false;
        }
        ControlsBackupSetting controlsBackupSetting = (ControlsBackupSetting) obj;
        if (this.showDevice == controlsBackupSetting.showDevice && this.controlDevice == controlsBackupSetting.controlDevice && this.isOOBECompleted == controlsBackupSetting.isOOBECompleted && Intrinsics.areEqual(this.selectedComponent, controlsBackupSetting.selectedComponent)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public final int hashCode() {
        int hashCode;
        boolean z = this.showDevice;
        int i = 1;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i2 = r0 * 31;
        ?? r2 = this.controlDevice;
        int i3 = r2;
        if (r2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z2 = this.isOOBECompleted;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        int i5 = (i4 + i) * 31;
        String str = this.selectedComponent;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return i5 + hashCode;
    }

    public final String toString() {
        boolean z = this.showDevice;
        boolean z2 = this.controlDevice;
        boolean z3 = this.isOOBECompleted;
        String str = this.selectedComponent;
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("ControlsBackupSetting(showDevice=", z, ", controlDevice=", z2, ", isOOBECompleted=");
        m.append(z3);
        m.append(", selectedComponent=");
        m.append(str);
        m.append(")");
        return m.toString();
    }
}
