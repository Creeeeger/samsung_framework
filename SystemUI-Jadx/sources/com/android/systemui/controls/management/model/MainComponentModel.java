package com.android.systemui.controls.management.model;

import android.content.ComponentName;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.ui.view.ControlsSpinner;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MainComponentModel extends MainModel {
    public List controlsSpinnerInfo;
    public ComponentName selected;
    public boolean showButton;
    public final MainModel.Type type = MainModel.Type.COMPONENT;

    public MainComponentModel(List<? extends ControlsSpinner.SelectionItem> list, ComponentName componentName, boolean z) {
        this.controlsSpinnerInfo = list;
        this.selected = componentName;
        this.showButton = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MainComponentModel)) {
            return false;
        }
        MainComponentModel mainComponentModel = (MainComponentModel) obj;
        if (Intrinsics.areEqual(this.controlsSpinnerInfo, mainComponentModel.controlsSpinnerInfo) && Intrinsics.areEqual(this.selected, mainComponentModel.selected) && this.showButton == mainComponentModel.showButton) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.controls.management.model.MainModel
    public final MainModel.Type getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = (this.selected.hashCode() + (this.controlsSpinnerInfo.hashCode() * 31)) * 31;
        boolean z = this.showButton;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        List list = this.controlsSpinnerInfo;
        ComponentName componentName = this.selected;
        boolean z = this.showButton;
        StringBuilder sb = new StringBuilder("MainComponentModel(controlsSpinnerInfo=");
        sb.append(list);
        sb.append(", selected=");
        sb.append(componentName);
        sb.append(", showButton=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, z, ")");
    }
}
