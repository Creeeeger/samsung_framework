package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ResponseServiceEntitlementStatus extends NSDSResponse {
    public static final Parcelable.Creator<ResponseServiceEntitlementStatus> CREATOR = new Parcelable.Creator<ResponseServiceEntitlementStatus>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseServiceEntitlementStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseServiceEntitlementStatus createFromParcel(Parcel parcel) {
            return new ResponseServiceEntitlementStatus(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseServiceEntitlementStatus[] newArray(int i) {
            return new ResponseServiceEntitlementStatus[i];
        }
    };

    @SerializedName("enable-notifications")
    public Boolean enableNotifications;

    @SerializedName("poll-interval")
    public Integer pollInterval;

    @SerializedName("service-entitlement")
    public ArrayList<ServiceEntitlement> serviceEntitlementList;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ResponseServiceEntitlementStatus(Parcel parcel) {
        super(parcel);
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        if (parcel.readByte() == 1) {
            ArrayList<ServiceEntitlement> arrayList = new ArrayList<>();
            this.serviceEntitlementList = arrayList;
            parcel.readTypedList(arrayList, ServiceEntitlement.CREATOR);
            return;
        }
        this.serviceEntitlementList = null;
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (this.serviceEntitlementList == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeTypedList(this.serviceEntitlementList);
        }
    }
}
