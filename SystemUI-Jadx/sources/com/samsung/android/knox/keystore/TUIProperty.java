package com.samsung.android.knox.keystore;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TUIProperty implements Parcelable {
    public static final Parcelable.Creator<TUIProperty> CREATOR = new Parcelable.Creator<TUIProperty>() { // from class: com.samsung.android.knox.keystore.TUIProperty.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TUIProperty[] newArray(int i) {
            return new TUIProperty[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TUIProperty createFromParcel(Parcel parcel) {
            return new TUIProperty(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final TUIProperty[] newArray(int i) {
            return new TUIProperty[i];
        }
    };
    public int loginExpirationPeriod;
    public int loginRetry;
    public byte[] pin;
    public byte[] secretImage;

    public /* synthetic */ TUIProperty(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void readFromParcel(Parcel parcel) {
        this.loginRetry = parcel.readInt();
        this.loginExpirationPeriod = parcel.readInt();
        this.pin = parcel.createByteArray();
        this.secretImage = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.loginRetry);
        parcel.writeInt(this.loginExpirationPeriod);
        parcel.writeByteArray(this.pin);
        parcel.writeByteArray(this.secretImage);
    }

    public TUIProperty() {
        this.loginRetry = 2;
        this.loginExpirationPeriod = 120;
        this.pin = null;
        this.secretImage = null;
    }

    private TUIProperty(Parcel parcel) {
        this.loginRetry = 2;
        this.loginExpirationPeriod = 120;
        this.pin = null;
        this.secretImage = null;
        readFromParcel(parcel);
    }
}
