package android.app.prediction;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class AppPredictionSessionId implements Parcelable {
    public static final Parcelable.Creator<AppPredictionSessionId> CREATOR = new Parcelable.Creator<AppPredictionSessionId>() { // from class: android.app.prediction.AppPredictionSessionId.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public AppPredictionSessionId createFromParcel(Parcel parcel) {
            return new AppPredictionSessionId(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AppPredictionSessionId[] newArray(int size) {
            return new AppPredictionSessionId[size];
        }
    };
    private final String mId;
    private final int mUserId;

    /* synthetic */ AppPredictionSessionId(Parcel parcel, AppPredictionSessionIdIA appPredictionSessionIdIA) {
        this(parcel);
    }

    public AppPredictionSessionId(String id, int userId) {
        this.mId = id;
        this.mUserId = userId;
    }

    private AppPredictionSessionId(Parcel p) {
        this.mId = p.readString();
        this.mUserId = p.readInt();
    }

    public int getUserId() {
        return this.mUserId;
    }

    public boolean equals(Object o) {
        if (!getClass().equals(o != null ? o.getClass() : null)) {
            return false;
        }
        AppPredictionSessionId other = (AppPredictionSessionId) o;
        return this.mId.equals(other.mId) && this.mUserId == other.mUserId;
    }

    public String toString() {
        return this.mId + "," + this.mUserId;
    }

    public int hashCode() {
        return Objects.hash(this.mId, Integer.valueOf(this.mUserId));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mId);
        dest.writeInt(this.mUserId);
    }

    /* renamed from: android.app.prediction.AppPredictionSessionId$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<AppPredictionSessionId> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public AppPredictionSessionId createFromParcel(Parcel parcel) {
            return new AppPredictionSessionId(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AppPredictionSessionId[] newArray(int size) {
            return new AppPredictionSessionId[size];
        }
    }
}
