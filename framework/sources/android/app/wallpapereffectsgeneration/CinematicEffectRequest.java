package android.app.wallpapereffectsgeneration;

import android.annotation.SystemApi;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class CinematicEffectRequest implements Parcelable {
    public static final Parcelable.Creator<CinematicEffectRequest> CREATOR = new Parcelable.Creator<CinematicEffectRequest>() { // from class: android.app.wallpapereffectsgeneration.CinematicEffectRequest.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CinematicEffectRequest createFromParcel(Parcel in) {
            return new CinematicEffectRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public CinematicEffectRequest[] newArray(int size) {
            return new CinematicEffectRequest[size];
        }
    };
    private Bitmap mBitmap;
    private String mTaskId;

    /* synthetic */ CinematicEffectRequest(Parcel parcel, CinematicEffectRequestIA cinematicEffectRequestIA) {
        this(parcel);
    }

    private CinematicEffectRequest(Parcel in) {
        this.mTaskId = in.readString();
        this.mBitmap = Bitmap.CREATOR.createFromParcel(in);
    }

    public CinematicEffectRequest(String taskId, Bitmap bitmap) {
        this.mTaskId = taskId;
        this.mBitmap = bitmap;
    }

    public String getTaskId() {
        return this.mTaskId;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        CinematicEffectRequest that = (CinematicEffectRequest) o;
        return this.mTaskId.equals(that.mTaskId);
    }

    public int hashCode() {
        return Objects.hash(this.mTaskId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.mTaskId);
        this.mBitmap.writeToParcel(out, flags);
    }

    /* renamed from: android.app.wallpapereffectsgeneration.CinematicEffectRequest$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<CinematicEffectRequest> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CinematicEffectRequest createFromParcel(Parcel in) {
            return new CinematicEffectRequest(in);
        }

        @Override // android.os.Parcelable.Creator
        public CinematicEffectRequest[] newArray(int size) {
            return new CinematicEffectRequest[size];
        }
    }
}
