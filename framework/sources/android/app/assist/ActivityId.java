package android.app.assist;

import android.annotation.SystemApi;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

@SystemApi
/* loaded from: classes.dex */
public final class ActivityId implements Parcelable {
    public static final Parcelable.Creator<ActivityId> CREATOR = new Parcelable.Creator<ActivityId>() { // from class: android.app.assist.ActivityId.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ActivityId createFromParcel(Parcel parcel) {
            return new ActivityId(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActivityId[] newArray(int size) {
            return new ActivityId[size];
        }
    };
    private final IBinder mActivityId;
    private final int mTaskId;

    public ActivityId(int taskId, IBinder activityId) {
        this.mTaskId = taskId;
        this.mActivityId = activityId;
    }

    public ActivityId(Parcel source) {
        this.mTaskId = source.readInt();
        this.mActivityId = source.readStrongBinder();
    }

    public int getTaskId() {
        return this.mTaskId;
    }

    public IBinder getToken() {
        return this.mActivityId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mTaskId);
        dest.writeStrongBinder(this.mActivityId);
    }

    /* renamed from: android.app.assist.ActivityId$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<ActivityId> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ActivityId createFromParcel(Parcel parcel) {
            return new ActivityId(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActivityId[] newArray(int size) {
            return new ActivityId[size];
        }
    }

    public String toString() {
        return "ActivityId { taskId = " + this.mTaskId + ", activityId = " + this.mActivityId + " }";
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ActivityId that = (ActivityId) o;
        if (this.mTaskId != that.mTaskId) {
            return false;
        }
        IBinder iBinder = this.mActivityId;
        if (iBinder != null) {
            return iBinder.equals(that.mActivityId);
        }
        if (that.mActivityId == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result = this.mTaskId;
        int i = result * 31;
        IBinder iBinder = this.mActivityId;
        int result2 = i + (iBinder != null ? iBinder.hashCode() : 0);
        return result2;
    }
}
