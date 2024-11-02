package com.samsung.android.knox.lockscreen;

import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOItemSpace extends LSOItemData {
    public LSOItemSpace() {
        super((byte) 1);
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final String toString() {
        return "SpaceView " + super.toString();
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    public LSOItemSpace(Parcel parcel) {
        super((byte) 1, parcel);
    }

    public LSOItemSpace(int i, int i2) {
        super((byte) 1);
        setDimension(i, i2);
    }

    public LSOItemSpace(int i, int i2, float f) {
        super((byte) 1);
        setDimension(i, i2, f);
    }
}
