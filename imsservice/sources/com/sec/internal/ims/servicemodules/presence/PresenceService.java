package com.sec.internal.ims.servicemodules.presence;

import android.os.RemoteException;
import com.sec.ims.presence.IPresenceService;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule;

/* loaded from: classes.dex */
public class PresenceService extends IPresenceService.Stub {
    PresenceModule mPresence;

    public PresenceService(CapabilityDiscoveryModule capabilityDiscoveryModule) {
        this.mPresence = null;
        this.mPresence = capabilityDiscoveryModule.getPresenceModule();
    }

    public PresenceInfo getOwnPresenceInfo() throws RemoteException {
        return this.mPresence.getOwnPresenceInfo(SimUtil.getActiveDataPhoneId());
    }

    public PresenceInfo getPresenceInfo(ImsUri imsUri) throws RemoteException {
        return this.mPresence.getPresenceInfo(imsUri, SimUtil.getActiveDataPhoneId());
    }

    public PresenceInfo getPresenceInfoByContactId(String str) throws RemoteException {
        return this.mPresence.getPresenceInfoByContactId(str, SimUtil.getActiveDataPhoneId());
    }
}
