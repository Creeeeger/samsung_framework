package com.voltecrypt.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.sec.internal.log.IMSLog;
import java.util.Objects;

/* loaded from: classes.dex */
public class SxHangUpEntity implements Parcelable {
    public static final Parcelable.Creator<SxHangUpEntity> CREATOR = new Parcelable.Creator<SxHangUpEntity>() { // from class: com.voltecrypt.service.SxHangUpEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SxHangUpEntity createFromParcel(Parcel parcel) {
            return new SxHangUpEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SxHangUpEntity[] newArray(int i) {
            return new SxHangUpEntity[i];
        }
    };
    private String callId;
    private String callPhoneNum;
    private String calledPhoneNum;
    private String des;
    private int isEncrypt;
    private int reason;
    private String sessionId;
    private long time;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SxHangUpEntity() {
        this.time = System.currentTimeMillis();
    }

    public SxHangUpEntity(String str, String str2, int i, String str3, int i2, int i3, String str4, String str5) {
        this.time = System.currentTimeMillis();
        this.callPhoneNum = str;
        this.calledPhoneNum = str2;
        this.type = i;
        this.sessionId = str3;
        this.isEncrypt = i2;
        this.reason = i3;
        this.des = str4;
        this.callId = str5;
    }

    protected SxHangUpEntity(Parcel parcel) {
        this.time = System.currentTimeMillis();
        this.time = parcel.readLong();
        this.callPhoneNum = parcel.readString();
        this.calledPhoneNum = parcel.readString();
        this.type = parcel.readInt();
        this.sessionId = parcel.readString();
        this.isEncrypt = parcel.readInt();
        this.reason = parcel.readInt();
        this.des = parcel.readString();
        this.callId = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.time);
        parcel.writeString(this.callPhoneNum);
        parcel.writeString(this.calledPhoneNum);
        parcel.writeInt(this.type);
        parcel.writeString(this.sessionId);
        parcel.writeInt(this.isEncrypt);
        parcel.writeInt(this.reason);
        parcel.writeString(this.des);
        parcel.writeString(this.callId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SxHangUpEntity sxHangUpEntity = (SxHangUpEntity) obj;
        return Objects.equals(Long.valueOf(this.time), Long.valueOf(sxHangUpEntity.time)) && Objects.equals(this.callPhoneNum, sxHangUpEntity.callPhoneNum) && Objects.equals(this.calledPhoneNum, sxHangUpEntity.calledPhoneNum) && Objects.equals(Integer.valueOf(this.type), Integer.valueOf(sxHangUpEntity.type)) && Objects.equals(this.sessionId, sxHangUpEntity.sessionId) && Objects.equals(Integer.valueOf(this.isEncrypt), Integer.valueOf(sxHangUpEntity.isEncrypt)) && Objects.equals(Integer.valueOf(this.reason), Integer.valueOf(sxHangUpEntity.reason)) && Objects.equals(this.des, sxHangUpEntity.des) && Objects.equals(this.callId, sxHangUpEntity.callId);
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.time), this.callPhoneNum, this.calledPhoneNum, Integer.valueOf(this.type), this.sessionId, Integer.valueOf(this.isEncrypt), Integer.valueOf(this.reason), this.des, this.callId);
    }

    public String toString() {
        return "SxHangUpEntity{time='" + this.time + "', callPhoneNum='" + IMSLog.checker(this.callPhoneNum) + "', calledPhoneNum='" + IMSLog.checker(this.calledPhoneNum) + "', type='" + this.type + "', sessionId='" + IMSLog.checker(this.sessionId) + "', isEncrypt='" + this.isEncrypt + "', reason='" + this.reason + "', des='" + this.des + "', callId=" + IMSLog.checker(this.callId) + '}';
    }
}
