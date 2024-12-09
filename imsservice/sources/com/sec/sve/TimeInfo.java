package com.sec.sve;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TimeInfo implements Parcelable {
    public static final Parcelable.Creator<TimeInfo> CREATOR = new Parcelable.Creator<TimeInfo>() { // from class: com.sec.sve.TimeInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeInfo createFromParcel(Parcel parcel) {
            return new TimeInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeInfo[] newArray(int i) {
            return new TimeInfo[i];
        }
    };
    private long ntpTimestamp;
    private long rtpTimestamp;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TimeInfo() {
        this.rtpTimestamp = 0L;
        this.ntpTimestamp = 0L;
    }

    public TimeInfo(long j, long j2) {
        this.rtpTimestamp = j;
        this.ntpTimestamp = j2;
    }

    private TimeInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (parcel == null) {
            return;
        }
        parcel.writeLong(this.rtpTimestamp);
        parcel.writeLong(this.ntpTimestamp);
    }

    private void readFromParcel(Parcel parcel) {
        this.rtpTimestamp = parcel.readLong();
        this.ntpTimestamp = parcel.readLong();
    }

    public long getRtpTimestamp() {
        return this.rtpTimestamp;
    }

    public long getNtpTimestamp() {
        return this.ntpTimestamp;
    }

    public String toString() {
        return "TimeInfo RTP [" + this.rtpTimestamp + "] NTP [" + this.ntpTimestamp + "]";
    }
}
