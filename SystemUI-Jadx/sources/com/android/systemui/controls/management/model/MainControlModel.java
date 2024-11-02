package com.android.systemui.controls.management.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.ui.ControlWithState;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MainControlModel extends MainModel {
    public ControlWithState controlWithState;
    public boolean needToHide;
    public String structure;

    public /* synthetic */ MainControlModel(String str, ControlWithState controlWithState, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, controlWithState, (i & 4) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MainControlModel)) {
            return false;
        }
        MainControlModel mainControlModel = (MainControlModel) obj;
        if (Intrinsics.areEqual(this.structure, mainControlModel.structure) && Intrinsics.areEqual(this.controlWithState, mainControlModel.controlWithState) && this.needToHide == mainControlModel.needToHide) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.controls.management.model.MainModel
    public final MainModel.Type getType() {
        ControlInfo controlInfo;
        MainModel.Type type;
        ControlWithState controlWithState = this.controlWithState;
        if (controlWithState != null && (controlInfo = controlWithState.ci) != null) {
            if (controlInfo.customControlInfo.layoutType == 1) {
                type = MainModel.Type.SMALL_CONTROL;
            } else {
                type = MainModel.Type.CONTROL;
            }
            if (type != null) {
                return type;
            }
        }
        return MainModel.Type.STRUCTURE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.structure.hashCode() * 31;
        ControlWithState controlWithState = this.controlWithState;
        if (controlWithState == null) {
            hashCode = 0;
        } else {
            hashCode = controlWithState.hashCode();
        }
        int i = (hashCode2 + hashCode) * 31;
        boolean z = this.needToHide;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        return i + i2;
    }

    public final String toString() {
        String str = this.structure;
        ControlWithState controlWithState = this.controlWithState;
        boolean z = this.needToHide;
        StringBuilder sb = new StringBuilder("MainControlModel(structure=");
        sb.append(str);
        sb.append(", controlWithState=");
        sb.append(controlWithState);
        sb.append(", needToHide=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, z, ")");
    }

    public MainControlModel(String str, ControlWithState controlWithState, boolean z) {
        this.structure = str;
        this.controlWithState = controlWithState;
        this.needToHide = z;
    }
}
