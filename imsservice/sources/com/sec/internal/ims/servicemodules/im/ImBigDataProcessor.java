package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.ims.util.ChatbotUriUtil;

/* loaded from: classes.dex */
public class ImBigDataProcessor extends RcsBigDataProcessor {
    private ImModule mImModule;

    ImBigDataProcessor(Context context, ImModule imModule) {
        super(context);
        this.mImModule = imModule;
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected ImSession getImSession(String str) {
        return this.mImModule.getImSession(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected boolean isChatBot(int i, ImSession imSession) {
        return !imSession.isGroupChat() && ChatbotUriUtil.hasChatbotUri(imSession.getParticipantsUri(), i);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.ImBigDataProcessor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type;

        static {
            int[] iArr = new int[ImConstants.Type.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type = iArr;
            try {
                iArr[ImConstants.Type.MULTIMEDIA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type[ImConstants.Type.LOCATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected String getMessageType(MessageBase messageBase, boolean z) {
        String str;
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type[messageBase.getType().ordinal()];
        if (i == 1) {
            str = "FT";
        } else if (i != 2) {
            str = messageBase.getIsSlmSvcMsg() ? DiagnosisConstants.RCSM_MTYP_SLM : "IM";
        } else {
            str = DiagnosisConstants.RCSM_MTYP_GLS;
        }
        if (!z) {
            return str;
        }
        return str + DiagnosisConstants.RCSM_MTYP_CHATBOT_POSTFIX;
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected ImsRegistration getImsRegistration(int i) {
        return this.mImModule.getImsRegistration(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected boolean isWifiConnected() {
        return this.mImModule.isWifiConnected();
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected String getMessageTypeForILA(String str) {
        str.hashCode();
        switch (str) {
            case "GLS_CHATBOT":
                return DiagnosisConstants.DRCS_KEY_MAAP_GLS_MO_SUCCESS;
            case "FT":
                return DiagnosisConstants.DRCS_KEY_RCS_FT_MO_SUCCESS;
            case "GLS":
                return DiagnosisConstants.DRCS_KEY_RCS_GLS_MO_SUCCESS;
            case "SLM":
                return DiagnosisConstants.DRCS_KEY_RCS_SLM_MO_SUCCESS;
            case "IM_CHATBOT":
                return DiagnosisConstants.DRCS_KEY_MAAP_IM_MO_SUCCESS;
            case "SLM_CHATBOT":
                return DiagnosisConstants.DRCS_KEY_MAAP_SLM_MO_SUCCESS;
            case "FT_CHATBOT":
                return DiagnosisConstants.DRCS_KEY_MAAP_FT_MO_SUCCESS;
            default:
                return DiagnosisConstants.DRCS_KEY_RCS_IM_MO_SUCCESS;
        }
    }
}
