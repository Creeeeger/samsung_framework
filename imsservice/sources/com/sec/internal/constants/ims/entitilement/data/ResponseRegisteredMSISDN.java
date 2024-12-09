package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ResponseRegisteredMSISDN extends NSDSResponse {
    public static final Parcelable.Creator<ResponseRegisteredMSISDN> CREATOR = new Parcelable.Creator<ResponseRegisteredMSISDN>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseRegisteredMSISDN.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseRegisteredMSISDN createFromParcel(Parcel parcel) {
            return new ResponseRegisteredMSISDN(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseRegisteredMSISDN[] newArray(int i) {
            return new ResponseRegisteredMSISDN[i];
        }
    };

    @SerializedName("registered-msisdns")
    public ArrayList<RegisteredMSISDN> registeredMSISDNs;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ResponseRegisteredMSISDN(Parcel parcel) {
        super(parcel);
        if (parcel.readByte() == 1) {
            ArrayList<RegisteredMSISDN> arrayList = new ArrayList<>();
            this.registeredMSISDNs = arrayList;
            parcel.readList(arrayList, RegisteredMSISDN.class.getClassLoader());
            return;
        }
        this.registeredMSISDNs = null;
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (this.registeredMSISDNs == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeList(this.registeredMSISDNs);
        }
    }
}
