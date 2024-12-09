package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.text.TextUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class RcsPolicyTypeFactory {
    private static final String LOG_TAG = "RcsPolicyTypeFactory";

    public static RcsPolicyType getPolicyType(Mno mno, int i, Context context) {
        RcsPolicyType policyTypeByRcsProfile;
        String acsServerType = ConfigUtil.getAcsServerType(i);
        String rcsProfileLoaderInternalWithFeature = ConfigUtil.getRcsProfileLoaderInternalWithFeature(context, mno.getName(), i);
        RcsPolicyType rcsPolicyType = RcsPolicyType.DEFAULT_RCS;
        if (!TextUtils.isEmpty(acsServerType)) {
            policyTypeByRcsProfile = getPolicyTypeByRcsAs(acsServerType, mno);
        } else {
            policyTypeByRcsProfile = !TextUtils.isEmpty(rcsProfileLoaderInternalWithFeature) ? getPolicyTypeByRcsProfile(rcsProfileLoaderInternalWithFeature, mno) : rcsPolicyType;
        }
        if (policyTypeByRcsProfile == rcsPolicyType) {
            policyTypeByRcsProfile = getPolicyTypeByMno(mno);
        }
        IMSLog.i(LOG_TAG, i, "getPolicyType: " + mno + " => " + policyTypeByRcsProfile);
        return policyTypeByRcsProfile;
    }

    private static RcsPolicyType getPolicyTypeByRcsAs(String str, Mno mno) {
        if (ImsConstants.RCS_AS.JIBE.equals(str)) {
            if (mno == Mno.ORANGE_ROMANIA || mno == Mno.ORANGE_SLOVAKIA || mno == Mno.ORANGE_SPAIN || mno == Mno.ORANGE_BELGIUM) {
                return RcsPolicyType.ORANGE_UP;
            }
            if (mno == Mno.VODAFONE_INDIA || mno == Mno.IDEA_INDIA) {
                return RcsPolicyType.VODAFONE_IN_UP;
            }
            return RcsPolicyType.JIBE_UP;
        }
        if (ImsConstants.RCS_AS.SEC.equals(str)) {
            if (mno == Mno.KT) {
                return RcsPolicyType.KT_UP;
            }
            return RcsPolicyType.SEC_UP;
        }
        return RcsPolicyType.DEFAULT_UP;
    }

    private static RcsPolicyType getPolicyTypeByRcsProfile(String str, Mno mno) {
        if (str.startsWith("UP")) {
            if (mno == Mno.BELL) {
                return RcsPolicyType.BMC_UP;
            }
            if (mno == Mno.SPRINT) {
                return RcsPolicyType.SPR_UP;
            }
            if (mno == Mno.VZW) {
                return RcsPolicyType.VZW_UP;
            }
            if (mno.isVodafone()) {
                return RcsPolicyType.VODA_UP;
            }
            if (mno.isTmobile() || mno == Mno.TELEKOM_ALBANIA) {
                return RcsPolicyType.TMOBILE_UP;
            }
            if (mno == Mno.SWISSCOM) {
                return RcsPolicyType.SWISSCOM_UP;
            }
            if (mno == Mno.CMCC) {
                return RcsPolicyType.CMCC;
            }
            if (mno == Mno.CTC) {
                return RcsPolicyType.CTC;
            }
            if (mno == Mno.CU) {
                return RcsPolicyType.CU;
            }
            if (mno == Mno.CBN) {
                return RcsPolicyType.CBN;
            }
            if (mno.isRjil()) {
                return RcsPolicyType.RJIL_UP;
            }
            return RcsPolicyType.DEFAULT_UP;
        }
        return RcsPolicyType.DEFAULT_RCS;
    }

    private static RcsPolicyType getPolicyTypeByMno(Mno mno) {
        if (mno.isTmobile() || mno == Mno.TELEKOM_ALBANIA) {
            return RcsPolicyType.TMOBILE;
        }
        if (mno.isOrange()) {
            return RcsPolicyType.ORANGE;
        }
        if (mno.isVodafone()) {
            return RcsPolicyType.VODA;
        }
        if (mno == Mno.ATT) {
            return RcsPolicyType.ATT;
        }
        if (mno == Mno.TMOUS) {
            return RcsPolicyType.TMOUS;
        }
        if (mno == Mno.SPRINT) {
            return RcsPolicyType.SPR;
        }
        if (mno == Mno.USCC) {
            return RcsPolicyType.USCC;
        }
        if (mno == Mno.VZW) {
            return RcsPolicyType.VZW;
        }
        if (mno == Mno.BELL) {
            return RcsPolicyType.BMC;
        }
        if (mno == Mno.CMCC) {
            return RcsPolicyType.CMCC;
        }
        if (mno == Mno.CTC) {
            return RcsPolicyType.CTC;
        }
        if (mno == Mno.CU) {
            return RcsPolicyType.CU;
        }
        if (mno == Mno.CBN) {
            return RcsPolicyType.CBN;
        }
        if (mno == Mno.SINGTEL) {
            return RcsPolicyType.SINGTEL;
        }
        if (mno == Mno.TCE) {
            return RcsPolicyType.TCE;
        }
        if (mno == Mno.TELSTRA) {
            return RcsPolicyType.TELSTRA;
        }
        if (mno.isOneOf(Mno.TELENOR_NORWAY, Mno.TELENOR_SWE)) {
            return RcsPolicyType.TELENOR;
        }
        if (mno.isOneOf(Mno.TELIA_NORWAY, Mno.TELIA_SWE)) {
            return RcsPolicyType.TELIA;
        }
        if (mno == Mno.RJIL) {
            return RcsPolicyType.RJIL;
        }
        return RcsPolicyType.DEFAULT_RCS;
    }
}
