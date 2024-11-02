package android.telephony.satellite;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;

@SystemApi
/* loaded from: classes3.dex */
public final class SatelliteDatagram implements Parcelable {
    public static final Parcelable.Creator<SatelliteDatagram> CREATOR = new Parcelable.Creator<SatelliteDatagram>() { // from class: android.telephony.satellite.SatelliteDatagram.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SatelliteDatagram createFromParcel(Parcel in) {
            return new SatelliteDatagram(in);
        }

        @Override // android.os.Parcelable.Creator
        public SatelliteDatagram[] newArray(int size) {
            return new SatelliteDatagram[size];
        }
    };
    private byte[] mData;

    /* synthetic */ SatelliteDatagram(Parcel parcel, SatelliteDatagramIA satelliteDatagramIA) {
        this(parcel);
    }

    public SatelliteDatagram(byte[] data) {
        this.mData = data;
    }

    private SatelliteDatagram(Parcel in) {
        readFromParcel(in);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeByteArray(this.mData);
    }

    /* renamed from: android.telephony.satellite.SatelliteDatagram$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<SatelliteDatagram> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SatelliteDatagram createFromParcel(Parcel in) {
            return new SatelliteDatagram(in);
        }

        @Override // android.os.Parcelable.Creator
        public SatelliteDatagram[] newArray(int size) {
            return new SatelliteDatagram[size];
        }
    }

    public byte[] getSatelliteDatagram() {
        return this.mData;
    }

    private void readFromParcel(Parcel in) {
        this.mData = in.createByteArray();
    }
}
