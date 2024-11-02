package com.samsung.android.knox.deviceinfo;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SimInfo implements Parcelable {
    public static final Parcelable.Creator<SimInfo> CREATOR = new Parcelable.Creator<SimInfo>() { // from class: com.samsung.android.knox.deviceinfo.SimInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SimInfo createFromParcel(Parcel parcel) {
            return new SimInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SimInfo[] newArray(int i) {
            return new SimInfo[i];
        }

        @Override // android.os.Parcelable.Creator
        public final SimInfo createFromParcel(Parcel parcel) {
            return new SimInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final SimInfo[] newArray(int i) {
            return new SimInfo[i];
        }
    };
    public String countryIso;
    public String operator;
    public String operatorName;
    public String phoneNumber;
    public String serialNumber;

    public SimInfo() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void readFromParcel(Parcel parcel) {
        this.serialNumber = parcel.readString();
        this.phoneNumber = parcel.readString();
        this.operator = parcel.readString();
        this.operatorName = parcel.readString();
        this.countryIso = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.serialNumber);
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.operator);
        parcel.writeString(this.operatorName);
        parcel.writeString(this.countryIso);
    }

    public SimInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
