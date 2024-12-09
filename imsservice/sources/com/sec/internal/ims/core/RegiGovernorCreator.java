package com.sec.internal.ims.core;

import android.content.Context;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;

/* loaded from: classes.dex */
public final class RegiGovernorCreator {
    private static final String LOG_TAG = "RegiGvnCreator";

    private RegiGovernorCreator() {
    }

    public static IRegistrationGovernor getInstance(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        if (!DeviceUtil.getGcfMode()) {
            String acsServerType = ConfigUtil.getAcsServerType(registerTask.getPhoneId());
            if (registerTask.isRcsOnly() && ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType)) {
                return new RegistrationGovernorRcsJibe(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
            }
            if (mno == Mno.MDMN && registerTask.getProfile().getCmcType() != 0) {
                return new RegistrationGovernorCmc(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
            }
            return getInstanceInternal(mno, registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorImpl(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    private static IRegistrationGovernor getInstanceInternal(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        Log.i(LOG_TAG, "getInstance: creating RegistrationGovernor for " + mno);
        if (mno.isKor()) {
            return new RegistrationGovernorKor(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isUSA()) {
            return getInstanceForUsa(mno, registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isChn()) {
            return getInstanceForChina(mno, registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isHkMo() || mno.isTw()) {
            return new RegistrationGovernorHkTw(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isCanada()) {
            return new RegistrationGovernorCan(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isJpn()) {
            return getInstanceForJapan(mno, registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isMea()) {
            return new RegistrationGovernorMeAfrica(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isEur()) {
            return new RegistrationGovernorEur(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isOce()) {
            return new RegistrationGovernorOce(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isSea()) {
            return new RegistrationGovernorSea(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isLatin()) {
            return new RegistrationGovernorLatin(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isATTMexico()) {
            return new RegistrationGovernorAttMexico(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno.isSwa()) {
            return getInstanceForSwa(mno, registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorBase(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    private static IRegistrationGovernor getInstanceForUsa(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        if (mno == Mno.VZW) {
            return new RegistrationGovernorVzw(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (SimUtil.isTmoInbound(registerTask.getPhoneId())) {
            return new RegistrationGovernorTmoInbound(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.ATT) {
            if (SimUtil.isSoftphoneEnabled()) {
                return new RegistrationGovernorSoftphone(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
            }
            return new RegistrationGovernorAtt(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.TMOUS) {
            return new RegistrationGovernorTmo(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.DISH) {
            return new RegistrationGovernorDish(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.SPRINT) {
            return new RegistrationGovernorSpr(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.USCC) {
            return new RegistrationGovernorUsc(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.GENERIC_IR92 || mno == Mno.ALTICE || mno == Mno.GCI) {
            return new RegistrationGovernorIR92(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorBase(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    private static IRegistrationGovernor getInstanceForSwa(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        if (mno == Mno.RJIL) {
            return new RegistrationGovernorRjil(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorSwa(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    private static IRegistrationGovernor getInstanceForChina(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        if (mno == Mno.CMCC) {
            return new RegistrationGovernorCmcc(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.CU) {
            return new RegistrationGovernorCu(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.CTC || mno == Mno.CTCMO) {
            return new RegistrationGovernorCtc(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.CBN) {
            return new RegistrationGovernorCbn(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorBase(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    private static IRegistrationGovernor getInstanceForJapan(Mno mno, RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        if (mno == Mno.DOCOMO) {
            return new RegistrationGovernorDcm(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.KDDI) {
            return new RegistrationGovernorKddi(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        if (mno == Mno.SOFTBANK) {
            return new RegistrationGovernorSoftBank(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
        }
        return new RegistrationGovernorBase(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }
}
