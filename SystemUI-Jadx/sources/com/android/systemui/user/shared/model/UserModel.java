package com.android.systemui.user.shared.model;

import android.graphics.drawable.Drawable;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.common.shared.model.Text;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserModel {
    public final int id;
    public final Drawable image;
    public final boolean isGuest;
    public final boolean isSelectable;
    public final boolean isSelected;
    public final Text name;

    public UserModel(int i, Text text, Drawable drawable, boolean z, boolean z2, boolean z3) {
        this.id = i;
        this.name = text;
        this.image = drawable;
        this.isSelected = z;
        this.isSelectable = z2;
        this.isGuest = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserModel)) {
            return false;
        }
        UserModel userModel = (UserModel) obj;
        if (this.id == userModel.id && Intrinsics.areEqual(this.name, userModel.name) && Intrinsics.areEqual(this.image, userModel.image) && this.isSelected == userModel.isSelected && this.isSelectable == userModel.isSelectable && this.isGuest == userModel.isGuest) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = (this.image.hashCode() + ((this.name.hashCode() + (Integer.hashCode(this.id) * 31)) * 31)) * 31;
        int i = 1;
        boolean z = this.isSelected;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        boolean z2 = this.isSelectable;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.isGuest;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i5 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserModel(id=");
        sb.append(this.id);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", image=");
        sb.append(this.image);
        sb.append(", isSelected=");
        sb.append(this.isSelected);
        sb.append(", isSelectable=");
        sb.append(this.isSelectable);
        sb.append(", isGuest=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isGuest, ")");
    }
}
