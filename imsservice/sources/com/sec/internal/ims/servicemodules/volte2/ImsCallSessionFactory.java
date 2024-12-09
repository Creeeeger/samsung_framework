package com.sec.internal.ims.servicemodules.volte2;

import android.os.Looper;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;

/* loaded from: classes.dex */
public class ImsCallSessionFactory {
    private static final String LOG_TAG = "ImsCallSessionFactory";
    private static int mCallIdCounter;
    private IVolteServiceModuleInternal mModule;
    private Looper mServiceModuleLooper;

    public ImsCallSessionFactory(IVolteServiceModuleInternal iVolteServiceModuleInternal, Looper looper) {
        this.mModule = iVolteServiceModuleInternal;
        this.mServiceModuleLooper = looper;
    }

    public synchronized ImsCallSession create(CallProfile callProfile, ImsRegistration imsRegistration, boolean z) {
        Mno fromName;
        ImsCallSession imsConfSession;
        if (imsRegistration == null) {
            fromName = SimUtil.getSimMno(callProfile.getPhoneId());
        } else {
            fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        }
        Preconditions.checkNotNull(callProfile);
        if (callProfile.getNetworkType() != 15 && !z) {
            Preconditions.checkNotNull(imsRegistration);
        }
        if (callProfile.getNetworkType() == 15) {
            Log.i(LOG_TAG, "createImsCallSession: emergency session.");
            imsConfSession = new ImsEmergencySession(this.mModule.getContext(), callProfile, this.mServiceModuleLooper, this.mModule);
        } else if (imsRegistration == null && z) {
            if (callProfile.getCmcType() == 0 && (fromName == Mno.SKT || fromName == Mno.LGU)) {
                Log.i(LOG_TAG, "createImsCallSession: conf call session without regi info");
                imsConfSession = new ImsConfSession(this.mModule.getContext(), callProfile, imsRegistration, this.mServiceModuleLooper, this.mModule);
            } else {
                Log.i(LOG_TAG, "createImsCallSession: normal call session without regi info");
                imsConfSession = new ImsCallSession(this.mModule.getContext(), callProfile, imsRegistration, this.mServiceModuleLooper, this.mModule);
            }
        } else {
            if (!callProfile.isConferenceCall() && !isDefaultConfSession(imsRegistration)) {
                Log.i(LOG_TAG, "createImsCallSession: normal call session");
                imsConfSession = new ImsCallSession(this.mModule.getContext(), callProfile, imsRegistration, this.mServiceModuleLooper, this.mModule);
            }
            Log.i(LOG_TAG, "createImsCallSession: conference session.");
            imsConfSession = new ImsConfSession(this.mModule.getContext(), callProfile, imsRegistration, this.mServiceModuleLooper, this.mModule);
        }
        imsConfSession.init(ImsRegistry.getHandlerFactory().getVolteStackAdaptor(), ImsRegistry.getRegistrationManager());
        int createCallId = createCallId();
        if (createCallId < 0) {
            return null;
        }
        if (imsRegistration != null && imsRegistration.getImsProfile() != null) {
            imsConfSession.setCmcType(imsRegistration.getImsProfile().getCmcType());
            imsConfSession.setVideoCrbtSupportType(imsRegistration.getImsProfile().getVideoCrbtSupportType());
        } else if (imsRegistration == null && (callProfile.getCmcType() == 2 || callProfile.getCmcType() == 4 || callProfile.getCmcType() == 8)) {
            imsConfSession.setCmcType(callProfile.getCmcType());
        }
        imsConfSession.setCallId(createCallId);
        return imsConfSession;
    }

    private boolean isDefaultConfSession(ImsRegistration imsRegistration) {
        if (imsRegistration == null) {
            return false;
        }
        Mno fromName = Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        return (fromName == Mno.SKT || fromName == Mno.LGU) && !imsRegistration.getImsProfile().isSamsungMdmnEnabled();
    }

    private int createCallId() {
        boolean z = false;
        while (true) {
            if (mCallIdCounter >= 255) {
                mCallIdCounter = 0;
                if (z) {
                    Log.e(LOG_TAG, "All CallId is allocated, session create fail");
                    return -1;
                }
                z = true;
            }
            int i = mCallIdCounter + 1;
            mCallIdCounter = i;
            if (this.mModule.getSessionByCallId(i) != null) {
                Log.i(LOG_TAG, "Call " + mCallIdCounter + " is exist");
            } else {
                return mCallIdCounter;
            }
        }
    }
}
