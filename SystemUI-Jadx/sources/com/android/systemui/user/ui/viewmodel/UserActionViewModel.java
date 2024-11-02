package com.android.systemui.user.ui.viewmodel;

import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserActionViewModel {
    public final int iconResourceId;
    public final Function0 onClicked;
    public final int textResourceId;
    public final long viewKey;

    public UserActionViewModel(long j, int i, int i2, Function0 function0) {
        this.viewKey = j;
        this.iconResourceId = i;
        this.textResourceId = i2;
        this.onClicked = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserActionViewModel)) {
            return false;
        }
        UserActionViewModel userActionViewModel = (UserActionViewModel) obj;
        if (this.viewKey == userActionViewModel.viewKey && this.iconResourceId == userActionViewModel.iconResourceId && this.textResourceId == userActionViewModel.textResourceId && Intrinsics.areEqual(this.onClicked, userActionViewModel.onClicked)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.onClicked.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.textResourceId, AppInfoViewData$$ExternalSyntheticOutline0.m(this.iconResourceId, Long.hashCode(this.viewKey) * 31, 31), 31);
    }

    public final String toString() {
        return "UserActionViewModel(viewKey=" + this.viewKey + ", iconResourceId=" + this.iconResourceId + ", textResourceId=" + this.textResourceId + ", onClicked=" + this.onClicked + ")";
    }
}
