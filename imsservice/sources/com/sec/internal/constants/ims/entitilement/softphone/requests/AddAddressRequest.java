package com.sec.internal.constants.ims.entitilement.softphone.requests;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.ims.servicemodules.gls.GlsIntent;

/* loaded from: classes.dex */
public class AddAddressRequest {

    @SerializedName("locationRequest")
    public LocationRequest mLocationRequest;

    public static class LocationRequest {

        @SerializedName(GlsIntent.Extras.EXTRA_LOCATION)
        public String mLocation;

        public LocationRequest(String str) {
            this.mLocation = str;
        }

        public String toString() {
            return "LocationRequest [mLocation = " + this.mLocation + "]";
        }
    }

    public AddAddressRequest(String str) {
        this.mLocationRequest = new LocationRequest(str);
    }

    public String toString() {
        return "AddAddressRequest [mLocationRequest = " + this.mLocationRequest + "]";
    }
}
