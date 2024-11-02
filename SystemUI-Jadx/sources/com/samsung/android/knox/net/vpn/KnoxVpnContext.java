package com.samsung.android.knox.net.vpn;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KnoxVpnContext implements Parcelable {
    public static final Parcelable.Creator<KnoxVpnContext> CREATOR = new Parcelable.Creator<KnoxVpnContext>() { // from class: com.samsung.android.knox.net.vpn.KnoxVpnContext.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final KnoxVpnContext[] newArray(int i) {
            return new KnoxVpnContext[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final KnoxVpnContext createFromParcel(Parcel parcel) {
            return new KnoxVpnContext(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final KnoxVpnContext[] newArray(int i) {
            return new KnoxVpnContext[i];
        }
    };
    public int adminId;
    public int personaId;
    public String vendorName;

    public /* synthetic */ KnoxVpnContext(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int getAdminId() {
        return this.adminId;
    }

    public final int getPersonaId() {
        return this.personaId;
    }

    public final String getVendorName() {
        return this.vendorName;
    }

    public final void readFromParcel(Parcel parcel) {
        this.adminId = parcel.readInt();
        this.personaId = parcel.readInt();
        this.vendorName = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.adminId);
        parcel.writeInt(this.personaId);
        parcel.writeString(this.vendorName);
    }

    public KnoxVpnContext(int i, int i2, String str) {
        this.adminId = i;
        this.personaId = i2;
        this.vendorName = str;
    }

    private KnoxVpnContext(Parcel parcel) {
        readFromParcel(parcel);
    }
}
