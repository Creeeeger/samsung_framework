package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.location.LocationManager;
import android.os.UserHandle;
import com.sec.ims.gls.GlsIntent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class LocationManagerWrapper {
    private static final LocationManagerWrapper sInstance = new LocationManagerWrapper();
    private static final LocationManager mLocationManager = (LocationManager) AppGlobals.getInitialApplication().getSystemService(GlsIntent.Extras.EXTRA_LOCATION);

    private LocationManagerWrapper() {
    }

    public static LocationManagerWrapper getInstance() {
        return sInstance;
    }

    public void setLocationEnabledForUser(boolean z, int i) {
        mLocationManager.setLocationEnabledForUser(z, UserHandle.semOf(i));
    }
}
