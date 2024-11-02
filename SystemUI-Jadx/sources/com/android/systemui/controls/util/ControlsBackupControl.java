package com.android.systemui.controls.util;

import com.android.systemui.controls.controller.StructureInfo;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsBackupControl {
    public final List structures;

    public ControlsBackupControl(List<StructureInfo> list) {
        this.structures = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ControlsBackupControl) && Intrinsics.areEqual(this.structures, ((ControlsBackupControl) obj).structures)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.structures.hashCode();
    }

    public final String toString() {
        return "ControlsBackupControl(structures=" + this.structures + ")";
    }
}
