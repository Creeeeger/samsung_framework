package com.sec.internal.ims.servicemodules.im.strategy;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
class StrategyUtils {
    private static final String LOG_TAG = "StrategyUtils";

    StrategyUtils() {
    }

    static boolean isCapabilityValidUriForUS(ImsUri imsUri, int i) {
        if (imsUri == null) {
            return false;
        }
        String msisdnNumber = UriUtil.getMsisdnNumber(imsUri);
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber$PhoneNumber parse = phoneNumberUtil.parse(msisdnNumber, "US");
            PhoneNumberUtil.ValidationResult isPossibleNumberWithReason = phoneNumberUtil.isPossibleNumberWithReason(parse);
            if (isPossibleNumberWithReason != PhoneNumberUtil.ValidationResult.IS_POSSIBLE) {
                String str = LOG_TAG;
                IMSLog.s(str, "isCapabilityValidUri: msdn " + msisdnNumber);
                if (isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.TOO_LONG) {
                    if (msisdnNumber == null || !msisdnNumber.startsWith("+1") || msisdnNumber.length() < 12) {
                        IMSLog.i(str, i, "isCapabilityValidUri: Impossible too long phone number");
                        return false;
                    }
                } else {
                    IMSLog.i(str, i, "isCapabilityValidUri: Impossible phone number");
                    return false;
                }
            }
            parse.clearCountryCode();
            String valueOf = String.valueOf(parse.getNationalNumber());
            if (valueOf.length() > 3) {
                String substring = valueOf.substring(0, 3);
                if ("900".equals(substring) || (substring.charAt(0) == '8' && substring.charAt(1) == substring.charAt(2))) {
                    IMSLog.i(LOG_TAG, i, "isCapabilityValidUri: 900 8YY contact. invalid request");
                } else {
                    try {
                        if (phoneNumberUtil.parse(msisdnNumber, "US").getCountryCode() == 1 && UriUtil.isShortCode(msisdnNumber, "US")) {
                            IMSLog.i(LOG_TAG, i, "isCapabilityValidUri: ShortCode. invalid request. msdn " + IMSLog.numberChecker(msisdnNumber));
                            return false;
                        }
                    } catch (NumberParseException e) {
                        e.printStackTrace();
                    }
                    return true;
                }
            }
            return false;
        } catch (NumberParseException e2) {
            System.err.println("Not a valid number. NumberParseException was thrown: " + e2);
            return false;
        }
    }
}
