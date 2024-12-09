package com.sec.internal.ims.core;

import android.content.Context;
import com.sec.internal.constants.ims.core.PdnFailReason;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class RegistrationGovernorAttMexico extends RegistrationGovernorBase {
    private static final String LOG_TAG = "RegiGvnATTMexico";

    public RegistrationGovernorAttMexico(RegistrationManagerInternal registrationManagerInternal, ITelephonyManager iTelephonyManager, RegisterTask registerTask, PdnController pdnController, IVolteServiceModule iVolteServiceModule, IConfigModule iConfigModule, Context context) {
        super(registrationManagerInternal, iTelephonyManager, registerTask, pdnController, iVolteServiceModule, iConfigModule, context);
    }

    @Override // com.sec.internal.ims.core.RegistrationGovernorBase, com.sec.internal.interfaces.ims.core.IRegistrationGovernor
    public void onPdnRequestFailed(PdnFailReason pdnFailReason, int i) {
        super.onPdnRequestFailed(pdnFailReason, i);
        if (isMatchedPdnFailReason(pdnFailReason) && this.mTask.getProfile().getPdnType() == 11 && this.mTask.getRegistrationRat() != 18) {
            if (!DeviceUtil.isApAssistedMode() || i == 1) {
                IMSLog.i(LOG_TAG, "send ImsNotAvailable");
                this.mIsPermanentStopped = true;
                this.mRegMan.notifyImsNotAvailable(this.mTask, true, true);
                IMSLog.i(LOG_TAG, "IUS: send stopPdnConnectivity and remove IMS request due permanent fail.");
                this.mRegMan.stopPdnConnectivity(this.mTask.getPdnType(), this.mTask);
                this.mTask.setState(RegistrationConstants.RegisterTaskState.IDLE);
            }
        }
    }
}
