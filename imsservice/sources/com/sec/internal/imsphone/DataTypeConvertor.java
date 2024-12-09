package com.sec.internal.imsphone;

import android.os.Bundle;
import android.os.SemSystemProperties;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.ims.volte2.data.MediaProfile;
import com.sec.ims.volte2.data.VolteConstants;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.RegistrationEvents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import java.util.Locale;

/* loaded from: classes.dex */
public class DataTypeConvertor {
    public static final String LOG_TAG = "DataTypeConvertor";

    public static int convertCallEndReasonFromFW(int i) {
        if (i == 501) {
            return 5;
        }
        if (i == 4003) {
            return 20;
        }
        if (i != 4005) {
            return i;
        }
        return 26;
    }

    public static int convertCallErrorReasonToFw(int i) {
        switch (i) {
            case 200:
            case 220:
                return 501;
            case 210:
                return Id.REQUEST_GC_UPDATE_PARTICIPANTS;
            case 381:
            case 382:
                return 9000;
            case 400:
                return 331;
            case 403:
                return 332;
            case 404:
                return 1515;
            case 405:
                return 342;
            case RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED /* 406 */:
            case 488:
            case 606:
                return 340;
            case 408:
                return 335;
            case AECNamespace.HttpResponseCode.UNSUPPORTED_MEDIA_TYPE /* 415 */:
                return 334;
            case NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE /* 480 */:
                return Id.REQUEST_IM_SENDMSG;
            case 484:
                return 337;
            case NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE /* 486 */:
            case 600:
                return 338;
            case 487:
                return 339;
            case 500:
            case 501:
                return 351;
            case 502:
            case Id.REQUEST_IM_SEND_COMPOSING_STATUS /* 505 */:
            case 580:
                return 354;
            case 503:
            case 1507:
            case 1508:
                return 352;
            case Id.REQUEST_IM_SENDMSG /* 504 */:
                return 353;
            case Id.REQUEST_UPDATE_TIME_IN_PLANI /* 603 */:
                return 361;
            case 1007:
                return 103;
            case 1105:
                return 3115;
            case NSDSNamespaces.NSDSResponseCode.ERROR_SERVER_ERROR /* 1111 */:
            case 1112:
                return Id.REQUEST_SIP_DIALOG_OPEN;
            case Id.REQUEST_SIP_DIALOG_OPEN /* 1201 */:
                return 1613;
            case Id.REQUEST_CHATBOT_ANONYMIZE /* 1401 */:
                return 402;
            case 1601:
                return 1604;
            case 1703:
                return 1407;
            case 1802:
                return 202;
            case 2106:
                return NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_PROVISION_SVC_NOT_ENTITLED;
            case 2504:
            case ImSessionEvent.SEND_MESSAGE /* 3001 */:
            case ImSessionEvent.SEND_DELIVERED_NOTIFICATION /* 3010 */:
            case 6007:
            case 6008:
                return 1014;
            case 2505:
            case ImSessionEvent.RECEIVE_SLM_MESSAGE /* 3009 */:
                return 1404;
            case 2506:
                return 1016;
            case 2511:
                return 122;
            case 2696:
            case 2697:
                return 364;
            case 2698:
                return 243;
            case 6009:
                return 4005;
            case 6010:
                return 146;
            default:
                return i;
        }
    }

    public static int convertCallRejectReasonFromFW(int i) {
        if (i != 112) {
            if (i == 142) {
                return 7;
            }
            if (i == 144) {
                return 8;
            }
            if (i == 338) {
                return 2;
            }
            if (i == 340) {
                return 9;
            }
            if (i == 365) {
                return 16;
            }
            if (i == 4007) {
                return 15;
            }
            switch (i) {
                case 502:
                case 503:
                    return 13;
                case Id.REQUEST_IM_SENDMSG /* 504 */:
                case Id.REQUEST_IM_START_MEDIA /* 507 */:
                    return 3;
                case Id.REQUEST_IM_SEND_COMPOSING_STATUS /* 505 */:
                    break;
                case Id.REQUEST_IM_SEND_NOTI_STATUS /* 506 */:
                    return 12;
                default:
                    return -1;
            }
        }
        return 6;
    }

