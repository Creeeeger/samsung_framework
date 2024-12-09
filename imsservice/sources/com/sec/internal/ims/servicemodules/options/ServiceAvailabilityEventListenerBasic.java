package com.sec.internal.ims.servicemodules.options;

import com.sec.ims.util.ImsUri;
import com.sec.internal.interfaces.ims.servicemodules.options.IServiceAvailabilityEventListener;
import java.util.Date;
import java.util.Objects;

/* loaded from: classes.dex */
public class ServiceAvailabilityEventListenerBasic implements IServiceAvailabilityEventListener {
    @Override // com.sec.internal.interfaces.ims.servicemodules.options.IServiceAvailabilityEventListener
    public void onServiceAvailabilityUpdate(String str, ImsUri imsUri, Date date) {
        Objects.requireNonNull(str);
    }
}
