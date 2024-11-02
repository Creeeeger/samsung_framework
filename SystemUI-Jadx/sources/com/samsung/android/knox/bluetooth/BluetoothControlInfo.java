package com.samsung.android.knox.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import com.samsung.android.knox.ControlInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class BluetoothControlInfo extends ControlInfo {
    public static final Parcelable.Creator<BluetoothControlInfo> CREATOR = new Parcelable.Creator<BluetoothControlInfo>() { // from class: com.samsung.android.knox.bluetooth.BluetoothControlInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BluetoothControlInfo[] newArray(int i) {
            return new BluetoothControlInfo[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BluetoothControlInfo createFromParcel(Parcel parcel) {
            return new BluetoothControlInfo(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final BluetoothControlInfo[] newArray(int i) {
            return new BluetoothControlInfo[i];
        }
    };

    public /* synthetic */ BluetoothControlInfo(Parcel parcel, int i) {
        this(parcel);
    }

    public BluetoothControlInfo() {
    }

    private BluetoothControlInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
