package com.sec.internal.constants.ims.gls;

import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class LocationInfo {
    public String mLatitude = "";
    public String mLongitude = "";
    public String mAltitude = "";
    public String mAccuracy = "";
    public String mVerticalAxis = "";
    public String mOrientation = "";
    public String mProviderType = "";
    public String mRetentionExpires = "";
    public String mSRSName = "";
    public String mRadiusUOM = "";
    public String mOS = "";
    public String mDeviceId = "";
    public String mCountry = "";
    public String mA1 = "";
    public String mA3 = "";
    public String mA6 = "";
    public String mHNO = "";
    public String mPC = "";
    public String mLocationTime = "";

    public String toString() {
        if (IMSLog.isShipBuild()) {
            return IMSLog.realNumberMasker("mCountry = " + this.mCountry + ", mLatitude = " + this.mLatitude + ", mLongitude = " + this.mLongitude + ", mAltitude = " + this.mAltitude + ", mAccuracy = " + this.mAccuracy + ", mVerticalAxis = " + this.mVerticalAxis);
        }
        return "mLatitude = " + this.mLatitude + ", mLongitude = " + this.mLongitude + ", mAltitude = " + this.mAltitude + ", mAccuracy = " + this.mAccuracy + ", mVerticalAxis = " + this.mVerticalAxis + ", mOrientation = " + this.mOrientation + ", mProviderType = " + this.mProviderType + ", mRetentionExpires = " + this.mRetentionExpires + ", mSRSName = " + this.mSRSName + ", mRadiusUOM = " + this.mRadiusUOM + ", mOS = " + this.mOS + ", mDeviceId = " + this.mDeviceId + ", mCountry = " + this.mCountry + ", mA1 = " + this.mA1 + ", mA3 = " + this.mA3 + ", mA6 = " + this.mA6 + ", mHNO = " + this.mHNO + ", mPC = " + this.mPC + ", mLocationTime = " + this.mLocationTime;
    }
}
