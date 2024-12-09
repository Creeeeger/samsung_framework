package com.sec.internal.ims.util;

import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class UriGeneratorUs extends UriGeneratorImpl {
    private static final String LOG_TAG = "UriGeneratorUs";

    public UriGeneratorUs(ImsUri.UriType uriType, String str, ITelephonyManager iTelephonyManager, int i, int i2, ImsProfile imsProfile) {
        super(uriType, "us", str, iTelephonyManager, i, i2, imsProfile);
        Log.d(LOG_TAG, "mDomain " + this.mDomain);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl, com.sec.internal.ims.util.UriGenerator
    public void extractOwnAreaCode(String str) {
        if (str != null) {
            try {
                if (str.startsWith("+1")) {
                    this.mOwnAreaCode = str.substring(2, 5);
                } else if (str.length() == 11) {
                    this.mOwnAreaCode = str.substring(1, 4);
                } else if (str.length() == 10) {
                    this.mOwnAreaCode = str.substring(0, 3);
                }
            } catch (StringIndexOutOfBoundsException unused) {
                this.mOwnAreaCode = "";
            }
        }
        Log.d(LOG_TAG, "extractOwnAreaCode: mOwnAreaCode=" + this.mOwnAreaCode);
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl, com.sec.internal.ims.util.UriGenerator
    public ImsUri getNormalizedUri(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
            Log.d(LOG_TAG, "getNormalizedUri: invalid special character in number");
            return null;
        }
        if (!z && isRoaming() && !str.contains("*") && !str.contains("#")) {
            return UriUtil.parseNumber(str, getLocalCountryCode());
        }
        if (this.mOwnAreaCode == null) {
            extractOwnAreaCode(this.mTelephonyManager.getMsisdn(this.mSubscriptionId));
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
    public ImsUri getNetworkPreferredUri(UriGenerator.URIServiceType uRIServiceType, String str, String str2) {
        ImsUri networkPreferredUri = str != null ? super.getNetworkPreferredUri(uRIServiceType, str, str2) : null;
        IMSLog.s(LOG_TAG, "getNetworkPreferredUri: " + networkPreferredUri);
        return networkPreferredUri;
    }

    @Override // com.sec.internal.ims.util.UriGeneratorImpl
    public ImsUri getNetworkPreferredUri(String str, String str2) {
        ImsUri networkPreferredUri = str != null ? super.getNetworkPreferredUri(str, str2) : null;
        IMSLog.s(LOG_TAG, "getNetworkPreferredUri: " + networkPreferredUri);
        return networkPreferredUri;
    }
}
