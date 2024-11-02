package com.samsung.android.knox.lockscreen;

import android.os.Parcel;
import android.os.ParcelFormatException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOItemContainer extends LSOItemData {
    public static final int LSO_FIELD_BG = 256;
    public static final int LSO_FIELD_ORIENTATION = 128;
    public String bgImagePath;
    public List<LSOItemData> childObj;
    public ORIENTATION orientation;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum ORIENTATION {
        VERTICAL,
        HORIZONTAL
    }

    public LSOItemContainer() {
        super((byte) 4);
        this.orientation = ORIENTATION.VERTICAL;
        this.childObj = new ArrayList();
    }

    public final boolean addItem(LSOItemData lSOItemData) {
        return this.childObj.add(lSOItemData);
    }

    public final String getBGImagePath() {
        return this.bgImagePath;
    }

    public final LSOItemData getItem(int i) {
        return this.childObj.get(i);
    }

    public final int getNumItems() {
        return this.childObj.size();
    }

    public final ORIENTATION getOrientation() {
        return this.orientation;
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final void readFromParcel(Parcel parcel) {
        ORIENTATION orientation;
        super.readFromParcel(parcel);
        if (readByteFromParcel(parcel, 128) == 0) {
            orientation = ORIENTATION.VERTICAL;
        } else {
            orientation = ORIENTATION.HORIZONTAL;
        }
        this.orientation = orientation;
        this.bgImagePath = readStringFromParcel(parcel, 256);
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            LSOItemData createFromParcel = LSOItemData.CREATOR.createFromParcel(parcel);
            if (createFromParcel != null) {
                this.childObj.add(createFromParcel);
            } else {
                throw new ParcelFormatException("Parcel format exception");
            }
        }
    }

    public final void setBGImage(String str) {
        this.bgImagePath = str;
        updateFieldFlag(256);
    }

    public final void setOrientation(ORIENTATION orientation) {
        this.orientation = orientation;
        updateFieldFlag(128);
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData
    public final String toString() {
        String str;
        String lSOItemData = toString("ContainerView " + super.toString(), 256, "BG_IMAGE:" + this.bgImagePath);
        if (this.orientation == ORIENTATION.VERTICAL) {
            str = "VERTICAL";
        } else {
            str = "HORIZONTAL";
        }
        return toString(lSOItemData, 128, "Orientation:".concat(str));
    }

    @Override // com.samsung.android.knox.lockscreen.LSOItemData, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        super.writeToParcel(parcel, i);
        if (this.orientation == ORIENTATION.VERTICAL) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        writeToParcel(parcel, 128, (byte) i2);
        writeToParcel(parcel, 256, this.bgImagePath);
        parcel.writeInt(this.childObj.size());
        for (int i3 = 0; i3 < this.childObj.size(); i3++) {
            this.childObj.get(i3).writeToParcel(parcel, i);
        }
    }

    public LSOItemContainer(Parcel parcel) {
        super((byte) 4);
        this.childObj = new ArrayList();
        readFromParcel(parcel);
    }
}
