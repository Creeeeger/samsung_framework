package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class KeyAttestationApplicationId implements Parcelable {
    public static final Parcelable.Creator<KeyAttestationApplicationId> CREATOR = new Parcelable.Creator<KeyAttestationApplicationId>() { // from class: android.security.keymaster.KeyAttestationApplicationId.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId createFromParcel(Parcel source) {
            return new KeyAttestationApplicationId(source);
        }

        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId[] newArray(int size) {
            return new KeyAttestationApplicationId[size];
        }
    };
    private final KeyAttestationPackageInfo[] mAttestationPackageInfos;

    public KeyAttestationApplicationId(KeyAttestationPackageInfo[] mAttestationPackageInfos) {
        this.mAttestationPackageInfos = mAttestationPackageInfos;
    }

    public KeyAttestationPackageInfo[] getAttestationPackageInfos() {
        return this.mAttestationPackageInfos;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedArray(this.mAttestationPackageInfos, flags);
    }

    /* renamed from: android.security.keymaster.KeyAttestationApplicationId$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<KeyAttestationApplicationId> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId createFromParcel(Parcel source) {
            return new KeyAttestationApplicationId(source);
        }

        @Override // android.os.Parcelable.Creator
        public KeyAttestationApplicationId[] newArray(int size) {
            return new KeyAttestationApplicationId[size];
        }
    }

    KeyAttestationApplicationId(Parcel source) {
        this.mAttestationPackageInfos = (KeyAttestationPackageInfo[]) source.createTypedArray(KeyAttestationPackageInfo.CREATOR);
    }
}
