package com.sec.internal.constants.ims.entitilement.softphone.responses;

import com.google.gson.annotations.SerializedName;
import com.sec.internal.constants.ims.entitilement.SoftphoneContract;

/* loaded from: classes.dex */
public class AccessTokenResponse extends SoftphoneResponse {

    @SerializedName("access_token")
    public String mAccessToken;

    @SerializedName("expires_in")
    public String mExpiresIn;

    @SerializedName("refresh_token")
    public String mRefreshToken;

    @SerializedName(SoftphoneContract.AccountColumns.TOKEN_TYPE)
    public String mTokenType;

    @Override // com.sec.internal.constants.ims.entitilement.softphone.responses.SoftphoneResponse
    public String toString() {
        return "AccessTokenResponse [mAccessToken = " + this.mAccessToken + ", mTokenType = " + this.mTokenType + ", mExpiresIn = " + this.mExpiresIn + ", mRefreshToken = " + this.mRefreshToken + "]";
    }
}
