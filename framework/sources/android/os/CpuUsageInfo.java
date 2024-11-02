package android.os;

import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class CpuUsageInfo implements Parcelable {
    public static final Parcelable.Creator<CpuUsageInfo> CREATOR = new Parcelable.Creator<CpuUsageInfo>() { // from class: android.os.CpuUsageInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo createFromParcel(Parcel in) {
            return new CpuUsageInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo[] newArray(int size) {
            return new CpuUsageInfo[size];
        }
    };
    private long mActive;
    private long mTotal;

    /* synthetic */ CpuUsageInfo(Parcel parcel, CpuUsageInfoIA cpuUsageInfoIA) {
        this(parcel);
    }

    /* renamed from: android.os.CpuUsageInfo$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<CpuUsageInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo createFromParcel(Parcel in) {
            return new CpuUsageInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public CpuUsageInfo[] newArray(int size) {
            return new CpuUsageInfo[size];
        }
    }

    public CpuUsageInfo(long activeTime, long totalTime) {
        this.mActive = activeTime;
        this.mTotal = totalTime;
    }

    private CpuUsageInfo(Parcel in) {
        readFromParcel(in);
    }

    public long getActive() {
        return this.mActive;
    }

    public long getTotal() {
        return this.mTotal;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeLong(this.mActive);
        out.writeLong(this.mTotal);
    }

    private void readFromParcel(Parcel in) {
        this.mActive = in.readLong();
        this.mTotal = in.readLong();
    }
}
