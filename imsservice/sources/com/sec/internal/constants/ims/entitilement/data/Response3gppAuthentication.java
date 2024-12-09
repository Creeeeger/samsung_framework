package com.sec.internal.constants.ims.entitilement.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class Response3gppAuthentication extends NSDSResponse {
    public static final Parcelable.Creator<Response3gppAuthentication> CREATOR = new Parcelable.Creator<Response3gppAuthentication>() { // from class: com.sec.internal.constants.ims.entitilement.data.Response3gppAuthentication.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Response3gppAuthentication createFromParcel(Parcel parcel) {
            return new Response3gppAuthentication(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Response3gppAuthentication[] newArray(int i) {
            return new Response3gppAuthentication[i];
        }
    };

    @SerializedName("aka-challenge")
    public String akaChallenge;

    @SerializedName("aka-token")
    public String akaToken;

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Response3gppAuthentication(Parcel parcel) {
        super(parcel);
        this.akaChallenge = parcel.readString();
        this.akaToken = parcel.readString();
    }

    @Override // com.sec.internal.constants.ims.entitilement.data.NSDSResponse, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.akaChallenge);
        parcel.writeString(this.akaToken);
    }
}
