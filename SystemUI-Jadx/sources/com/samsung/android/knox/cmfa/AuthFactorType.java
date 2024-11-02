package com.samsung.android.knox.cmfa;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum AuthFactorType implements Parcelable {
    DEVICE_INTEGRITY,
    FACE_DETECTION,
    TOUCH_DETECTION,
    WATCH_ON,
    LAPTOP_PROXIMITY,
    ON_BODY_DETECTION,
    TRUSTED_LOCATION,
    TRUSTED_DEVICE,
    TRUSTED_SERVICE,
    PASSIVE_AUTH,
    PROCESS_ACTIVITY,
    LOCK_DETECTION,
    CRITICAL_EVENT_DETECTION;

    public static final Parcelable.Creator<AuthFactorType> CREATOR = new Parcelable.Creator<AuthFactorType>() { // from class: com.samsung.android.knox.cmfa.AuthFactorType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthFactorType[] newArray(int i) {
            return new AuthFactorType[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthFactorType createFromParcel(Parcel parcel) {
            return AuthFactorType.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AuthFactorType[] newArray(int i) {
            return new AuthFactorType[i];
        }
    };

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(name());
    }
}
