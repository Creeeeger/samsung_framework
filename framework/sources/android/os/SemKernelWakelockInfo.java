package android.os;

import android.os.Parcelable;

/* loaded from: classes3.dex */
public class SemKernelWakelockInfo implements Cloneable, Parcelable, Comparable<SemKernelWakelockInfo> {
    public static final Parcelable.Creator<SemKernelWakelockInfo> CREATOR = new Parcelable.Creator<SemKernelWakelockInfo>() { // from class: android.os.SemKernelWakelockInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemKernelWakelockInfo createFromParcel(Parcel in) {
            return new SemKernelWakelockInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemKernelWakelockInfo[] newArray(int size) {
            return new SemKernelWakelockInfo[size];
        }
    };
    private long count;
    private String tag;
    private long time;

    public SemKernelWakelockInfo(String tag) {
        this.tag = tag;
        this.count = 0L;
        this.time = 0L;
    }

    public SemKernelWakelockInfo(String tag, long count, long time) {
        this.tag = tag;
        this.count = count;
        this.time = time;
    }

    public String getTag() {
        return this.tag;
    }

    public long getCount() {
        return this.count;
    }

    public long getTime() {
        return this.time;
    }

    public void calculateDelta(SemKernelWakelockInfo prev) {
        if (this.tag.equals(prev.getTag())) {
            this.count = Math.max(0L, this.count - prev.getCount());
            this.time = Math.max(0L, this.time - prev.getTime());
        }
    }

    protected SemKernelWakelockInfo(Parcel in) {
        this.tag = in.readString();
        this.count = in.readLong();
        this.time = in.readLong();
    }

    /* renamed from: android.os.SemKernelWakelockInfo$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemKernelWakelockInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemKernelWakelockInfo createFromParcel(Parcel in) {
            return new SemKernelWakelockInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemKernelWakelockInfo[] newArray(int size) {
            return new SemKernelWakelockInfo[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.tag);
        parcel.writeLong(this.count);
        parcel.writeLong(this.time);
    }

    @Override // java.lang.Comparable
    public int compareTo(SemKernelWakelockInfo info) {
        return (int) (info.getTime() - this.time);
    }

    /* renamed from: clone */
    public SemKernelWakelockInfo m3197clone() {
        try {
            return (SemKernelWakelockInfo) super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
}