    public static String convertEccCatToURNSpecificKor(int i) {
        return i == 254 ? "urn:service:unspecified" : i == 8 ? "urn:service:sos.marine" : i == 4 ? "urn:service:sos.fire" : i == 1 ? "urn:service:sos.police" : (i == 6 || i == 7) ? "urn:service:sos.country-specific.kr.111" : i == 3 ? "urn:service:sos.country-specific.kr.113" : i == 18 ? "urn:service:sos.country-specific.kr.117" : i == 19 ? "urn:service:sos.country-specific.kr.118" : i == 9 ? "urn:service:sos.country-specific.kr.125" : ImsCallUtil.ECC_SERVICE_URN_DEFAULT;
    }

    public static String convertToClirPrefix(int i) {
        if (i == 1) {
            return "#31#";
        }
        if (i == 2) {
            return "*31#";
        }
        if (i != 3) {
            return null;
        }
        return "unknown";
    }

    public static int convertToGoogleCallType(int i) {
        switch (i) {
            case 1:
            case 5:
            case 7:
            default:
                return 2;
            case 2:
            case 6:
            case 8:
                return 4;
            case 3:
                return 5;
            case 4:
                return 6;
        }
    }

    public static int convertToSecCallType(int i, int i2, boolean z, boolean z2) {
        switch (i2) {
            case 2:
                if (i != 2) {
                    if (z) {
                        return 9;
                    }
                    return z2 ? 5 : 1;
                }
                break;
            case 3:
            default:
                return 0;
            case 4:
            case 8:
                if (i == 2) {
                    return 8;
                }
                return z2 ? 6 : 2;
            case 5:
            case 9:
                return 3;
            case 6:
            case 10:
                return 4;
            case 7:
                if (i != 2) {
                    return 1;
                }
                break;
        }
        return 7;
    }

    public static int convertUtErrorReasonToFw(int i) {
        if (i == 403) {
            return 146;
        }
        if (i != 404) {
            if (i == 408) {
                return 804;
            }
            if (i != 503) {
                return i != 5001 ? 0 : 805;
            }
        }
        return 801;
    }

    public static ImsReasonInfo convertToGoogleImsReason(int i) {
        return new ImsReasonInfo(1000, 1, "");
    }

    public static int convertUrnToEccCat(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if ("urn:service:unspecified".equalsIgnoreCase(str)) {
            return MNO.TIGO_HONDURAS;
        }
        if ("urn:service:sos.mountain".equalsIgnoreCase(str)) {
            return 16;
        }
        if ("urn:service:sos.marine".equalsIgnoreCase(str)) {
            return 8;
        }
        if ("urn:service:sos.fire".equalsIgnoreCase(str)) {
            return 4;
        }
        if ("urn:service:sos.ambulance".equalsIgnoreCase(str)) {
            return 2;
        }
        if ("urn:service:sos.police".equalsIgnoreCase(str)) {
            return 1;
        }
        if ("urn:service:sos.traffic".equalsIgnoreCase(str)) {
            return 20;
        }
        if (ImsCallUtil.ECC_SERVICE_URN_DEFAULT.equalsIgnoreCase(str)) {
            return 0;
        }
        return MNO.TIGO_HONDURAS;
    }

    public static String convertEccCatToURN(int i) {
        return i == 254 ? "urn:service:unspecified" : i == 16 ? "urn:service:sos.mountain" : i == 8 ? "urn:service:sos.marine" : i == 4 ? "urn:service:sos.fire" : i == 2 ? "urn:service:sos.ambulance" : i == 1 ? "urn:service:sos.police" : i == 20 ? "urn:service:sos.traffic" : (SimUtil.getSimMno(SimUtil.getActiveDataPhoneId()).isJpn() && i == 6) ? "urn:service:sos.fire" : ImsCallUtil.ECC_SERVICE_URN_DEFAULT;
    }

