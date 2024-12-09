package com.sec.internal.ims.entitlement.util;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import com.android.internal.util.ConcurrentUtils;
import com.sec.internal.ims.servicemodules.gls.GlsIntent;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class GeolocationUpdateFlow extends Handler {
    private static final int EVENT_LOCATION_UPDATED = 3;
    private static final int EVENT_LOCATION_UPDATE_TIMEOUT = 1;
    private static final int EVENT_STOP_LOCATION_UPDATE = 2;
    private static final int GPS_LOCATION_REQUEST_TIMEOUT = 45000;
    private static final String LOG_TAG = GeolocationUpdateFlow.class.getSimpleName();
    private final Context mContext;
    private final LocationManager mLocationManager;
    private LocationUpdateListener mLocationUpdateListener;
    private boolean mUserLocationMode;
    private GeoLocationListener mLocationListener = new GeoLocationListener();
    private Geocoder.GeocodeListener mGeoCodeListener = new GeolocCodeListener();
    private int mStatus = 0;

    public interface LocationUpdateListener {
        void onAddressObtained(Address address);
    }

    public GeolocationUpdateFlow(Context context) {
        this.mContext = context;
        this.mLocationManager = (LocationManager) context.getSystemService(GlsIntent.Extras.EXTRA_LOCATION);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, "handle msg event: " + message.what);
        int i = message.what;
        if (i == 1) {
            stopGeolocationUpdate();
            restoreUserLocationSettings();
            sendMessage(obtainMessage(3));
        } else {
            if (i == 2) {
                stopGeolocationUpdate();
                return;
            }
            if (i != 3) {
                return;
            }
            Object obj = message.obj;
            if (obj != null) {
                this.mLocationUpdateListener.onAddressObtained((Address) obj);
            } else {
                this.mLocationUpdateListener.onAddressObtained(null);
            }
        }
    }

    public void requestGeolocationUpdate(LocationUpdateListener locationUpdateListener) {
        IMSLog.i(LOG_TAG, "requestGeolocationUpdate(): mStatus = " + this.mStatus);
        if (this.mStatus != 0) {
            throw new RuntimeException("Flow has already been started.");
        }
        this.mLocationUpdateListener = locationUpdateListener;
        startGeolocationUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceLocationSettings() {
        IMSLog.i(LOG_TAG, "enforceLocationSettings()");
        this.mLocationManager.setLocationEnabledForUser(true, UserHandle.SEM_CURRENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUserLocationSettings() {
        this.mUserLocationMode = this.mLocationManager.isLocationEnabledForUser(UserHandle.SEM_CURRENT);
        IMSLog.i(LOG_TAG, "getUserLocationSettings(): mUserLocationMode: " + this.mUserLocationMode);
    }

    private void restoreUserLocationSettings() {
        IMSLog.i(LOG_TAG, "restoreUserLocationSettings(): mUserLocationMode: " + this.mUserLocationMode);
        this.mLocationManager.setLocationEnabledForUser(this.mUserLocationMode, UserHandle.SEM_CURRENT);
    }

    private void startGeolocationUpdate() {
        new Thread(new Runnable() { // from class: com.sec.internal.ims.entitlement.util.GeolocationUpdateFlow.1
            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                GeolocationUpdateFlow.this.getUserLocationSettings();
                GeolocationUpdateFlow.this.enforceLocationSettings();
                GeolocationUpdateFlow.this.requestLocationUpdates();
                Looper.loop();
            }
        }).start();
    }

    private void stopGeolocationUpdate() {
        try {
            this.mLocationManager.removeUpdates(this.mLocationListener);
        } catch (IllegalArgumentException e) {
            IMSLog.s(LOG_TAG, "onLocationChanged ex: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestLocationUpdates() {
        IMSLog.i(LOG_TAG, "requestLocationUpdates()");
        try {
            this.mLocationManager.requestLocationUpdates("fused", new LocationRequest.Builder(0L).setMinUpdateIntervalMillis(0L).setQuality(100).build(), ConcurrentUtils.DIRECT_EXECUTOR, this.mLocationListener);
        } catch (IllegalArgumentException | SecurityException e) {
            IMSLog.s(LOG_TAG, "ex =" + e.getMessage());
        }
        IMSLog.i(LOG_TAG, "requestLocation(): location req timeout = 45000");
        sendMessageDelayed(obtainMessage(1), 45000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLastKnownGeoLocation() {
        String str = LOG_TAG;
        IMSLog.i(str, "getLastKnownGeoLocation");
        Location lastKnownLocation = this.mLocationManager.getLastKnownLocation("fused");
        if (lastKnownLocation == null) {
            IMSLog.e(str, "getLastKnownGeoLocation(): No Last Known Location Available");
        }
        getAddressFromLocation(lastKnownLocation);
    }

    public void getAddressFromLocation(Location location) {
        String str = LOG_TAG;
        IMSLog.i(str, "getAddressFromLocation()");
        if (!Geocoder.isPresent()) {
            IMSLog.e(str, "Geocoder is not present.");
            sendMessage(obtainMessage(1));
            return;
        }
        if (location == null) {
            IMSLog.e(str, "Location is null.");
            sendMessage(obtainMessage(1));
            return;
        }
        try {
            new Geocoder(this.mContext, Locale.getDefault()).getFromLocation(location.getLatitude(), location.getLongitude(), 1, this.mGeoCodeListener);
            removeMessages(1);
            IMSLog.i(str, "getAddressFromLocation(): Address req timeout = 45000");
            sendMessageDelayed(obtainMessage(1), 45000L);
        } catch (IllegalArgumentException e) {
            IMSLog.s(LOG_TAG, "Latitude = " + IMSLog.checker(Double.valueOf(location.getLatitude()), true) + ", Longitude = " + IMSLog.checker(Double.valueOf(location.getLongitude()), true) + e.getMessage());
        }
    }

    private class GeoLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        private GeoLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            IMSLog.i(GeolocationUpdateFlow.LOG_TAG, "onLocationChanged");
            GeolocationUpdateFlow.this.removeMessages(1);
            GeolocationUpdateFlow geolocationUpdateFlow = GeolocationUpdateFlow.this;
            geolocationUpdateFlow.sendMessage(geolocationUpdateFlow.obtainMessage(2));
            GeolocationUpdateFlow.this.getLastKnownGeoLocation();
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            IMSLog.i(GeolocationUpdateFlow.LOG_TAG, "onProviderEnabled");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLastKnownAddress(List<Address> list) {
        String str = LOG_TAG;
        IMSLog.i(str, "getLastKnownAddress()");
        if (list == null || list.size() == 0) {
            IMSLog.e(str, "No address is found.");
            removeMessages(1);
            sendMessage(obtainMessage(1));
        } else {
            removeMessages(1);
            sendMessage(obtainMessage(3, list.get(0)));
            restoreUserLocationSettings();
        }
    }

    private class GeolocCodeListener implements Geocoder.GeocodeListener {
        private GeolocCodeListener() {
        }

        @Override // android.location.Geocoder.GeocodeListener
        public void onGeocode(List<Address> list) {
            IMSLog.i(GeolocationUpdateFlow.LOG_TAG, "onGeocode");
            GeolocationUpdateFlow.this.getLastKnownAddress(list);
        }

        @Override // android.location.Geocoder.GeocodeListener
        public void onError(String str) {
            IMSLog.i(GeolocationUpdateFlow.LOG_TAG, "onError");
            GeolocationUpdateFlow.this.removeMessages(1);
            GeolocationUpdateFlow geolocationUpdateFlow = GeolocationUpdateFlow.this;
            geolocationUpdateFlow.sendMessage(geolocationUpdateFlow.obtainMessage(1));
        }
    }
}
