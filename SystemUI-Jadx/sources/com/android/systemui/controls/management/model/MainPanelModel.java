package com.android.systemui.controls.management.model;

import android.app.PendingIntent;
import android.content.ComponentName;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.controls.management.model.MainModel;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MainPanelModel extends MainModel {
    public final ComponentName panelActivity;
    public final PendingIntent pendingIntent;
    public final boolean settings;
    public final MainModel.Type type = MainModel.Type.PANEL;

    public MainPanelModel(PendingIntent pendingIntent, ComponentName componentName, boolean z) {
        this.pendingIntent = pendingIntent;
        this.panelActivity = componentName;
        this.settings = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MainPanelModel)) {
            return false;
        }
        MainPanelModel mainPanelModel = (MainPanelModel) obj;
        if (Intrinsics.areEqual(this.pendingIntent, mainPanelModel.pendingIntent) && Intrinsics.areEqual(this.panelActivity, mainPanelModel.panelActivity) && this.settings == mainPanelModel.settings) {
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
        int hashCode;
        int hashCode2 = this.pendingIntent.hashCode() * 31;
        ComponentName componentName = this.panelActivity;
        if (componentName == null) {
            hashCode = 0;
        } else {
            hashCode = componentName.hashCode();
        }
        int i = (hashCode2 + hashCode) * 31;
        boolean z = this.settings;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MainPanelModel(pendingIntent=");
        sb.append(this.pendingIntent);
        sb.append(", panelActivity=");
        sb.append(this.panelActivity);
        sb.append(", settings=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.settings, ")");
    }
}
