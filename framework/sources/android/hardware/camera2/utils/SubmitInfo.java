package android.hardware.camera2.utils;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SubmitInfo implements Parcelable {
    public static final Parcelable.Creator<SubmitInfo> CREATOR = new Parcelable.Creator<SubmitInfo>() { // from class: android.hardware.camera2.utils.SubmitInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SubmitInfo createFromParcel(Parcel in) {
            return new SubmitInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public SubmitInfo[] newArray(int size) {
            return new SubmitInfo[size];
        }
    };
    private long mLastFrameNumber;
    private int mRequestId;

    /* synthetic */ SubmitInfo(Parcel parcel, SubmitInfoIA submitInfoIA) {
        this(parcel);
    }

    public SubmitInfo() {
        this.mRequestId = -1;
        this.mLastFrameNumber = -1L;
    }

    public SubmitInfo(int requestId, long lastFrameNumber) {
        this.mRequestId = requestId;
        this.mLastFrameNumber = lastFrameNumber;
    }

    /* renamed from: android.hardware.camera2.utils.SubmitInfo$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<SubmitInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SubmitInfo createFromParcel(Parcel in) {
            return new SubmitInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public SubmitInfo[] newArray(int size) {
            return new SubmitInfo[size];
        }
    }

    private SubmitInfo(Parcel in) {
        readFromParcel(in);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mRequestId);
        dest.writeLong(this.mLastFrameNumber);
    }

    public void readFromParcel(Parcel in) {
        this.mRequestId = in.readInt();
        this.mLastFrameNumber = in.readLong();
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public long getLastFrameNumber() {
        return this.mLastFrameNumber;
    }
}
