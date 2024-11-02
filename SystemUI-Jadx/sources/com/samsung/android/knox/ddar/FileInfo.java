package com.samsung.android.knox.ddar;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class FileInfo implements Parcelable {
    public static final Parcelable.Creator<FileInfo> CREATOR = new Parcelable.Creator<FileInfo>() { // from class: com.samsung.android.knox.ddar.FileInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileInfo createFromParcel(Parcel parcel) {
            return new FileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileInfo[] newArray(int i) {
            return new FileInfo[i];
        }
    };
    public ParcelFileDescriptor fd;
    public String fileName;
    public long len;
    public long offset;

    public FileInfo(String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) {
        this.fileName = str;
        this.fd = parcelFileDescriptor;
        this.offset = j;
        this.len = j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.fileName);
        parcel.writeParcelable(this.fd, i);
        parcel.writeLong(this.offset);
        parcel.writeLong(this.len);
    }

    public FileInfo(Parcel parcel) {
        this.fileName = parcel.readString();
        this.fd = (ParcelFileDescriptor) parcel.readParcelable(ParcelFileDescriptor.class.getClassLoader());
        this.offset = parcel.readLong();
        this.len = parcel.readLong();
    }
}
