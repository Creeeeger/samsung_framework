package com.android.systemui.flags;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StringFlag implements Flag, Parcelable {
    public static final Parcelable.Creator<StringFlag> CREATOR;

    /* renamed from: default, reason: not valid java name */
    public final String f3default;
    public final int id;
    public final String name;
    public final String namespace;
    public final boolean overridden;
    public final boolean teamfood;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        CREATOR = new Parcelable.Creator() { // from class: com.android.systemui.flags.StringFlag$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new StringFlag(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new StringFlag[i];
            }
        };
    }

    public /* synthetic */ StringFlag(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StringFlag)) {
            return false;
        }
        StringFlag stringFlag = (StringFlag) obj;
        if (this.id == stringFlag.id && Intrinsics.areEqual(this.name, stringFlag.name) && Intrinsics.areEqual(this.namespace, stringFlag.namespace) && Intrinsics.areEqual(this.f3default, stringFlag.f3default) && this.teamfood == stringFlag.teamfood && this.overridden == stringFlag.overridden) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.flags.Flag
    public final String getName() {
        return this.name;
    }

    @Override // com.android.systemui.flags.Flag
    public final String getNamespace() {
        return this.namespace;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.f3default, AppInfo$$ExternalSyntheticOutline0.m(this.namespace, AppInfo$$ExternalSyntheticOutline0.m(this.name, Integer.hashCode(this.id) * 31, 31), 31), 31);
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
        String str3 = this.f3default;
        boolean z = this.teamfood;
        boolean z2 = this.overridden;
        StringBuilder m = KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0.m("StringFlag(id=", i, ", name=", str, ", namespace=");
        AppOpItem$$ExternalSyntheticOutline0.m(m, str2, ", default=", str3, ", teamfood=");
        m.append(z);
        m.append(", overridden=");
        m.append(z2);
        m.append(")");
        return m.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.namespace);
        parcel.writeString(this.f3default);
    }

    public StringFlag(int i, String str, String str2, String str3, boolean z, boolean z2) {
        this.id = i;
        this.name = str;
        this.namespace = str2;
        this.f3default = str3;
        this.teamfood = z;
        this.overridden = z2;
    }

    public /* synthetic */ StringFlag(int i, String str, String str2, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? false : z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private StringFlag(android.os.Parcel r10) {
        /*
            r9 = this;
            int r1 = r10.readInt()
            java.lang.String r0 = r10.readString()
            java.lang.String r2 = ""
            if (r0 != 0) goto Le
            r3 = r2
            goto Lf
        Le:
            r3 = r0
        Lf:
            java.lang.String r0 = r10.readString()
            if (r0 != 0) goto L17
            r4 = r2
            goto L18
        L17:
            r4 = r0
        L18:
            java.lang.String r10 = r10.readString()
            if (r10 != 0) goto L1f
            r10 = r2
        L1f:
            r5 = 0
            r6 = 0
            r7 = 48
            r8 = 0
            r0 = r9
            r2 = r3
            r3 = r4
            r4 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.flags.StringFlag.<init>(android.os.Parcel):void");
    }
}
