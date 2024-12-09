package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class ResponseGetMSISDN extends NSDSResponse {
    public static final Parcelable.Creator<ResponseGetMSISDN> CREATOR = new Parcelable.Creator<ResponseGetMSISDN>() { // from class: com.sec.internal.constants.ims.entitilement.data.ResponseGetMSISDN.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseGetMSISDN createFromParcel(Parcel parcel) {
            return new ResponseGetMSISDN(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseGetMSISDN[] newArray(int i) {
            return new ResponseGetMSISDN[i];
        }
    };
    public String msisdn;

    @SerializedName("service-fingerprint")
    public String serviceFingerprint;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected ResponseGetMSISDN(Parcel parcel) {
        super(parcel);
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.msisdn = parcel.readString();
        this.serviceFingerprint = parcel.readString();
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.msisdn);
        parcel.writeString(this.serviceFingerprint);
    }
}
