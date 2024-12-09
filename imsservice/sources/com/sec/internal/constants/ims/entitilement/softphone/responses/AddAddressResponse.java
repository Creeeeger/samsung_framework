package com.sec.internal.constants.ims.entitilement.softphone.responses;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: classes.dex */
public class AddAddressResponse extends SoftphoneResponse {

    @SerializedName("locationResponse")
    public LocationResponse mLocationResponse;

    public static class LocationResponse {

        @SerializedName("locations")
        public List<String> mLocations;

        public String toString() {
            return "LocationResponse [mLocations = " + this.mLocations + "]";
        }
    }

    @Override // com.sec.internal.constants.ims.entitilement.softphone.responses.SoftphoneResponse
    public String toString() {
        return "AddAddressResponse [mLocationResponse = " + this.mLocationResponse + "]";
    }
}
