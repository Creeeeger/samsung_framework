package com.sec.internal.constants.ims.entitilement.softphone.requests;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.entitilement.SoftphoneContract;

/* loaded from: classes.dex */
public class AddressValidationRequest {

    @SerializedName("e911Context")
    public E911Context mE911Context;

    public static class E911Context {

        @SerializedName("address")
        public Address mAddress;

        @SerializedName("isAddressConfirmed")
        public String mConfirmed;

        public E911Context(Address address, String str) {
            this.mAddress = address;
            this.mConfirmed = str;
        }

        public String toString() {
            return "E911Context [mAddress = " + this.mAddress + ", mConfirmed = " + this.mConfirmed + "]";
        }
    }

    public static class Address {

        @SerializedName(SoftphoneContract.AddressColumns.ADDITIONAL_ADDRESS_INFO)
        public String addressAdditional;

        @SerializedName(SoftphoneContract.AddressColumns.CITY)
        public String city;

        @SerializedName(SoftphoneContract.AddressColumns.HOUSE_NUMBER_EXTENSION)
        public String houseNumExt;

        @SerializedName(SoftphoneContract.AddressColumns.HOUSE_NUMBER)
        public String houseNumber;

        @SerializedName("name")
        public String name;

        @SerializedName("state")
        public String state;

        @SerializedName(SoftphoneContract.AddressColumns.STREET_NAME)
        public String street;

        @SerializedName(SoftphoneContract.AddressColumns.STREET_DIRECTION_PREFIX)
        public String streetDir;

        @SerializedName(SoftphoneContract.AddressColumns.STREET_DIRECTION_SUFFIX)
        public String streetDirSuffix;

        @SerializedName(SoftphoneContract.AddressColumns.STREET_NAME_SUFFIX)
        public String streetNameSuffix;

        @SerializedName(SoftphoneContract.AddressColumns.ZIP)
        public String zip;

        public Address(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
            this.name = str;
            this.houseNumber = str2;
            this.houseNumExt = str3;
            this.streetDir = str4;
            this.street = str5;
            this.streetNameSuffix = str6;
            this.streetDirSuffix = str7;
            this.city = str8;
            this.state = str9;
            this.zip = str10;
            this.addressAdditional = str11;
        }

        public String toString() {
            return "Address [name = " + this.name + ", houseNumber = " + this.houseNumber + ", houseNumExt = " + this.houseNumExt + ", streetDir = " + this.streetDir + ", street = " + this.street + ", streetNameSuffix = " + this.streetNameSuffix + ", streetDirSuffix = " + this.streetDirSuffix + ", city = " + this.city + ", state = " + this.state + ", zip = " + this.zip + ", addressAdditional = " + this.addressAdditional + "]";
        }
    }

    public AddressValidationRequest(Address address, String str) {
        this.mE911Context = new E911Context(address, str);
    }

    public String toString() {
        return "AddressValidationRequest [mE911Context = " + this.mE911Context + "]";
    }
}
