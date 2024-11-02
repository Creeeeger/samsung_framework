package com.samsung.android.settingslib.bluetooth;

import android.content.Context;
import android.os.ParcelUuid;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class BluetoothRestoredDevice {
    public final String mAddress;
    public int mAppearance;
    public int mBondState;
    public int mCod;
    public int mLinkType = 0;
    public byte[] mManufacturerData;
    public String mName;
    public long mTimeStamp;
    public ParcelUuid[] mUuids;

    public BluetoothRestoredDevice(Context context, String str) {
        this.mAddress = str;
    }
}
