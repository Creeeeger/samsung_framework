package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class ServiceEntitlement implements Parcelable {
    public static final Parcelable.Creator<ServiceEntitlement> CREATOR = new Parcelable.Creator<ServiceEntitlement>() { // from class: com.sec.internal.constants.ims.entitilement.data.ServiceEntitlement.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceEntitlement createFromParcel(Parcel parcel) {
            return new ServiceEntitlement(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceEntitlement[] newArray(int i) {
            return new ServiceEntitlement[i];
        }
    };

    @SerializedName("client-id")
    public String clientId;

    @SerializedName("display-name")
    public String displayName;

    @SerializedName("entitlement-status")
    public int entitlementStatus;

    @SerializedName("management-websheet")
    public Boolean managementWebsheet;

    @SerializedName("on-demand-prov")
    public Boolean onDemandProv;

    @SerializedName("service-name")
    public String serviceName;

    @SerializedName("visible")
    public Boolean visible;

    @SerializedName("websheet-pre-activation")
    public Boolean websheetPreActivation;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ServiceEntitlement(Parcel parcel) {
        Boolean valueOf;
        Boolean valueOf2;
        Boolean valueOf3;
        this.serviceName = parcel.readString();
        this.entitlementStatus = parcel.readInt();
        byte readByte = parcel.readByte();
        Boolean bool = null;
        if (readByte == 2) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(readByte != 0);
        }
        this.onDemandProv = valueOf;
        this.clientId = parcel.readString();
        this.displayName = parcel.readString();
        byte readByte2 = parcel.readByte();
        if (readByte2 == 2) {
            valueOf2 = null;
        } else {
            valueOf2 = Boolean.valueOf(readByte2 != 0);
        }
        this.visible = valueOf2;
        byte readByte3 = parcel.readByte();
        if (readByte3 == 2) {
            valueOf3 = null;
        } else {
            valueOf3 = Boolean.valueOf(readByte3 != 0);
        }
        this.websheetPreActivation = valueOf3;
        byte readByte4 = parcel.readByte();
        if (readByte4 != 2) {
            bool = Boolean.valueOf(readByte4 != 0);
        }
        this.managementWebsheet = bool;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.serviceName);
        parcel.writeInt(this.entitlementStatus);
        Boolean bool = this.onDemandProv;
        if (bool == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool.booleanValue() ? (byte) 1 : (byte) 0);
        }
        parcel.writeString(this.clientId);
        parcel.writeString(this.displayName);
        Boolean bool2 = this.visible;
        if (bool2 == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool2.booleanValue() ? (byte) 1 : (byte) 0);
        }
        Boolean bool3 = this.websheetPreActivation;
        if (bool3 == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool3.booleanValue() ? (byte) 1 : (byte) 0);
        }
        Boolean bool4 = this.managementWebsheet;
        if (bool4 == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool4.booleanValue() ? (byte) 1 : (byte) 0);
        }
    }
}
