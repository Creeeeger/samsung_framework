package com.sec.internal.constants.ims.entitilement.data;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class RegisteredMSISDN {

    @SerializedName("default-account")
    public Boolean defaultAccount;

    @SerializedName("is-owner")
    public Boolean isOwner;

    @SerializedName("line-metadata")
    public String lineMetadata;

    @SerializedName("line-name")
    public String lineName;
    public String msisdn;

    @SerializedName("service-fingerprint")
    public String serviceFingerprint;

    @SerializedName("service-name")
    public String serviceName;
}