    public static int convertToSecCallType(int i) {
        return convertToSecCallType(0, i, false, false);
    }

    public static MediaProfile convertToSecMediaProfile(ImsStreamMediaProfile imsStreamMediaProfile) {
        int i;
        int i2;
        MediaProfile mediaProfile = new MediaProfile();
        int i3 = imsStreamMediaProfile.mVideoQuality;
        int i4 = 0;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    i = 1;
                } else if (i3 != 4) {
                    if (i3 == 8) {
                        i = 1;
                    } else if (i3 != 16) {
                        i2 = -1;
                    } else {
                        i = 0;
                    }
                    i4 = 15;
                } else {
                    i = 0;
                }
                i4 = 13;
            } else {
                i2 = 12;
            }
            i4 = i2;
            i = 0;
        } else {
            i = 0;
        }
        VolteConstants.AudioCodecType audioCodecType = VolteConstants.AudioCodecType.AUDIO_CODEC_NONE;
        int i5 = imsStreamMediaProfile.mAudioQuality;
        if (i5 == 1) {
            audioCodecType = VolteConstants.AudioCodecType.AUDIO_CODEC_AMRNB;
        } else if (i5 == 2) {
            audioCodecType = VolteConstants.AudioCodecType.AUDIO_CODEC_AMRWB;
        }
        mediaProfile.setVideoQuality(i4);
        mediaProfile.setVideoOrientation(i);
        mediaProfile.setAudioCodec(audioCodecType);
        mediaProfile.setRttMode(imsStreamMediaProfile.getRttMode());
        return mediaProfile;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.telephony.ims.ImsStreamMediaProfile convertToGoogleMediaProfile(com.sec.ims.volte2.data.MediaProfile r7) {
        /*
            android.telephony.ims.ImsStreamMediaProfile r0 = new android.telephony.ims.ImsStreamMediaProfile
            r0.<init>()
            int r1 = r7.getVideoQuality()
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L1a
            r5 = 15
            if (r1 == r5) goto L28
            r5 = 12
            if (r1 == r5) goto L26
            r5 = 13
            if (r1 == r5) goto L1c
        L1a:
            r1 = r4
            goto L33
        L1c:
            int r1 = r7.getVideoOrientation()
            if (r1 != r3) goto L24
            r1 = r2
            goto L33
        L24:
            r1 = 4
            goto L33
        L26:
            r1 = r3
            goto L33
        L28:
            int r1 = r7.getVideoOrientation()
            if (r1 != r3) goto L31
            r1 = 8
            goto L33
        L31:
            r1 = 16
        L33:
            int[] r5 = com.sec.internal.imsphone.DataTypeConvertor.AnonymousClass1.$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType
            com.sec.ims.volte2.data.VolteConstants$AudioCodecType r6 = r7.getAudioCodec()
            int r6 = r6.ordinal()
            r5 = r5[r6]
            switch(r5) {
                case 1: goto L42;
                case 2: goto L42;
                case 3: goto L4f;
                case 4: goto L4d;
                case 5: goto L4d;
                case 6: goto L4a;
                case 7: goto L47;
                case 8: goto L44;
                default: goto L42;
            }
        L42:
            r2 = r3
            goto L4f
        L44:
            r2 = 20
            goto L4f
        L47:
            r2 = 19
            goto L4f
        L4a:
            r2 = 18
            goto L4f
        L4d:
            r2 = 17
        L4f:
            r0.mAudioQuality = r2
            r0.mVideoQuality = r1
            r1 = 3
            r0.mAudioDirection = r1
            boolean r2 = r7.getVideoPause()
            if (r2 == 0) goto L5f
            r0.mVideoDirection = r4
            goto L61
        L5f:
            r0.mVideoDirection = r1
        L61:
            int r7 = r7.getRttMode()
            r0.mRttMode = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.imsphone.DataTypeConvertor.convertToGoogleMediaProfile(com.sec.ims.volte2.data.MediaProfile):android.telephony.ims.ImsStreamMediaProfile");
    }

    /* renamed from: com.sec.internal.imsphone.DataTypeConvertor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType;

        static {
            int[] iArr = new int[VolteConstants.AudioCodecType.values().length];
            $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType = iArr;
            try {
                iArr[VolteConstants.AudioCodecType.AUDIO_CODEC_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_AMRNB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_AMRWB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_EVS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_EVSNB.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_EVSWB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_EVSSWB.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType[VolteConstants.AudioCodecType.AUDIO_CODEC_EVSFB.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int getOirExtraFromDialingNumber(String str) {
        if ("unknown".equalsIgnoreCase(str)) {
            return 3;
        }
        if ("RESTRICTED".equalsIgnoreCase(str) || str.toLowerCase(Locale.US).contains("anonymous")) {
            return 1;
        }
        if ("Coin line/payphone".equalsIgnoreCase(str)) {
            return 4;
        }
        return ("Interaction with other service".equalsIgnoreCase(str) || "Unavailable".equalsIgnoreCase(str)) ? 3 : 2;
    }

    public static int getOirExtraFromDialingNumberForDcm(String str) {
        if (TextUtils.isEmpty(str)) {
            return 2;
        }
        if (str.startsWith("Anonymous")) {
            return 1;
        }
        if (str.startsWith("Coin line/payphone")) {
            return 4;
        }
        return str.length() > 0 ? 3 : 2;
    }

    public static CallProfile convertToSecCallProfile(int i, ImsCallProfile imsCallProfile, boolean z) {
        String str;
        CallProfile callProfile = new CallProfile();
        callProfile.setPhoneId(i);
        if (imsCallProfile == null) {
            return callProfile;
        }
        Bundle bundle = imsCallProfile.mCallExtras.getBundle("android.telephony.ims.extra.OEM_EXTRAS");
        int emergencyServiceCategories = imsCallProfile.getEmergencyServiceCategories();
        boolean callExtraBoolean = imsCallProfile.getCallExtraBoolean("android.telephony.ims.extra.CONFERENCE", false);
        if (bundle != null) {
            str = bundle.getString("imsEmergencyRat");
            String string = bundle.getString("DisplayText");
            String string2 = bundle.getString("com.samsung.telephony.extra.ALERT_INFO");
            String string3 = bundle.getString("com.samsung.ims.extra.ECHO_CALL_ID");
            if (!TextUtils.isEmpty(string)) {
                callProfile.setLetteringText(string);
            }
            if (!TextUtils.isEmpty(string2)) {
                callProfile.setAlertInfo(string2);
            }
            if (!TextUtils.isEmpty(string3)) {
                callProfile.setEchoCallId(string3);
            }
            callProfile.setECallConvertedToNormal(bundle.getBoolean("isECallConvertedToNormal"));
        } else {
            str = "";
        }
        if (imsCallProfile.getCallExtraBoolean("e_call", false) || imsCallProfile.mServiceType == 2) {
            callProfile.setCallType(convertToSecCallType(2, imsCallProfile.mCallType, z, callExtraBoolean));
            callProfile.setEmergencyRat(str);
            if (ImsConstants.EmergencyRat.IWLAN.equalsIgnoreCase(str)) {
                imsCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", 18);
            } else {
                imsCallProfile.setCallExtraInt("android.telephony.ims.extra.CALL_NETWORK_TYPE", 13);
            }
            if (isRequiredKorSpecificURN(i, emergencyServiceCategories)) {
                callProfile.setUrn(convertEccCatToURNSpecificKor(emergencyServiceCategories));
            } else {
                callProfile.setUrn(convertEccCatToURN(emergencyServiceCategories));
            }
            if (imsCallProfile.getEmergencyUrns().size() > 0) {
                String str2 = (String) imsCallProfile.getEmergencyUrns().get(0);
                if (!str2.isEmpty()) {
                    String str3 = callProfile.getUrn() + '.' + str2;
                    Log.i(LOG_TAG, "extendedEmergencyUrn = " + str3);
                    callProfile.setUrn(str3);
                }
            }
        } else if (imsCallProfile.getCallExtraInt("dialstring", 0) == 2) {
            callProfile.setCallType(12);
        } else {
            callProfile.setCallType(convertToSecCallType(imsCallProfile.mServiceType, imsCallProfile.mCallType, z, callExtraBoolean));
            callProfile.setCLI(convertToClirPrefix(imsCallProfile.getCallExtraInt("oir", 0)));
        }
        if (callExtraBoolean) {
            callProfile.setConferenceCall(2);
        }
        callProfile.setMediaProfile(convertToSecMediaProfile(imsCallProfile.mMediaProfile));
        callProfile.setComposerData(processCallComposerInfo(imsCallProfile));
        return callProfile;
    }

    private static Bundle processCallComposerInfo(ImsCallProfile imsCallProfile) {
        Bundle bundle = new Bundle();
        if (imsCallProfile != null) {
            Bundle callExtras = imsCallProfile.getCallExtras();
            Bundle bundle2 = callExtras != null ? callExtras.getBundle("android.telephony.ims.extra.OEM_EXTRAS") : null;
            if (bundle2 != null && !bundle2.isEmpty()) {
                if (bundle2.containsKey(ImsConstants.Intents.EXTRA_CALL_IMPORTANCE)) {
                    bundle.putBoolean("importance", bundle2.getBoolean(ImsConstants.Intents.EXTRA_CALL_IMPORTANCE));
                }
                if (!TextUtils.isEmpty(bundle2.getString(ImsConstants.Intents.EXTRA_CALL_SUBJECT))) {
                    bundle.putString("subject", bundle2.getString(ImsConstants.Intents.EXTRA_CALL_SUBJECT));
                }
                if (!TextUtils.isEmpty(bundle2.getString(ImsConstants.Intents.EXTRA_CALL_IMAGE))) {
                    bundle.putString(CallConstants.ComposerData.IMAGE, bundle2.getString(ImsConstants.Intents.EXTRA_CALL_IMAGE));
                }
                if (!TextUtils.isEmpty(bundle2.getString(ImsConstants.Intents.EXTRA_CALL_LATITUDE)) && !TextUtils.isEmpty(bundle2.getString(ImsConstants.Intents.EXTRA_CALL_LONGITUDE))) {
                    bundle.putString(CallConstants.ComposerData.LONGITUDE, bundle2.getString(ImsConstants.Intents.EXTRA_CALL_LONGITUDE));
                    bundle.putString(CallConstants.ComposerData.LATITUDE, bundle2.getString(ImsConstants.Intents.EXTRA_CALL_LATITUDE));
                    if (!TextUtils.isEmpty(bundle2.getString(ImsConstants.Intents.EXTRA_CALL_RADIUS))) {
                        bundle.putString(CallConstants.ComposerData.RADIUS, bundle2.getString(ImsConstants.Intents.EXTRA_CALL_RADIUS));
                    }
                }
            }
        }
        return bundle;
    }

    private static boolean isRequiredKorSpecificURN(int i, int i2) {
        Mno simMno = SimUtil.getSimMno(i);
        Mno simMnoAsNwPlmn = SimUtil.getSimMnoAsNwPlmn(i);
        String str = SemSystemProperties.get(OmcCode.PERSIST_OMC_CODE_PROPERTY, "");
        if (TextUtils.isEmpty(str)) {
            str = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY);
        }
        if (simMno.isKor() || (simMno == Mno.DEFAULT && TextUtils.equals(str, "KTC"))) {
            return true;
        }
        if (simMnoAsNwPlmn.isKor()) {
            return i2 == 6 || i2 == 7 || i2 == 3 || i2 == 18 || i2 == 19 || i2 == 9;
        }
        return false;
    }
}
