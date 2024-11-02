package com.samsung.android.knox.container;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class EnterpriseContainerObject implements EnterpriseContainerConstants, Parcelable {
    public static final Parcelable.Creator<EnterpriseContainerObject> CREATOR = new Parcelable.Creator<EnterpriseContainerObject>() { // from class: com.samsung.android.knox.container.EnterpriseContainerObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EnterpriseContainerObject createFromParcel(Parcel parcel) {
            return new EnterpriseContainerObject(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final EnterpriseContainerObject createFromParcel(Parcel parcel) {
            return new EnterpriseContainerObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EnterpriseContainerObject[] newArray(int i) {
            Log.d("EnterpriseContainerObject", "EnterpriseContainerObject[] array to be created");
            return new EnterpriseContainerObject[i];
        }
    };
    public int admin;
    public int containerType;
    public String email;
    public int id;
    public int lockType;
    public String name;

    public EnterpriseContainerObject() {
        this.id = -1;
        this.admin = -1;
        this.email = null;
        this.name = null;
        this.lockType = 0;
        this.containerType = 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int getContainerAdmin() {
        return this.admin;
    }

    public final String getContainerEmail() {
        return this.email;
    }

    public final int getContainerId() {
        return this.id;
    }

    public final int getContainerLockType() {
        return this.lockType;
    }

    public final String getContainerName() {
        return this.name;
    }

    public final int getContainerType() {
        return this.containerType;
    }

    public final void setContainerAdmin(int i) {
        this.admin = i;
    }

    public final void setContainerEmail(String str) {
        this.email = str;
    }

    public final void setContainerId(int i) {
        this.id = i;
    }

    public final void setContainerLockType(int i) {
        this.lockType = i;
    }

    public final void setContainerName(String str) {
        this.name = str;
    }

    public final void setContainerType(int i) {
        this.containerType = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeInt(this.admin);
        String str = this.email;
        if (str != null) {
            parcel.writeString(str);
        } else {
            parcel.writeString("");
        }
        String str2 = this.name;
        if (str2 != null) {
            parcel.writeString(str2);
        } else {
            parcel.writeString("");
        }
        parcel.writeInt(this.lockType);
        parcel.writeInt(this.containerType);
    }

    public EnterpriseContainerObject(Parcel parcel) {
        this.id = -1;
        this.admin = -1;
        this.email = null;
        this.name = null;
        this.lockType = 0;
        this.containerType = 0;
        this.id = parcel.readInt();
        this.admin = parcel.readInt();
        this.email = parcel.readString();
        this.name = parcel.readString();
        this.lockType = parcel.readInt();
        this.containerType = parcel.readInt();
    }
}
