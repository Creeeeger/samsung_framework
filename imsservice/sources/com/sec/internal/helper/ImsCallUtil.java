package com.sec.internal.helper;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.telephony.PhoneNumberUtils;
import android.telephony.ims.SrvccCall;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.data.VolteConstants;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipErrorCTC;
import com.sec.internal.constants.ims.SipErrorCmccCbn;
import com.sec.internal.constants.ims.SipErrorDcm;
import com.sec.internal.constants.ims.SipErrorKdi;
import com.sec.internal.constants.ims.SipErrorKor;
import com.sec.internal.constants.ims.SipErrorLmtLatvia;
import com.sec.internal.constants.ims.SipErrorMdmn;
import com.sec.internal.constants.ims.SipErrorMtelBa;
import com.sec.internal.constants.ims.SipErrorNovaIs;
import com.sec.internal.constants.ims.SipErrorSbm;
import com.sec.internal.constants.ims.SipErrorSprint;
import com.sec.internal.constants.ims.SipErrorUscc;
import com.sec.internal.constants.ims.SipErrorVodafoneCy;
import com.sec.internal.constants.ims.SipErrorVzw;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.servicemodules.volte2.CallParams;
import com.sec.internal.constants.ims.servicemodules.volte2.CallStateEvent;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.core.RegistrationEvents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.imsphone.ImsCallSessionImpl;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ImsCallUtil {
    public static final int DEFAULT_LOCATION_ACQUIRE_TIME = 4000;
    public static final String ECC_SERVICE_URN_DEFAULT = "urn:service:sos";
    private static final String LOG_TAG = "ImsCallUtil";
    public static final String NOT_ALLOWED = "NotAllowed";

    public enum EMERGENCY_TIMER {
        E1,
        E2,
        E3
    }

    public enum EMERGENCY_TIMER_STATE {
        STARTED,
        CANCELLED,
        EXPIRED,
        MAX
    }

    public static class NOTIFY_CALL_END_MODE {
        public static final int ENDCALL = 1;
        public static final int LOCAL_RELEASE_CALL = 3;
        public static final int REJECTCALL = 2;
    }

    public static int convertCallEndReasonToFramework(int i, int i2) {
        if (i == 2) {
            if (i2 != 7) {
                return i2 != 11 ? i2 != 13 ? 200 : 1802 : NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE;
            }
            return 1108;
        }
        if (i2 == 4) {
            return 1107;
        }
        if (i2 == 1802) {
            return 1802;
        }
        if (i2 == 11) {
            return Id.REQUEST_SIP_DIALOG_OPEN;
        }
        if (i2 == 12) {
            return 2503;
        }
        if (i2 == 14) {
            return 1115;
        }
        if (i2 == 15) {
            return NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS;
        }
        if (i2 == 20) {
            return 6007;
        }
        if (i2 == 21) {
            return 1703;
        }
        if (i2 != 26) {
            return i2 != 27 ? 200 : 6008;
        }
        return 6009;
    }

    public static int convertCsCallStateToDialogState(int i) {
        switch (i) {
            case -1:
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return 3;
            case 1:
            case 2:
                return 2;
            case 3:
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    public static int convertDeregiReason(int i) {
        return i != 33 ? 14 : 10;
    }

    public static String convertEccCatToUrn(int i) {
        return i == 1 ? "urn:service:sos.police" : i == 2 ? "urn:service:sos.ambulance" : i == 4 ? "urn:service:sos.fire" : i == 8 ? "urn:service:sos.marine" : i == 16 ? "urn:service:sos.mountain" : i == 20 ? "urn:service:sos.traffic" : i == 254 ? "urn:service:unspecified" : ECC_SERVICE_URN_DEFAULT;
    }

    public static String convertEccCatToUrnSpecificKor(int i) {
        return i == 1 ? "urn:service:sos.police" : i == 4 ? "urn:service:sos.fire" : i == 8 ? "urn:service:sos.marine" : i == 254 ? "urn:service:unspecified" : i == 18 ? "urn:service:sos.country-specific.kr.117" : i == 3 ? "urn:service:sos.country-specific.kr.113" : (i == 7 || i == 6) ? "urn:service:sos.country-specific.kr.111" : i == 19 ? "urn:service:sos.country-specific.kr.118" : i == 9 ? "urn:service:sos.country-specific.kr.125" : ECC_SERVICE_URN_DEFAULT;
    }

    public static int convertRecordEventForCmcInfo(int i) {
        if (i == 1) {
            return 100;
        }
        if (i == 701) {
            return 1;
        }
        if (i == 702) {
            return 2;
        }
        if (i != 800) {
            return i != 801 ? 0 : 4;
        }
        return 3;
    }

    public static String getAudioMode(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 4 ? i != 5 ? i != 7 ? i != 8 ? "AUTO" : "DELAYED_MEDIA_CMC" : "DELAYED_MEDIA" : "CMC_CS_RELAY" : "CMC_AUTO" : "STOP" : "CPVE" : "SAE";
    }

    public static int getCallTypeForRtt(int i, boolean z) {
        if (!z) {
            if (i == 14) {
                return 1;
            }
            if (i == 15) {
                return 2;
            }
            if (i == 18) {
                return 7;
            }
            if (i == 19) {
                return 8;
            }
            if (i == 16) {
                return 5;
            }
            return i == 17 ? 6 : 0;
        }
        if (i == 1) {
            return 14;
        }
        if (i == 2) {
            return 15;
        }
        if (i == 5) {
            return 16;
        }
        if (i == 6) {
            return 17;
        }
        if (i == 7) {
            return 18;
        }
        if (i == 8) {
            return 19;
        }
        if (i == 18) {
            return 7;
        }
        if (i == 14) {
            return 1;
        }
        if (i == 15) {
            return 2;
        }
        if (i == 17) {
            return 6;
        }
        if (i == 16) {
            return 5;
        }
        return i == 19 ? 8 : 0;
    }

    public static boolean isCmcPrimaryType(int i) {
        return i == 1 || i == 3 || i == 5 || i == 7;
    }

    public static boolean isCmcSecondaryType(int i) {
        return i == 2 || i == 4 || i == 6 || i == 8;
    }

    public static boolean isE911Call(int i) {
        return i == 7 || i == 8 || i == 13 || i == 18 || i == 19;
    }

    public static boolean isEmergencyAudioCall(int i) {
        return i == 7 || i == 18 || i == 13;
    }

    public static boolean isEmergencyVideoCall(int i) {
        return i == 8 || i == 19;
    }

    public static boolean isMultiPdnRat(int i) {
        return i == 1 || i == 2 || i == 16 || i == 3 || i == 8 || i == 9 || i == 10 || i == 14 || i == 15 || i == 17;
    }

    public static boolean isNrAvailable(long j) {
        return (j & 524288) != 0;
    }

    public static boolean isOneWayVideoCall(int i) {
        return i == 4 || i == 3;
    }

    public static boolean isP2pPrimaryType(int i) {
        return i == 3 || i == 5 || i == 7;
    }

    public static boolean isRttCall(int i) {
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                return true;
            default:
                return false;
        }
    }

    public static boolean isRttEmergencyCall(int i) {
        return i == 18 || i == 19;
    }

    public static boolean isTtyCall(int i) {
        switch (i) {
            case 9:
            case 10:
            case 11:
                return true;
            default:
                return false;
        }
    }

    public static boolean isUpgradeCall(int i, int i2) {
        if (i == 1 || i == 9 || i == 10 || i == 11) {
            return i2 == 2 || i2 == 4 || i2 == 3;
        }
        if (i == 2) {
            return false;
        }
        return i == 4 ? i2 == 2 : i == 3 ? i2 == 2 : i == 7 ? i2 == 8 : i == 5 && i2 == 6;
    }

    public static boolean isVideoCall(int i) {
        return i == 2 || i == 3 || i == 4 || i == 6 || i == 8;
    }

    public static String participantStatus(int i) {
        switch (i) {
            case 1:
                return "dialing-out";
            case 2:
                return "connected";
            case 3:
                return "disconnecting";
            case 4:
                return "disconnected";
            case 5:
                return "alerting";
            case 6:
                return "muted-via-focus";
            default:
                return "pending";
        }
    }

    public static String validatePhoneNumber(String str, String str2) {
        String str3 = LOG_TAG;
        Log.d(str3, "validatePhoneNumber: " + IMSLog.checker(str));
        String formatNumberToE164 = PhoneNumberUtils.formatNumberToE164(str, str2);
        if (TextUtils.isEmpty(formatNumberToE164)) {
            Log.w(str3, "validatePhoneNumber: phonenumber " + IMSLog.checker(str) + " is not valid");
        }
        return formatNumberToE164 != null ? formatNumberToE164 : "";
    }

    public static SipError convertSipErrorToFramework(Mno mno, int i) {
        Log.i(LOG_TAG, "getSipErrorFromUserReason: reason " + i);
        return getMnoSipError(mno).getFromRejectReason(i);
    }

    private static SipError getMnoSipError(Mno mno) {
        if (mno == Mno.VZW) {
            return new SipErrorVzw();
        }
        if (mno.isKor()) {
            return new SipErrorKor();
        }
        if (mno == Mno.CMCC || mno == Mno.CBN) {
            return new SipErrorCmccCbn();
        }
        if (mno == Mno.CTC || mno == Mno.CTCMO) {
            return new SipErrorCTC();
        }
        if (mno == Mno.KDDI) {
            return new SipErrorKdi();
        }
        if (mno == Mno.DOCOMO) {
            return new SipErrorDcm();
        }
        if (mno == Mno.SOFTBANK) {
            return new SipErrorSbm();
        }
        if (mno == Mno.USCC) {
            return new SipErrorUscc();
        }
        if (mno == Mno.MDMN) {
            return new SipErrorMdmn();
        }
        if (mno == Mno.MTEL_BOSNIA) {
            return new SipErrorMtelBa();
        }
        if (mno == Mno.NOVA_IS) {
            return new SipErrorNovaIs();
        }
        if (mno == Mno.VODAFONE_CY) {
            return new SipErrorVodafoneCy();
        }
        if (mno == Mno.LMT_LATVIA) {
            return new SipErrorLmtLatvia();
        }
        if (mno == Mno.SPRINT) {
            return new SipErrorSprint();
        }
        return new SipErrorBase();
    }

    public static boolean isImsOutageError(SipError sipError) {
        return sipError != null && SipErrorVzw.IMS_OUTAGE.getCode() == sipError.getCode() && !TextUtils.isEmpty(sipError.getReason()) && sipError.getReason().toLowerCase(Locale.US).contains("Outage".toLowerCase());
    }

    public static boolean isImsForbiddenError(SipError sipError) {
        if (sipError == null || SipErrorBase.FORBIDDEN.getCode() != sipError.getCode() || TextUtils.isEmpty(sipError.getReason())) {
            return false;
        }
        String reason = sipError.getReason();
        Locale locale = Locale.US;
        return reason.toLowerCase(locale).contains("Forbidden".toLowerCase()) && !sipError.getReason().toLowerCase(locale).contains(RegistrationConstants.REASON_REGISTERED.toLowerCase());
    }

    public static boolean isTimerVzwExpiredError(SipError sipError) {
        return 2501 == sipError.getCode();
    }

    public static boolean isClientError(SipError sipError) {
        switch (sipError.getCode()) {
            case 1001:
            case 1002:
            case 1003:
            case 1004:
            case 1005:
            case 1006:
                return true;
            default:
                return false;
        }
    }

    public static boolean isCameraUsingCall(int i) {
        return isVideoCall(i) && i != 4;
    }

    public static String convertSpecialChar(String str) {
        if (str != null) {
            return str.contains("%23") ? str.replace("%23", "#") : str;
        }
        return null;
    }

    public static String removeUriPlusPrefix(String str, boolean z) {
        String substring = (str == null || str.length() < 3 || !str.startsWith("+1")) ? str : str.substring(2);
        if (z) {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]");
        } else {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [" + str + "] -> : [" + substring + "]");
        }
        return substring;
    }

    public static String removeUriPlusPrefix(String str, String str2, boolean z) {
        String substring = (str == null || str.length() < str2.length() + 1 || !str.startsWith(str2)) ? str : str.substring(str2.length());
        if (z) {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]");
        } else {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [" + str + "] -> : [" + substring + "]");
        }
        return substring;
    }

    public static String removeUriPlusPrefix(String str, String str2, String str3, boolean z) {
        String replace = (str == null || str.length() < str2.length() + 1 || !str.startsWith(str2)) ? str : str.replace(str2, str3);
        if (z) {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]");
        } else {
            Log.v(LOG_TAG, "removeUriPlusPrefix : [" + str + "] -> : [" + replace + "]");
        }
        return replace;
    }

    public static String getRemoteCallerId(NameAddr nameAddr, Mno mno, boolean z) {
        String str = null;
        if (nameAddr != null) {
            ImsUri uri = nameAddr.getUri();
            if (mno != null && mno.isOneOf(Mno.KDDI, Mno.CTC, Mno.CTCMO, Mno.MDMN, Mno.RAKUTEN_JAPAN)) {
                str = nameAddr.getDisplayName();
            }
            if (TextUtils.isEmpty(str) && uri != null) {
                if (uri.getUriType() == ImsUri.UriType.URN) {
                    Log.d(LOG_TAG, "getRemoteCallerId: dialing number for Urn from display name");
                    str = nameAddr.getDisplayName();
                } else {
                    str = uri.getMsisdn();
                    if (mno == Mno.TELKOM_SOUTHAFRICA && uri.getPhoneContext() != null && uri.getUriType() == ImsUri.UriType.TEL_URI) {
                        str = uri.getPhoneContext() + str;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(str)) {
            Log.d(LOG_TAG, "getRemoteCallerId: indefinite.");
            str = "anonymous";
        }
        return convertSpecialChar(str);
    }

    public static boolean isCSFBbySIPErrorCode(int i) {
        Log.e(LOG_TAG, "isCSFBbySIPErrorCode: " + i);
        switch (i) {
            case 380:
            case 400:
            case 403:
            case 404:
            case 405:
            case RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED /* 406 */:
            case 408:
            case AECNamespace.HttpResponseCode.UNSUPPORTED_MEDIA_TYPE /* 415 */:
            case NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE /* 480 */:
            case 484:
            case 488:
            case 500:
            case 503:
            case Id.REQUEST_UPDATE_TIME_IN_PLANI /* 603 */:
            case 604:
            case 606:
            case 1112:
                return true;
            default:
                return false;
        }
    }

    public static int convertUrnToEccCat(String str) {
        if (str.equals("urn:service:sos.police")) {
            return 1;
        }
        if (str.equals("urn:service:sos.ambulance")) {
            return 2;
        }
        if (str.equals("urn:service:sos.fire")) {
            return 4;
        }
        if (str.equals("urn:service:sos.marine")) {
            return 8;
        }
        if (str.equals("urn:service:sos.mountain")) {
            return 16;
        }
        if (str.equals("urn:service:sos.traffic")) {
            return 20;
        }
        if (str.equals(ECC_SERVICE_URN_DEFAULT)) {
            return 0;
        }
        return MNO.TIGO_HONDURAS;
    }

    /* renamed from: com.sec.internal.helper.ImsCallUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE;

        static {
            int[] iArr = new int[CallConstants.STATE.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE = iArr;
            try {
                iArr[CallConstants.STATE.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ReadyToCall.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.IncomingCall.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.OutGoingCall.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.AlertingCall.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.InCall.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HoldingCall.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HeldCall.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ResumingCall.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ModifyingCall.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ModifyRequested.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.HoldingVideo.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.VideoHeld.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.ResumingVideo.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.EndingCall.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[CallConstants.STATE.EndedCall.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static int convertImsCallStateToDialogState(CallConstants.STATE state) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[state.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 15:
            case 16:
                return 3;
            case 4:
            case 5:
                return 1;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return 2;
            default:
                return 0;
        }
    }

    public static boolean isOngoingCallState(CallConstants.STATE state) {
        return isDialingCallState(state) || isDuringCallState(state);
    }

    public static boolean isDialingCallState(CallConstants.STATE state) {
        return state == CallConstants.STATE.OutGoingCall || state == CallConstants.STATE.AlertingCall || state == CallConstants.STATE.IncomingCall;
    }

    public static boolean isDuringCallState(CallConstants.STATE state) {
        return state == CallConstants.STATE.InCall || state == CallConstants.STATE.HoldingCall || state == CallConstants.STATE.HeldCall || state == CallConstants.STATE.ResumingCall || state == CallConstants.STATE.ModifyingCall || state == CallConstants.STATE.ModifyRequested || state == CallConstants.STATE.HoldingVideo || state == CallConstants.STATE.ResumingVideo || state == CallConstants.STATE.VideoHeld;
    }

    public static boolean isEndCallState(CallConstants.STATE state) {
        return state == CallConstants.STATE.EndingCall || state == CallConstants.STATE.EndedCall;
    }

    public static boolean isHoldCallState(CallConstants.STATE state) {
        return state == CallConstants.STATE.HoldingCall || state == CallConstants.STATE.HeldCall;
    }

    public static boolean isActiveCallState(CallConstants.STATE state) {
        return state == CallConstants.STATE.InCall || state == CallConstants.STATE.ResumingCall;
    }

    public static boolean isTPhoneMode(Context context) {
        return "com.skt.prod.dialer".equals(((TelecomManager) context.getSystemService("telecom")).getDefaultDialerPackage());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isTPhoneRelaxMode(android.content.Context r8, java.lang.String r9) {
        /*
            boolean r0 = isTPhoneMode(r8)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "content://com.skt.prod.dialer.sktincallscreen.provider"
            r0.append(r2)
            java.lang.String r2 = "/"
            r0.append(r2)
            java.lang.String r2 = "get_relaxation"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.net.Uri r3 = android.net.Uri.parse(r0)
            java.lang.String[] r6 = new java.lang.String[]{r9}
            android.content.ContentResolver r2 = r8.getContentResolver()
            r4 = 0
            r5 = 0
            r7 = 0
            android.database.Cursor r8 = r2.query(r3, r4, r5, r6, r7)
            if (r8 == 0) goto L4a
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L40
            if (r9 == 0) goto L4a
            int r9 = r8.getInt(r1)     // Catch: java.lang.Throwable -> L40
            goto L4b
        L40:
            r9 = move-exception
            r8.close()     // Catch: java.lang.Throwable -> L45
            goto L49
        L45:
            r8 = move-exception
            r9.addSuppressed(r8)
        L49:
            throw r9
        L4a:
            r9 = r1
        L4b:
            if (r8 == 0) goto L50
            r8.close()
        L50:
            r8 = 1
            if (r9 != r8) goto L54
            r1 = r8
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.ImsCallUtil.isTPhoneRelaxMode(android.content.Context, java.lang.String):boolean");
    }

    public static boolean isSrvccAvailable(int i, Mno mno, boolean z, CallConstants.STATE state, boolean z2) {
        if (z) {
            Log.d(LOG_TAG, "SRVCC during EPDG connected, ignore");
            return false;
        }
        Log.d(LOG_TAG, "SRVCC ver = " + i);
        if (i == 0) {
            return false;
        }
        if (mno.isEmeasewaoce()) {
            return true;
        }
        if (i != 8 && i != 9) {
            return (i == 10 && state == CallConstants.STATE.OutGoingCall) ? false : true;
        }
        if (state != CallConstants.STATE.InCall || z2) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getPEmergencyInfo(int r19, android.content.Context r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.ImsCallUtil.getPEmergencyInfo(int, android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getConferenceUri(int r5, com.sec.ims.settings.ImsProfile r6, java.lang.String r7, java.lang.String r8, com.sec.internal.constants.Mno r9) {
        /*
            java.lang.String r0 = ""
            r1 = 0
            r2 = 3
            java.lang.String r1 = r7.substring(r1, r2)     // Catch: java.lang.NumberFormatException -> Lf
            java.lang.String r0 = r7.substring(r2)     // Catch: java.lang.NumberFormatException -> Ld
            goto L14
        Ld:
            r7 = move-exception
            goto L11
        Lf:
            r7 = move-exception
            r1 = r0
        L11:
            r7.printStackTrace()
        L14:
            java.lang.String r7 = r6.getConferenceUri()
            java.lang.String r2 = com.sec.internal.helper.ImsCallUtil.LOG_TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "getConferenceUri, confUri="
            r3.append(r4)
            r3.append(r7)
            java.lang.String r4 = ", mcc="
            r3.append(r4)
            r3.append(r1)
            java.lang.String r4 = ", mnc="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r4 = ", sim="
            r3.append(r4)
            r3.append(r8)
            java.lang.String r3 = r3.toString()
            android.util.Log.d(r2, r3)
            int r3 = r6.getConferenceUriMccmncType()
            java.lang.String r4 = "ims.mncXXX.mccXXX.3gppnetwork.org"
            boolean r4 = r7.endsWith(r4)
            if (r4 == 0) goto Laa
            if (r3 == 0) goto L57
            r5 = 1
            if (r3 != r5) goto L5f
        L57:
            java.lang.String r0 = r6.getMnc()
            java.lang.String r1 = r6.getMcc()
        L5f:
            r5 = 2
            if (r3 == 0) goto L64
            if (r3 != r5) goto L7b
        L64:
            int r6 = r0.length()
            if (r6 != r5) goto L7b
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "0"
            r5.append(r6)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
        L7b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "mnc"
            r5.append(r6)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "mncXXX"
            java.lang.String r5 = r7.replace(r6, r5)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "mcc"
            r6.append(r7)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "mccXXX"
            java.lang.String r7 = r5.replace(r7, r6)
            goto L104
        Laa:
            com.sec.internal.constants.Mno r6 = com.sec.internal.constants.Mno.ATT
            if (r9 != r6) goto L104
            boolean r6 = android.text.TextUtils.isEmpty(r8)
            if (r6 == 0) goto Ld8
            java.lang.String r5 = "313"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto Lc4
            java.lang.String r5 = "100"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto Ld4
        Lc4:
            java.lang.String r5 = "312"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L104
            java.lang.String r5 = "670"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L104
        Ld4:
            java.lang.String r7 = "sip:n-way_voice@firstnet.com"
            goto L104
        Ld8:
            boolean r5 = com.sec.internal.helper.SimUtil.isLLA(r5)
            if (r5 != 0) goto L104
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "sip:n-way_voice@"
            r5.append(r6)
            r5.append(r8)
            java.lang.String r7 = r5.toString()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "ATT confUri="
            r5.append(r6)
            r5.append(r7)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r2, r5)
        L104:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.helper.ImsCallUtil.getConferenceUri(int, com.sec.ims.settings.ImsProfile, java.lang.String, java.lang.String, com.sec.internal.constants.Mno):java.lang.String");
    }

    public static VolteConstants.AudioCodecType getAudioCodec(String str) {
        if (str == null) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_NONE;
        }
        if ("AMR-WB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_AMRWB;
        }
        if ("AMR-NB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_AMRNB;
        }
        if ("EVS-FB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_EVSFB;
        }
        if ("EVS-SWB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_EVSSWB;
        }
        if ("EVS-WB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_EVSWB;
        }
        if ("EVS-NB".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_EVSNB;
        }
        if ("EVS".equals(str)) {
            return VolteConstants.AudioCodecType.AUDIO_CODEC_EVS;
        }
        return VolteConstants.AudioCodecType.AUDIO_CODEC_NONE;
    }

    public static SipError onConvertSipErrorReason(CallStateEvent callStateEvent, Mno mno) {
        SipError errorCode = callStateEvent.getErrorCode();
        if (!SipErrorBase.ALTERNATIVE_SERVICE.equals(errorCode)) {
            return errorCode;
        }
        if (!DeviceUtil.getGcfMode() && !mno.isJpn()) {
            return errorCode;
        }
        String alternativeServiceType = callStateEvent.getAlternativeServiceType();
        String alternativeServiceReason = callStateEvent.getAlternativeServiceReason();
        String alternativeServiceUrn = callStateEvent.getAlternativeServiceUrn();
        String str = LOG_TAG;
        Log.d(str, "type : " + alternativeServiceType + ", reason : " + alternativeServiceReason + ", serviceUrn : " + alternativeServiceUrn);
        if (TextUtils.isEmpty(alternativeServiceType) || !"emergency".equals(alternativeServiceType)) {
            return errorCode;
        }
        if (TextUtils.isEmpty(alternativeServiceUrn)) {
            Log.d(str, "serviceUrn is Empty");
            if (callStateEvent.getAlternativeService() == CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY_REGISTRATION) {
                SipError sipError = SipErrorBase.ALTERNATIVE_SERVICE_EMERGENCY;
                sipError.setReason(ECC_SERVICE_URN_DEFAULT);
                return sipError;
            }
            Log.d(str, "action is Empty");
            return errorCode;
        }
        if (callStateEvent.getAlternativeService() == CallStateEvent.ALTERNATIVE_SERVICE.EMERGENCY && !mno.isJpn()) {
            SipError sipError2 = SipErrorBase.ALTERNATIVE_SERVICE_EMERGENCY_CSFB;
            sipError2.setReason(alternativeServiceUrn);
            return sipError2;
        }
        SipError sipError3 = SipErrorBase.ALTERNATIVE_SERVICE_EMERGENCY;
        sipError3.setReason(alternativeServiceUrn);
        return sipError3;
    }

    public static int getIdForString(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return str.hashCode();
        }
    }

    public static int convertErrorToRejectReason(SipError sipError) {
        if (SipErrorBase.BUSY_HERE.equals(sipError)) {
            return 1601;
        }
        if (SipErrorBase.NOT_ACCEPTABLE_HERE.equals(sipError)) {
            return 1610;
        }
        if (SipErrorBase.SERVICE_UNAVAILABLE.equals(sipError)) {
            return 1604;
        }
        if (SipErrorVzw.BUSY_ALREADY_IN_TWO_CALLS.equals(sipError)) {
            return 1608;
        }
        if (SipErrorVzw.NOT_ACCEPTABLE_ACTIVE_1X_CALL.equals(sipError)) {
            return 1621;
        }
        if (SipErrorVzw.VOWIFI_OFF.equals(sipError) || SipErrorVzw.BUSY_ESTABLISHING_ANOTHER_CALL.equals(sipError)) {
            return 1604;
        }
        if (SipErrorVzw.TTY_ON.equals(sipError)) {
            return 1615;
        }
        SipError sipError2 = SipErrorVzw.NOT_ACCEPTABLE_ON_EHRPD;
        if (sipError2.equals(sipError) || sipError2.equals(sipError) || SipErrorBase.USER_NOT_REGISTERED.equals(sipError) || SipErrorVzw.NOT_ACCEPTABLE_NO_VOPS.equals(sipError)) {
            return 1604;
        }
        return SipErrorVzw.NOT_ACCEPTABLE_SSAC_ON.equals(sipError) ? 1512 : 0;
    }

    public static String getPhraseByMno(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(context.getResources().getIdentifier("phrase", MIMEContentType.XML, context.getPackageName()));
        if (xml == null) {
            Log.e(LOG_TAG, "can not find matched phrase.xml");
            return null;
        }
        String name = SimUtil.getSimMno(i).getName();
        ContentValues contentValues = new ContentValues();
        try {
            XmlUtils.beginDocument(xml, "phrases");
            while (true) {
                int next = xml.next();
                if (next == 1) {
                    break;
                }
                if (next == 2) {
                    String str = null;
                    String str2 = null;
                    for (int i2 = 0; i2 < xml.getAttributeCount(); i2++) {
                        if ("mnoname".equalsIgnoreCase(xml.getAttributeName(i2))) {
                            str = xml.getAttributeValue(i2);
                        } else if ("missed_call_sms".equalsIgnoreCase(xml.getAttributeName(i2))) {
                            str2 = xml.getAttributeValue(i2);
                        }
                    }
                    contentValues.put(str, str2);
                }
            }
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
        }
        return contentValues.getAsString(name);
    }

    public static String getVerstat(CallParams callParams) {
        if (callParams.getVerstat() == null) {
            return "";
        }
        String str = (String) Arrays.stream(callParams.getVerstat().split("[<>:;@]")).filter(new Predicate() { // from class: com.sec.internal.helper.ImsCallUtil$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getVerstat$0;
                lambda$getVerstat$0 = ImsCallUtil.lambda$getVerstat$0((String) obj);
                return lambda$getVerstat$0;
            }
        }).map(new Function() { // from class: com.sec.internal.helper.ImsCallUtil$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getVerstat$1;
                lambda$getVerstat$1 = ImsCallUtil.lambda$getVerstat$1((String) obj);
                return lambda$getVerstat$1;
            }
        }).findFirst().orElse("");
        Log.i(LOG_TAG, "verstat " + IMSLog.checker(str));
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getVerstat$0(String str) {
        return str.contains("verstat");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getVerstat$1(String str) {
        return str.substring(str.indexOf(AuthenticationHeaders.HEADER_PRARAM_SPERATOR) + 1);
    }

    public static boolean isDataPreferredModeDuringCalling(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), VowifiConfig.AUTO_DATA_SWITCH, 0) == 1;
    }

    public static SrvccCall convertImsCalltoSrvccCall(ImsCallSessionImpl imsCallSessionImpl) {
        try {
            int i = 0;
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE[imsCallSessionImpl.getInternalState().ordinal()]) {
                case 3:
                    i = 5;
                    break;
                case 4:
                    i = 3;
                    break;
                case 5:
                    i = 4;
                    break;
                case 6:
                case 11:
                    i = 1;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                case 14:
                    i = 2;
                    break;
                case 15:
                    i = 8;
                    break;
                case 16:
                    i = 7;
                    break;
            }
            return new SrvccCall(imsCallSessionImpl.getCallId(), i, imsCallSessionImpl.getCallProfile());
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
