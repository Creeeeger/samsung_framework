package com.samsung.android.knox.kiosk;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class KioskSetting implements Parcelable {
    public static final Parcelable.Creator<KioskSetting> CREATOR = new Parcelable.Creator<KioskSetting>() { // from class: com.samsung.android.knox.kiosk.KioskSetting.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final KioskSetting createFromParcel(Parcel parcel) {
            return new KioskSetting(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final KioskSetting[] newArray(int i) {
            return new KioskSetting[i];
        }

        @Override // android.os.Parcelable.Creator
        public final KioskSetting createFromParcel(Parcel parcel) {
            return new KioskSetting(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final KioskSetting[] newArray(int i) {
            return new KioskSetting[i];
        }
    };
    public boolean airCommand;
    public boolean airView;
    public int blockedEdgeFunctions;
    public boolean clearAllNotifications;
    public List<Integer> hardwareKey;
    public boolean homeKey;
    public boolean multiWindow;
    public boolean navigationBar;
    public boolean settingsChanges;
    public boolean smartClip;
    public boolean statusBar;
    public boolean statusBarExpansion;
    public boolean systemBar;
    public boolean taskManager;
    public boolean wipeRecentTasks;

    public KioskSetting() {
    }

    public KioskSetting(Parcel parcel) {
        readFromParcel(parcel);
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
        boolean z13;
        boolean z14 = true;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.settingsChanges = z;
        if (parcel.readInt() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.statusBarExpansion = z2;
        if (parcel.readInt() != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.homeKey = z3;
        if (parcel.readInt() != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.airCommand = z4;
        if (parcel.readInt() != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        this.airView = z5;
        if (parcel.readInt() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            int[] createIntArray = parcel.createIntArray();
            this.hardwareKey = new ArrayList();
            for (int i : createIntArray) {
                this.hardwareKey.add(Integer.valueOf(i));
            }
        }
        if (parcel.readInt() != 0) {
            z7 = true;
        } else {
            z7 = false;
        }
        this.multiWindow = z7;
        if (parcel.readInt() != 0) {
            z8 = true;
        } else {
            z8 = false;
        }
        this.smartClip = z8;
        if (parcel.readInt() != 0) {
            z9 = true;
        } else {
            z9 = false;
        }
        this.taskManager = z9;
        if (parcel.readInt() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.clearAllNotifications = z10;
        if (parcel.readInt() != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.navigationBar = z11;
        if (parcel.readInt() != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.statusBar = z12;
        if (parcel.readInt() != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        this.systemBar = z13;
        if (parcel.readInt() == 0) {
            z14 = false;
        }
        this.wipeRecentTasks = z14;
        this.blockedEdgeFunctions = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.settingsChanges ? 1 : 0);
        parcel.writeInt(this.statusBarExpansion ? 1 : 0);
        parcel.writeInt(this.homeKey ? 1 : 0);
        parcel.writeInt(this.airCommand ? 1 : 0);
        parcel.writeInt(this.airView ? 1 : 0);
        if (this.hardwareKey != null) {
            parcel.writeInt(1);
            int[] iArr = new int[this.hardwareKey.size()];
            for (int i2 = 0; i2 != this.hardwareKey.size(); i2++) {
                iArr[i2] = this.hardwareKey.get(i2).intValue();
            }
            parcel.writeIntArray(iArr);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.multiWindow ? 1 : 0);
        parcel.writeInt(this.smartClip ? 1 : 0);
        parcel.writeInt(this.taskManager ? 1 : 0);
        parcel.writeInt(this.clearAllNotifications ? 1 : 0);
        parcel.writeInt(this.navigationBar ? 1 : 0);
        parcel.writeInt(this.statusBar ? 1 : 0);
        parcel.writeInt(this.systemBar ? 1 : 0);
        parcel.writeInt(this.wipeRecentTasks ? 1 : 0);
        parcel.writeInt(this.blockedEdgeFunctions);
    }
}
