package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ResponseRegisteredDevices extends NSDSResponse {
    public static final Parcelable.Creator<ResponseRegisteredDevices> CREATOR = new Parcelable.Creator<ResponseRegisteredDevices>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseRegisteredDevices.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseRegisteredDevices createFromParcel(Parcel parcel) {
            return new ResponseRegisteredDevices(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseRegisteredDevices[] newArray(int i) {
            return new ResponseRegisteredDevices[i];
        }
    };

    @SerializedName("device-info")
    public ArrayList<DeviceInstance> deviceInstance;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ResponseRegisteredDevices(Parcel parcel) {
        super(parcel);
        if (parcel.readByte() == 1) {
            ArrayList<DeviceInstance> arrayList = new ArrayList<>();
            this.deviceInstance = arrayList;
            parcel.readList(arrayList, DeviceInstance.class.getClassLoader());
            return;
        }
        this.deviceInstance = null;
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (this.deviceInstance == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeList(this.deviceInstance);
        }
    }
}
