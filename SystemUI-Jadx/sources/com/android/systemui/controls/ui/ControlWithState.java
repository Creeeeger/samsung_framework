package com.android.systemui.controls.ui;

import android.content.ComponentName;
import android.service.controls.Control;
import com.android.systemui.controls.controller.ControlInfo;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlWithState {
    public final ControlInfo ci;
    public final ComponentName componentName;
    public final Control control;

    public ControlWithState(ComponentName componentName, ControlInfo controlInfo, Control control) {
        this.componentName = componentName;
        this.ci = controlInfo;
        this.control = control;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlWithState)) {
            return false;
        }
        ControlWithState controlWithState = (ControlWithState) obj;
        if (Intrinsics.areEqual(this.componentName, controlWithState.componentName) && Intrinsics.areEqual(this.ci, controlWithState.ci) && Intrinsics.areEqual(this.control, controlWithState.control)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.ci.hashCode() + (this.componentName.hashCode() * 31)) * 31;
        Control control = this.control;
        if (control == null) {
            hashCode = 0;
        } else {
            hashCode = control.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "ControlWithState(componentName=" + this.componentName + ", ci=" + this.ci + ", control=" + this.control + ")";
    }
}
