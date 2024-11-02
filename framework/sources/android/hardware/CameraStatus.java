package android.hardware;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CameraStatus implements Parcelable {
    public static final Parcelable.Creator<CameraStatus> CREATOR = new Parcelable.Creator<CameraStatus>() { // from class: android.hardware.CameraStatus.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CameraStatus createFromParcel(Parcel in) {
            CameraStatus status = new CameraStatus();
            status.readFromParcel(in);
            return status;
        }

        @Override // android.os.Parcelable.Creator
        public CameraStatus[] newArray(int size) {
            return new CameraStatus[size];
        }
    };
    public String cameraId;
    public String clientPackage;
    public int status;
    public String[] unavailablePhysicalCameras;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.cameraId);
        out.writeInt(this.status);
        out.writeStringArray(this.unavailablePhysicalCameras);
        out.writeString(this.clientPackage);
    }

    public void readFromParcel(Parcel in) {
        this.cameraId = in.readString();
        this.status = in.readInt();
        this.unavailablePhysicalCameras = in.readStringArray();
        this.clientPackage = in.readString();
    }

    /* renamed from: android.hardware.CameraStatus$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<CameraStatus> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CameraStatus createFromParcel(Parcel in) {
            CameraStatus status = new CameraStatus();
            status.readFromParcel(in);
            return status;
        }

        @Override // android.os.Parcelable.Creator
        public CameraStatus[] newArray(int size) {
            return new CameraStatus[size];
        }
    }
}
