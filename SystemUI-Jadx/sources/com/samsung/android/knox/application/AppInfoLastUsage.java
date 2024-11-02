package com.samsung.android.knox.application;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppInfoLastUsage extends AppInfo {
    public static final Parcelable.Creator<AppInfoLastUsage> CREATOR = new Parcelable.Creator<AppInfoLastUsage>() { // from class: com.samsung.android.knox.application.AppInfoLastUsage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppInfoLastUsage createFromParcel(Parcel parcel) {
            return new AppInfoLastUsage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppInfoLastUsage[] newArray(int i) {
            return new AppInfoLastUsage[i];
        }

        @Override // android.os.Parcelable.Creator
        public final AppInfoLastUsage createFromParcel(Parcel parcel) {
            return new AppInfoLastUsage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final AppInfoLastUsage[] newArray(int i) {
            return new AppInfoLastUsage[i];
        }
    };
    public int launchCountPerMonth = -1;
    public long lastAppUsage = -1;
    public long lastLaunchTime = -1;

    public AppInfoLastUsage() {
    }

    @Override // com.samsung.android.knox.application.AppInfo, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.samsung.android.knox.application.AppInfo
    public final void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.launchCountPerMonth = parcel.readInt();
        this.lastAppUsage = parcel.readLong();
        this.lastLaunchTime = parcel.readLong();
    }

    @Override // com.samsung.android.knox.application.AppInfo, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.launchCountPerMonth);
        parcel.writeLong(this.lastAppUsage);
        parcel.writeLong(this.lastLaunchTime);
    }

    public AppInfoLastUsage(Parcel parcel) {
        readFromParcel(parcel);
    }
}
