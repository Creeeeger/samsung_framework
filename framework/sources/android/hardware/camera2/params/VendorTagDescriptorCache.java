package android.hardware.camera2.params;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class VendorTagDescriptorCache implements Parcelable {
    public static final Parcelable.Creator<VendorTagDescriptorCache> CREATOR = new Parcelable.Creator<VendorTagDescriptorCache>() { // from class: android.hardware.camera2.params.VendorTagDescriptorCache.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache createFromParcel(Parcel source) {
            return new VendorTagDescriptorCache(source);
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache[] newArray(int size) {
            return new VendorTagDescriptorCache[size];
        }
    };
    private static final String TAG = "VendorTagDescriptorCache";

    /* synthetic */ VendorTagDescriptorCache(Parcel parcel, VendorTagDescriptorCacheIA vendorTagDescriptorCacheIA) {
        this(parcel);
    }

    private VendorTagDescriptorCache(Parcel source) {
    }

    /* renamed from: android.hardware.camera2.params.VendorTagDescriptorCache$1 */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Parcelable.Creator<VendorTagDescriptorCache> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache createFromParcel(Parcel source) {
            return new VendorTagDescriptorCache(source);
        }

        @Override // android.os.Parcelable.Creator
        public VendorTagDescriptorCache[] newArray(int size) {
            return new VendorTagDescriptorCache[size];
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
