package com.sec.internal.ims.util;

import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class UriGeneratorDT extends UriGeneratorImpl {
    private static final String LOG_TAG = "UriGeneratorDT";
    protected String mPhoneContext;

    public UriGeneratorDT(ImsUri.UriType uriType, String str, String str2, String str3, ITelephonyManager iTelephonyManager, int i, int i2, ImsProfile imsProfile) {
        super(uriType, str, str2, iTelephonyManager, i, i2, imsProfile);
        this.mPhoneContext = str3;
        Log.d(LOG_TAG, "mDomain " + this.mDomain);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl
    protected ImsUri getNetworkPreferredUriInternal(String str, String str2, ImsUri.UriType uriType, String str3) {
        return getNetworkPreferredUriInternal(str, str2, uriType, str3, null);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl
    protected ImsUri getNetworkPreferredUriInternal(String str, String str2, ImsUri.UriType uriType, UriGenerator.URIServiceType uRIServiceType) {
        ImsUri sipUri;
        IMSLog.s(LOG_TAG, "getNetworkPreferredUri: mDomain " + this.mDomain);
        IMSLog.s(LOG_TAG, "getNetworkPreferredUri: mPhoneContext " + this.mPhoneContext);
        if (isLocalNumber(str) && !DeviceUtil.getGcfMode()) {
            String networkOperator = (this.mProfile != null && uRIServiceType == UriGenerator.URIServiceType.VOLTE_URI && this.mRat == 13 && isRoaming() && "geo-local".equals(this.mProfile.getPolicyOnLocalNumbers())) ? this.mTelephonyManager.getNetworkOperator(this.mSubscriptionId) : null;
            if (TextUtils.length(networkOperator) > 4) {
                str = str + ";phone-context=" + networkOperator.substring(0, 3) + "." + networkOperator.substring(3) + ".eps." + this.mPhoneContext;
            } else {
                str = str + ";phone-context=" + this.mPhoneContext;
            }
        }
        if (uriType == ImsUri.UriType.TEL_URI) {
            sipUri = ImsUri.parse("tel:" + str);
        } else {
            sipUri = getSipUri(str, this.mDomain, str2);
        }
        IMSLog.s(LOG_TAG, "getNetworkPreferredUri: " + sipUri);
        return sipUri;
    }
}
