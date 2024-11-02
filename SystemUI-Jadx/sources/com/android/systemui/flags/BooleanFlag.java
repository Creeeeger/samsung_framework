package com.android.systemui.flags;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BooleanFlag implements Flag, Parcelable {
    public static final Parcelable.Creator<BooleanFlag> CREATOR;

    /* renamed from: default, reason: not valid java name */
    public final boolean f2default;
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
        CREATOR = new Parcelable.Creator() { // from class: com.android.systemui.flags.BooleanFlag$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(final Parcel parcel) {
                return new BooleanFlag(parcel) { // from class: com.android.systemui.flags.BooleanFlag$Companion$CREATOR$1$createFromParcel$1
                    {
                        DefaultConstructorMarker defaultConstructorMarker = null;
                    }
                };
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new BooleanFlag[i];
            }
        };
    }

    public /* synthetic */ BooleanFlag(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public int getId() {
        return this.id;
    }

    @Override // com.android.systemui.flags.Flag
    public String getName() {
        return this.name;
    }

    @Override // com.android.systemui.flags.Flag
    public String getNamespace() {
        return this.namespace;
    }

    public boolean getOverridden() {
        return this.overridden;
    }

    public boolean getTeamfood() {
        return this.teamfood;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(getId());
        parcel.writeString(getName());
        parcel.writeString(getNamespace());
        parcel.writeBoolean(Boolean.valueOf(this.f2default).booleanValue());
        parcel.writeBoolean(getTeamfood());
        parcel.writeBoolean(getOverridden());
    }

    public BooleanFlag(int i, String str, String str2, boolean z, boolean z2, boolean z3) {
        this.id = i;
        this.name = str;
        this.namespace = str2;
        this.f2default = z;
        this.teamfood = z2;
        this.overridden = z3;
    }

    public /* synthetic */ BooleanFlag(int i, String str, String str2, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? false : z3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private BooleanFlag(android.os.Parcel r8) {
        /*
            r7 = this;
            int r1 = r8.readInt()
            java.lang.String r0 = r8.readString()
            java.lang.String r2 = ""
            if (r0 != 0) goto Le
            r3 = r2
            goto Lf
        Le:
            r3 = r0
        Lf:
            java.lang.String r0 = r8.readString()
            if (r0 != 0) goto L17
            r4 = r2
            goto L18
        L17:
            r4 = r0
        L18:
            boolean r5 = r8.readBoolean()
            boolean r6 = r8.readBoolean()
            boolean r8 = r8.readBoolean()
            r0 = r7
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.flags.BooleanFlag.<init>(android.os.Parcel):void");
    }
}
