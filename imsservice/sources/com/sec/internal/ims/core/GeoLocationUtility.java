package com.sec.internal.ims.core;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
class GeoLocationUtility {
    private static final float ATT_SCC_E911_MAX_LOCATIONFIX_ACCURACY = 150.0f;
    private static final long ATT_SCC_E911_MAX_LOCATIONFIX_AGE = 1800;
    private static final String LOG_TAG = "GeoLocationUtility";
    private static LocationInfo mLocationInfo;

    GeoLocationUtility() {
    }

    private static synchronized void updateLocationInfo(LocationInfo locationInfo) {
        synchronized (GeoLocationUtility.class) {
            mLocationInfo = locationInfo;
        }
    }

    static LocationInfo constructData(String str, String str2) {
        IMSLog.s(LOG_TAG, "constructData, countryIso : " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        LocationInfo locationInfo = mLocationInfo;
        if (locationInfo != null && str.equalsIgnoreCase(locationInfo.mCountry)) {
            return mLocationInfo;
        }
        LocationInfo locationInfo2 = new LocationInfo();
        long currentTimeMillis = System.currentTimeMillis();
        locationInfo2.mProviderType = str2;
        locationInfo2.mRetentionExpires = getInternetDateTimeFormat(currentTimeMillis);
        locationInfo2.mSRSName = "urn:ogc:def:crs:EPSG::4326";
        locationInfo2.mRadiusUOM = "urn:ogc:def:uom:EPSG::9001";
        locationInfo2.mOS = "Android " + Build.VERSION.RELEASE;
        locationInfo2.mLocationTime = String.valueOf(currentTimeMillis / 1000);
        locationInfo2.mDeviceId = "urn:uuid:" + UUID.randomUUID().toString();
        locationInfo2.mCountry = str.toUpperCase(Locale.US);
        updateLocationInfo(locationInfo2);
        return locationInfo2;
    }

    static LocationInfo constructData(Location location, String str, Context context, int i) {
        List<Address> list;
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();
        float accuracy = location.getAccuracy();
        if (i == 90) {
            accuracy = (float) (accuracy * 1.65d);
        }
        long time = location.getTime() / 1000;
        float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
        String str2 = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("constructData: providerType=");
        sb.append(IMSLog.realNumberMasker(str + " latitude " + latitude + " longitude " + longitude + " accuracy " + accuracy + " verticalAxis " + verticalAccuracyMeters + " orientation 0.0 locationtime " + time));
        IMSLog.i(str2, sb.toString());
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMinimumFractionDigits(5);
        numberFormat.setMaximumFractionDigits(340);
        LocationInfo locationInfo = new LocationInfo();
        locationInfo.mLatitude = numberFormat.format(latitude);
        locationInfo.mLongitude = numberFormat.format(longitude);
        locationInfo.mAltitude = String.format("%.1f", Double.valueOf(location.getAltitude()));
        locationInfo.mAccuracy = String.valueOf(accuracy);
        locationInfo.mVerticalAxis = String.valueOf(verticalAccuracyMeters);
        locationInfo.mOrientation = String.valueOf(0.0f);
        locationInfo.mProviderType = str;
        locationInfo.mRetentionExpires = getInternetDateTimeFormat(location.getTime());
        locationInfo.mSRSName = "urn:ogc:def:crs:EPSG::4326";
        locationInfo.mRadiusUOM = "urn:ogc:def:uom:EPSG::9001";
        locationInfo.mOS = "Android " + Build.VERSION.RELEASE;
        locationInfo.mLocationTime = String.valueOf(time);
        locationInfo.mDeviceId = "urn:uuid:" + UUID.randomUUID().toString();
        Geocoder geocoder = new Geocoder(context, Locale.getDefault());
        if (Geocoder.isPresent()) {
            list = getAddressUsingGeocoder(latitude, longitude, geocoder);
        } else {
            Log.e(str2, "geocoder is not created");
            list = null;
        }
        if (list != null && !list.isEmpty()) {
            Address address = list.get(0);
            locationInfo.mCountry = address.getCountryCode() != null ? address.getCountryCode().toUpperCase(Locale.US) : "";
            locationInfo.mA1 = address.getAdminArea();
            locationInfo.mA3 = address.getLocality();
            locationInfo.mA6 = address.getThoroughfare() != null ? address.getThoroughfare() : address.getSubLocality();
            locationInfo.mHNO = address.getFeatureName() != null ? address.getFeatureName() : address.getPremises();
            locationInfo.mPC = address.getPostalCode();
        }
        IMSLog.s(str2, "constructData getAddressUsingGeocoder: mCountry=" + locationInfo.mCountry + " mA1=" + locationInfo.mA1 + " mA3=" + locationInfo.mA3 + " mA6=" + locationInfo.mA6 + " mHNO=" + locationInfo.mHNO + " mPC=" + locationInfo.mPC);
        String str3 = locationInfo.mLatitude;
        if (str3 != null && locationInfo.mLongitude != null) {
            locationInfo.mLatitude = str3.replace(",", ".");
            locationInfo.mLongitude = locationInfo.mLongitude.replace(",", ".");
        }
        updateLocationInfo(locationInfo);
        return locationInfo;
    }

    static String getInternetDateTimeFormat(long j) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        if (j != 0) {
            calendar.setTimeInMillis(j);
        }
        calendar.add(11, 24);
        return String.format("%2d-%02d-%02dT%02d%s%02d%s%02d.%02dZ", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)), Integer.valueOf(calendar.get(11)), ":", Integer.valueOf(calendar.get(12)), ":", Integer.valueOf(calendar.get(13)), Integer.valueOf(calendar.get(14) / 100));
    }

    static List<Address> getAddressUsingGeocoder(double d, double d2, Geocoder geocoder) {
        try {
            return geocoder.getFromLocation(d, d2, 1);
        } catch (IOException | IllegalArgumentException e) {
            IMSLog.i(LOG_TAG, "getAddressUsingGeocoder: " + e.getMessage());
            return null;
        }
    }

    public static boolean isLocationValid(Location location) {
        if ((location.getTime() - System.currentTimeMillis()) / 1000 > ATT_SCC_E911_MAX_LOCATIONFIX_AGE) {
            Log.d(LOG_TAG, "invalid location time expired location.time = " + location.getTime() + " current time = " + System.currentTimeMillis());
            return false;
        }
        if (!location.hasAccuracy() || location.getAccuracy() <= ATT_SCC_E911_MAX_LOCATIONFIX_ACCURACY) {
            return true;
        }
        Log.d(LOG_TAG, "Location received is not valid, hence not notifying acc = " + location.getAccuracy());
        return false;
    }
}
