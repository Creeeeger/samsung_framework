package com.android.systemui.user.ui.viewmodel;

import android.graphics.drawable.Drawable;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import com.android.systemui.common.shared.model.Text;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserViewModel {
    public final float alpha;
    public final Drawable image;
    public final boolean isSelectionMarkerVisible;
    public final Text name;
    public final Function0 onClicked;
    public final int viewKey;

    public UserViewModel(int i, Text text, Drawable drawable, boolean z, float f, Function0 function0) {
        this.viewKey = i;
        this.name = text;
        this.image = drawable;
        this.isSelectionMarkerVisible = z;
        this.alpha = f;
        this.onClicked = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserViewModel)) {
            return false;
        }
        UserViewModel userViewModel = (UserViewModel) obj;
        if (this.viewKey == userViewModel.viewKey && Intrinsics.areEqual(this.name, userViewModel.name) && Intrinsics.areEqual(this.image, userViewModel.image) && this.isSelectionMarkerVisible == userViewModel.isSelectionMarkerVisible && Float.compare(this.alpha, userViewModel.alpha) == 0 && Intrinsics.areEqual(this.onClicked, userViewModel.onClicked)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.image.hashCode() + ((this.name.hashCode() + (Integer.hashCode(this.viewKey) * 31)) * 31)) * 31;
        boolean z = this.isSelectionMarkerVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int m = UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.alpha, (hashCode2 + i) * 31, 31);
        Function0 function0 = this.onClicked;
        if (function0 == null) {
            hashCode = 0;
        } else {
            hashCode = function0.hashCode();
        }
        return m + hashCode;
    }

    public final String toString() {
        return "UserViewModel(viewKey=" + this.viewKey + ", name=" + this.name + ", image=" + this.image + ", isSelectionMarkerVisible=" + this.isSelectionMarkerVisible + ", alpha=" + this.alpha + ", onClicked=" + this.onClicked + ")";
    }
}
