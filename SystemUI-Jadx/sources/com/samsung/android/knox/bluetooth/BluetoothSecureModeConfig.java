package com.samsung.android.knox.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class BluetoothSecureModeConfig implements Parcelable {
    public static final Parcelable.Creator<BluetoothSecureModeConfig> CREATOR = new Parcelable.Creator<BluetoothSecureModeConfig>() { // from class: com.samsung.android.knox.bluetooth.BluetoothSecureModeConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BluetoothSecureModeConfig[] newArray(int i) {
            return new BluetoothSecureModeConfig[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BluetoothSecureModeConfig createFromParcel(Parcel parcel) {
            return new BluetoothSecureModeConfig(parcel, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final BluetoothSecureModeConfig[] newArray(int i) {
            return new BluetoothSecureModeConfig[i];
        }
    };
    public boolean a2dpEnable;
    public boolean ftpEnable;
    public boolean gattEnable;
    public boolean hdpEnable;
    public boolean hfpEnable;
    public boolean hidEnable;
    public boolean mapEnable;
    public boolean oppEnable;
    public boolean pairingMode;
    public boolean panEnable;
    public boolean pbapEnable;
    public boolean sapEnable;
    public boolean scanMode;
    public boolean whitelistEnable;

    public /* synthetic */ BluetoothSecureModeConfig(Parcel parcel, int i) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void readFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        if (parcel == null) {
            return;
        }
        boolean z13 = false;
        if (parcel.readInt() == 0) {
            z = false;
        } else {
            z = true;
        }
        this.scanMode = z;
        if (parcel.readInt() == 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.pairingMode = z2;
        if (parcel.readInt() == 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.hfpEnable = z3;
        if (parcel.readInt() == 0) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.a2dpEnable = z4;
        if (parcel.readInt() == 0) {
            z5 = false;
        } else {
            z5 = true;
        }
        this.hidEnable = z5;
        if (parcel.readInt() == 0) {
            z6 = false;
        } else {
            z6 = true;
        }
        this.hdpEnable = z6;
        if (parcel.readInt() == 0) {
            z7 = false;
        } else {
            z7 = true;
        }
        this.panEnable = z7;
        if (parcel.readInt() == 0) {
            z8 = false;
        } else {
            z8 = true;
        }
        this.oppEnable = z8;
        if (parcel.readInt() == 0) {
            z9 = false;
        } else {
            z9 = true;
        }
        this.pbapEnable = z9;
        if (parcel.readInt() == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.mapEnable = z10;
        if (parcel.readInt() == 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        this.ftpEnable = z11;
        if (parcel.readInt() == 0) {
            z12 = false;
        } else {
            z12 = true;
        }
        this.sapEnable = z12;
        if (parcel.readInt() != 0) {
            z13 = true;
        }
        this.whitelistEnable = z13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel == null) {
            return;
        }
        parcel.writeInt(this.scanMode ? 1 : 0);
        parcel.writeInt(this.pairingMode ? 1 : 0);
        parcel.writeInt(this.hfpEnable ? 1 : 0);
        parcel.writeInt(this.a2dpEnable ? 1 : 0);
        parcel.writeInt(this.hidEnable ? 1 : 0);
        parcel.writeInt(this.hdpEnable ? 1 : 0);
        parcel.writeInt(this.panEnable ? 1 : 0);
        parcel.writeInt(this.oppEnable ? 1 : 0);
        parcel.writeInt(this.pbapEnable ? 1 : 0);
        parcel.writeInt(this.mapEnable ? 1 : 0);
        parcel.writeInt(this.ftpEnable ? 1 : 0);
        parcel.writeInt(this.sapEnable ? 1 : 0);
        parcel.writeInt(this.whitelistEnable ? 1 : 0);
    }

    private BluetoothSecureModeConfig(Parcel parcel) {
        readFromParcel(parcel);
    }

    public BluetoothSecureModeConfig() {
    }
}
