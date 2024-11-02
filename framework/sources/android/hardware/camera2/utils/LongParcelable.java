package android.hardware.camera2.utils;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class LongParcelable implements Parcelable {
    public static final Parcelable.Creator<LongParcelable> CREATOR = new Parcelable.Creator<LongParcelable>() { // from class: android.hardware.camera2.utils.LongParcelable.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public LongParcelable createFromParcel(Parcel in) {
            return new LongParcelable(in);
        }

        @Override // android.os.Parcelable.Creator
        public LongParcelable[] newArray(int size) {
            return new LongParcelable[size];
        }
    };
    private long number;

    /* synthetic */ LongParcelable(Parcel parcel, LongParcelableIA longParcelableIA) {
        this(parcel);
    }

    public LongParcelable() {
        this.number = 0L;
    }

    public LongParcelable(long number) {
        this.number = number;
    }

    /* renamed from: android.hardware.camera2.utils.LongParcelable$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<LongParcelable> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public LongParcelable createFromParcel(Parcel in) {
            return new LongParcelable(in);
        }

        @Override // android.os.Parcelable.Creator
        public LongParcelable[] newArray(int size) {
            return new LongParcelable[size];
        }
    }

    private LongParcelable(Parcel in) {
        readFromParcel(in);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.number);
    }

    public void readFromParcel(Parcel in) {
        this.number = in.readLong();
    }

    public long getNumber() {
        return this.number;
    }

    public void setNumber(long number) {
        this.number = number;
    }
}
