package com.voltecrypt.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.sec.internal.log.IMSLog;
import java.util.Objects;

/* loaded from: classes.dex */
public class SxRequestAuthenticationEntity implements Parcelable {
    public static final Parcelable.Creator<SxRequestAuthenticationEntity> CREATOR = new Parcelable.Creator<SxRequestAuthenticationEntity>() { // from class: com.voltecrypt.service.SxRequestAuthenticationEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SxRequestAuthenticationEntity createFromParcel(Parcel parcel) {
            return new SxRequestAuthenticationEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SxRequestAuthenticationEntity[] newArray(int i) {
            return new SxRequestAuthenticationEntity[i];
        }
    };
    private String appKey;
    private String appPackageName;
    private String organizationCode;
    private String requestMark;
    private long time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SxRequestAuthenticationEntity() {
        this.time = System.currentTimeMillis();
    }

    public SxRequestAuthenticationEntity(String str, String str2, String str3, String str4) {
        this.time = System.currentTimeMillis();
        this.organizationCode = str;
        this.appPackageName = str2;
        this.appKey = str3;
        this.requestMark = str4;
    }

    protected SxRequestAuthenticationEntity(Parcel parcel) {
        this.time = System.currentTimeMillis();
        this.time = parcel.readLong();
        this.organizationCode = parcel.readString();
        this.appPackageName = parcel.readString();
        this.appKey = parcel.readString();
        this.requestMark = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.time);
        parcel.writeString(this.organizationCode);
        parcel.writeString(this.appPackageName);
        parcel.writeString(this.appKey);
        parcel.writeString(this.requestMark);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SxRequestAuthenticationEntity sxRequestAuthenticationEntity = (SxRequestAuthenticationEntity) obj;
        return Objects.equals(Long.valueOf(this.time), Long.valueOf(sxRequestAuthenticationEntity.time)) && Objects.equals(this.organizationCode, sxRequestAuthenticationEntity.organizationCode) && Objects.equals(this.appPackageName, sxRequestAuthenticationEntity.appPackageName) && Objects.equals(this.appKey, sxRequestAuthenticationEntity.appKey) && Objects.equals(this.requestMark, sxRequestAuthenticationEntity.requestMark);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.time), this.organizationCode, this.appPackageName, this.appKey, this.requestMark);
    }

    public String toString() {
        return "SxRequestAuthenticationEntity{time='" + this.time + "', organizationCode='" + this.organizationCode + "', appPackageName='" + this.appPackageName + "', appKey='" + IMSLog.checker(this.appKey) + "', requestMark=" + this.requestMark + '}';
    }
}
