package com.sec.internal.constants.ims.entitilement.softphone.responses;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class GeneralErrorResponse {

    @SerializedName("error")
    public String mError;

    public String toString() {
        return "GeneralErrorResponse [mError = " + this.mError + "]";
    }
}
