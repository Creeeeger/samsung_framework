package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class ResponseManageService extends NSDSResponse {
    public static final Parcelable.Creator<ResponseManageService> CREATOR = new Parcelable.Creator<ResponseManageService>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseManageService.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseManageService createFromParcel(Parcel parcel) {
            return new ResponseManageService(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseManageService[] newArray(int i) {
            return new ResponseManageService[i];
        }
    };

    @SerializedName("instance-token")
    public InstanceToken instanceToken;

    @SerializedName("service-instance")
    public ServiceInstance serviceInstance;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ResponseManageService(Parcel parcel) {
        super(parcel);
        this.serviceInstance = (ServiceInstance) parcel.readValue(ServiceInstance.class.getClassLoader());
        this.instanceToken = (InstanceToken) parcel.readValue(InstanceToken.class.getClassLoader());
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(this.serviceInstance);
        parcel.writeValue(this.instanceToken);
    }
}
