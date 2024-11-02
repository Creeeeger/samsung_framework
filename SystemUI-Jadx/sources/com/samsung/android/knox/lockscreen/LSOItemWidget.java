package com.samsung.android.knox.lockscreen;

import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOItemWidget extends LSOItemData {
    public static final int LSO_FIELD_PACKAGE_NAME = 128;
    public String packageName;

    public LSOItemWidget() {
        super((byte) 5);
    }

    public final String getWidget() {
        return this.packageName;
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.packageName = readStringFromParcel(parcel, 128);
    }

    public final void setWidget(String str) {
        this.packageName = str;
        updateFieldFlag(128);
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final String toString() {
        return toString("CustomWidget: " + super.toString(), 128, "PackageName:" + this.packageName);
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        writeToParcel(parcel, 128, this.packageName);
    }

    public LSOItemWidget(Parcel parcel) {
        super((byte) 5, parcel);
    }

    public LSOItemWidget(int i, int i2) {
        super((byte) 5);
        setDimension(i, i2);
    }

    public LSOItemWidget(int i, int i2, float f) {
        super((byte) 5);
        setDimension(i, i2, f);
    }
}
