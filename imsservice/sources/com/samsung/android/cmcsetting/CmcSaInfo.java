package com.samsung.android.cmcsetting;

/* loaded from: classes.dex */
public class CmcSaInfo {
    private String mSaUserId = "";
    private String mSaAccessToken = "";

    public void setSaUserId(String str) {
        this.mSaUserId = str;
    }

    public void setSaAccessToken(String str) {
        this.mSaAccessToken = str;
    }

    public String getSaAccessToken() {
        return this.mSaAccessToken;
    }

    public String toString() {
        return (("{saUserId:" + this.mSaUserId) + ",saAccessToken:" + this.mSaAccessToken) + "}";
    }
}
