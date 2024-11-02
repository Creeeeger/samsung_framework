package com.android.systemui.user.data.model;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UserSwitcherSettingsModel {
    public final boolean isAddUsersFromLockscreen;
    public final boolean isSimpleUserSwitcher;
    public final boolean isUserSwitcherEnabled;

    public UserSwitcherSettingsModel() {
        this(false, false, false, 7, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserSwitcherSettingsModel)) {
            return false;
        }
        UserSwitcherSettingsModel userSwitcherSettingsModel = (UserSwitcherSettingsModel) obj;
        if (this.isSimpleUserSwitcher == userSwitcherSettingsModel.isSimpleUserSwitcher && this.isAddUsersFromLockscreen == userSwitcherSettingsModel.isAddUsersFromLockscreen && this.isUserSwitcherEnabled == userSwitcherSettingsModel.isUserSwitcherEnabled) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int i = 1;
        boolean z = this.isSimpleUserSwitcher;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.isAddUsersFromLockscreen;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.isUserSwitcherEnabled;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i5 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserSwitcherSettingsModel(isSimpleUserSwitcher=");
        sb.append(this.isSimpleUserSwitcher);
        sb.append(", isAddUsersFromLockscreen=");
        sb.append(this.isAddUsersFromLockscreen);
        sb.append(", isUserSwitcherEnabled=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isUserSwitcherEnabled, ")");
    }

    public UserSwitcherSettingsModel(boolean z, boolean z2, boolean z3) {
        this.isSimpleUserSwitcher = z;
        this.isAddUsersFromLockscreen = z2;
        this.isUserSwitcherEnabled = z3;
    }

    public /* synthetic */ UserSwitcherSettingsModel(boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3);
    }
}
