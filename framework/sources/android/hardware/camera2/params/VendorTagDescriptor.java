package android.hardware.camera2.params;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class VendorTagDescriptor implements Parcelable {
    public static final Parcelable.Creator<VendorTagDescriptor> CREATOR = new Parcelable.Creator<VendorTagDescriptor>() { // from class: android.hardware.camera2.params.VendorTagDescriptor.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptor createFromParcel(Parcel source) {
            return new VendorTagDescriptor(source);
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptor[] newArray(int size) {
            return new VendorTagDescriptor[size];
        }
    };
    private static final String TAG = "VendorTagDescriptor";

    /* synthetic */ VendorTagDescriptor(Parcel parcel, VendorTagDescriptorIA vendorTagDescriptorIA) {
        this(parcel);
    }

    private VendorTagDescriptor(Parcel source) {
    }

    /* renamed from: android.hardware.camera2.params.VendorTagDescriptor$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<VendorTagDescriptor> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptor createFromParcel(Parcel source) {
            return new VendorTagDescriptor(source);
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptor[] newArray(int size) {
            return new VendorTagDescriptor[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        if (dest == null) {
            throw new IllegalArgumentException("dest must not be null");
        }
    }
}
