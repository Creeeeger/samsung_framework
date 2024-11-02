package com.samsung.android.knox.cmfa;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public enum AuthActionType implements Parcelable {
    PHONE_LOCK,
    PHONE_UNLOCK,
    CONTAINER_LOCK,
    CONTAINER_UNLOCK,
    LAPTOP_LOCK,
    LAPTOP_UNLOCK;

    public static final Parcelable.Creator<AuthActionType> CREATOR = new Parcelable.Creator<AuthActionType>() { // from class: com.samsung.android.knox.cmfa.AuthActionType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthActionType[] newArray(int i) {
            return new AuthActionType[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthActionType createFromParcel(Parcel parcel) {
            return AuthActionType.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AuthActionType[] newArray(int i) {
            return new AuthActionType[i];
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
