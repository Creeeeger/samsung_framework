package com.samsung.android.knox.net.firewall;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DomainFilterReport implements Parcelable {
    public static final Parcelable.Creator<DomainFilterReport> CREATOR = new Parcelable.Creator<DomainFilterReport>() { // from class: com.samsung.android.knox.net.firewall.DomainFilterReport.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DomainFilterReport[] newArray(int i) {
            return new DomainFilterReport[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DomainFilterReport createFromParcel(Parcel parcel) {
            return new DomainFilterReport(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final DomainFilterReport[] newArray(int i) {
            return new DomainFilterReport[i];
        }
    };
    public String mDomainUrl;
    public String mPackageName;
    public long mTimeStamp;

    public /* synthetic */ DomainFilterReport(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getDomainUrl() {
        return this.mDomainUrl;
    }

    public final String getPackageName() {
        return this.mPackageName;
    }

    public final long getTimeStamp() {
        return this.mTimeStamp;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeLong(this.mTimeStamp);
        parcel.writeString(this.mDomainUrl);
    }

    public DomainFilterReport(String str, long j, String str2) {
        this.mPackageName = str;
        this.mTimeStamp = j;
        this.mDomainUrl = str2;
    }

    private DomainFilterReport() {
    }

    private DomainFilterReport(Parcel parcel) {
        this();
        this.mPackageName = parcel.readString();
        this.mTimeStamp = parcel.readLong();
        this.mDomainUrl = parcel.readString();
    }
}
