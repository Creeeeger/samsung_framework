package com.android.systemui.controls.management;

import com.android.systemui.controls.controller.ControlsController;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SaveWrapper {
    public final ControlsController.LoadData data;

    public SaveWrapper(ControlsController.LoadData loadData) {
        this.data = loadData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SaveWrapper) && Intrinsics.areEqual(this.data, ((SaveWrapper) obj).data)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        ControlsController.LoadData loadData = this.data;
        if (loadData == null) {
            return 0;
        }
        return loadData.hashCode();
    }

    public final String toString() {
        return "SaveWrapper(data=" + this.data + ")";
    }
}
