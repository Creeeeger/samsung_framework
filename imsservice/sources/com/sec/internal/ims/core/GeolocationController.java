package com.sec.internal.ims.core;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.ConcurrentUtils;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.ServiceStateWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.servicemodules.gls.GlsIntent;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class GeolocationController extends Handler implements IGeolocationController {
    protected static final int EVENT_EPDG_AVAILABLE = 5;
    protected static final int EVENT_SERVICE_STATE_CHANGED = 4;
    protected static final int EVENT_START_LOCATION_UPDATE = 1;
    protected static final int EVENT_START_PERIODIC_LOCATION_UPDATE = 3;
    protected static final int EVENT_STOP_LOCATION_UPDATE = 2;
    private static final String INTENT_EPDG_SSID_CHANGED = "com.sec.epdg.EPDG_SSID_CHANGED";
    private static final String INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD = "com.sec.internal.ims.imsservice.periodic_lu";
    private static final String INTENT_PROVIDERS_CHANGED = "android.location.PROVIDERS_CHANGED";
    private static final int LOCATION_REQUEST_TIMEOUT = 45000;
    private static final String LOG_TAG = "GeolocationCon";
    private static final int PERIODIC_LOCATION_TIME = 1800000;
    private AlarmManager mAlarmManager;
    private final Context mContext;
    protected String mCountryIso;
    private int[] mDataRegState;
    ContentObserver mDtLocUserConsentObserver;
    SimpleEventLog mEventLog;
    LocationInfo mGeolocation;
    private GeolocationListener mGeolocationListener;
    private boolean mHasToRestoreLocationSetting;
    private final IntentListener mIntentListener;
    protected boolean[] mIsEpdgAvaialble;
    private boolean[] mIsForceEpdgAvailUpdate;
    private boolean mIsLocationEnabled;
    private boolean mIsLocationEnabledToRestore;
    private int[] mIsLocationUserConsent;
    private boolean mIsRequested;
    LocationManager mLocationManager;
    private Handler mLocationUpdateHandler;
    private int mPhoneId;
    private final RegistrationManagerBase mRegistrationManager;
    private final ITelephonyManager mTelephonyManager;
    protected int[] mVoiceRegState;

    public GeolocationController(Context context, Looper looper, RegistrationManagerBase registrationManagerBase) {
        super(looper);
        this.mGeolocationListener = null;
        this.mCountryIso = "";
        this.mGeolocation = null;
        this.mIsRequested = false;
        this.mIsLocationEnabled = false;
        this.mIsLocationEnabledToRestore = false;
        this.mHasToRestoreLocationSetting = false;
        this.mPhoneId = 0;
        this.mDtLocUserConsentObserver = new ContentObserver(this) { // from class: com.sec.internal.ims.core.GeolocationController.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                int i = ImsSharedPrefHelper.getInt(-1, GeolocationController.this.mContext, "dtlocuserconsent", "dtlocation", -1);
                Log.i(GeolocationController.LOG_TAG, "onChange- dtlocuserconsent : " + i);
                for (int i2 = 0; i2 < GeolocationController.this.mTelephonyManager.getPhoneCount(); i2++) {
                    if (GeolocationController.this.mIsLocationUserConsent[i2] != i) {
                        GeolocationController.this.mIsLocationUserConsent[i2] = i;
                        Mno simMno = SimUtil.getSimMno(i2);
                        if (simMno == Mno.TMOBILE || simMno == Mno.TMOBILE_NED) {
                            GeolocationController geolocationController = GeolocationController.this;
                            if (geolocationController.mIsEpdgAvaialble[i2]) {
                                geolocationController.mIsForceEpdgAvailUpdate[i2] = true;
                                GeolocationController.this.mEventLog.add("DTLocUserConsent onChange(" + i2 + ") :mIsLocationUserConsent[" + GeolocationController.this.mIsLocationUserConsent[i2] + "]");
                                GeolocationController geolocationController2 = GeolocationController.this;
                                geolocationController2.sendMessage(geolocationController2.obtainMessage(5, i2, 1));
                            }
                        }
                    }
                }
            }
        };
        this.mContext = context;
        ITelephonyManager telephonyManagerWrapper = TelephonyManagerWrapper.getInstance(context);
        this.mTelephonyManager = telephonyManagerWrapper;
        int phoneCount = telephonyManagerWrapper.getPhoneCount();
        this.mRegistrationManager = registrationManagerBase;
        this.mVoiceRegState = new int[phoneCount];
        this.mLocationManager = (LocationManager) context.getSystemService(GlsIntent.Extras.EXTRA_LOCATION);
        this.mGeolocationListener = new GeolocationListener();
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mDataRegState = new int[phoneCount];
        this.mIsEpdgAvaialble = new boolean[phoneCount];
        this.mIsLocationUserConsent = new int[phoneCount];
        this.mIsForceEpdgAvailUpdate = new boolean[phoneCount];
        Arrays.fill(this.mVoiceRegState, 1);
        Arrays.fill(this.mDataRegState, 1);
        Arrays.fill(this.mIsEpdgAvaialble, false);
        Arrays.fill(this.mIsLocationUserConsent, -1);
        Arrays.fill(this.mIsForceEpdgAvailUpdate, false);
        this.mIntentListener = new IntentListener();
        registerDtLocUserConsentObserver();
        setDtLocUserConsent();
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 20);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        Log.i(LOG_TAG, "initializing sequentially...");
        this.mIntentListener.init();
        HandlerThread handlerThread = new HandlerThread(LOG_TAG);
        handlerThread.start();
        this.mLocationUpdateHandler = new Handler(handlerThread.getLooper());
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Log.i(LOG_TAG, "handleMessage : what = " + msgToString(message.what));
        int i = message.what;
        if (i == 1) {
            if (hasMessages(1)) {
                return;
            }
            if (this.mIsRequested) {
                Log.i(LOG_TAG, "Already Requested, Don't request location");
                return;
            }
            final int i2 = message.arg1;
            this.mPhoneId = i2;
            final boolean z = message.arg2 == 1;
            this.mLocationUpdateHandler.post(new Runnable() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    GeolocationController.this.lambda$handleMessage$0(i2, z);
                }
            });
            return;
        }
        if (i == 2) {
            releaseLocationUpdate();
            this.mIsRequested = false;
        } else if (i == 3) {
            startPeriodicLocationUpdate(message.arg1);
        } else if (i == 4) {
            onServiceStateChanged(message.arg1, (ServiceStateWrapper) message.obj);
        } else {
            if (i != 5) {
                return;
            }
            onEpdgAvailable(message.arg1, message.arg2 == 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMessage$0(int i, boolean z) {
        this.mIsRequested = requestLocationUpdate(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public boolean startGeolocationUpdate(int i, boolean z) {
        return startGeolocationUpdate(i, z, 0);
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public boolean startGeolocationUpdate(int i, boolean z, int i2) {
        Log.i(LOG_TAG, "startGeoLocationUpdate isEmergency = " + z);
        boolean z2 = (SimUtil.isSoftphoneEnabled() || z) ? true : !isValidLocationInfo(i, this.mGeolocation);
        if (z2) {
            sendMessageDelayed(obtainMessage(1, i, z ? 1 : 0), i2);
        }
        return z2;
    }

    boolean requestLocationUpdate(int i, boolean z) {
        Log.i(LOG_TAG, "requestLocationUpdate : isEmergency = " + z);
        if (z || !getLocationFromLastKnown(i)) {
            return requestLocationToLocationManager(z);
        }
        return false;
    }

    boolean requestLocationToLocationManager(boolean z) {
        try {
            this.mLocationManager.requestLocationUpdates("fused", new LocationRequest.Builder(0L).setMinUpdateIntervalMillis(0L).setLocationSettingsIgnored(z).setQuality(100).build(), ConcurrentUtils.DIRECT_EXECUTOR, this.mGeolocationListener);
            sendMessageDelayed(obtainMessage(2), 45000L);
            return true;
        } catch (IllegalArgumentException | SecurityException e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public void stopGeolocationUpdate() {
        Log.i(LOG_TAG, "stopGeolocationUpdate");
        sendEmptyMessage(2);
    }

    private void releaseLocationUpdate() {
        Log.e(LOG_TAG, "releaseLocationUpdate");
        try {
            try {
                this.mLocationManager.removeUpdates(this.mGeolocationListener);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        } finally {
            removeMessages(2);
            restoreLocationSettings();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean isValidLocationInfo(int r12, com.sec.internal.constants.ims.gls.LocationInfo r13) {
        /*
            r11 = this;
            r0 = 0
            r1 = 1
            if (r13 != 0) goto L8
            java.lang.String r2 = "geolocation null"
        L6:
            r3 = r0
            goto L37
        L8:
            java.lang.String r2 = r13.mLocationTime
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L13
            java.lang.String r2 = "mLocationTime is empty"
            goto L6
        L13:
            java.lang.String r2 = r13.mCountry
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L1e
            java.lang.String r2 = "mCountry  is empty"
            goto L6
        L1e:
            java.lang.String r2 = r13.mLatitude
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L29
            java.lang.String r2 = "mLatitude  is empty"
            goto L6
        L29:
            java.lang.String r2 = r13.mA1
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L34
            java.lang.String r2 = "mA1  is empty"
            goto L6
        L34:
            java.lang.String r2 = ""
            r3 = r1
        L37:
            java.lang.String r4 = "GeolocationCon"
            if (r3 != 0) goto L50
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "isValidLocation: "
            r11.append(r12)
            r11.append(r2)
            java.lang.String r11 = r11.toString()
            android.util.Log.i(r4, r11)
            return r0
        L50:
            long r5 = java.lang.System.currentTimeMillis()
            java.lang.String r13 = r13.mLocationTime
            long r7 = java.lang.Long.parseLong(r13)
            r9 = 1000(0x3e8, double:4.94E-321)
            long r7 = r7 * r9
            com.sec.internal.ims.core.RegistrationManagerBase r11 = r11.mRegistrationManager
            com.sec.ims.settings.ImsProfile$PROFILE_TYPE r13 = com.sec.ims.settings.ImsProfile.PROFILE_TYPE.EMERGENCY
            com.sec.ims.settings.ImsProfile r11 = r11.getImsProfile(r12, r13)
            if (r11 == 0) goto L6c
            int r11 = r11.getValidLocationTime()
            goto L6d
        L6c:
            r11 = r0
        L6d:
            if (r11 <= 0) goto Lae
            long r12 = r5 - r7
            long r2 = (long) r11
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 > 0) goto L77
            r0 = r1
        L77:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "isValidLocation(mGeolocation) ("
            r12.append(r13)
            r12.append(r11)
            java.lang.String r11 = "ms): "
            r12.append(r11)
            r12.append(r0)
            java.lang.String r11 = "(Current: "
            r12.append(r11)
            java.util.Date r11 = new java.util.Date
            r11.<init>(r5)
            r12.append(r11)
            java.lang.String r11 = ") (Loc. Info received: "
            r12.append(r11)
            java.util.Date r11 = new java.util.Date
            r11.<init>(r7)
            r12.append(r11)
            java.lang.String r11 = r12.toString()
            android.util.Log.i(r4, r11)
            r3 = r0
        Lae:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.GeolocationController.isValidLocationInfo(int, com.sec.internal.constants.ims.gls.LocationInfo):boolean");
    }

    boolean isValidLocation(int i, Location location) {
        int i2;
        int i3;
        int i4;
        if (location == null) {
            Log.e(LOG_TAG, "isValidLocation : location is null");
            return false;
        }
        if (location.isMock()) {
            Log.e(LOG_TAG, "isValidLocation : location from Mock Provider");
            this.mCountryIso = "";
            this.mGeolocation = null;
            this.mRegistrationManager.sendDeregister(41, i);
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long time = location.getTime();
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.EMERGENCY);
        if (imsProfile != null) {
            i3 = imsProfile.getValidLocationTime();
            i4 = imsProfile.getValidLocationAccuracy();
            i2 = imsProfile.getConfidenceLevel();
        } else {
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        if (i3 > 0) {
            r8 = currentTimeMillis - time <= ((long) i3);
            Log.i(LOG_TAG, "isValidLocation(location) (" + i3 + "ms): " + r8 + "(Current: " + new Date(currentTimeMillis) + ") (Loc. Info received: " + new Date(time) + "from provider [" + location.getProvider() + "])");
        }
        if (i4 > 0) {
            float accuracy = location.getAccuracy();
            if (i2 == 90) {
                accuracy *= 1.65f;
            }
            if (SimUtil.getSimMno(i) == Mno.VZW && accuracy >= 1000.0f) {
                Log.i(LOG_TAG, "isValidLocation(loc) : acc not valid - " + accuracy);
                return false;
            }
        }
        return r8;
    }

    Location getLastKnownLocation() {
        Location location;
        String str;
        try {
            location = this.mLocationManager.getLastKnownLocation("fused");
        } catch (SecurityException e) {
            e.printStackTrace();
            location = null;
        }
        if (location == null) {
            try {
                location = this.mLocationManager.getLastKnownLocation("gps");
            } catch (SecurityException e2) {
                e2.printStackTrace();
            }
        }
        if (location == null) {
            try {
                location = this.mLocationManager.getLastKnownLocation("network");
            } catch (SecurityException e3) {
                e3.printStackTrace();
            }
        }
        if (location == null) {
            str = "can not find lastKnownLocation";
        } else {
            str = "lastKnownLocation from " + location.getProvider();
        }
        Log.i(LOG_TAG, str);
        return location;
    }

    void updateGeolocation(int i, String str) {
        LocationInfo constructData = GeoLocationUtility.constructData(str, getProvider(null));
        if (constructData == null) {
            Log.i(LOG_TAG, "updateGeolocation(iso) : geolocation is null. Don't update and maintain previous one");
            return;
        }
        LocationInfo locationInfo = this.mGeolocation;
        if (locationInfo != null && str.equalsIgnoreCase(locationInfo.mCountry)) {
            Log.i(LOG_TAG, "updateGeolocation(iso) : iso is same as before. Don't update and maintain previous one");
            return;
        }
        this.mGeolocation = constructData;
        Log.i(LOG_TAG, "updateGeolocation(iso) : mGeolocation = " + this.mGeolocation.toString());
        Mno simMno = SimUtil.getSimMno(i);
        this.mRegistrationManager.notifyGeolocationUpdate(this.mGeolocation, (simMno.isTeliaCo() || simMno.isOneOf(Mno.VODAFONE_AUSTRALIA, Mno.CELLC_SOUTHAFRICA, Mno.GLOBE_PH, Mno.TMOUS)) ? false : true);
    }

    void updateGeolocation(Location location) {
        LocationInfo constructData;
        ImsProfile imsProfile = this.mRegistrationManager.getImsProfile(this.mPhoneId, ImsProfile.PROFILE_TYPE.EMERGENCY);
        int confidenceLevel = imsProfile != null ? imsProfile.getConfidenceLevel() : 68;
        if (location != null && location.isMock()) {
            Log.e(LOG_TAG, "ignore mock location");
            return;
        }
        if (location == null) {
            constructData = GeoLocationUtility.constructData(this.mCountryIso, getProvider(location));
        } else {
            constructData = GeoLocationUtility.constructData(location, getProvider(location), this.mContext, confidenceLevel);
            if (constructData == null || !TextUtils.isEmpty(constructData.mCountry)) {
                if (constructData != null) {
                    Log.i(LOG_TAG, "geolocation is not null!, mCountryIso=" + this.mCountryIso + ", geo mCountry=" + constructData.mCountry);
                } else {
                    Log.i(LOG_TAG, "geolocation is null!");
                }
            } else if (!TextUtils.isEmpty(this.mCountryIso)) {
                constructData.mCountry = this.mCountryIso;
            } else if (TextUtils.isEmpty(constructData.mLatitude) || TextUtils.isEmpty(constructData.mLongitude)) {
                constructData = null;
            } else {
                Log.i(LOG_TAG, "updateGeolocation :  latitude = " + IMSLog.checker(constructData.mLatitude, true) + ", longitude = " + IMSLog.checker(constructData.mLongitude, true));
            }
        }
        if (constructData == null) {
            Log.i(LOG_TAG, "updateGeolocation(loc) : geolocation is null. Don't update and maintain previous one");
            return;
        }
        storeLastAccessedCountry(this.mPhoneId, constructData.mCountry);
        this.mGeolocation = constructData;
        Log.i(LOG_TAG, "updateGeolocation(loc) : mGeolocation = " + this.mGeolocation.toString());
        this.mRegistrationManager.notifyGeolocationUpdate(this.mGeolocation, false);
    }

    private String getProvider(Location location) {
        String str;
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if (simMno == Mno.ATT) {
            str = "Hybrid_A-GPS";
        } else if (simMno == Mno.TMOUS) {
            str = "DBH";
        } else {
            str = "DHCP";
            if (location != null) {
                if ("gps".equals(location.getProvider())) {
                    str = "GPS";
                } else if ("fused".equals(location.getProvider())) {
                    str = "FUSED";
                }
            }
        }
        Log.i(LOG_TAG, "getProvider=" + str);
        return str;
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public boolean updateGeolocationFromLastKnown(int i) {
        Log.i(LOG_TAG, "updateGeolocationFromLastKnown");
        Location lastKnownLocation = getLastKnownLocation();
        if (isValidLocation(i, lastKnownLocation)) {
            IMSLog.c(LogClass.VOLTE_LAST_LOCATION_PRO, "" + i);
            updateGeolocation(lastKnownLocation);
            return true;
        }
        if (!isValidLocationInfo(i, this.mGeolocation)) {
            return false;
        }
        IMSLog.c(LogClass.VOLTE_LAST_LOCATION_GEO, "" + i);
        this.mRegistrationManager.notifyGeolocationUpdate(this.mGeolocation, false);
        return true;
    }

    boolean getLocationFromLastKnown(int i) {
        enableLocationSettings();
        if (!updateGeolocationFromLastKnown(i)) {
            return false;
        }
        restoreLocationSettings();
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public LocationInfo getGeolocation() {
        return this.mGeolocation;
    }

    void enableLocationSettings() {
        this.mIsLocationEnabledToRestore = isLocationServiceEnabled();
        setLocationServiceEnabled(true);
        this.mHasToRestoreLocationSetting = true;
        this.mIsLocationEnabled = isLocationServiceEnabled();
        Log.i(LOG_TAG, "enableLocationSettings : restore = " + this.mIsLocationEnabledToRestore);
    }

    void restoreLocationSettings() {
        if (this.mHasToRestoreLocationSetting) {
            Log.i(LOG_TAG, "restoreLocationSettings : restore = " + this.mIsLocationEnabledToRestore);
            setLocationServiceEnabled(this.mIsLocationEnabledToRestore);
            this.mHasToRestoreLocationSetting = false;
            this.mIsLocationEnabled = isLocationServiceEnabled();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public boolean isLocationServiceEnabled() {
        boolean isLocationEnabledForUser = this.mLocationManager.isLocationEnabledForUser(UserHandle.SEM_CURRENT);
        Log.i(LOG_TAG, "isLocationServiceEnabled : " + isLocationEnabledForUser);
        return isLocationEnabledForUser;
    }

    protected void setLocationServiceEnabled(boolean z) {
        this.mLocationManager.setLocationEnabledForUser(z, UserHandle.SEM_CURRENT);
    }

    protected String getNetworkCountryIso(int i) {
        return this.mTelephonyManager.getNetworkCountryIso(i);
    }

    protected BroadcastReceiver getReceiver() {
        return this.mIntentListener.mReceiver;
    }

    protected LocationListener getListener() {
        return this.mGeolocationListener;
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public boolean isCountryCodeLoaded(int i) {
        if (this.mGeolocation == null) {
            return false;
        }
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.SPRINT && this.mTelephonyManager.getDataNetworkType(SimUtil.getSubId(i)) != 13 && !isValidLocationInfo(i, this.mGeolocation)) {
            Log.i(LOG_TAG, "isCountryCodeLoaded : location expired, return false");
            this.mGeolocation = null;
            this.mCountryIso = "";
            return false;
        }
        if (simMno == Mno.TMOUS) {
            String str = this.mGeolocation.mCountry;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Locale locale = Locale.US;
            return TextUtils.equals(str.toUpperCase(locale), this.mCountryIso.toUpperCase(locale));
        }
        return !TextUtils.isEmpty(this.mGeolocation.mCountry);
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public String getLastAccessedNetworkCountryIso(int i) {
        if (!TextUtils.isEmpty(this.mCountryIso)) {
            IMSLog.i(LOG_TAG, i, "getLastAccessedNetworkCountryIso: networkCountryIso: " + this.mCountryIso);
            return this.mCountryIso;
        }
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(i, this.mContext, ImsSharedPrefHelper.LAST_ACCESSED_COUNTRY_ISO, 0, false);
        if (sharedPref == null) {
            IMSLog.i(LOG_TAG, i, "getLastAccessedNetworkCountryIso: Not accessed yet");
            return "";
        }
        String string = sharedPref.getString("cc", "");
        IMSLog.i(LOG_TAG, i, "getLastAccessedNetworkCountryIso: last accessed: " + string + ", timestamp: " + new Date(sharedPref.getLong("timestamp", 0L)));
        return string;
    }

    private PendingIntent getRetryRequestLocationIntent(int i) {
        Intent intent = new Intent(this.mContext, (Class<?>) GeolocationController.class);
        intent.setAction(INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD);
        intent.putExtra("phoneId", i);
        return PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPeriodicLocationUpdate(int i) {
        Log.i(LOG_TAG, "startPeriodicLocationUpdate(" + i + "), mIsEpdgAvaialble: " + this.mIsEpdgAvaialble[i] + " mVoiceRegState: " + this.mVoiceRegState[i]);
        if (!this.mIsEpdgAvaialble[i] || this.mVoiceRegState[i] == 0) {
            return;
        }
        this.mAlarmManager.cancel(getRetryRequestLocationIntent(i));
        this.mAlarmManager.setExact(3, SystemClock.elapsedRealtime() + 900000, getRetryRequestLocationIntent(i));
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public void stopPeriodicLocationUpdate(int i) {
        Log.i(LOG_TAG, "stopPeriodicLocationUpdate(" + i + ")");
        if (isNeedRequestLocation(i, 4)) {
            this.mAlarmManager.cancel(getRetryRequestLocationIntent(i));
        }
    }

    private class GeolocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        private GeolocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            Log.i(GeolocationController.LOG_TAG, "onLocationChanged : location = " + IMSLog.realNumberMasker(location.toString()));
            GeolocationController geolocationController = GeolocationController.this;
            if (geolocationController.isValidLocation(geolocationController.mPhoneId, location)) {
                try {
                    Log.i(GeolocationController.LOG_TAG, "onLocationChanged : removing location listener");
                    IMSLog.c(LogClass.VOLTE_UPDATE_LOCATION_PRO, "" + location.getProvider());
                    GeolocationController.this.updateGeolocation(location);
                    GeolocationController.this.sendEmptyMessage(2);
                } catch (IllegalArgumentException e) {
                    IMSLog.s(GeolocationController.LOG_TAG, "onLocationChanged ex: " + e.getMessage());
                }
            }
        }
    }

    private String msgToString(int i) {
        if (i == 1) {
            return "START_LOCATION_UPDATE";
        }
        if (i == 2) {
            return "STOP_LOCATION_UPDATE";
        }
        if (i == 3) {
            return "START_PERIODIC_LOCATION_UPDATE";
        }
        if (i == 4) {
            return "SERVICE_STATE_CHANGED";
        }
        if (i == 5) {
            return "EPDG_AVAILABLE";
        }
        return "UNKNOWN(" + i + ")";
    }

    private class IntentListener {
        private final BroadcastReceiver mReceiver;

        private IntentListener() {
            this.mReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.GeolocationController.IntentListener.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    Log.i(GeolocationController.LOG_TAG, "Received Intent : " + action);
                    int intExtra = intent.getIntExtra("phoneId", 0);
                    if (GeolocationController.INTENT_EPDG_SSID_CHANGED.equals(action)) {
                        if (GeolocationController.this.isNeedRequestLocation(intExtra, 2)) {
                            GeolocationController geolocationController = GeolocationController.this;
                            if (geolocationController.mVoiceRegState[intExtra] != 0) {
                                geolocationController.mGeolocation = null;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (GeolocationController.INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD.equals(action)) {
                        GeolocationController geolocationController2 = GeolocationController.this;
                        geolocationController2.sendMessage(geolocationController2.obtainMessage(1, intExtra, 0));
                        GeolocationController.this.startPeriodicLocationUpdate(intExtra);
                        return;
                    }
                    if (GeolocationController.INTENT_PROVIDERS_CHANGED.equals(action)) {
                        boolean isLocationServiceEnabled = GeolocationController.this.isLocationServiceEnabled();
                        Log.i(GeolocationController.LOG_TAG, "prev loc : " + GeolocationController.this.mIsLocationEnabled + ", cur loc : " + isLocationServiceEnabled);
                        if (GeolocationController.this.mIsLocationEnabled != isLocationServiceEnabled) {
                            GeolocationController.this.mIsLocationEnabled = isLocationServiceEnabled;
                            GeolocationController.this.mIsLocationEnabledToRestore = isLocationServiceEnabled;
                            return;
                        }
                        return;
                    }
                    if ("android.telephony.action.NETWORK_COUNTRY_CHANGED".equals(action)) {
                        int intExtra2 = intent.getIntExtra(PhoneConstants.PHONE_KEY, -1);
                        String stringExtra = intent.getStringExtra("android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY");
                        IMSLog.i(GeolocationController.LOG_TAG, intExtra2, "Network country code changed: countryIso: " + stringExtra);
                        if (intExtra2 == -1 || TextUtils.isEmpty(stringExtra)) {
                            return;
                        }
                        Mno mno = SimUtil.getMno(intExtra2);
                        if (mno.isOneOf(Mno.TMOUS, Mno.VZW)) {
                            GeolocationController.this.onNetworkCountryIsoChanged(intExtra2, mno, stringExtra);
                        }
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void init() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(GeolocationController.INTENT_EPDG_SSID_CHANGED);
            intentFilter.addAction(GeolocationController.INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD);
            intentFilter.addAction(GeolocationController.INTENT_PROVIDERS_CHANGED);
            intentFilter.addAction("android.telephony.action.NETWORK_COUNTRY_CHANGED");
            GeolocationController.this.mContext.registerReceiver(this.mReceiver, intentFilter);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public void notifyServiceStateChanged(int i, ServiceStateWrapper serviceStateWrapper) {
        sendMessage(obtainMessage(4, i, 0, serviceStateWrapper));
    }

    void onServiceStateChanged(int i, ServiceStateWrapper serviceStateWrapper) {
        Log.d(LOG_TAG, "onServiceStateChanged(" + serviceStateWrapper + ")");
        Mno simMno = SimUtil.getSimMno(i);
        if (simMno == Mno.SPRINT && !NetworkUtil.is3gppPsVoiceNetwork(serviceStateWrapper.getDataNetworkType())) {
            Log.e(LOG_TAG, "ignore phone state listener");
            return;
        }
        if (isNeedRequestLocation(i, 4)) {
            if (this.mVoiceRegState[i] == 0 && serviceStateWrapper.getVoiceRegState() != 0) {
                sendMessageDelayed(obtainMessage(3, Integer.valueOf(i)), 1800000L);
            } else if (this.mVoiceRegState[i] != 0 && serviceStateWrapper.getVoiceRegState() == 0) {
                stopPeriodicLocationUpdate(i);
            }
        }
        this.mVoiceRegState[i] = serviceStateWrapper.getVoiceRegState();
        this.mDataRegState[i] = serviceStateWrapper.getDataRegState();
        if (this.mVoiceRegState[i] == 0 || this.mDataRegState[i] == 0) {
            int subId = SimUtil.getSubId(i);
            if (subId < 0) {
                Log.e(LOG_TAG, "Invalid subId:" + subId);
                return;
            }
            onNetworkCountryIsoChanged(i, simMno, getNetworkCountryIso(subId));
            return;
        }
        long longValue = ((Long) Optional.ofNullable(ImsSharedPrefHelper.getSharedPref(i, this.mContext, ImsSharedPrefHelper.LAST_ACCESSED_COUNTRY_ISO, 0, false)).map(new Function() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Long lambda$onServiceStateChanged$1;
                lambda$onServiceStateChanged$1 = GeolocationController.lambda$onServiceStateChanged$1((SharedPreferences) obj);
                return lambda$onServiceStateChanged$1;
            }
        }).orElse(0L)).longValue();
        if (longValue == 0) {
            IMSLog.i(LOG_TAG, i, "getLastAccessedNetworkCountryIso: Not accessed yet");
            this.mCountryIso = "";
            return;
        }
        IMSLog.i(LOG_TAG, i, "getLastAccessedNetworkCountryIso: last accessed: " + new Date(longValue));
        if (System.currentTimeMillis() - longValue > ((Integer) Optional.ofNullable(this.mRegistrationManager.getEmergencyProfile(this.mPhoneId)).map(new Function() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((ImsProfile) obj).getValidLocationTime());
            }
        }).orElse(0)).intValue()) {
            this.mCountryIso = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$onServiceStateChanged$1(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong("timestamp", 0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNetworkCountryIsoChanged(int i, Mno mno, String str) {
        IMSLog.i(LOG_TAG, i, "onNetworkCountryIsoChanged: mCountryIso = " + this.mCountryIso + ", iso = " + str);
        if (TextUtils.isEmpty(str) || this.mCountryIso.equalsIgnoreCase(str)) {
            return;
        }
        if (mno.isOneOf(Mno.TMOUS, Mno.VZW)) {
            storeLastAccessedCountry(i, str);
        }
        this.mCountryIso = str;
        if (SimUtil.isSoftphoneEnabled()) {
            return;
        }
        updateGeolocation(i, this.mCountryIso);
    }

    private void storeLastAccessedCountry(int i, final String str) {
        Optional.ofNullable(ImsSharedPrefHelper.getSharedPref(i, this.mContext, ImsSharedPrefHelper.LAST_ACCESSED_COUNTRY_ISO, 0, false)).map(new Function() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SharedPreferences) obj).edit();
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                GeolocationController.lambda$storeLastAccessedCountry$2(str, (SharedPreferences.Editor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$storeLastAccessedCountry$2(String str, SharedPreferences.Editor editor) {
        editor.putLong("timestamp", new Date().getTime()).putString("cc", str).apply();
    }

    @Override // com.sec.internal.interfaces.ims.core.IGeolocationController
    public void notifyEpdgAvailable(int i, int i2) {
        sendMessage(obtainMessage(5, i, i2));
    }

    public void onEpdgAvailable(int i, boolean z) {
        Log.i(LOG_TAG, "setEpdgAvailable : phoneId : " + i + ", prevEpdgState =  " + this.mIsEpdgAvaialble[i] + " curEpdgState : " + z + " mIsForceEpdgAvailUpdate :" + this.mIsForceEpdgAvailUpdate[i]);
        boolean isOneOf = SimUtil.getSimMno(i).isOneOf(Mno.TMOBILE, Mno.TMOBILE_NED);
        if (this.mIsForceEpdgAvailUpdate[i] || z != this.mIsEpdgAvaialble[i]) {
            this.mIsEpdgAvaialble[i] = z;
            if (isNeedRequestLocation(i, 2)) {
                this.mIsForceEpdgAvailUpdate[i] = false;
                if (this.mIsEpdgAvaialble[i]) {
                    if (!isOneOf || this.mIsLocationUserConsent[i] == 1) {
                        sendMessage(obtainMessage(1, i, 0));
                        if (isNeedRequestLocation(i, 4)) {
                            sendMessageDelayed(obtainMessage(3), 45000L);
                            return;
                        }
                        return;
                    }
                    return;
                }
                sendEmptyMessage(2);
                if (isNeedRequestLocation(i, 4)) {
                    stopPeriodicLocationUpdate(i);
                    if (this.mVoiceRegState[i] != 0) {
                        this.mGeolocation = null;
                    }
                }
            }
        }
    }

    private void registerDtLocUserConsentObserver() {
        this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.sec.ims.settings/dtlocuserconsent"), true, this.mDtLocUserConsentObserver);
    }

    private void setDtLocUserConsent() {
        int i = ImsSharedPrefHelper.getInt(-1, this.mContext, "dtlocuserconsent", "dtlocation", -1);
        Log.i(LOG_TAG, "setDtLocUserConsent- dtlocuserconsent : " + i);
        for (int i2 = 0; i2 < this.mTelephonyManager.getPhoneCount(); i2++) {
            this.mIsLocationUserConsent[i2] = i;
        }
    }

    public void dump() {
        this.mEventLog.dump();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: matchTimingReqLocation, reason: merged with bridge method [inline-methods] */
    public boolean lambda$isNeedRequestLocation$3(ImsProfile imsProfile, int i) {
        int requestLocationTiming = imsProfile.getRequestLocationTiming();
        Log.i(LOG_TAG, "matchTimingReqLocation ,match=" + requestLocationTiming + ", timing=" + i);
        return (requestLocationTiming & i) == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedRequestLocation(int i, final int i2) {
        if (((ImsProfile) Arrays.stream(this.mRegistrationManager.getProfileList(i)).filter(new Predicate() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((ImsProfile) obj);
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.GeolocationController$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isNeedRequestLocation$3;
                lambda$isNeedRequestLocation$3 = GeolocationController.this.lambda$isNeedRequestLocation$3(i2, (ImsProfile) obj);
                return lambda$isNeedRequestLocation$3;
            }
        }).findFirst().orElse(null)) != null) {
            return true;
        }
        Log.i(LOG_TAG, "profile is null");
        return false;
    }
}
