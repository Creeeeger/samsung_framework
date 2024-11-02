package android.os;

import android.os.Parcelable;
import java.time.Duration;

/* loaded from: classes3.dex */
public final class ParcelDuration implements Parcelable {
    public static final Parcelable.Creator<ParcelDuration> CREATOR = new Parcelable.Creator<ParcelDuration>() { // from class: android.os.ParcelDuration.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ParcelDuration createFromParcel(Parcel source) {
            return new ParcelDuration(source);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelDuration[] newArray(int size) {
            return new ParcelDuration[size];
        }
    };
    private final int mNanos;
    private final long mSeconds;

    /* synthetic */ ParcelDuration(Parcel parcel, ParcelDurationIA parcelDurationIA) {
        this(parcel);
    }

    public ParcelDuration(long ms) {
        this(Duration.ofMillis(ms));
    }

    public ParcelDuration(Duration duration) {
        this.mSeconds = duration.getSeconds();
        this.mNanos = duration.getNano();
    }

    private ParcelDuration(Parcel parcel) {
        this.mSeconds = parcel.readLong();
        this.mNanos = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int parcelableFlags) {
        parcel.writeLong(this.mSeconds);
        parcel.writeInt(this.mNanos);
    }

    public Duration getDuration() {
        return Duration.ofSeconds(this.mSeconds, this.mNanos);
    }

    public String toString() {
        return getDuration().toString();
    }

    /* renamed from: android.os.ParcelDuration$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<ParcelDuration> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ParcelDuration createFromParcel(Parcel source) {
            return new ParcelDuration(source);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelDuration[] newArray(int size) {
            return new ParcelDuration[size];
        }
    }
}
