package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class KeymasterBlob implements Parcelable {
    public static final Parcelable.Creator<KeymasterBlob> CREATOR = new Parcelable.Creator<KeymasterBlob>() { // from class: android.security.keymaster.KeymasterBlob.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public KeymasterBlob createFromParcel(Parcel in) {
            return new KeymasterBlob(in);
        }

        @Override // android.os.Parcelable.Creator
        public KeymasterBlob[] newArray(int length) {
            return new KeymasterBlob[length];
        }
    };
    public byte[] blob;

    public KeymasterBlob(byte[] blob) {
        this.blob = blob;
    }

    /* renamed from: android.security.keymaster.KeymasterBlob$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<KeymasterBlob> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public KeymasterBlob createFromParcel(Parcel in) {
            return new KeymasterBlob(in);
        }

        @Override // android.os.Parcelable.Creator
        public KeymasterBlob[] newArray(int length) {
            return new KeymasterBlob[length];
        }
    }

    protected KeymasterBlob(Parcel in) {
        this.blob = in.createByteArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeByteArray(this.blob);
    }
}
