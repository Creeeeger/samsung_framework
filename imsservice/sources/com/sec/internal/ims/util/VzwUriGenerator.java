package com.sec.internal.ims.util;

import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class VzwUriGenerator extends UriGeneratorUs {
    private static final String LOG_TAG = "VzwUriGenerator";

    public VzwUriGenerator(ImsUri.UriType uriType, String str, ITelephonyManager iTelephonyManager, int i, int i2, ImsProfile imsProfile) {
        super(uriType, str, iTelephonyManager, i, i2, imsProfile);
        Log.d(LOG_TAG, "mDomain " + this.mDomain);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl, com.sec.internal.ims.util.UriGenerator
    public ImsUri normalize(ImsUri imsUri) {
        return super.normalize(imsUri);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorUs, com.sec.internal.ims.util.UriGeneratorImpl, com.sec.internal.ims.util.UriGenerator
    public ImsUri getNormalizedUri(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
            Log.d(LOG_TAG, "getNormalizedUri: invalid special character in number");
            return null;
        }
        if (str.length() == 7 && this.mOwnAreaCode != null) {
            str = this.mOwnAreaCode + str;
            Log.d(LOG_TAG, "local number format, adding own area code " + IMSLog.checker(str));
        }
        if ("mx".equalsIgnoreCase(this.mCountryCode) && !str.startsWith("+")) {
            str = "1" + str;
            Log.d(LOG_TAG, "getNormalizedUri: Added 1 for Mexico " + IMSLog.checker(str));
        }
        return UriUtil.parseNumber(str, this.mCountryCode);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl, com.sec.internal.ims.util.UriGenerator
    public ImsUri getNetworkPreferredUri(ImsUri imsUri) {
        if (this.mUriType == imsUri.getUriType()) {
            return imsUri;
        }
        if (this.mUriType == ImsUri.UriType.SIP_URI) {
            if ("sip".equalsIgnoreCase(imsUri.getScheme())) {
                return imsUri;
            }
            String msisdn = imsUri.getMsisdn();
            if (msisdn == null) {
                return null;
            }
            return ImsUri.parse("sip:" + msisdn + "@" + this.mDomain + ";user=phone");
        }
        return convertToTelUri(imsUri, this.mCountryCode);
    }
}
