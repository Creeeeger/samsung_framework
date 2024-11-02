package com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.settings.multisim.MultiSIMController;
import com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService;
import com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SimCardManagerServiceProvider {
    public static Context mContext;
    public static volatile SimCardManagerServiceProvider sInstance;
    public static volatile ServiceBindHelper sServiceBindHelper;
    public static final Uri INTERNAL_URI = Uri.parse("content://com.samsung.android.app.telephonyui.internal");
    public static MultiSIMController.AnonymousClass13 sSimCardManagerServiceCallback = null;
    public static boolean mIsServiceClose = false;
    public static boolean mIsRemainCallbackCall = false;
    public static final int INVALID_VARIABLE = -1;
    public static final AnonymousClass1 mHandler = new Handler() { // from class: com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 0) {
                Log.d("SimCardManagerServiceProvider", "MESSAGE_EMPTY");
                return;
            }
            Log.d("SimCardManagerServiceProvider", "SIMCARD_MANAGER_SERVICE_CLOSE" + message);
            try {
                Log.d("SimCardManagerServiceProvider", "SimCardManagerProcessService Close !!!");
                SimCardManagerServiceProvider.sSimCardManagerServiceCallback = null;
                ServiceBindHelper.access$300(SimCardManagerServiceProvider.sServiceBindHelper, SimCardManagerServiceProvider.mContext);
                if (SimCardManagerServiceProvider.isServiceRunningCheck(SimCardManagerServiceProvider.mContext)) {
                    Intent intent = new Intent();
                    intent.setClassName("com.samsung.android.app.telephonyui", "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService");
                    intent.setPackage("com.samsung.android.app.telephonyui");
                    SimCardManagerServiceProvider.mContext.stopService(intent);
                }
                SimCardManagerServiceProvider.sServiceBindHelper.setServiceStatus(0);
                SimCardManagerServiceProvider.sServiceBindHelper = null;
                SimCardManagerServiceProvider.sInstance = null;
                SimCardManagerServiceProvider.mIsServiceClose = true;
                SimCardManagerServiceProvider.mIsRemainCallbackCall = false;
            } catch (Exception e) {
                e.printStackTrace();
            }
            AnonymousClass1 anonymousClass1 = SimCardManagerServiceProvider.mHandler;
            if (anonymousClass1 != null) {
                anonymousClass1.removeMessages(0);
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ServiceBindHelper {
        public static boolean mIsBound = false;
        public final AnonymousClass1 mServiceConnection;
        public volatile int mServiceStatus = 0;
        public ISimCardManagerService mSimCardManagerService;
        public AnonymousClass2 mSimCardManagerServiceCallback;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.ServiceConnection, com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper$1] */
        public ServiceBindHelper(Context context) {
            ?? r0 = new ServiceConnection() { // from class: com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.ServiceBindHelper.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r4v5, types: [com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper$2, com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback] */
                @Override // android.content.ServiceConnection
                public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    ISimCardManagerService proxy;
                    Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "connected");
                    SimCardManagerServiceProvider.mIsServiceClose = false;
                    ServiceBindHelper.this.setServiceStatus(2);
                    ServiceBindHelper serviceBindHelper = ServiceBindHelper.this;
                    int i = ISimCardManagerService.Stub.$r8$clinit;
                    if (iBinder == null) {
                        proxy = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService");
                        if (queryLocalInterface != null && (queryLocalInterface instanceof ISimCardManagerService)) {
                            proxy = (ISimCardManagerService) queryLocalInterface;
                        } else {
                            proxy = new ISimCardManagerService.Stub.Proxy(iBinder);
                        }
                    }
                    serviceBindHelper.mSimCardManagerService = proxy;
                    try {
                        ServiceBindHelper serviceBindHelper2 = ServiceBindHelper.this;
                        if (serviceBindHelper2.mSimCardManagerServiceCallback == null) {
                            ISimCardManagerService iSimCardManagerService = serviceBindHelper2.mSimCardManagerService;
                            ?? r4 = new ISimCardManagerServiceCallback.Stub(serviceBindHelper2) { // from class: com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.ServiceBindHelper.2
                            };
                            serviceBindHelper2.mSimCardManagerServiceCallback = r4;
                            ((ISimCardManagerService.Stub.Proxy) iSimCardManagerService).registerSimCardManagerServiceCallback(r4);
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }

                @Override // android.content.ServiceConnection
                public final void onServiceDisconnected(ComponentName componentName) {
                    Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "disconnected");
                    ServiceBindHelper serviceBindHelper = ServiceBindHelper.this;
                    serviceBindHelper.mSimCardManagerService = null;
                    serviceBindHelper.setServiceStatus(0);
                    ServiceBindHelper.mIsBound = false;
                }
            };
            this.mServiceConnection = r0;
            setServiceStatus(1);
            mIsBound = true;
            Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "bindService : SimCardManagerProcessService");
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.app.telephonyui", "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService");
            intent.setPackage("com.samsung.android.app.telephonyui");
            context.bindService(intent, (ServiceConnection) r0, 1);
        }

        public static void access$300(ServiceBindHelper serviceBindHelper, Context context) {
            AnonymousClass1 anonymousClass1;
            serviceBindHelper.getClass();
            try {
                if (mIsBound) {
                    if (serviceBindHelper.mSimCardManagerService != null && (anonymousClass1 = serviceBindHelper.mServiceConnection) != null) {
                        if (serviceBindHelper.mSimCardManagerServiceCallback != null) {
                            try {
                                ((ISimCardManagerService.Stub.Proxy) serviceBindHelper.getServiceApi()).unregisterSimCardManagerServiceCallback(serviceBindHelper.mSimCardManagerServiceCallback);
                                serviceBindHelper.mSimCardManagerServiceCallback = null;
                                Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "unbindService : mSimCardManagerServiceCallback is unregister");
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                        Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "unbindService : SimCardManagerProcessService");
                        context.unbindService(anonymousClass1);
                    }
                    mIsBound = false;
                }
            } catch (Exception unused) {
                Log.e("SimCardManagerServiceProvider$ServiceBindHelper", "Caught Exception:");
            }
        }

        public final ISimCardManagerService getServiceApi() {
            boolean z;
            StringBuilder sb = new StringBuilder("getServiceApi : ");
            if (this.mSimCardManagerService != null) {
                z = true;
            } else {
                z = false;
            }
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, z, "SimCardManagerServiceProvider$ServiceBindHelper");
            return this.mSimCardManagerService;
        }

        public final void setServiceStatus(int i) {
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("serviceStatus : "), this.mServiceStatus, " -> ", i, "SimCardManagerServiceProvider$ServiceBindHelper");
            this.mServiceStatus = i;
        }
    }

    private SimCardManagerServiceProvider() {
        getServiceApi();
    }

    public static void CloseService() {
        int i;
        boolean z;
        if (sServiceBindHelper != null) {
            if (mIsRemainCallbackCall && isServiceRunningCheck(mContext)) {
                i = VolumePanelState.DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS;
            } else {
                i = 0;
            }
            AnonymousClass1 anonymousClass1 = mHandler;
            if (anonymousClass1 != null) {
                Log.d("SimCardManagerServiceProvider", "CloseService : mIsRemainCallbackCall = " + mIsRemainCallbackCall + ", delayTime = " + i);
                if (sServiceBindHelper.mServiceStatus == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    Log.d("SimCardManagerServiceProvider", "CloseService : already disconnected so initial value");
                    sSimCardManagerServiceCallback = null;
                    sServiceBindHelper = null;
                    sInstance = null;
                    mIsServiceClose = true;
                    mIsRemainCallbackCall = false;
                    return;
                }
                anonymousClass1.sendMessageDelayed(anonymousClass1.obtainMessage(0), i);
            }
        }
    }

    public static SimCardManagerServiceProvider getService(Context context) {
        Context applicationContext = context.getApplicationContext();
        mContext = applicationContext;
        if (!isServiceRunningCheck(applicationContext)) {
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.app.telephonyui", "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService");
            intent.setPackage("com.samsung.android.app.telephonyui");
            intent.putExtra("sticky_value", 2);
            Log.d("SimCardManagerServiceProvider", "getServiceApi - startService !!");
            if (mContext.startService(intent) == null) {
                Log.d("SimCardManagerServiceProvider", "getServiceApi - startService Fail !!");
                return null;
            }
        }
        if (sInstance == null) {
            synchronized (SimCardManagerServiceProvider.class) {
                if (sInstance == null) {
                    sInstance = new SimCardManagerServiceProvider();
                }
            }
        }
        AnonymousClass1 anonymousClass1 = mHandler;
        if (anonymousClass1 != null) {
            anonymousClass1.removeMessages(0);
            mIsRemainCallbackCall = false;
        }
        return sInstance;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0027, code lost:
    
        if (r3 != false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService getServiceApi() {
        /*
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r0 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L14
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r0 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper
            int r0 = r0.mServiceStatus
            if (r0 != 0) goto Le
            r0 = r2
            goto Lf
        Le:
            r0 = r1
        Lf:
            if (r0 == 0) goto L12
            goto L14
        L12:
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            if (r0 == 0) goto L3b
            java.lang.Class<com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider> r0 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.class
            monitor-enter(r0)
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r3 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper     // Catch: java.lang.Throwable -> L39
            if (r3 == 0) goto L29
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r3 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper     // Catch: java.lang.Throwable -> L39
            int r3 = r3.mServiceStatus     // Catch: java.lang.Throwable -> L39
            if (r3 != 0) goto L26
            r3 = r2
            goto L27
        L26:
            r3 = r1
        L27:
            if (r3 == 0) goto L2a
        L29:
            r1 = r2
        L2a:
            if (r1 == 0) goto L35
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r1 = new com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper     // Catch: java.lang.Throwable -> L39
            android.content.Context r2 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.mContext     // Catch: java.lang.Throwable -> L39
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L39
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper = r1     // Catch: java.lang.Throwable -> L39
        L35:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            goto L3b
        L37:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            throw r1
        L39:
            r1 = move-exception
            goto L37
        L3b:
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider$ServiceBindHelper r0 = com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.sServiceBindHelper
            com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService r0 = r0.getServiceApi()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider.getServiceApi():com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService");
    }

    public static boolean isServiceRunningCheck(Context context) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getApplicationContext().getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if ("com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerProcessService".equals(it.next().service.getClassName())) {
                Log.d("SimCardManagerServiceProvider", "SimCardManagerProcessService already is Running !!! ");
                return true;
            }
        }
        return false;
    }

    public final int GetCurrentVoiceCall() {
        int i = INVALID_VARIABLE;
        try {
            int GetCurrentVoiceCall = ((ISimCardManagerService.Stub.Proxy) getServiceApi()).GetCurrentVoiceCall();
            Log.d("SimCardManagerServiceProvider", "GetCurrentVoiceCall: = " + GetCurrentVoiceCall);
            return GetCurrentVoiceCall;
        } catch (RemoteException unused) {
            Log.e("SimCardManagerServiceProvider", "GetCurrentVoiceCall: exception occurred.");
            return i;
        } catch (NullPointerException unused2) {
            Log.e("SimCardManagerServiceProvider", "GetCurrentVoiceCall: service is not running.");
            try {
                Bundle call = mContext.getContentResolver().call(INTERNAL_URI, "getCurrentVoiceCall", (String) null, new Bundle());
                if (call == null) {
                    Log.d("SimCardManagerServiceProvider", "bundle is null : getCurrentVoiceCall");
                } else {
                    i = call.getInt("result");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            Integer valueOf = Integer.valueOf(i);
            Log.d("SimCardManagerServiceProvider", "GetCurrentVoiceCall: = " + valueOf);
            return valueOf.intValue();
        }
    }

    public final boolean isDefaultDataSlotAllowed(int i) {
        boolean z = false;
        try {
            boolean isDefaultDataSlotAllowed = ((ISimCardManagerService.Stub.Proxy) getServiceApi()).isDefaultDataSlotAllowed(i);
            Log.d("SimCardManagerServiceProvider", "isDefaultDataSlotAllowed: = " + isDefaultDataSlotAllowed);
            return isDefaultDataSlotAllowed;
        } catch (RemoteException unused) {
            Log.e("SimCardManagerServiceProvider", "isDefaultDataSlotAllowed: exception occurred.");
            return false;
        } catch (NullPointerException unused2) {
            Log.e("SimCardManagerServiceProvider", "isDefaultDataSlotAllowed: service is not running.");
            Context context = mContext;
            try {
                Bundle bundle = new Bundle();
                if (i != INVALID_VARIABLE) {
                    bundle.putInt("selectItem", i);
                }
                Bundle call = context.getContentResolver().call(INTERNAL_URI, "isDefaultDataSlotAllowed", (String) null, bundle);
                if (call == null) {
                    Log.d("SimCardManagerServiceProvider", "bundle is null : isDefaultDataSlotAllowed");
                } else {
                    z = call.getBoolean("result");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isDefaultDataSlotAllowed: = ", z, "SimCardManagerServiceProvider");
            return z;
        }
    }
}
