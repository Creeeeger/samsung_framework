package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class ServiceInstance implements Parcelable {
    public static final transient Parcelable.Creator<ServiceInstance> CREATOR = new Parcelable.Creator<ServiceInstance>() { // from class: com.sec.internal.constants.ims.entitilement.data.ServiceInstance.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceInstance createFromParcel(Parcel parcel) {
            return new ServiceInstance(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServiceInstance[] newArray(int i) {
            return new ServiceInstance[i];
        }
    };

    @SerializedName("config-parameters")
    public String configParameters;

    @SerializedName("end-time")
    public String endTime;

    @SerializedName("expiration-time")
    public Integer expirationTime;

    @SerializedName("friendly-name")
    public String friendlyName;

    @SerializedName("is-owner")
    public Boolean isOwner;
    public String msisdn;

    @SerializedName("provisioning-parameters")
    public ProvisioningParameters provisioningParameters;

    @SerializedName("service-instance-id")
    public String serviceInstanceId;

    @SerializedName("service-name")
    public String serviceName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ServiceInstance() {
    }

    protected ServiceInstance(Parcel parcel) {
        Boolean valueOf;
        this.serviceName = parcel.readString();
        this.serviceInstanceId = parcel.readString();
        byte readByte = parcel.readByte();
        if (readByte == 2) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(readByte != 0);
        }
        this.isOwner = valueOf;
        this.endTime = parcel.readString();
        this.expirationTime = parcel.readByte() != 0 ? Integer.valueOf(parcel.readInt()) : null;
        this.msisdn = parcel.readString();
        this.friendlyName = parcel.readString();
        this.provisioningParameters = (ProvisioningParameters) parcel.readValue(ProvisioningParameters.class.getClassLoader());
        this.configParameters = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.serviceName);
        parcel.writeString(this.serviceInstanceId);
        Boolean bool = this.isOwner;
        if (bool == null) {
            parcel.writeByte((byte) 2);
        } else {
            parcel.writeByte(bool.booleanValue() ? (byte) 1 : (byte) 0);
        }
        parcel.writeString(this.endTime);
        if (this.expirationTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.expirationTime.intValue());
        }
        parcel.writeString(this.msisdn);
        parcel.writeString(this.friendlyName);
        parcel.writeValue(this.provisioningParameters);
        parcel.writeString(this.configParameters);
    }
}
