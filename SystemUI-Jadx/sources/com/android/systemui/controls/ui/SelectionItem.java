package com.android.systemui.controls.ui;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SelectionItem {
    public final CharSequence appName;
    public final ComponentName componentName;
    public final Drawable icon;
    public final ComponentName panelComponentName;
    public final CharSequence structure;
    public final int uid;

    public SelectionItem(CharSequence charSequence, CharSequence charSequence2, Drawable drawable, ComponentName componentName, int i, ComponentName componentName2) {
        this.appName = charSequence;
        this.structure = charSequence2;
        this.icon = drawable;
        this.componentName = componentName;
        this.uid = i;
        this.panelComponentName = componentName2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionItem)) {
            return false;
        }
        SelectionItem selectionItem = (SelectionItem) obj;
        if (Intrinsics.areEqual(this.appName, selectionItem.appName) && Intrinsics.areEqual(this.structure, selectionItem.structure) && Intrinsics.areEqual(this.icon, selectionItem.icon) && Intrinsics.areEqual(this.componentName, selectionItem.componentName) && this.uid == selectionItem.uid && Intrinsics.areEqual(this.panelComponentName, selectionItem.panelComponentName)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.uid, (this.componentName.hashCode() + ((this.icon.hashCode() + ((this.structure.hashCode() + (this.appName.hashCode() * 31)) * 31)) * 31)) * 31, 31);
        ComponentName componentName = this.panelComponentName;
        if (componentName == null) {
            hashCode = 0;
        } else {
            hashCode = componentName.hashCode();
        }
        return m + hashCode;
    }

    public final String toString() {
        return "SelectionItem(appName=" + ((Object) this.appName) + ", structure=" + ((Object) this.structure) + ", icon=" + this.icon + ", componentName=" + this.componentName + ", uid=" + this.uid + ", panelComponentName=" + this.panelComponentName + ")";
    }
}
