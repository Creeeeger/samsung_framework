package com.sec.internal.helper;

import android.net.Uri;
import android.util.Log;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.util.ImsUri;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class UriUtil {
    private static final String LOG_TAG = "UriUtil";

    public static ImsUri parseNumber(String str) {
        return parseNumber(str, null);
    }

    public static ImsUri parseNumber(String str, String str2) {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        if (str2 == null) {
            str2 = "ZZ";
        }
        try {
            Phonenumber$PhoneNumber parse = phoneNumberUtil.parse(str, str2.toUpperCase());
            if (!isShortCode(str, str2)) {
                str = phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.E164);
            }
            return ImsUri.parse("tel:" + str);
        } catch (NumberParseException e) {
            Log.e(LOG_TAG, e.getClass().getSimpleName() + "!! " + e.getMessage());
            return null;
        }
    }

    public static boolean equals(ImsUri imsUri, ImsUri imsUri2) {
        String msisdnNumber;
        if (imsUri == null || imsUri2 == null) {
            return false;
        }
        String str = null;
        if ("sip".equalsIgnoreCase(imsUri.getScheme())) {
            msisdnNumber = imsUri.toString().contains("user=phone") ? imsUri.getUser() : null;
        } else {
            msisdnNumber = getMsisdnNumber(imsUri);
        }
        if ("sip".equalsIgnoreCase(imsUri2.getScheme())) {
            if (imsUri2.toString().contains("user=phone")) {
                str = imsUri2.getUser();
            }
        } else {
            str = getMsisdnNumber(imsUri2);
        }
        if ((msisdnNumber == null && str != null) || (msisdnNumber != null && str == null)) {
            return false;
        }
        if (msisdnNumber != null) {
            return msisdnNumber.equals(str);
        }
        return imsUri.equals(imsUri2);
    }

    public static boolean hasMsisdnNumber(ImsUri imsUri) {
        if (imsUri == null) {
            return false;
        }
        if ("tel".equalsIgnoreCase(imsUri.getScheme())) {
            return true;
        }
        String user = imsUri.getUser();
        return imsUri.toString().contains("user=phone") || (user != null && user.matches("[\\+\\d]+"));
    }

    public static String getMsisdnNumber(ImsUri imsUri) {
        if (imsUri == null) {
            return null;
        }
        if ("tel".equalsIgnoreCase(imsUri.getScheme())) {
            String imsUri2 = imsUri.toString();
            int indexOf = imsUri2.indexOf(59);
            if (indexOf > 0) {
                return imsUri2.substring(4, indexOf);
            }
            return imsUri2.substring(4);
        }
        String user = imsUri.getUser();
        if (imsUri.toString().contains("user=phone")) {
            return user;
        }
        if (user == null) {
            Log.d(LOG_TAG, "user is null. uri: " + imsUri.toString());
            return null;
        }
        if (user.matches("[\\+\\d]+")) {
            return user;
        }
        return null;
    }

    public static boolean isValidNumber(String str, String str2) {
        if (str != null && str2 != null) {
            if (str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
                Log.e(LOG_TAG, "isValidNumber: invalid special character in number");
            } else {
                PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
                try {
                    PhoneNumberUtil.ValidationResult isPossibleNumberWithReason = phoneNumberUtil.isPossibleNumberWithReason(phoneNumberUtil.parse(str, str2.toUpperCase()));
                    if (isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.IS_POSSIBLE) {
                        return true;
                    }
                    if (isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.TOO_LONG && "US".equalsIgnoreCase(str2) && str.length() > 9) {
                        return true;
                    }
                    return isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.IS_POSSIBLE_LOCAL_ONLY && str.length() == 3 && "KR".equalsIgnoreCase(str2);
                } catch (NumberParseException unused) {
                    return false;
                } catch (NullPointerException e) {
                    e.printStackTrace();
                    return false;
                }
            }
        }
        return false;
    }

    public static boolean isShortCode(String str, String str2) {
        if ("US".equalsIgnoreCase(str2)) {
            if (str.length() < 10) {
                return true;
            }
            if (str.length() == 10 && (str.charAt(0) == '0' || str.charAt(0) == '1')) {
                return true;
            }
            if (str.length() == 11 && str.charAt(0) == '1' && (str.charAt(1) == '0' || str.charAt(1) == '1')) {
                return true;
            }
            if (str.startsWith("+1") && str.length() == 12 && (str.charAt(2) == '0' || str.charAt(2) == '1')) {
                return true;
            }
        }
        return false;
    }

    public static Uri buildUri(String str, int i) {
        return Uri.parse(str).buildUpon().fragment("simslot" + i).build();
    }

    public static Uri buildUri(Uri uri, int i) {
        return uri.buildUpon().fragment("simslot" + i).build();
    }

    public static int getSimSlotFromUri(Uri uri) {
        if (uri.getFragment() != null) {
            if (uri.getFragment().contains("subid")) {
                int numericValue = Character.getNumericValue(uri.getFragment().charAt(5));
                if (numericValue < 0) {
                    Log.i(LOG_TAG, "Invalid subId:" + numericValue + ". get simSlot from priority policy");
                    return SimUtil.getSimSlotPriority();
                }
                return Extensions.SubscriptionManager.getSlotId(numericValue);
            }
            if (uri.getFragment().contains("simslot")) {
                int numericValue2 = Character.getNumericValue(uri.getFragment().charAt(7));
                if (numericValue2 >= 0) {
                    return numericValue2;
                }
                Log.i(LOG_TAG, "Invalid simslot:" + numericValue2 + ". get it from priority policy");
                return SimUtil.getSimSlotPriority();
            }
            Log.i(LOG_TAG, "Invalid fragment:" + uri.getFragment() + ". get simSlot from priority policy");
            return SimUtil.getSimSlotPriority();
        }
        Log.i(LOG_TAG, "fragment is null. get simSlot from priority policy.");
        if (uri.toString().contains("#simslot")) {
            Log.d(LOG_TAG, "this should not happen: " + uri.toString());
        }
        return SimUtil.getSimSlotPriority();
    }

    public static ArrayList<ImsUri> convertToUriList(Collection<String> collection) {
        ArrayList<ImsUri> arrayList = new ArrayList<>();
        for (String str : collection) {
            if (str != null) {
                arrayList.add(ImsUri.parse(str));
            }
        }
        return arrayList;
    }

    public static ArrayList<String> convertToStringList(Collection<ImsUri> collection) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (ImsUri imsUri : collection) {
            if (imsUri != null) {
                arrayList.add(imsUri.toString());
            }
        }
        return arrayList;
    }
}
