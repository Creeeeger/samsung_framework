package com.sec.internal.ims.translate;

import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.im.ImConferenceParticipantInfo;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.SupportedFeature;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.translate.MapTranslator;
import com.sec.internal.ims.core.RegistrationEvents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.CpimNamespace_.Pair;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ExtraHeader;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImError;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImExtension;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.MNO;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReasonHdr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.WarningHdr;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.settings.RcsPolicySettings;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ResipTranslatorCollection {
    private static final String LOG_TAG = "ResipTranslatorCollection";
    private static final MapTranslator<String, SupportedFeature> mAcceptContentTranslator = new MapTranslator<>(new HashMap<String, SupportedFeature>() { // from class: com.sec.internal.ims.translate.ResipTranslatorCollection.1
        {
            put(MIMEContentType.CPIM, SupportedFeature.TEXT_PLAIN);
            put(MIMEContentType.COMPOSING, SupportedFeature.ISCOMPOSING_TYPE);
            put(MIMEContentType.IMDN, SupportedFeature.IMDN);
            put("*", SupportedFeature.MULTIMEDIA);
            put(MIMEContentType.GROUP_MGMT, SupportedFeature.GROUP_SESSION_MANAGEMENT);
        }
    });

    public static SupportedFeature translateAcceptContent(String str) {
        Log.d(LOG_TAG, "translateAcceptContent " + str);
        return mAcceptContentTranslator.translate(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.sec.internal.constants.ims.servicemodules.im.result.Result translateResult(com.sec.internal.constants.ims.servicemodules.im.ImError r7, com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImError r8, java.lang.Object r9) {
        /*
            com.sec.internal.constants.ims.servicemodules.im.result.Result$Type r2 = translateResultType(r8)
            r0 = 0
            if (r8 == 0) goto L2a
            com.sec.internal.constants.ims.servicemodules.im.result.Result$Type r1 = com.sec.internal.constants.ims.servicemodules.im.result.Result.Type.SIP_PROVISIONAL
            if (r2 == r1) goto L1f
            com.sec.internal.constants.ims.servicemodules.im.result.Result$Type r1 = com.sec.internal.constants.ims.servicemodules.im.result.Result.Type.SIP_ERROR
            if (r2 != r1) goto L10
            goto L1f
        L10:
            com.sec.internal.constants.ims.servicemodules.im.result.Result$Type r1 = com.sec.internal.constants.ims.servicemodules.im.result.Result.Type.MSRP_ERROR
            if (r2 != r1) goto L2a
            int r8 = r8.errorCode()
            com.sec.internal.constants.ims.servicemodules.im.MsrpResponse r8 = com.sec.internal.constants.ims.servicemodules.im.MsrpResponse.fromId(r8)
            r4 = r8
            r3 = r0
            goto L2c
        L1f:
            int r8 = r8.errorCode()
            com.sec.internal.constants.ims.servicemodules.im.SipResponse r8 = com.sec.internal.constants.ims.servicemodules.im.SipResponse.fromId(r8)
            r3 = r8
            r4 = r0
            goto L2c
        L2a:
            r3 = r0
            r4 = r3
        L2c:
            if (r9 == 0) goto L5b
            boolean r8 = r9 instanceof com.sec.internal.ims.core.handler.secims.imsCommonStruc.WarningHdr
            if (r8 == 0) goto L44
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.WarningHdr r9 = (com.sec.internal.ims.core.handler.secims.imsCommonStruc.WarningHdr) r9
            com.sec.internal.constants.ims.servicemodules.im.result.Result$WarningHeader r8 = new com.sec.internal.constants.ims.servicemodules.im.result.Result$WarningHeader
            int r1 = getWarningCode(r9)
            java.lang.String r9 = r9.text()
            r8.<init>(r1, r9)
            r5 = r8
            r6 = r0
            goto L5d
        L44:
            boolean r8 = r9 instanceof com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReasonHdr
            if (r8 == 0) goto L5b
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReasonHdr r9 = (com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReasonHdr) r9
            com.sec.internal.constants.ims.servicemodules.im.result.Result$ReasonHeader r8 = new com.sec.internal.constants.ims.servicemodules.im.result.Result$ReasonHeader
            long r5 = r9.code()
            int r1 = (int) r5
            java.lang.String r9 = r9.text()
            r8.<init>(r1, r9)
            r6 = r8
            r5 = r0
            goto L5d
        L5b:
            r5 = r0
            r6 = r5
        L5d:
            com.sec.internal.constants.ims.servicemodules.im.result.Result r8 = new com.sec.internal.constants.ims.servicemodules.im.result.Result
            r0 = r8
            r1 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.translate.ResipTranslatorCollection.translateResult(com.sec.internal.constants.ims.servicemodules.im.ImError, com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImError, java.lang.Object):com.sec.internal.constants.ims.servicemodules.im.result.Result");
    }

    private static Result.Type translateResultType(ImError imError) {
        Result.Type type = Result.Type.UNKNOWN_ERROR;
        if (imError == null) {
            return type;
        }
        switch (imError.errorType()) {
            case 0:
                return Result.Type.SUCCESS;
            case 1:
                return Result.Type.SIP_ERROR;
            case 2:
                return Result.Type.MSRP_ERROR;
            case 3:
                return Result.Type.ENGINE_ERROR;
            case 4:
                return Result.Type.SESSION_RELEASE;
            case 5:
                return Result.Type.NETWORK_ERROR;
            case 6:
                return Result.Type.SESSION_RSRC_UNAVAILABLE;
            case 7:
            case 10:
            default:
                return type;
            case 8:
                return Result.Type.DEVICE_UNREGISTERED;
            case 9:
                return Result.Type.SIP_PROVISIONAL;
            case 11:
                return Result.Type.DEDICATED_BEARER_ERROR;
        }
    }

    public static Result translateImResult(ImError imError, Object obj) {
        return translateResult(translateImError(imError, obj), imError, obj);
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateImError(ImError imError, Object obj) {
        if (imError == null) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.UNKNOWN_ERROR;
        }
        int errorType = imError.errorType();
        int errorCode = imError.errorCode();
        Log.d(LOG_TAG, "translateImError " + errorType);
        switch (errorType) {
            case 1:
                break;
            case 4:
                break;
        }
        return com.sec.internal.constants.ims.servicemodules.im.ImError.UNKNOWN_ERROR;
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateSIPError(int i, WarningHdr warningHdr) {
        int warningCode = getWarningCode(warningHdr);
        String warningText = getWarningText(warningHdr);
        Log.d(LOG_TAG, "translateSIPError(): ErrorCode = " + i + ", WarningCode = " + warningCode);
        if (i == 180) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.RINGING;
        }
        if (i == 181) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.CALL_IS_BEING_FORWARDED;
        }
        if (i == 420) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.BAD_EXTENSION;
        }
        if (i == 421) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.EXTENSION_REQUIRED;
        }
        if (i == 493) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.UNDECEIPHERABLE;
        }
        if (i == 494) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.SECURITY_AGREEMENT_REQD;
        }
        if (i == 603) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.REMOTE_PARTY_DECLINED;
        }
        if (i != 604) {
            switch (i) {
                case 100:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.TRYING;
                case MNO.MOVISTAR_MEXICO /* 183 */:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.SESSION_PROGRESS;
                case 305:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.USE_PROXY;
                case 380:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.ALTERNATE_SERVICE;
                case 400:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.INVALID_REQUEST;
                case 408:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.SESSION_TIMED_OUT;
                case 410:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.GONE;
                case 423:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.INTERVAL_TOO_BRIEF;
                case 491:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.REQUEST_PENDING;
                case 513:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.MESSAGE_TOO_LARGE;
                case 600:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.BUSY_EVERYWHERE;
                case 606:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.SERVER_NOT_ACCEPTABLE;
                case 703:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.NO_DNS_RESULTS;
                case 709:
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.NO_RESPONSE;
                default:
                    switch (i) {
                        case 300:
                            return com.sec.internal.constants.ims.servicemodules.im.ImError.MULTIPLE_CHOICES;
                        case 301:
                            return com.sec.internal.constants.ims.servicemodules.im.ImError.MOVED_PERMANENTLY;
                        case 302:
                            return com.sec.internal.constants.ims.servicemodules.im.ImError.MOVED_TEMPORARILY;
                        default:
                            switch (i) {
                                case 403:
                                    if (warningCode == 105) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_RETRY_FALLBACK;
                                    }
                                    if (warningCode == 119) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_ANONYMITY_NOT_ALLOWED;
                                    }
                                    if (warningCode == 127) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED;
                                    }
                                    if (warningCode == 129) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_NO_DESTINATIONS;
                                    }
                                    if (warningCode == 381) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_MAX_GROUP_NUMBER;
                                    }
                                    if (warningCode == 488) {
                                        if ("Chatbot Conversation Needed".equalsIgnoreCase(warningText)) {
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_CHATBOT_CONVERSATION_NEEDED;
                                        }
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_NO_WARNING_HEADER;
                                    }
                                    if (warningCode == 122) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_RESTART_GC_CLOSED;
                                    }
                                    if (warningCode == 123) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK;
                                    }
                                    if (warningCode == 132) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_VERSION_NOT_SUPPORTED;
                                    }
                                    if (warningCode == 133) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_SIZE_EXCEEDED;
                                    }
                                    switch (warningCode) {
                                        case 204:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_TOKEN_NOT_FOUND;
                                        case 205:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_CHATBOT_DECLINED;
                                        case 206:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_SPAM_SENDER;
                                        default:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.FORBIDDEN_NO_WARNING_HEADER;
                                    }
                                case 404:
                                    if (warningCode == 123) {
                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.SESSION_DOESNT_EXIST;
                                    }
                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.REMOTE_USER_INVALID;
                                case 405:
                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.METHOD_NOT_ALLOWED;
                                case RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED /* 406 */:
                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.NOT_ACCEPTABLE;
                                default:
                                    switch (i) {
                                        case 413:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.REQUEST_ENTITY_TOO_LARGE;
                                        case 414:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.REQUEST_URI_TOO_LARGE;
                                        case AECNamespace.HttpResponseCode.UNSUPPORTED_MEDIA_TYPE /* 415 */:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.UNSUPPORTED_MEDIA_TYPE;
                                        case 416:
                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.UNSUPPORTED_URI_SCHEME;
                                        default:
                                            switch (i) {
                                                case NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE /* 480 */:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.REMOTE_TEMPORARILY_UNAVAILABLE;
                                                case 481:
                                                    if (warningCode == 123) {
                                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK;
                                                    }
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.TRANSACTION_DOESNT_EXIST;
                                                case 482:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.LOOP_DETECTED;
                                                case 483:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.TOO_MANY_HOPS;
                                                case 484:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.ADDRESS_INCOMPLETE;
                                                case 485:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.AMBIGUOUS;
                                                case NSDSNamespaces.NSDSHttpResponseCode.BUSY_HERE /* 486 */:
                                                    if (warningCode == 102) {
                                                        return com.sec.internal.constants.ims.servicemodules.im.ImError.EXCEED_MAXIMUM_RECIPIENTS;
                                                    }
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.BUSY_HERE;
                                                case 487:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.CONNECTION_RELEASED;
                                                case 488:
                                                    return com.sec.internal.constants.ims.servicemodules.im.ImError.NOT_ACCEPTABLE_HERE;
                                                default:
                                                    switch (i) {
                                                        case 500:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.INTERNAL_SERVER_ERROR;
                                                        case 501:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.NOT_IMPLEMENTED;
                                                        case 502:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.BAD_GATEWAY;
                                                        case 503:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.SERVICE_UNAVAILABLE;
                                                        case Id.REQUEST_IM_SENDMSG /* 504 */:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.SERVER_TIMEOUT;
                                                        case Id.REQUEST_IM_SEND_COMPOSING_STATUS /* 505 */:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.SIP_VERSION_NOT_SUPPORTED;
                                                        default:
                                                            return com.sec.internal.constants.ims.servicemodules.im.ImError.SIP_UNKNOWN_ERROR;
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }
        return com.sec.internal.constants.ims.servicemodules.im.ImError.NOTEXIST_ANYWHERE;
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateMSRPError(int i) {
        Log.d(LOG_TAG, "translateMSRPError(): ErrorCode = " + i);
        if (i == 400) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_REQUEST_UNINTELLIGIBLE;
        }
        if (i == 403) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_ACTION_NOT_ALLOWED;
        }
        if (i == 408) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_TRANSACTION_TIMED_OUT;
        }
        if (i == 413) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE;
        }
        if (i == 415) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_UNKNOWN_CONTENT_TYPE;
        }
        if (i == 423) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_PARAMETERS_OUT_OF_BOUND;
        }
        if (i == 481) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_SESSION_DOES_NOT_EXIST;
        }
        if (i == 501) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_UNKNOWN_METHOD;
        }
        if (i == 503) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.OUTOFSERVICE;
        }
        if (i == 506) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_SESSION_ON_OTHER_CONNECTION;
        }
        return com.sec.internal.constants.ims.servicemodules.im.ImError.MSRP_UNKNOWN_ERROR;
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateImSessionReleaseError(ReasonHdr reasonHdr) {
        int i;
        String str;
        if (reasonHdr != null) {
            i = (int) reasonHdr.code();
            str = reasonHdr.text();
        } else {
            i = -1;
            str = "";
        }
        Log.d(LOG_TAG, "translateImSessionReleaseError: cause: " + i + ", causeText=" + str);
        if (i == 200) {
            if (RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()).boolSetting(RcsPolicySettings.RcsPolicy.CHECK_BYECAUSE)) {
                if ("Booted".equals(str)) {
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.CONFERENCE_PARTY_BOOTED;
                }
                if ("Call Completed".equals(str)) {
                    return com.sec.internal.constants.ims.servicemodules.im.ImError.CONFERENCE_CALL_COMPLETED;
                }
            }
            return com.sec.internal.constants.ims.servicemodules.im.ImError.NORMAL_RELEASE;
        }
        if (i == 408) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.SESSION_TIMED_OUT;
        }
        if (i == 410) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.NORMAL_RELEASE_GONE;
        }
        if (i == 480) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.NORMAL_RELEASE_BEARER_UNAVAILABLE;
        }
        return com.sec.internal.constants.ims.servicemodules.im.ImError.NORMAL_RELEASE;
    }

    public static Result translateFtResult(ImError imError, Object obj) {
        return translateResult(translateFtError(imError, obj), imError, obj);
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateFtError(ImError imError, Object obj) {
        if (imError == null) {
            return com.sec.internal.constants.ims.servicemodules.im.ImError.UNKNOWN_ERROR;
        }
        int errorType = imError.errorType();
        Log.d(LOG_TAG, "translateFtError " + errorType);
        if (errorType == 4) {
            return translateFtSessionReleaseError(obj instanceof ReasonHdr ? (ReasonHdr) obj : null);
        }
        return translateImError(imError, obj);
    }

    public static com.sec.internal.constants.ims.servicemodules.im.ImError translateFtSessionReleaseError(ReasonHdr reasonHdr) {
        int code = reasonHdr != null ? (int) reasonHdr.code() : -1;
        Log.d(LOG_TAG, "translateFtSessionReleaseError: cause: " + code);
        if (code != 200) {
            if (code == 408) {
                return com.sec.internal.constants.ims.servicemodules.im.ImError.SESSION_TIMED_OUT;
            }
            if (code == 480) {
                return com.sec.internal.constants.ims.servicemodules.im.ImError.NETWORK_ERROR;
            }
            if (code == 503) {
                return com.sec.internal.constants.ims.servicemodules.im.ImError.SERVICE_UNAVAILABLE;
            }
            if (code != 603) {
                return com.sec.internal.constants.ims.servicemodules.im.ImError.NORMAL_RELEASE;
            }
        }
        return com.sec.internal.constants.ims.servicemodules.im.ImError.REMOTE_PARTY_CANCELED;
    }

    public static int getWarningCode(WarningHdr warningHdr) {
        String text;
        if (warningHdr == null) {
            return -1;
        }
        int code = warningHdr.code();
        if (code != 399 || (text = warningHdr.text()) == null) {
            return code;
        }
        try {
            return Integer.parseInt(text.split(" ")[0]);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return code;
        }
    }

    public static String getWarningText(WarningHdr warningHdr) {
        return warningHdr != null ? warningHdr.text() : "";
    }

    public static FtTransferProgressEvent.State translateFtProgressState(int i) {
        if (i == 0) {
            return FtTransferProgressEvent.State.TRANSFERRING;
        }
        if (i == 1) {
            return FtTransferProgressEvent.State.INTERRUPTED;
        }
        if (i == 2) {
            return FtTransferProgressEvent.State.CANCELED;
        }
        if (i == 3) {
            return FtTransferProgressEvent.State.COMPLETED;
        }
        Log.e(LOG_TAG, "translateFtProgressState(): unsupported state! Use TRANSFERRING instead!");
        return FtTransferProgressEvent.State.TRANSFERRING;
    }

    public static Set<NotificationStatus> translateStackImdnNoti(List<Integer> list) {
        Log.d(LOG_TAG, "translateStackImdnNoti(): notifications = " + list);
        HashSet hashSet = new HashSet();
        for (Integer num : list) {
            Log.d(LOG_TAG, "translateStackImdnNoti(): " + num);
            int intValue = num.intValue();
            if (intValue == 0) {
                hashSet.add(NotificationStatus.DELIVERED);
            } else if (intValue == 1) {
                hashSet.add(NotificationStatus.DISPLAYED);
            } else if (intValue == 2) {
                hashSet.add(NotificationStatus.INTERWORKING_SMS);
            } else if (intValue == 3) {
                hashSet.add(NotificationStatus.INTERWORKING_MMS);
            } else if (intValue == 4) {
                hashSet.add(NotificationStatus.CANCELED);
            }
        }
        return hashSet;
    }

    public static int[] translateFwImdnNoti(Set<NotificationStatus> set) {
        int i;
        Log.d(LOG_TAG, "translateFwImdnNoti(): notifications = " + set);
        int[] iArr = new int[set.size()];
        Arrays.fill(iArr, -1);
        Iterator<NotificationStatus> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int i3 = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[it.next().ordinal()];
            if (i3 == 1) {
                i = i2 + 1;
                iArr[i2] = 0;
            } else if (i3 == 2) {
                i = i2 + 1;
                iArr[i2] = 1;
            } else if (i3 == 3) {
                i = i2 + 1;
                iArr[i2] = 2;
            } else if (i3 == 4) {
                i = i2 + 1;
                iArr[i2] = 3;
            } else if (i3 == 5) {
                i = i2 + 1;
                iArr[i2] = 4;
            }
            i2 = i;
        }
        return iArr;
    }

    /* renamed from: com.sec.internal.ims.translate.ResipTranslatorCollection$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus;

        static {
            int[] iArr = new int[NotificationStatus.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus = iArr;
            try {
                iArr[NotificationStatus.DELIVERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.DISPLAYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.INTERWORKING_SMS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.INTERWORKING_MMS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.CANCELED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d A[Catch: UnsupportedEncodingException -> 0x005f, TryCatch #1 {UnsupportedEncodingException -> 0x005f, blocks: (B:13:0x0043, B:15:0x004d, B:17:0x0056), top: B:12:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056 A[Catch: UnsupportedEncodingException -> 0x005f, TRY_LEAVE, TryCatch #1 {UnsupportedEncodingException -> 0x005f, blocks: (B:13:0x0043, B:15:0x004d, B:17:0x0056), top: B:12:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String adjustMessageBody(java.lang.String r5, java.lang.String r6) {
        /*
            r0 = 0
            java.lang.String r1 = "ResipTranslatorCollection"
            if (r5 == 0) goto L67
            if (r6 != 0) goto L8
            goto L67
        L8:
            boolean r2 = r6.isEmpty()
            r3 = 1
            if (r2 != 0) goto L38
            java.lang.String r2 = "charset="
            java.lang.String[] r6 = r6.split(r2)
            int r2 = r6.length
            if (r2 <= r3) goto L38
            r6 = r6[r3]
            java.lang.String r2 = ";"
            java.lang.String[] r6 = r6.split(r2)
            r2 = 0
            r6 = r6[r2]
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "adjustMessageBody(): charset = "
            r2.append(r4)
            r2.append(r6)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
            goto L3a
        L38:
            java.lang.String r6 = "UTF-8"
        L3a:
            java.lang.String r2 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L60
            byte[] r5 = r5.getBytes(r6)     // Catch: java.io.UnsupportedEncodingException -> L60
            r2.<init>(r5, r6)     // Catch: java.io.UnsupportedEncodingException -> L60
            int r5 = com.sec.internal.helper.SimUtil.getSimSlotPriority()     // Catch: java.io.UnsupportedEncodingException -> L5f
            com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy r5 = com.sec.internal.ims.rcs.RcsPolicyManager.getRcsStrategy(r5)     // Catch: java.io.UnsupportedEncodingException -> L5f
            if (r5 == 0) goto L54
            java.lang.String r6 = "replace_specialcharacter"
            boolean r3 = r5.boolSetting(r6)     // Catch: java.io.UnsupportedEncodingException -> L5f
        L54:
            if (r3 == 0) goto L66
            r5 = 164(0xa4, float:2.3E-43)
            r6 = 8364(0x20ac, float:1.172E-41)
            java.lang.String r2 = r2.replace(r5, r6)     // Catch: java.io.UnsupportedEncodingException -> L5f
            goto L66
        L5f:
            r0 = r2
        L60:
            java.lang.String r5 = "adjustMessageBody(): unsupported charset!"
            android.util.Log.e(r1, r5)
            r2 = r0
        L66:
            return r2
        L67:
            java.lang.String r5 = "adjustMessageBody(): invalid data, skip the message!"
            android.util.Log.e(r1, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.translate.ResipTranslatorCollection.adjustMessageBody(java.lang.String, java.lang.String):java.lang.String");
    }

    public static Map<String, String> translateFwImExtensionHeaders(ImExtension imExtension) {
        HashMap hashMap = new HashMap();
        if (imExtension.sipExtensions() != null) {
            ExtraHeader sipExtensions = imExtension.sipExtensions();
            for (int i = 0; i < sipExtensions.pairLength(); i++) {
                if (sipExtensions.pair(i) != null && sipExtensions.pair(i).key() != null) {
                    Log.d(LOG_TAG, "ImExtension Header: " + sipExtensions.pair(i).key() + " Value: " + sipExtensions.pair(i).value());
                    hashMap.put(sipExtensions.pair(i).key(), sipExtensions.pair(i).value());
                }
            }
        }
        return hashMap;
    }

    public static int translateStackImExtensionHeaders(FlatBufferBuilder flatBufferBuilder, Map<String, String> map) {
        int[] iArr = new int[map.size()];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            int createString = flatBufferBuilder.createString(entry.getKey());
            int createString2 = flatBufferBuilder.createString(entry.getValue());
            Pair.startPair(flatBufferBuilder);
            Pair.addKey(flatBufferBuilder, createString);
            Pair.addValue(flatBufferBuilder, createString2);
            iArr[i] = Pair.endPair(flatBufferBuilder);
            i++;
        }
        int createPairVector = ExtraHeader.createPairVector(flatBufferBuilder, iArr);
        ExtraHeader.startExtraHeader(flatBufferBuilder);
        ExtraHeader.addPair(flatBufferBuilder, createPairVector);
        int endExtraHeader = ExtraHeader.endExtraHeader(flatBufferBuilder);
        ImExtension.startImExtension(flatBufferBuilder);
        ImExtension.addSipExtensions(flatBufferBuilder, endExtraHeader);
        return ImExtension.endImExtension(flatBufferBuilder);
    }

    public static ImConferenceParticipantInfo.ImConferenceParticipantStatus translateToImConferenceParticipantStatus(String str) {
        str.hashCode();
        switch (str) {
            case "dialing-in":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.DIALING_IN;
            case "disconnected":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.DISCONNECTED;
            case "on-hold":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.ON_HOLD;
            case "dialing-out":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.DIALING_OUT;
            case "pending":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.PENDING;
            case "connected":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.CONNECTED;
            case "muted-via-focus":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.MUTED_VIA_FOCUS;
            case "disconnecting":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.DISCONNECTING;
            case "alerting":
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.ALERTING;
            default:
                return ImConferenceParticipantInfo.ImConferenceParticipantStatus.INVALID;
        }
    }

    public static ImConferenceParticipantInfo.ImConferenceDisconnectionReason translateToImConferenceDisconnectionReason(String str) {
        str.hashCode();
        switch (str) {
            case "booted":
                return ImConferenceParticipantInfo.ImConferenceDisconnectionReason.BOOTED;
            case "failed":
                return ImConferenceParticipantInfo.ImConferenceDisconnectionReason.FAILED;
            case "busy":
                return ImConferenceParticipantInfo.ImConferenceDisconnectionReason.BUSY;
            case "departed":
                return ImConferenceParticipantInfo.ImConferenceDisconnectionReason.DEPARTED;
            default:
                return null;
        }
    }

    public static ImConferenceParticipantInfo.ImConferenceUserElemState translateImConferenceUserElemState(String str) {
        if (str == null) {
            return ImConferenceParticipantInfo.ImConferenceUserElemState.FULL;
        }
        if (str.equals("partial")) {
            return ImConferenceParticipantInfo.ImConferenceUserElemState.PARTIAL;
        }
        if (str.equals("deleted")) {
            return ImConferenceParticipantInfo.ImConferenceUserElemState.DELETED;
        }
        return ImConferenceParticipantInfo.ImConferenceUserElemState.FULL;
    }
}
