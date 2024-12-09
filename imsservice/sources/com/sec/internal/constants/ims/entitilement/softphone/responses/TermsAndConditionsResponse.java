package com.sec.internal.constants.ims.entitilement.softphone.responses;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.ImsConstants;

/* loaded from: classes.dex */
public class TermsAndConditionsResponse extends SoftphoneResponse {

    @SerializedName("tcResponse")
    public TCResponse mTCResponse;

    public static class TCResponse {

        @SerializedName(ImsConstants.FtDlParams.FT_DL_URL)
        public String mUrl;

        public String toString() {
            return "TCResponse [mUrl = " + this.mUrl + "]";
        }
    }

    @Override // com.sec.internal.constants.ims.entitilement.softphone.responses.SoftphoneResponse
    public String toString() {
        return "TermsAndConditionsResponse [mTCResponse = " + this.mTCResponse + "]";
    }
}
