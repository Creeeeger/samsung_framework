package com.sec.internal.ims.servicemodules.session;

import android.content.Context;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor;

/* loaded from: classes.dex */
public class EcBigDataProcessor extends RcsBigDataProcessor {
    private SessionModule mSessionModule;

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected String getMessageType(MessageBase messageBase, boolean z) {
        return DiagnosisConstants.RCSM_MTYP_EC;
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected String getMessageTypeForILA(String str) {
        return DiagnosisConstants.DRCS_KEY_RCS_EC_MO_SUCCESS;
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected boolean isChatBot(int i, ImSession imSession) {
        return false;
    }

    EcBigDataProcessor(Context context, SessionModule sessionModule) {
        super(context);
        this.mSessionModule = sessionModule;
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected ImSession getImSession(String str) {
        return this.mSessionModule.getMessagingSession(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected ImsRegistration getImsRegistration(int i) {
        return this.mSessionModule.getImsRegistration(i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.RcsBigDataProcessor
    protected boolean isWifiConnected() {
        return this.mSessionModule.isWifiConnected();
    }
}
