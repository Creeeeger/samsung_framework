package com.sec.internal.ims.servicemodules.im;

import android.content.ContentValues;
import android.content.Context;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public abstract class RcsBigDataProcessor implements IRcsBigDataProcessor {
    private Context mContext;

    protected abstract ImSession getImSession(String str);

    protected abstract ImsRegistration getImsRegistration(int i);

    protected abstract String getMessageType(MessageBase messageBase, boolean z);

    protected abstract String getMessageTypeForILA(String str);

    protected abstract boolean isChatBot(int i, ImSession imSession);

    protected abstract boolean isWifiConnected();

    protected RcsBigDataProcessor(Context context) {
        this.mContext = context;
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageSendingSucceeded(MessageBase messageBase) {
        sendMoBigdata(messageBase, "0", null, null, null);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageSendingFailed(MessageBase messageBase, Result result, IMnoStrategy.StrategyResponse strategyResponse) {
        onMessageSendingFailed(messageBase, result, getCause(result), strategyResponse);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageSendingFailed(MessageBase messageBase, Result result, String str, IMnoStrategy.StrategyResponse strategyResponse) {
        sendMoBigdata(messageBase, getOrst(result.getType()), str, result.getType(), strategyResponse != null ? strategyResponse.getStatusCode() : null);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageReceived(MessageBase messageBase, ImSession imSession) {
        onMessageReceived(getPhoneIdByImsi(imSession.getOwnImsi()), messageBase, imSession);
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageReceived(int i, MessageBase messageBase, ImSession imSession) {
        storeMtDrcsInfoToImsLogAgent(i, isChatBot(i, imSession), ImConstants.ChatbotTrafficType.fromString(messageBase != null ? messageBase.getMaapTrafficType() : null));
    }

    @Override // com.sec.internal.ims.servicemodules.im.interfaces.IRcsBigDataProcessor
    public void onMessageCancelSent(int i, int i2) {
        storeMessageCancelInfoToImsLogAgent(i, i2);
    }

    private void sendMoBigdata(MessageBase messageBase, String str, String str2, Result.Type type, IMnoStrategy.StatusCode statusCode) {
        ImSession imSession = getImSession(messageBase.getChatId());
        if (imSession == null) {
            return;
        }
        int phoneIdByImsi = getPhoneIdByImsi(messageBase.getOwnIMSI());
        boolean isChatBot = isChatBot(phoneIdByImsi, imSession);
        String messageType = getMessageType(messageBase, isChatBot);
        sendRcsmInfoToHqmAgent(messageBase, str, str2, statusCode, imSession, phoneIdByImsi, messageType);
        storeMoDrcsInfoToImsLogAgent(phoneIdByImsi, isChatBot, str, messageType, type, statusCode, messageBase.getReferenceType());
    }

    private void sendRcsmInfoToHqmAgent(MessageBase messageBase, String str, String str2, IMnoStrategy.StatusCode statusCode, ImSession imSession, int i, String str3) {
        ContentValues contentValues = new ContentValues();
        prepareKeysForRcsm(i, contentValues, messageBase, imSession, str, str3, str2, statusCode);
        ImsLogAgentUtil.sendLogToAgent(i, this.mContext, DiagnosisConstants.FEATURE_RCSM, contentValues);
    }

    private void storeMtDrcsInfoToImsLogAgent(int i, boolean z, ImConstants.ChatbotTrafficType chatbotTrafficType) {
        ContentValues contentValues = new ContentValues();
        prepareKeysForMtDrcs(z, chatbotTrafficType, contentValues);
        storeDrcsInfoToImsLogAgent(i, contentValues);
    }

    private void prepareKeysForRcsm(int i, ContentValues contentValues, MessageBase messageBase, ImSession imSession, String str, String str2, String str3, IMnoStrategy.StatusCode statusCode) {
        prepareCommonKeysForRcsm(i, contentValues, messageBase, imSession, str, str2);
        if (messageBase instanceof FtMessage) {
            prepareFtSpecificKeysForRcsm(contentValues, (FtMessage) messageBase);
        }
        prepareErrorKeysForRcsm(contentValues, str, str3);
        prepareOptionalKeysForRcsm(contentValues, messageBase, statusCode);
    }

    private void prepareCommonKeysForRcsm(int i, ContentValues contentValues, MessageBase messageBase, ImSession imSession, String str, String str2) {
        contentValues.put("ORST", str);
        contentValues.put(DiagnosisConstants.RCSM_KEY_MDIR, "0");
        contentValues.put(DiagnosisConstants.RCSM_KEY_MGRP, imSession.isGroupChat() ? "1" : "0");
        contentValues.put(DiagnosisConstants.RCSM_KEY_MTYP, str2);
        contentValues.put(DiagnosisConstants.RCSM_KEY_MCID, messageBase.getChatId());
        contentValues.put(DiagnosisConstants.RCSM_KEY_MIID, messageBase.getImdnId());
        contentValues.put(DiagnosisConstants.RCSM_KEY_MSIZ, getMessageSize(messageBase));
        contentValues.put(DiagnosisConstants.RCSM_KEY_PTCN, String.valueOf(imSession.getParticipantsSize()));
        contentValues.put(DiagnosisConstants.RCSM_KEY_MRAT, getRegiRat(i));
    }

    private void prepareFtSpecificKeysForRcsm(ContentValues contentValues, FtMessage ftMessage) {
        contentValues.put(DiagnosisConstants.RCSM_KEY_FTYP, getFileExtension(ftMessage));
        contentValues.put(DiagnosisConstants.RCSM_KEY_FTRC, String.valueOf(ftMessage.getRetryCount()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void prepareErrorKeysForRcsm(ContentValues contentValues, String str, String str2) {
        char c;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 49:
                if (str.equals("1")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 50:
                if (str.equals("2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 51:
                if (str.equals(DiagnosisConstants.RCSM_ORST_REGI)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 52:
                if (str.equals(DiagnosisConstants.RCSM_ORST_HTTP)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 53:
                if (str.equals(DiagnosisConstants.RCSM_ORST_ITER)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c == 1) {
                contentValues.put(DiagnosisConstants.RCSM_KEY_SIPR, str2);
                return;
            }
            if (c == 2) {
                contentValues.put(DiagnosisConstants.RCSM_KEY_MSRP, str2);
            } else if (c == 3) {
                contentValues.put(DiagnosisConstants.RCSM_KEY_HTTP, str2);
            } else {
                contentValues.put("ITER", str2);
            }
        }
    }

    private void prepareOptionalKeysForRcsm(ContentValues contentValues, MessageBase messageBase, IMnoStrategy.StatusCode statusCode) {
        if (statusCode != null) {
            contentValues.put(DiagnosisConstants.RCSM_KEY_SRSC, statusCode.toString());
        }
        if (messageBase.getReferenceType() != null) {
            contentValues.put(DiagnosisConstants.RCSM_KEY_MRTY, messageBase.getReferenceType());
        }
        if (messageBase.getReferenceValue() != null) {
            contentValues.put(DiagnosisConstants.RCSM_KEY_MRVA, messageBase.getReferenceValue());
        }
    }

    private void storeMoDrcsInfoToImsLogAgent(int i, boolean z, String str, String str2, Result.Type type, IMnoStrategy.StatusCode statusCode, String str3) {
        ContentValues contentValues = new ContentValues();
        prepareKeysForMoDrcs(z, str, str2, type, statusCode, str3, contentValues);
        storeDrcsInfoToImsLogAgent(i, contentValues);
    }

    private void prepareKeysForMoDrcs(boolean z, String str, String str2, Result.Type type, IMnoStrategy.StatusCode statusCode, String str3, ContentValues contentValues) {
        prepareResultKeysForMoDrcs(contentValues, z, str, str2, type);
        if (statusCode == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY) {
            contentValues.put(DiagnosisConstants.DRCS_KEY_SMS_FALLBACK, (Integer) 1);
        }
        if ("1".equals(str3)) {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_REPLY, (Integer) 1);
        } else if ("2".equals(str3)) {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_REACTION, (Integer) 1);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0044, code lost:
    
        if (r7.equals("1") == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void prepareResultKeysForMoDrcs(android.content.ContentValues r5, boolean r6, java.lang.String r7, java.lang.String r8, com.sec.internal.constants.ims.servicemodules.im.result.Result.Type r9) {
        /*
            r4 = this;
            r7.hashCode()
            int r0 = r7.hashCode()
            r1 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r1)
            r3 = -1
            switch(r0) {
                case 48: goto L47;
                case 49: goto L3e;
                case 50: goto L33;
                case 51: goto L28;
                case 52: goto L1d;
                case 53: goto L12;
                default: goto L10;
            }
        L10:
            r1 = r3
            goto L51
        L12:
            java.lang.String r0 = "5"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L1b
            goto L10
        L1b:
            r1 = 5
            goto L51
        L1d:
            java.lang.String r0 = "4"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L26
            goto L10
        L26:
            r1 = 4
            goto L51
        L28:
            java.lang.String r0 = "3"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L31
            goto L10
        L31:
            r1 = 3
            goto L51
        L33:
            java.lang.String r0 = "2"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L3c
            goto L10
        L3c:
            r1 = 2
            goto L51
        L3e:
            java.lang.String r0 = "1"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L51
            goto L10
        L47:
            java.lang.String r0 = "0"
            boolean r7 = r7.equals(r0)
            if (r7 != 0) goto L50
            goto L10
        L50:
            r1 = 0
        L51:
            java.lang.String r7 = "MPOF"
            java.lang.String r0 = "RCOF"
            switch(r1) {
                case 0: goto L8c;
                case 1: goto L7a;
                case 2: goto L7a;
                case 3: goto L68;
                case 4: goto L7a;
                case 5: goto L59;
                default: goto L58;
            }
        L58:
            goto L9d
        L59:
            if (r6 == 0) goto L5c
            goto L5d
        L5c:
            r7 = r0
        L5d:
            r5.put(r7, r2)
            java.lang.String r4 = r4.getFailTypeForILA(r9, r6)
            r5.put(r4, r2)
            goto L9d
        L68:
            if (r6 == 0) goto L6b
            goto L6c
        L6b:
            r7 = r0
        L6c:
            r5.put(r7, r2)
            if (r6 == 0) goto L74
            java.lang.String r4 = "MOFT"
            goto L76
        L74:
            java.lang.String r4 = "ROFT"
        L76:
            r5.put(r4, r2)
            goto L9d
        L7a:
            if (r6 == 0) goto L7d
            goto L7e
        L7d:
            r7 = r0
        L7e:
            r5.put(r7, r2)
            if (r6 == 0) goto L86
            java.lang.String r4 = "MOFN"
            goto L88
        L86:
            java.lang.String r4 = "ROFN"
        L88:
            r5.put(r4, r2)
            goto L9d
        L8c:
            if (r6 == 0) goto L91
            java.lang.String r6 = "MPOS"
            goto L93
        L91:
            java.lang.String r6 = "RCOS"
        L93:
            r5.put(r6, r2)
            java.lang.String r4 = r4.getMessageTypeForILA(r8)
            r5.put(r4, r2)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor.prepareResultKeysForMoDrcs(android.content.ContentValues, boolean, java.lang.String, java.lang.String, com.sec.internal.constants.ims.servicemodules.im.result.Result$Type):void");
    }

    private void prepareKeysForMtDrcs(boolean z, ImConstants.ChatbotTrafficType chatbotTrafficType, ContentValues contentValues) {
        if (!z) {
            contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_MT, (Integer) 1);
            return;
        }
        String chatBotTrafficType = getChatBotTrafficType(chatbotTrafficType);
        if (!chatBotTrafficType.isEmpty()) {
            contentValues.put(chatBotTrafficType, (Integer) 1);
        }
        contentValues.put(DiagnosisConstants.DRCS_KEY_MAAP_MT, (Integer) 1);
    }

    private void storeMessageCancelInfoToImsLogAgent(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.DRCS_KEY_RCS_CANCEL, Integer.valueOf(i2));
        storeDrcsInfoToImsLogAgent(i, contentValues);
    }

    private void storeDrcsInfoToImsLogAgent(int i, ContentValues contentValues) {
        contentValues.put(DiagnosisConstants.KEY_SEND_MODE, (Integer) 1);
        contentValues.put(DiagnosisConstants.KEY_OVERWRITE_MODE, (Integer) 1);
        ImsLogAgentUtil.storeLogToAgent(i, this.mContext, DiagnosisConstants.FEATURE_DRCS, contentValues);
    }

    private int getPhoneIdByImsi(String str) {
        int phoneId = SimManagerFactory.getPhoneId(str);
        return phoneId == -1 ? SimUtil.getActiveDataPhoneId() : phoneId;
    }

    private String getMessageSize(MessageBase messageBase) {
        if (messageBase instanceof FtMessage) {
            return String.valueOf(((FtMessage) messageBase).getFileSize());
        }
        try {
            return String.valueOf(messageBase.getBody().getBytes(StandardCharsets.UTF_8).length);
        } catch (NullPointerException unused) {
            return "0";
        }
    }

    private String getRegiRat(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        String valueOf = imsRegistration != null ? String.valueOf(imsRegistration.getCurrentRat()) : "-1";
        if (!isWifiConnected()) {
            return valueOf;
        }
        return valueOf + DiagnosisConstants.RCSM_MRAT_WIFI_POSTFIX;
    }

    private String getFileExtension(FtMessage ftMessage) {
        int lastIndexOf;
        String fileName = ftMessage.getFileName();
        return (fileName == null || (lastIndexOf = fileName.lastIndexOf(46)) <= -1) ? "" : fileName.substring(lastIndexOf + 1);
    }

    private String getFailTypeForILA(Result.Type type, boolean z) {
        int[] iArr = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type;
        if (type == null) {
            type = Result.Type.UNKNOWN_ERROR;
        }
        switch (iArr[type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return z ? DiagnosisConstants.DRCS_KEY_MAAP_MO_FAIL_NETWORK : DiagnosisConstants.DRCS_KEY_RCS_MO_FAIL_NETWORK;
            default:
                return z ? DiagnosisConstants.DRCS_KEY_MAAP_MO_FAIL_TERMINAL : DiagnosisConstants.DRCS_KEY_RCS_MO_FAIL_TERMINAL;
        }
    }

    private String getOrst(Result.Type type) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[type.ordinal()];
        return i != 1 ? i != 2 ? i != 7 ? i != 8 ? DiagnosisConstants.RCSM_ORST_ITER : DiagnosisConstants.RCSM_ORST_REGI : DiagnosisConstants.RCSM_ORST_HTTP : "2" : "1";
    }

    private String getCause(Result result) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[result.getType().ordinal()];
        if (i == 1) {
            if (result.getSipResponse() != null) {
                return String.valueOf(result.getSipResponse().getId());
            }
            return null;
        }
        if (i == 2) {
            if (result.getMsrpResponse() != null) {
                return String.valueOf(result.getMsrpResponse().getId());
            }
            return null;
        }
        return result.getType().toString();
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type;

        static {
            int[] iArr = new int[ImConstants.ChatbotTrafficType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType = iArr;
            try {
                iArr[ImConstants.ChatbotTrafficType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType[ImConstants.ChatbotTrafficType.ADVERTISEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType[ImConstants.ChatbotTrafficType.PAYMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType[ImConstants.ChatbotTrafficType.SUBSCRIPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType[ImConstants.ChatbotTrafficType.PREMIUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Result.Type.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type = iArr2;
            try {
                iArr2[Result.Type.SIP_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.MSRP_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.SESSION_RELEASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.NETWORK_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.DEDICATED_BEARER_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.REMOTE_PARTY_CANCELED.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.HTTP_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type[Result.Type.DEVICE_UNREGISTERED.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    private String getChatBotTrafficType(ImConstants.ChatbotTrafficType chatbotTrafficType) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType[chatbotTrafficType.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : DiagnosisConstants.DRCS_KEY_MAAP_TRAFFIC_TYPE_PREMIUM : DiagnosisConstants.DRCS_KEY_MAAP_TRAFFIC_TYPE_SUBSCRIPTION : DiagnosisConstants.DRCS_KEY_MAAP_TRAFFIC_TYPE_PAYMENT : DiagnosisConstants.DRCS_KEY_MAAP_TRAFFIC_TYPE_ADVERTISEMENT : DiagnosisConstants.DRCS_KEY_MAAP_TRAFFIC_TYPE_NONE;
    }
}
