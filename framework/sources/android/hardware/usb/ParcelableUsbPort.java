package android.hardware.usb;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class ParcelableUsbPort implements Parcelable {
    public static final Parcelable.Creator<ParcelableUsbPort> CREATOR = new Parcelable.Creator<ParcelableUsbPort>() { // from class: android.hardware.usb.ParcelableUsbPort.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableUsbPort createFromParcel(Parcel in) {
            String id = in.readString();
            int supportedModes = in.readInt();
            int supportedContaminantProtectionModes = in.readInt();
            boolean supportsEnableContaminantPresenceProtection = in.readBoolean();
            boolean supportsEnableContaminantPresenceDetection = in.readBoolean();
            boolean supportsComplianceWarnings = in.readBoolean();
            int supportedAltModesMask = in.readInt();
            return new ParcelableUsbPort(id, supportedModes, supportedContaminantProtectionModes, supportsEnableContaminantPresenceProtection, supportsEnableContaminantPresenceDetection, supportsComplianceWarnings, supportedAltModesMask);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableUsbPort[] newArray(int size) {
            return new ParcelableUsbPort[size];
        }
    };
    private final String mId;
    private final int mSupportedAltModesMask;
    private final int mSupportedContaminantProtectionModes;
    private final int mSupportedModes;
    private final boolean mSupportsComplianceWarnings;
    private final boolean mSupportsEnableContaminantPresenceDetection;
    private final boolean mSupportsEnableContaminantPresenceProtection;

    /* synthetic */ ParcelableUsbPort(String str, int i, int i2, boolean z, boolean z2, boolean z3, int i3, ParcelableUsbPortIA parcelableUsbPortIA) {
        this(str, i, i2, z, z2, z3, i3);
    }

    private ParcelableUsbPort(String id, int supportedModes, int supportedContaminantProtectionModes, boolean supportsEnableContaminantPresenceProtection, boolean supportsEnableContaminantPresenceDetection, boolean supportsComplianceWarnings, int supportedAltModesMask) {
        this.mId = id;
        this.mSupportedModes = supportedModes;
        this.mSupportedContaminantProtectionModes = supportedContaminantProtectionModes;
        this.mSupportsEnableContaminantPresenceProtection = supportsEnableContaminantPresenceProtection;
        this.mSupportsEnableContaminantPresenceDetection = supportsEnableContaminantPresenceDetection;
        this.mSupportsComplianceWarnings = supportsComplianceWarnings;
        this.mSupportedAltModesMask = supportedAltModesMask;
    }

    public static ParcelableUsbPort of(UsbPort port) {
        return new ParcelableUsbPort(port.getId(), port.getSupportedModes(), port.getSupportedContaminantProtectionModes(), port.supportsEnableContaminantPresenceProtection(), port.supportsEnableContaminantPresenceDetection(), port.supportsComplianceWarnings(), port.getSupportedAltModesMask());
    }

    public UsbPort getUsbPort(UsbManager usbManager) {
        return new UsbPort(usbManager, this.mId, this.mSupportedModes, this.mSupportedContaminantProtectionModes, this.mSupportsEnableContaminantPresenceProtection, this.mSupportsEnableContaminantPresenceDetection, this.mSupportsComplianceWarnings, this.mSupportedAltModesMask);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mId);
        dest.writeInt(this.mSupportedModes);
        dest.writeInt(this.mSupportedContaminantProtectionModes);
        dest.writeBoolean(this.mSupportsEnableContaminantPresenceProtection);
        dest.writeBoolean(this.mSupportsEnableContaminantPresenceDetection);
        dest.writeBoolean(this.mSupportsComplianceWarnings);
        dest.writeInt(this.mSupportedAltModesMask);
    }

    /* renamed from: android.hardware.usb.ParcelableUsbPort$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<ParcelableUsbPort> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableUsbPort createFromParcel(Parcel in) {
            String id = in.readString();
            int supportedModes = in.readInt();
            int supportedContaminantProtectionModes = in.readInt();
            boolean supportsEnableContaminantPresenceProtection = in.readBoolean();
            boolean supportsEnableContaminantPresenceDetection = in.readBoolean();
            boolean supportsComplianceWarnings = in.readBoolean();
            int supportedAltModesMask = in.readInt();
            return new ParcelableUsbPort(id, supportedModes, supportedContaminantProtectionModes, supportsEnableContaminantPresenceProtection, supportsEnableContaminantPresenceDetection, supportsComplianceWarnings, supportedAltModesMask);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableUsbPort[] newArray(int size) {
            return new ParcelableUsbPort[size];
        }
    }
}
