package com.android.systemui.controls.ui;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.controls.ui.view.ControlsSpinner;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsSelectionItem extends ControlsSpinner.SelectionItem {
    public final CharSequence appName;
    public final ComponentName componentName;
    public final Drawable icon;
    public final boolean isPanel;
    public final ComponentName panelComponentName;
    public final int uid;

    public ControlsSelectionItem(CharSequence charSequence, Drawable drawable, ComponentName componentName, int i, ComponentName componentName2) {
        super(charSequence, drawable, componentName);
        boolean z;
        this.appName = charSequence;
        this.icon = drawable;
        this.componentName = componentName;
        this.uid = i;
        this.panelComponentName = componentName2;
        if (componentName2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.isPanel = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ControlsSelectionItem)) {
            return false;
        }
        ControlsSelectionItem controlsSelectionItem = (ControlsSelectionItem) obj;
        if (Intrinsics.areEqual(this.appName, controlsSelectionItem.appName) && Intrinsics.areEqual(this.icon, controlsSelectionItem.icon) && Intrinsics.areEqual(this.componentName, controlsSelectionItem.componentName) && this.uid == controlsSelectionItem.uid && Intrinsics.areEqual(this.panelComponentName, controlsSelectionItem.panelComponentName)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.controls.ui.view.ControlsSpinner.SelectionItem
    public final CharSequence getAppName() {
        return this.appName;
    }

    @Override // com.android.systemui.controls.ui.view.ControlsSpinner.SelectionItem
    public final ComponentName getComponentName() {
        return this.componentName;
    }

    @Override // com.android.systemui.controls.ui.view.ControlsSpinner.SelectionItem
    public final Drawable getIcon() {
        return this.icon;
    }

    public final int hashCode() {
        int hashCode;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.uid, (this.componentName.hashCode() + ((this.icon.hashCode() + (this.appName.hashCode() * 31)) * 31)) * 31, 31);
        ComponentName componentName = this.panelComponentName;
        if (componentName == null) {
            hashCode = 0;
        } else {
            hashCode = componentName.hashCode();
        }
        return m + hashCode;
    }

    public final String toString() {
        return "SelectionItem{" + this.componentName + ", isPanel = " + this.isPanel + ", appName = " + ((Object) this.appName) + ", panelComponent = " + this.panelComponentName + "}";
    }
}
