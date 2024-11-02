package com.android.systemui.flags;

import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ReleasedFlag extends BooleanFlag {
    public final int id;
    public final String name;
    public final String namespace;
    public final boolean overridden;
    public final boolean teamfood;

    public /* synthetic */ ReleasedFlag(int i, String str, String str2, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReleasedFlag)) {
            return false;
        }
        ReleasedFlag releasedFlag = (ReleasedFlag) obj;
        if (this.id == releasedFlag.id && Intrinsics.areEqual(this.name, releasedFlag.name) && Intrinsics.areEqual(this.namespace, releasedFlag.namespace) && this.teamfood == releasedFlag.teamfood && this.overridden == releasedFlag.overridden) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.flags.BooleanFlag
    public final int getId() {
        return this.id;
    }

    @Override // com.android.systemui.flags.BooleanFlag, com.android.systemui.flags.Flag
    public final String getName() {
        return this.name;
    }

    @Override // com.android.systemui.flags.BooleanFlag, com.android.systemui.flags.Flag
    public final String getNamespace() {
        return this.namespace;
    }

    @Override // com.android.systemui.flags.BooleanFlag
    public final boolean getOverridden() {
        return this.overridden;
    }

    @Override // com.android.systemui.flags.BooleanFlag
    public final boolean getTeamfood() {
        return this.teamfood;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.namespace, AppInfo$$ExternalSyntheticOutline0.m(this.name, Integer.hashCode(this.id) * 31, 31), 31);
        boolean z = this.teamfood;
        int i = 1;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (m + i2) * 31;
        boolean z2 = this.overridden;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return i3 + i;
    }

    public final String toString() {
        int i = this.id;
        String str = this.name;
        String str2 = this.namespace;
        boolean z = this.teamfood;
        boolean z2 = this.overridden;
        StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("ReleasedFlag(id=", i, ", name=", str, ", namespace=");
        m.append(str2);
        m.append(", teamfood=");
        m.append(z);
        m.append(", overridden=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(m, z2, ")");
    }

    public ReleasedFlag(int i, String str, String str2, boolean z, boolean z2) {
        super(i, str, str2, true, z, z2);
        this.id = i;
        this.name = str;
        this.namespace = str2;
        this.teamfood = z;
        this.overridden = z2;
    }
}
