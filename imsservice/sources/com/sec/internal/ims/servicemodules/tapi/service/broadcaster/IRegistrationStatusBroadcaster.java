package com.sec.internal.ims.servicemodules.tapi.service.broadcaster;

import com.gsma.services.rcs.RcsServiceRegistration;

/* loaded from: classes.dex */
public interface IRegistrationStatusBroadcaster {
    void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode);
}
