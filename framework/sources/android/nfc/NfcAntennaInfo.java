package android.nfc;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class NfcAntennaInfo implements Parcelable {
    public static final Parcelable.Creator<NfcAntennaInfo> CREATOR = new Parcelable.Creator<NfcAntennaInfo>() { // from class: android.nfc.NfcAntennaInfo.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public NfcAntennaInfo createFromParcel(Parcel in) {
            return new NfcAntennaInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public NfcAntennaInfo[] newArray(int size) {
            return new NfcAntennaInfo[size];
        }
    };
    private final List<AvailableNfcAntenna> mAvailableNfcAntennas;
    private final boolean mDeviceFoldable;
    private final int mDeviceHeight;
    private final int mDeviceWidth;

    /* synthetic */ NfcAntennaInfo(Parcel parcel, NfcAntennaInfoIA nfcAntennaInfoIA) {
        this(parcel);
    }

    public NfcAntennaInfo(int deviceWidth, int deviceHeight, boolean deviceFoldable, List<AvailableNfcAntenna> availableNfcAntennas) {
        this.mDeviceWidth = deviceWidth;
        this.mDeviceHeight = deviceHeight;
        this.mDeviceFoldable = deviceFoldable;
        this.mAvailableNfcAntennas = availableNfcAntennas;
    }

    public int getDeviceWidth() {
        return this.mDeviceWidth;
    }

    public int getDeviceHeight() {
        return this.mDeviceHeight;
    }

    public boolean isDeviceFoldable() {
        return this.mDeviceFoldable;
    }

    public List<AvailableNfcAntenna> getAvailableNfcAntennas() {
        return this.mAvailableNfcAntennas;
    }

    private NfcAntennaInfo(Parcel in) {
        this.mDeviceWidth = in.readInt();
        this.mDeviceHeight = in.readInt();
        this.mDeviceFoldable = in.readByte() != 0;
        ArrayList arrayList = new ArrayList();
        this.mAvailableNfcAntennas = arrayList;
        in.readTypedList(arrayList, AvailableNfcAntenna.CREATOR);
    }

    /* renamed from: android.nfc.NfcAntennaInfo$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<NfcAntennaInfo> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public NfcAntennaInfo createFromParcel(Parcel in) {
            return new NfcAntennaInfo(in);
        }

        @Override // android.os.Parcelable.Creator
        public NfcAntennaInfo[] newArray(int size) {
            return new NfcAntennaInfo[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mDeviceWidth);
        parcel.writeInt(this.mDeviceHeight);
        parcel.writeByte(this.mDeviceFoldable ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.mAvailableNfcAntennas, 0);
    }
}
