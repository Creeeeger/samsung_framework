package com.sec.internal.interfaces.ims.core;

import android.net.Network;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.ims.gls.LocationInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface IUserAgent {
    void deregisterLocal();

    SipError getErrorCode();

    ImsProfile getImsProfile();

    ImsRegistration getImsRegistration();

    Network getNetwork();

    int getPhoneId();

    String getStateName();

    boolean getSuspendState();

    boolean isDeregistring();

    boolean isRegistering();

    void notifyE911RegistrationFailed();

    void setVowifi5gsaMode(int i);

    void updateCmcHotspotState(List<String> list);

    void updateGeolocation(LocationInfo locationInfo);

    void updateRat(int i);

    void updateVceConfig(boolean z);
}
