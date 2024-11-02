package android.os.health;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class TimerStat implements Parcelable {
    public static final Parcelable.Creator<TimerStat> CREATOR = new Parcelable.Creator<TimerStat>() { // from class: android.os.health.TimerStat.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public TimerStat createFromParcel(Parcel in) {
            return new TimerStat(in);
        }

        @Override // android.os.Parcelable.Creator
        public TimerStat[] newArray(int size) {
            return new TimerStat[size];
        }
    };
    private int mCount;
    private long mTime;

    /* renamed from: android.os.health.TimerStat$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<TimerStat> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public TimerStat createFromParcel(Parcel in) {
            return new TimerStat(in);
        }

        @Override // android.os.Parcelable.Creator
        public TimerStat[] newArray(int size) {
            return new TimerStat[size];
        }
    }

    public TimerStat() {
    }

    public TimerStat(int count, long time) {
        this.mCount = count;
        this.mTime = time;
    }

    public TimerStat(Parcel in) {
        this.mCount = in.readInt();
        this.mTime = in.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.mCount);
        out.writeLong(this.mTime);
    }

    public void setCount(int count) {
        this.mCount = count;
    }

    public int getCount() {
        return this.mCount;
    }

    public void setTime(long time) {
        this.mTime = time;
    }

    public long getTime() {
        return this.mTime;
    }
}
