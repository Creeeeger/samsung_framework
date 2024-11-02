package com.android.systemui.keyguard.shared.model;

import android.content.Intent;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardQuickAffordancePickerRepresentation {
    public final Intent actionIntent;
    public final String actionText;
    public final Intent configureIntent;
    public final String explanation;
    public final int iconResourceId;
    public final String id;
    public final boolean isEnabled;
    public final String name;

    public KeyguardQuickAffordancePickerRepresentation(String str, String str2, int i, boolean z, String str3, String str4, Intent intent, Intent intent2) {
        this.id = str;
        this.name = str2;
        this.iconResourceId = i;
        this.isEnabled = z;
        this.explanation = str3;
        this.actionText = str4;
        this.actionIntent = intent;
        this.configureIntent = intent2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyguardQuickAffordancePickerRepresentation)) {
            return false;
        }
        KeyguardQuickAffordancePickerRepresentation keyguardQuickAffordancePickerRepresentation = (KeyguardQuickAffordancePickerRepresentation) obj;
        if (Intrinsics.areEqual(this.id, keyguardQuickAffordancePickerRepresentation.id) && Intrinsics.areEqual(this.name, keyguardQuickAffordancePickerRepresentation.name) && this.iconResourceId == keyguardQuickAffordancePickerRepresentation.iconResourceId && this.isEnabled == keyguardQuickAffordancePickerRepresentation.isEnabled && Intrinsics.areEqual(this.explanation, keyguardQuickAffordancePickerRepresentation.explanation) && Intrinsics.areEqual(this.actionText, keyguardQuickAffordancePickerRepresentation.actionText) && Intrinsics.areEqual(this.actionIntent, keyguardQuickAffordancePickerRepresentation.actionIntent) && Intrinsics.areEqual(this.configureIntent, keyguardQuickAffordancePickerRepresentation.configureIntent)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.iconResourceId, AppInfo$$ExternalSyntheticOutline0.m(this.name, this.id.hashCode() * 31, 31), 31);
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (m + i) * 31;
        int i3 = 0;
        String str = this.explanation;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i4 = (i2 + hashCode) * 31;
        String str2 = this.actionText;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i5 = (i4 + hashCode2) * 31;
        Intent intent = this.actionIntent;
        if (intent == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = intent.hashCode();
        }
        int i6 = (i5 + hashCode3) * 31;
        Intent intent2 = this.configureIntent;
        if (intent2 != null) {
            i3 = intent2.hashCode();
        }
        return i6 + i3;
    }

    public final String toString() {
        return "KeyguardQuickAffordancePickerRepresentation(id=" + this.id + ", name=" + this.name + ", iconResourceId=" + this.iconResourceId + ", isEnabled=" + this.isEnabled + ", explanation=" + this.explanation + ", actionText=" + this.actionText + ", actionIntent=" + this.actionIntent + ", configureIntent=" + this.configureIntent + ")";
    }

    public /* synthetic */ KeyguardQuickAffordancePickerRepresentation(String str, String str2, int i, boolean z, String str3, String str4, Intent intent, Intent intent2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, (i2 & 8) != 0 ? true : z, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : intent, (i2 & 128) != 0 ? null : intent2);
    }
}
