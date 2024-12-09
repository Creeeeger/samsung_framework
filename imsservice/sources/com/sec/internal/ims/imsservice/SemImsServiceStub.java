package com.sec.internal.ims.imsservice;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.ims.ISemEpdgListener;
import com.samsung.android.ims.SemAutoConfigListener;
import com.samsung.android.ims.SemImsDmConfigListener;
import com.samsung.android.ims.SemImsRegiListener;
import com.samsung.android.ims.SemImsRegistration;
import com.samsung.android.ims.SemImsRegistrationError;
import com.samsung.android.ims.SemImsService;
import com.samsung.android.ims.SemSimMobStatusListener;
import com.samsung.android.ims.cmc.ISemCmcRecordingListener;
import com.samsung.android.ims.cmc.SemCmcRecordingInfo;
import com.samsung.android.ims.ft.SemImsFtListener;
import com.samsung.android.ims.settings.SemImsProfile;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.ims.IEpdgListener;
import com.sec.ims.IImsDmConfigListener;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ISimMobilityStatusListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.ft.IImsOngoingFtEventListener;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class SemImsServiceStub extends SemImsService.Stub {
    private static final String IMS_SEAPI_SERVICE = "ImsBase";
    private static final String PERMISSION = "com.sec.imsservice.PERMISSION";
    public static final String RCS_AUTOCONFIG_URI = "com.samsung.rcs.autoconfigurationprovider";
    private Context mContext;
    private ImsDmConfigCallBack mDmConfigCallbacks;
    private EpdgListenerCallback mEpdgHandoverCallback;
    private ImsOngoingFtEventCallBack mOngoingFtEventCallback;
    private static final String LOG_TAG = SemImsServiceStub.class.getSimpleName();
    private static SemImsServiceStub sInstance = null;
    public static final Uri AUTO_CONFIGURATION_VERS_URI = Uri.parse(ConfigConstants.CONFIG_URI);
    private Map<String, IBinder> mCallbacks = new ConcurrentHashMap();
    private Map<String, SemEpdgCallBack> mEpdgListeners = new ConcurrentHashMap();
    private Map<String, SemImsFtCallBack> mOngoingFtEventListeners = new ConcurrentHashMap();
    private boolean[] mEpdgAvailable = new boolean[SimUtil.getPhoneCount()];
    private RemoteCallbackList<SemImsDmConfigListener> mDmConfigListeners = new RemoteCallbackList<>();
    private int mRcsConfigVers = 0;
    private final HandlerThread mCoreThread = new HandlerThread(getClass().getSimpleName());

    public boolean isCmcPotentialEmergencyNumber(String str) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SemImsServiceStub(Context context) {
        this.mContext = context;
        ServiceManager.addService(IMS_SEAPI_SERVICE, this);
        Log.d(LOG_TAG, "SemImsServiceStub added");
    }

    public static synchronized SemImsServiceStub makeSemImsService(Context context) {
        synchronized (SemImsServiceStub.class) {
            if (sInstance != null) {
                Log.d(LOG_TAG, "Already created.");
                return sInstance;
            }
            String str = LOG_TAG;
            Log.d(str, "Creating SemImsService");
            SemImsServiceStub semImsServiceStub = new SemImsServiceStub(context);
            sInstance = semImsServiceStub;
            semImsServiceStub.init();
            Log.d(str, "Done.");
            return sInstance;
        }
    }

    private void init() {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        this.mCoreThread.start();
    }

    public static SemImsServiceStub getInstance() {
        Log.i(LOG_TAG, "trying to get valid instance...");
        while (getInstanceInternal() == null) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Log.i(LOG_TAG, "returning valid instance...");
        return getInstanceInternal();
    }

    private static synchronized SemImsServiceStub getInstanceInternal() {
        SemImsServiceStub semImsServiceStub;
        synchronized (SemImsServiceStub.class) {
            semImsServiceStub = sInstance;
        }
        return semImsServiceStub;
    }

    public Binder getBinder() {
        return ImsServiceStub.getInstance().getSemBinder();
    }

    public boolean isSimMobilityActivated(int i) {
        return ImsServiceStub.getInstance().isSimMobilityActivated(i);
    }

    public boolean isServiceAvailable(String str, int i, int i2) throws RemoteException {
        return ImsServiceStub.getInstance().isServiceAvailable(str, i, i2);
    }

    public String getRcsProfileType(int i) throws RemoteException {
        return ImsServiceStub.getInstance().getRcsProfileType(i);
    }

    public ContentValues getConfigValues(String[] strArr, int i) {
        return ImsServiceStub.getInstance().getConfigValues(strArr, i);
    }

    public boolean isForbiddenByPhoneId(int i) {
        return ImsServiceStub.getInstance().isForbiddenByPhoneId(i);
    }

    public SemImsRegistration[] getRegistrationInfoByPhoneId(int i) {
        ArrayList arrayList = new ArrayList();
        ImsRegistration[] registrationInfoByPhoneId = ImsServiceStub.getInstance().getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId != null) {
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.getPhoneId() == i) {
                    arrayList.add(buildSemImsRegistration(imsRegistration));
                }
            }
        }
        return (SemImsRegistration[]) arrayList.toArray(new SemImsRegistration[0]);
    }

    public SemImsProfile[] getCurrentProfileForSlot(int i) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        ArrayList arrayList = new ArrayList();
        ImsProfile[] currentProfileForSlot = ImsServiceStub.getInstance().getCurrentProfileForSlot(i);
        if (currentProfileForSlot != null) {
            for (ImsProfile imsProfile : currentProfileForSlot) {
                arrayList.add(buildSemImsProfile(imsProfile));
            }
        }
        return (SemImsProfile[]) arrayList.toArray(new SemImsProfile[0]);
    }

    public SemImsRegistration getRegistrationInfoByServiceType(String str, int i) throws RemoteException {
        IMSLog.d(LOG_TAG, i, "getRegistrationInfoByServiceType: phoneId " + i + " serviceType " + str);
        return buildSemImsRegistration(ImsServiceStub.getInstance().getRegistrationInfoByServiceType(str, i));
    }

    public String registerImsRegistrationListenerForSlot(SemImsRegiListener semImsRegiListener, int i) throws RemoteException {
        IMSLog.i(LOG_TAG, i, "SemRegisterImsRegistrationListener " + semImsRegiListener);
        if (semImsRegiListener == null) {
            return null;
        }
        IImsRegistrationListener imsRegistrationCallBack = new ImsRegistrationCallBack(semImsRegiListener, i);
        String registerImsRegistrationListener = ImsServiceStub.getInstance().registerImsRegistrationListener(imsRegistrationCallBack, false, i);
        if (!TextUtils.isEmpty(registerImsRegistrationListener)) {
            imsRegistrationCallBack.mToken = registerImsRegistrationListener;
            this.mCallbacks.put(registerImsRegistrationListener, imsRegistrationCallBack);
        } else {
            imsRegistrationCallBack.reset();
        }
        ImsRegistration[] registrationInfoByPhoneId = ImsServiceStub.getInstance().getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId != null) {
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.hasVolteService() && !imsRegistration.getImsProfile().hasEmergencySupport()) {
                    try {
                        semImsRegiListener.onRegistered(buildSemImsRegistration(imsRegistration));
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return registerImsRegistrationListener;
    }

    public void unregisterImsRegistrationListenerForSlot(String str, int i) {
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "SemUnregisterImsRegistrationListener");
        if (TextUtils.isEmpty(str)) {
            IMSLog.d(str2, i, "unregisterImsRegistrationListenerForSlot: token is empty.");
            return;
        }
        ImsServiceStub.getInstance().unregisterImsRegistrationListenerForSlot(str, i);
        ImsRegistrationCallBack imsRegistrationCallBack = (ImsRegistrationCallBack) this.mCallbacks.remove(str);
        if (imsRegistrationCallBack != null) {
            imsRegistrationCallBack.reset();
        }
    }

    public synchronized String registerImsOngoingFtEventListener(SemImsFtListener semImsFtListener) throws RemoteException {
        IMSLog.d(LOG_TAG, "SemRegisterImsOngoingFtListener");
        if (semImsFtListener == null) {
            return null;
        }
        if (this.mOngoingFtEventCallback == null) {
            ImsOngoingFtEventCallBack imsOngoingFtEventCallBack = new ImsOngoingFtEventCallBack();
            this.mOngoingFtEventCallback = imsOngoingFtEventCallBack;
            imsOngoingFtEventCallBack.mToken = ImsServiceStub.getInstance().registerImsOngoingFtListener(this.mOngoingFtEventCallback);
        }
        String tokenOfListener = ImsServiceStub.getTokenOfListener(semImsFtListener);
        this.mOngoingFtEventListeners.put(tokenOfListener, new SemImsFtCallBack(semImsFtListener, tokenOfListener));
        return tokenOfListener;
    }

    public void unregisterImsOngoingFtEventListener(String str) {
        String str2 = LOG_TAG;
        IMSLog.d(str2, "SemUnregisterImsOngoingFtListener");
        if (this.mOngoingFtEventCallback == null || TextUtils.isEmpty(str)) {
            IMSLog.d(str2, "unregisterImsRegistrationListenerForSlot: token is empty or mOngoingFtEventCallback is null.");
            return;
        }
        SemImsFtCallBack remove = this.mOngoingFtEventListeners.remove(str);
        if (remove != null) {
            remove.reset();
        }
        if (this.mOngoingFtEventListeners.size() <= 0) {
            ImsServiceStub.getInstance().unregisterImsOngoingFtListener(this.mOngoingFtEventCallback.mToken);
            this.mOngoingFtEventCallback = null;
        }
    }

    public String registerSimMobilityStatusListener(SemSimMobStatusListener semSimMobStatusListener, int i) throws RemoteException {
        IMSLog.d(LOG_TAG, i, "SemRegisterSimMobilityStatusListener");
        if (semSimMobStatusListener == null) {
            return null;
        }
        ISimMobilityStatusListener simMobilityStatusCallBack = new SimMobilityStatusCallBack(semSimMobStatusListener, i);
        String registerSimMobilityStatusListener = ImsServiceStub.getInstance().registerSimMobilityStatusListener(simMobilityStatusCallBack, true, i);
        if (!TextUtils.isEmpty(registerSimMobilityStatusListener)) {
            simMobilityStatusCallBack.mToken = registerSimMobilityStatusListener;
            this.mCallbacks.put(registerSimMobilityStatusListener, simMobilityStatusCallBack);
        } else {
            simMobilityStatusCallBack.reset();
        }
        return registerSimMobilityStatusListener;
    }

    public void unregisterSimMobilityStatusListener(String str, int i) {
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "SemUnregisterSimMobilityStatusListener");
        if (TextUtils.isEmpty(str)) {
            IMSLog.d(str2, i, "unregisterImsRegistrationListenerForSlot: token is empty.");
            return;
        }
        ImsServiceStub.getInstance().unregisterSimMobilityStatusListenerByPhoneId(str, i);
        SimMobilityStatusCallBack simMobilityStatusCallBack = (SimMobilityStatusCallBack) this.mCallbacks.remove(str);
        if (simMobilityStatusCallBack != null) {
            simMobilityStatusCallBack.reset();
        }
    }

    public String registerAutoConfigurationListener(SemAutoConfigListener semAutoConfigListener, int i) {
        IMSLog.d(LOG_TAG, i, "registerAutoConfigurationListener");
        if (semAutoConfigListener == null) {
            return null;
        }
        IAutoConfigurationListener autoConfigCallBack = new AutoConfigCallBack(semAutoConfigListener, i);
        String registerAutoConfigurationListener = ImsServiceStub.getInstance().registerAutoConfigurationListener(autoConfigCallBack, i);
        if (!TextUtils.isEmpty(registerAutoConfigurationListener)) {
            autoConfigCallBack.mToken = registerAutoConfigurationListener;
            this.mCallbacks.put(registerAutoConfigurationListener, autoConfigCallBack);
        } else {
            autoConfigCallBack.reset();
        }
        return registerAutoConfigurationListener;
    }

    public void unregisterAutoConfigurationListener(String str, int i) {
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "unregisterAutoConfigurationListener");
        if (TextUtils.isEmpty(str)) {
            IMSLog.d(str2, i, "unregisterAutoConfigurationListener: token is empty.");
            return;
        }
        AutoConfigCallBack autoConfigCallBack = (AutoConfigCallBack) this.mCallbacks.remove(str);
        if (autoConfigCallBack != null) {
            autoConfigCallBack.reset();
            ImsServiceStub.getInstance().unregisterAutoConfigurationListener(str, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isRcsEnabled(boolean r11, int r12) {
        /*
            r10 = this;
            java.lang.String r0 = "]"
            java.lang.String r1 = "["
            r2 = 1
            r3 = 0
            android.content.Context r4 = r10.mContext     // Catch: android.provider.Settings.SettingNotFoundException -> L17
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: android.provider.Settings.SettingNotFoundException -> L17
            java.lang.String r5 = "rcs_user_setting"
            int r4 = android.provider.Settings.System.getInt(r4, r5)     // Catch: android.provider.Settings.SettingNotFoundException -> L17
            if (r4 != r2) goto L33
            r4 = r2
            goto L34
        L17:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = com.sec.internal.ims.imsservice.SemImsServiceStub.LOG_TAG
            r4.append(r5)
            r4.append(r1)
            r4.append(r12)
            r4.append(r0)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "isRcsEnabled: rcs_user_setting is not exist."
            android.util.Log.d(r4, r5)
        L33:
            r4 = r3
        L34:
            if (r11 != 0) goto L37
            return r4
        L37:
            long r5 = android.os.Binder.clearCallingIdentity()
            boolean r11 = r10.getRcsAutoconfigVers(r12)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8c
            if (r11 == 0) goto L44
            int r11 = r10.mRcsConfigVers     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8c
            goto L45
        L44:
            r11 = r3
        L45:
            java.lang.String r10 = r10.getRcsAutoConfigCompl(r12)     // Catch: java.lang.IllegalStateException -> L88 java.lang.Throwable -> L8a
            if (r10 == 0) goto L53
            java.lang.String r7 = "true"
            boolean r10 = r7.equals(r10)     // Catch: java.lang.IllegalStateException -> L88 java.lang.Throwable -> L8a
            goto L54
        L53:
            r10 = r3
        L54:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r7.<init>()     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.String r8 = com.sec.internal.ims.imsservice.SemImsServiceStub.LOG_TAG     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r7.append(r8)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r7.append(r1)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r7.append(r12)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r7.append(r0)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r8.<init>()     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.String r9 = "isRcsEnabled: version "
            r8.append(r9)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r8.append(r11)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.String r9 = " autoConfigComplete "
            r8.append(r9)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            r8.append(r10)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            android.util.Log.d(r7, r8)     // Catch: java.lang.Throwable -> L8a java.lang.IllegalStateException -> L8e
            goto Laa
        L88:
            r10 = r3
            goto L8e
        L8a:
            r10 = move-exception
            goto Lb6
        L8c:
            r10 = r3
            r11 = r10
        L8e:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a
            r7.<init>()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r8 = com.sec.internal.ims.imsservice.SemImsServiceStub.LOG_TAG     // Catch: java.lang.Throwable -> L8a
            r7.append(r8)     // Catch: java.lang.Throwable -> L8a
            r7.append(r1)     // Catch: java.lang.Throwable -> L8a
            r7.append(r12)     // Catch: java.lang.Throwable -> L8a
            r7.append(r0)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r12 = r7.toString()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r0 = "isRcsEnabled: AutoConfiguration is not completed."
            android.util.Log.d(r12, r0)     // Catch: java.lang.Throwable -> L8a
        Laa:
            android.os.Binder.restoreCallingIdentity(r5)
            if (r4 == 0) goto Lb4
            if (r10 == 0) goto Lb5
            if (r11 <= 0) goto Lb4
            goto Lb5
        Lb4:
            r2 = r3
        Lb5:
            return r2
        Lb6:
            android.os.Binder.restoreCallingIdentity(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.imsservice.SemImsServiceStub.isRcsEnabled(boolean, int):boolean");
    }

    private String getRcsAutoConfigCompl(int i) {
        Uri build = Uri.parse(AUTO_CONFIGURATION_VERS_URI + ConfigConstants.PATH.INFO_COMPLETED.replaceAll("#simslot\\d", "")).buildUpon().fragment("simslot" + Integer.toString(i)).build();
        Cursor cursor = null;
        r8 = null;
        String string = null;
        try {
            Context context = this.mContext;
            Cursor query = context != null ? context.getContentResolver().query(build, null, null, null, null) : null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        string = query.getString(0);
                    }
                } catch (Throwable th) {
                    cursor = query;
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return string;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean getRcsAutoconfigVers(int i) {
        Uri build = Uri.parse(AUTO_CONFIGURATION_VERS_URI + "parameter/version".replaceAll("#simslot\\d", "")).buildUpon().fragment("simslot" + Integer.toString(i)).build();
        Cursor cursor = null;
        r7 = null;
        String string = null;
        try {
            Context context = this.mContext;
            Cursor query = context != null ? context.getContentResolver().query(build, null, null, null, null) : null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        string = query.getString(0);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (string == null) {
                if (query != null) {
                    query.close();
                }
                return false;
            }
            try {
                this.mRcsConfigVers = Integer.parseInt(string);
                if (query == null) {
                    return true;
                }
                query.close();
                return true;
            } catch (NumberFormatException unused) {
                Log.e(LOG_TAG, "Error while parsing integer in getIntValue() - NumberFormatException");
                if (query != null) {
                    query.close();
                }
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void enableRcsByPhoneId(boolean z, int i) {
        ImsServiceStub.getInstance().enableRcsByPhoneId(z, i);
    }

    public boolean isVoLteAvailable(int i) throws RemoteException {
        return ImsServiceStub.getInstance().hasVoLteSimByPhoneId(i);
    }

    public void sendTryRegisterByPhoneId(int i) {
        ImsServiceStub.getInstance().sendTryRegisterByPhoneId(i);
    }

    public boolean getBooleanConfig(String str, int i) {
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "getBooleanConfig : " + str);
        String[] strArr = new String[1];
        if ("mmtel".equals(str)) {
            if (SimUtil.getSimMno(i) == Mno.USCC) {
                strArr[0] = "81";
            } else {
                strArr[0] = "93";
            }
        } else {
            if ("mmtel-video".equals(str)) {
                strArr[0] = "94";
            }
            return false;
        }
        ContentValues configValues = ImsServiceStub.getInstance().getConfigValues(strArr, i);
        if (configValues != null) {
            String str3 = (String) configValues.get(strArr[0]);
            if (!TextUtils.isEmpty(str3)) {
                if ("81".equals(strArr[0])) {
                    return DiagnosisConstants.RCSM_ORST_REGI.equals(str3);
                }
                return "1".equals(str3);
            }
        } else {
            IMSLog.d(str2, i, "can not read DM values");
        }
        return false;
    }

    public void setRttMode(int i, int i2) {
        ImsServiceStub.getInstance().setRttMode(i, i2);
    }

    public void sendVerificationCode(String str, int i) {
        IMSLog.d(LOG_TAG, i, "sendVerificationCode");
        ImsServiceStub.getInstance().sendVerificationCode(str, i);
    }

    public void sendMsisdnNumber(String str, int i) {
        IMSLog.d(LOG_TAG, i, "sendMsisdnNumber");
        ImsServiceStub.getInstance().sendMsisdnNumber(str, i);
    }

    public void sendIidToken(String str, int i) {
        IMSLog.d(LOG_TAG, i, "sendIidToken");
        ImsServiceStub.getInstance().sendIidToken(str, i);
    }

    public void registerDmValueListener(SemImsDmConfigListener semImsDmConfigListener) throws RemoteException {
        IImsDmConfigListener imsDmConfigCallBack = new ImsDmConfigCallBack();
        this.mDmConfigCallbacks = imsDmConfigCallBack;
        ImsServiceStub.getInstance().registerDmValueListener(imsDmConfigCallBack);
        if (semImsDmConfigListener != null) {
            Log.d(LOG_TAG, "mDmConfigListeners register");
            this.mDmConfigListeners.register(semImsDmConfigListener);
        }
    }

    public void unregisterDmValueListener(SemImsDmConfigListener semImsDmConfigListener) {
        if (semImsDmConfigListener != null) {
            this.mDmConfigListeners.unregister(semImsDmConfigListener);
        }
        if (this.mDmConfigCallbacks != null) {
            ImsServiceStub.getInstance().unregisterDmValueListener(this.mDmConfigCallbacks);
        }
    }

    public boolean isCmcEmergencyCallSupported() {
        IMSLog.d(LOG_TAG, "isCmcEmergencyCallSupported");
        if (ImsServiceStub.getInstance().getCmcAccountManager() == null) {
            return false;
        }
        return ImsServiceStub.getInstance().getCmcAccountManager().isEmergencyCallSupported();
    }

    public boolean isCmcEmergencyNumber(String str, int i) {
        IMSLog.d(LOG_TAG, "isCmcEmergencyNumber: ");
        if (ImsServiceStub.getInstance().getCmcAccountManager() == null) {
            return false;
        }
        return ImsServiceStub.getInstance().getCmcAccountManager().isEmergencyNumber(str, i);
    }

    public boolean isCmcPotentialEmergencyNumber(String str, int i) {
        IMSLog.d(LOG_TAG, "isCmcPotentialEmergencyNumber: ");
        if (ImsServiceStub.getInstance().getCmcAccountManager() == null) {
            return false;
        }
        return ImsServiceStub.getInstance().getCmcAccountManager().isPotentialEmergencyNumber(str, i);
    }

    public void sendSemCmcRecordingEvent(SemCmcRecordingInfo semCmcRecordingInfo, int i, int i2) {
        IMSLog.d(LOG_TAG, i2, "sendSemCmcRecordingEvent : " + i);
        ImsServiceStub.getInstance().sendCmcRecordingEvent(i2, i, semCmcRecordingInfo);
    }

    public void registerSemCmcRecordingListener(ISemCmcRecordingListener iSemCmcRecordingListener, int i) {
        IMSLog.d(LOG_TAG, i, "registerSemCmcRecordingListener");
        ImsServiceStub.getInstance().registerCmcRecordingListener(i, iSemCmcRecordingListener);
    }

    public synchronized String registerEpdgListener(ISemEpdgListener iSemEpdgListener) {
        this.mContext.enforceCallingOrSelfPermission(PERMISSION, LOG_TAG);
        if (iSemEpdgListener == null) {
            return null;
        }
        if (this.mEpdgHandoverCallback == null) {
            EpdgListenerCallback epdgListenerCallback = new EpdgListenerCallback();
            this.mEpdgHandoverCallback = epdgListenerCallback;
            epdgListenerCallback.mToken = ImsServiceStub.getInstance().registerEpdgListener(this.mEpdgHandoverCallback);
        }
        String tokenOfListener = ImsServiceStub.getTokenOfListener(iSemEpdgListener);
        this.mEpdgListeners.put(tokenOfListener, new SemEpdgCallBack(iSemEpdgListener, tokenOfListener));
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            try {
                int epdgPhysicalInterface = ImsServiceStub.getInstance().getPdnController().getEpdgPhysicalInterface(i);
                Log.d(LOG_TAG, "register epdg listener on epdg available : " + this.mEpdgAvailable[i] + " epdgInterfaceState " + epdgPhysicalInterface);
                iSemEpdgListener.onEpdgAvailable(i, this.mEpdgAvailable[i], epdgPhysicalInterface);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return tokenOfListener;
    }

    public void unRegisterEpdgListener(String str) {
        if (this.mEpdgHandoverCallback == null || TextUtils.isEmpty(str)) {
            return;
        }
        SemEpdgCallBack remove = this.mEpdgListeners.remove(str);
        if (remove != null) {
            remove.reset();
        }
        if (this.mEpdgListeners.size() <= 0) {
            ImsServiceStub.getInstance().unRegisterEpdgListener(this.mEpdgHandoverCallback.mToken);
            this.mEpdgHandoverCallback = null;
        }
    }

    public boolean isCrossSimCallingRegistered(int i) {
        return ImsServiceStub.getInstance().isCrossSimCallingRegistered(i);
    }

    public boolean hasCrossSimCallingSupport(int i) {
        return ImsServiceStub.getInstance().isCrossSimCallingSupportedByPhoneId(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x009a, code lost:
    
        if (r0.contains(r4) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.samsung.android.ims.SemImsRegistration buildSemImsRegistration(com.sec.ims.ImsRegistration r4) {
        /*
            r3 = this;
            if (r4 == 0) goto La7
            com.samsung.android.ims.SemImsRegistration$Builder r3 = com.samsung.android.ims.SemImsRegistration.getBuilder()
            int r0 = r4.getCurrentRat()
            r3.setRegiRat(r0)
            int r0 = r4.getNetworkType()
            r3.setPdnType(r0)
            int r0 = r4.getPhoneId()
            r3.setPhoneId(r0)
            java.util.Set r0 = r4.getServices()
            r3.setServices(r0)
            java.lang.String r0 = r4.getPAssociatedUri2nd()
            r3.setPAssociatedUri2nd(r0)
            boolean r0 = r4.getEpdgStatus()
            r3.setEpdgStatus(r0)
            boolean r0 = r4.isEpdgOverCellularData()
            r3.setEpdgOverCellularData(r0)
            int r0 = r4.getSubscriptionId()
            r3.setSubscriptionId(r0)
            com.sec.ims.util.ImsUri r0 = r4.getRegisteredImpu()
            java.util.Optional r0 = java.util.Optional.ofNullable(r0)
            com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler$$ExternalSyntheticLambda0 r1 = new com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler$$ExternalSyntheticLambda0
            r1.<init>()
            java.util.Optional r0 = r0.map(r1)
            java.lang.String r1 = ""
            java.lang.Object r0 = r0.orElse(r1)
            java.lang.String r0 = (java.lang.String) r0
            r3.setRegisteredPublicUserId(r0)
            com.sec.ims.util.NameAddr r0 = r4.getPreferredImpu()
            java.util.Optional r0 = java.util.Optional.ofNullable(r0)
            com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda8 r2 = new com.sec.internal.ims.core.RegistrationManager$$ExternalSyntheticLambda8
            r2.<init>()
            java.util.Optional r0 = r0.map(r2)
            java.lang.Object r0 = r0.orElse(r1)
            java.lang.String r0 = (java.lang.String) r0
            r3.setPreferredPublicUserId(r0)
            java.lang.String r0 = r4.getOwnNumber()
            java.util.Optional r0 = java.util.Optional.ofNullable(r0)
            java.lang.Object r0 = r0.orElse(r1)
            java.lang.String r0 = (java.lang.String) r0
            int r4 = r4.getPhoneId()
            com.sec.internal.interfaces.ims.core.ISimManager r4 = com.sec.internal.ims.core.sim.SimManagerFactory.getSimManagerFromSimSlot(r4)
            if (r4 == 0) goto L9d
            java.lang.String r4 = r4.getImsi()
            boolean r2 = android.text.TextUtils.isEmpty(r4)
            if (r2 != 0) goto L9d
            boolean r4 = r0.contains(r4)
            if (r4 == 0) goto L9d
            goto L9e
        L9d:
            r1 = r0
        L9e:
            r3.setOwnNumber(r1)
            com.samsung.android.ims.SemImsRegistration r4 = new com.samsung.android.ims.SemImsRegistration
            r4.<init>(r3)
            return r4
        La7:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.imsservice.SemImsServiceStub.buildSemImsRegistration(com.sec.ims.ImsRegistration):com.samsung.android.ims.SemImsRegistration");
    }

    private SemImsProfile buildSemImsProfile(ImsProfile imsProfile) {
        if (imsProfile != null) {
            return new SemImsProfile(imsProfile.toJson());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SemImsRegistrationError buildSemImsRegistrationError(ImsRegistrationError imsRegistrationError) {
        return new SemImsRegistrationError(imsRegistrationError.getSipErrorCode(), imsRegistrationError.getSipErrorReason(), imsRegistrationError.getDetailedDeregiReason(), imsRegistrationError.getDeregistrationReason());
    }

    private class ImsDmConfigCallBack extends IImsDmConfigListener.Stub {
        private ImsDmConfigCallBack() {
        }

        public void onChangeDmValue(String str, boolean z) {
            RemoteCallbackList remoteCallbackList = SemImsServiceStub.this.mDmConfigListeners;
            if (remoteCallbackList != null) {
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                while (beginBroadcast > 0) {
                    beginBroadcast--;
                    try {
                        remoteCallbackList.getBroadcastItem(beginBroadcast).onChangeDmValue(str, z);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    private class AutoConfigCallBack extends IAutoConfigurationListener.Stub implements IBinder.DeathRecipient {
        SemAutoConfigListener mListener;
        private int mPhoneId;
        String mToken;

        public AutoConfigCallBack(SemAutoConfigListener semAutoConfigListener, int i) {
            this.mListener = semAutoConfigListener;
            this.mPhoneId = i;
            try {
                semAutoConfigListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        public void onVerificationCodeNeeded() {
            try {
                this.mListener.onVerificationCodeNeeded();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public void onMsisdnNumberNeeded() {
            try {
                this.mListener.onMsisdnNumberNeeded();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public void onIidTokenNeeded() {
            try {
                this.mListener.onIidTokenNeeded();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public void onAutoConfigurationCompleted(boolean z) {
            try {
                this.mListener.onAutoConfigurationCompleted(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ImsServiceStub.getInstance().unregisterAutoConfigurationListener(this.mToken, this.mPhoneId);
            SemImsServiceStub.this.mCallbacks.remove(this.mToken);
            reset();
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    private class ImsRegistrationCallBack extends IImsRegistrationListener.Stub implements IBinder.DeathRecipient {
        SemImsRegiListener mListener;
        private int mPhoneId;
        String mToken;

        public ImsRegistrationCallBack(SemImsRegiListener semImsRegiListener, int i) {
            this.mListener = semImsRegiListener;
            this.mPhoneId = i;
            try {
                semImsRegiListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        public void onRegistered(ImsRegistration imsRegistration) {
            if ((!imsRegistration.hasVolteService() || imsRegistration.getImsProfile().hasEmergencySupport()) && !imsRegistration.hasRcsService()) {
                return;
            }
            try {
                this.mListener.onRegistered(SemImsServiceStub.this.buildSemImsRegistration(imsRegistration));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public void onDeregistered(ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError) {
            if ((!imsRegistration.hasVolteService() || imsRegistration.getImsProfile().hasEmergencySupport()) && !imsRegistration.hasRcsService()) {
                return;
            }
            try {
                this.mListener.onDeregistered(SemImsServiceStub.this.buildSemImsRegistration(imsRegistration), SemImsServiceStub.this.buildSemImsRegistrationError(imsRegistrationError));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ImsServiceStub.getInstance().unregisterImsRegistrationListenerForSlot(this.mToken, this.mPhoneId);
            SemImsServiceStub.this.mCallbacks.remove(this.mToken);
            reset();
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    private class ImsOngoingFtEventCallBack extends IImsOngoingFtEventListener.Stub {
        String mToken;

        private ImsOngoingFtEventCallBack() {
            this.mToken = null;
        }

        public void onFtStateChanged(boolean z) {
            Iterator it = SemImsServiceStub.this.mOngoingFtEventListeners.values().iterator();
            while (it.hasNext()) {
                try {
                    ((SemImsFtCallBack) it.next()).mListener.onFtStateChanged(z);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private class SimMobilityStatusCallBack extends ISimMobilityStatusListener.Stub implements IBinder.DeathRecipient {
        SemSimMobStatusListener mListener;
        private int mPhoneId;
        String mToken;

        public SimMobilityStatusCallBack(SemSimMobStatusListener semSimMobStatusListener, int i) {
            this.mListener = semSimMobStatusListener;
            this.mPhoneId = i;
            try {
                semSimMobStatusListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        public void onSimMobilityStateChanged(boolean z) {
            try {
                this.mListener.onSimMobilityStateChanged(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ImsServiceStub.getInstance().unregisterSimMobilityStatusListenerByPhoneId(this.mToken, this.mPhoneId);
            SemImsServiceStub.this.mCallbacks.remove(this.mToken);
            reset();
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    private class EpdgListenerCallback extends IEpdgListener.Stub {
        String mToken;

        public void onEpdgDeregister(int i) {
        }

        public void onEpdgHandoverEnableChanged(int i, boolean z) {
        }

        public void onEpdgRegister(int i, boolean z) {
        }

        public void onEpdgReleaseCall(int i) {
        }

        private EpdgListenerCallback() {
            this.mToken = null;
        }

        public void onEpdgAvailable(int i, int i2, int i3) {
            if (SemImsServiceStub.this.mEpdgListeners != null) {
                for (SemEpdgCallBack semEpdgCallBack : SemImsServiceStub.this.mEpdgListeners.values()) {
                    boolean z = i2 == 1;
                    try {
                        SemImsServiceStub.this.mEpdgAvailable[i] = z;
                        semEpdgCallBack.mListener.onEpdgAvailable(i, z, i3);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        public void onEpdgHandoverResult(int i, int i2, int i3, String str) {
            if (SemImsServiceStub.this.mEpdgListeners != null) {
                Iterator it = SemImsServiceStub.this.mEpdgListeners.values().iterator();
                while (it.hasNext()) {
                    try {
                        ((SemEpdgCallBack) it.next()).mListener.onHandoverResult(i, i2, i3, str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        public void onEpdgIpsecConnection(int i, String str, int i2, int i3) {
            if (SemImsServiceStub.this.mEpdgListeners != null) {
                Iterator it = SemImsServiceStub.this.mEpdgListeners.values().iterator();
                while (it.hasNext()) {
                    try {
                        ((SemEpdgCallBack) it.next()).mListener.onIpsecConnection(i, str, i2, i3);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        public void onEpdgIpsecDisconnection(int i, String str) {
            if (SemImsServiceStub.this.mEpdgListeners != null) {
                Iterator it = SemImsServiceStub.this.mEpdgListeners.values().iterator();
                while (it.hasNext()) {
                    try {
                        ((SemEpdgCallBack) it.next()).mListener.onIpsecDisconnection(i, str);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        public void onEpdgShowPopup(int i, int i2) {
            if (SemImsServiceStub.this.mEpdgListeners != null) {
                Iterator it = SemImsServiceStub.this.mEpdgListeners.values().iterator();
                while (it.hasNext()) {
                    try {
                        ((SemEpdgCallBack) it.next()).mListener.onEpdgShowPopup(i, i2);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    private class SemEpdgCallBack implements IBinder.DeathRecipient {
        final ISemEpdgListener mListener;
        final String mToken;

        public SemEpdgCallBack(ISemEpdgListener iSemEpdgListener, String str) {
            this.mListener = iSemEpdgListener;
            this.mToken = str;
            try {
                iSemEpdgListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            SemImsServiceStub.this.mEpdgListeners.remove(this.mToken);
            reset();
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    private class SemImsFtCallBack implements IBinder.DeathRecipient {
        final SemImsFtListener mListener;
        final String mToken;

        public SemImsFtCallBack(SemImsFtListener semImsFtListener, String str) {
            this.mListener = semImsFtListener;
            this.mToken = str;
            try {
                semImsFtListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            SemImsServiceStub.this.mOngoingFtEventListeners.remove(this.mToken);
            reset();
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }
}
