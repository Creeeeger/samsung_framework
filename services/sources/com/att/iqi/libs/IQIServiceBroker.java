package com.att.iqi.libs;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.SparseArray;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.server.SystemService;
import com.att.iqi.IIQIBroker;
import com.att.iqi.IIQIService;
import com.att.iqi.IMetricQueryCallback;
import com.att.iqi.IMetricSourcingCallback;
import com.att.iqi.IProfileChangedCallback;
import com.att.iqi.IServiceStateChangeCallback;
import com.att.iqi.lib.Metric;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class IQIServiceBroker extends SystemService implements IIQIServiceBrokerPub {
    private static final String CAN_CHANGE_UNLOCK_KEYCODE_PERMISSION = "com.att.iqi.permission.CAN_CHANGE_UNLOCK_KEYCODE";
    private static final String CHANGE_IQI_STATE_ACTION = "com.att.iqi.action.CHANGE_IQI_STATE";
    private static final String CHANGE_IQI_STATE_PERMISSION = "com.att.iqi.permission.CHANGE_IQI_STATE";
    private static final String IQI_DEBUG_ACTION = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG";
    private static final String IQI_DEBUG_EXTRA = "com.att.iqi.extra.IQI_DEBUG";
    private static final String IQI_SERVICE_FORCE_STOPPED_ACTION = "com.att.iqi.action.SERVICE_FORCE_STOPPED";
    private static final String IQI_STATE_EXTRA = "com.att.iqi.extra.IQI_STATE";
    private static final String IQI_UPLOAD_COMPLETE_ACTION = "com.att.iqi.action.UPLOAD_COMPLETE";
    private static final int MSG_CHECK_VALID = 2;
    static final int MSG_RESUME_PACKAGE = 6;
    private static final int MSG_SIM_INVALID = 3;
    static final int MSG_SUSPEND_PACKAGE = 5;
    private static final int MSG_TIMED_OUT_WAITING_PACKAGE_UPLOAD = 4;
    private static final int MSG_TRY_CONNECTING = 1;
    private static final long PACKAGE_UPLOAD_WAIT_MS = 15000;
    private static final long SERVICE_CONNECTION_WAIT_TIME_MS = 3000;
    private static final String TAG = "IQIServiceBroker";
    private static final String TOGGLE_DEBUG_STATE_PERMISSION = "com.att.iqi.permission.TOGGLE_DEBUG_STATE";
    private static final String VALIDSIG = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773";
    private static IQIServiceBroker sInstance;
    private boolean mApplicationEnabled;
    private final CellBroadcastObserver mCBObserver;
    private ServiceConnection mConnection;
    private final Context mContext;
    private BroadcastReceiver mDebugReceiver;
    private IIQIService mImplementingBinderInterface;
    private boolean mInitialServiceConnect;
    private BroadcastReceiver mKeyCodeReceiver;
    private boolean mLastServiceEnabled;
    private final Handler mMessageDispatcher;
    private final SparseArray mMetricQueryCallbackList;
    private final SparseArray mMetricSourcingCallbackList;
    private boolean mPackageSuspended;
    private final RemoteCallbackList mProfileChangeCallbackList;
    private int mRetryCount;
    private boolean mServicePublished;
    public int mServiceState;
    private final ArraySet mServiceStateChangeList;
    public final IIQIService mServiceStubForFailure;
    public BroadcastReceiver mStateChangeReceiver;
    private final SubscriptionManager.OnSubscriptionsChangedListener mSubListener;
    private BroadcastReceiver mUserUnlockedReceiver;
    private static final String PACKAGE_NAME = "com.att.iqi";
    private static final ComponentName TARGET_IMPLEMENTATION_COMPONENT = new ComponentName(PACKAGE_NAME, "com.att.iqi.service.IQService");
    private static final IIQIServiceBrokerPub sDummyPublicBroker = new IIQIServiceBrokerPub() { // from class: com.att.iqi.libs.IQIServiceBroker.1
        @Override // com.att.iqi.libs.IIQIServiceBrokerPub
        public void postMessage(int i, Bundle bundle) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean maybeIsValidKeyCode(String str) {
        return !TextUtils.isEmpty(str) && str.matches("^[#]+\\*23[\\d\\*#]+#$");
    }

    public IQIServiceBroker(Context context) {
        super(context);
        this.mRetryCount = 0;
        this.mServiceState = 1;
        this.mMetricQueryCallbackList = new SparseArray();
        this.mProfileChangeCallbackList = new RemoteCallbackList();
        this.mMetricSourcingCallbackList = new SparseArray();
        this.mServiceStateChangeList = new ArraySet();
        this.mPackageSuspended = false;
        this.mStateChangeReceiver = new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean booleanExtra = intent.getBooleanExtra(IQIServiceBroker.IQI_STATE_EXTRA, false);
                if (booleanExtra) {
                    IQIServiceBroker iQIServiceBroker = IQIServiceBroker.this;
                    if (iQIServiceBroker.mServiceState == 0) {
                        iQIServiceBroker.mServiceState = 1;
                        PreferenceStore.getInstance().setInteger(PreferenceStore.PREF_SERVICE_STATE, IQIServiceBroker.this.mServiceState);
                        IQIServiceBroker.this.getBrokeredService();
                        IQIServiceBroker.this.registerReceivers(false);
                        return;
                    }
                }
                if (booleanExtra) {
                    return;
                }
                IQIServiceBroker iQIServiceBroker2 = IQIServiceBroker.this;
                if (iQIServiceBroker2.mServiceState == 1) {
                    iQIServiceBroker2.mServiceState = 0;
                    PreferenceStore.getInstance().setInteger(PreferenceStore.PREF_SERVICE_STATE, IQIServiceBroker.this.mServiceState);
                    IQIServiceBroker.this.tryDisconnecting();
                    IQIServiceBroker.this.unregisterReceivers();
                }
            }
        };
        this.mKeyCodeReceiver = new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String stringExtra = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
                if (IQIServiceBroker.this.maybeIsValidKeyCode(stringExtra)) {
                    try {
                        if (IQIServiceBroker.this.getBrokeredService().reportKeyCode(stringExtra.getBytes(StandardCharsets.UTF_8))) {
                            setResultData(null);
                            abortBroadcast();
                        }
                    } catch (RemoteException e) {
                        if (LogUtil.canLog()) {
                            LogUtil.logd("reportKeyCode failed", e);
                        }
                    }
                }
            }
        };
        this.mUserUnlockedReceiver = new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("User unlocked.");
                }
                IQIServiceBroker.this.mMessageDispatcher.sendMessage(IQIServiceBroker.this.mMessageDispatcher.obtainMessage(2));
            }
        };
        this.mDebugReceiver = new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean booleanExtra = intent.getBooleanExtra(IQIServiceBroker.IQI_DEBUG_EXTRA, false);
                if (booleanExtra != LogUtil.canLog()) {
                    PreferenceStore.getInstance().setBoolean(PreferenceStore.PREF_LOGS_ENABLED, booleanExtra);
                    LogUtil.enableLogging(booleanExtra);
                }
            }
        };
        this.mMessageDispatcher = new Handler(WorkerThread.getHandler().getLooper()) { // from class: com.att.iqi.libs.IQIServiceBroker.6
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("Message received by dispatcher: " + message.what);
                }
                switch (message.what) {
                    case 1:
                        if (IQIServiceBroker.this.shouldConnect()) {
                            if (!(message.obj instanceof Bundle)) {
                                message.obj = new Bundle();
                                if (LogUtil.canLog()) {
                                    LogUtil.logw("Trying to connect with empty bundle");
                                }
                            }
                            IQIServiceBroker.this.tryConnecting((Bundle) message.obj);
                            return;
                        }
                        return;
                    case 2:
                        if (IQIServiceBroker.this.checkPkgValidity() && IQIServiceBroker.this.appEnabled()) {
                            IQIServiceBroker.this.mMessageDispatcher.sendMessage(IQIServiceBroker.this.mMessageDispatcher.obtainMessage(1));
                            return;
                        } else {
                            if (LogUtil.canLog()) {
                                LogUtil.loge("Bad or disabled package");
                                return;
                            }
                            return;
                        }
                    case 3:
                        IQIServiceBroker.this.tryDisconnecting();
                        return;
                    case 4:
                        if (LogUtil.canLog()) {
                            LogUtil.logw("Timed out waiting for packages to be uploaded");
                        }
                        IQIServiceBroker.this.disablePackage();
                        return;
                    case 5:
                        IQIServiceBroker.this.suspendPackage();
                        return;
                    case 6:
                        Object obj = message.obj;
                        if (obj instanceof Bundle) {
                            IQIServiceBroker.this.resumePackage((Bundle) obj);
                            return;
                        }
                        if (LogUtil.canLog()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Received a malformed resume package msg with an unknownobject type: ");
                            Object obj2 = message.obj;
                            sb.append(obj2 == null ? "null" : obj2.getClass().getName());
                            LogUtil.loge(sb.toString());
                            return;
                        }
                        return;
                    default:
                        if (LogUtil.canLog()) {
                            LogUtil.loge("Unknown message");
                            return;
                        }
                        return;
                }
            }
        };
        this.mServiceStubForFailure = new IIQIService.Default();
        this.mConnection = new ServiceConnection() { // from class: com.att.iqi.libs.IQIServiceBroker.8
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (LogUtil.canLog()) {
                    LogUtil.logw("Implementation service connected " + componentName.flattenToString() + " binder service " + iBinder.toString());
                }
                synchronized (IQIServiceBroker.this) {
                    IQIServiceBroker iQIServiceBroker = IQIServiceBroker.this;
                    iQIServiceBroker.mImplementingBinderInterface = iQIServiceBroker.getIBinderAsIInterface(iBinder);
                    IQIServiceBroker.this.notifyServiceState(true);
                    IQIServiceBroker.this.notifyAll();
                    try {
                        iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.att.iqi.libs.IQIServiceBroker.8.1
                            @Override // android.os.IBinder.DeathRecipient
                            public void binderDied() {
                                synchronized (IQIServiceBroker.this) {
                                    if (LogUtil.canLog()) {
                                        LogUtil.logw("binderDied");
                                    }
                                    IQIServiceBroker.this.mImplementingBinderInterface = null;
                                }
                            }
                        }, 0);
                    } catch (RemoteException e) {
                        LogUtil.loge("Exception while linking IBinder to death", e);
                    }
                    IQIServiceBroker.this.mRetryCount = 0;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (LogUtil.canLog()) {
                    LogUtil.logw("Implementation service unexpectedly disconnected");
                }
                synchronized (IQIServiceBroker.this) {
                    IQIServiceBroker.this.notifyServiceState(false);
                    IQIServiceBroker.this.mImplementingBinderInterface = null;
                    IQIServiceBroker.this.notifyAll();
                    IQIServiceBroker.this.mRetryCount = 0;
                }
            }
        };
        this.mSubListener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.att.iqi.libs.IQIServiceBroker.10
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                SubscriptionManager subscriptionManager = (SubscriptionManager) IQIServiceBroker.this.mContext.getSystemService(SubscriptionManager.class);
                IQIServiceBroker.this.mMessageDispatcher.sendMessage(IQIServiceBroker.this.mMessageDispatcher.obtainMessage((subscriptionManager == null || !IQIConcierge.updateSubscriptions(subscriptionManager)) ? 3 : 2));
            }
        };
        sInstance = this;
        this.mContext = context;
        PreferenceStore preferenceStore = PreferenceStore.getInstance();
        LogUtil.enableLogging(preferenceStore.getBoolean(PreferenceStore.PREF_LOGS_ENABLED, false));
        this.mServiceState = preferenceStore.getInteger(PreferenceStore.PREF_SERVICE_STATE, 1);
        this.mCBObserver = new CellBroadcastObserver(context, WorkerThread.getHandler());
        registerPackageMonitor();
        registerReceivers(true);
    }

    public static IIQIServiceBrokerPub getPublicInterface() {
        IQIServiceBroker iQIServiceBroker = sInstance;
        return iQIServiceBroker == null ? sDummyPublicBroker : iQIServiceBroker;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("iqi", new BinderService());
        this.mServicePublished = true;
    }

    @Override // com.att.iqi.libs.IIQIServiceBrokerPub
    public void postMessage(int i, Bundle bundle) {
        if (bundle == null) {
            this.mMessageDispatcher.sendEmptyMessage(i);
        } else {
            Handler handler = this.mMessageDispatcher;
            handler.sendMessage(handler.obtainMessage(i, bundle));
        }
    }

    /* loaded from: classes3.dex */
    public class BinderService extends IIQIBroker.Stub {
        public BinderService() {
        }

        public void finalize() {
            if (LogUtil.canLog()) {
                LogUtil.logd("Finalize BinderService");
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public boolean shouldSubmitMetric(Metric.ID id) {
            try {
                return IQIServiceBroker.this.getBrokeredService().shouldSubmitMetric(id);
            } catch (Exception e) {
                if (!LogUtil.canLog()) {
                    return false;
                }
                LogUtil.logd("shouldSubmitMetric failed", e);
                return false;
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void submitMetric(Metric metric) {
            try {
                IQIServiceBroker.this.getBrokeredService().submitMetric(metric);
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("submitMetric failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
            boolean z;
            try {
                synchronized (IQIServiceBroker.this.mMetricQueryCallbackList) {
                    RemoteCallbackList remoteCallbackList = (RemoteCallbackList) IQIServiceBroker.this.mMetricQueryCallbackList.get(id.asInt());
                    if (remoteCallbackList == null) {
                        remoteCallbackList = new RemoteCallbackList();
                        IQIServiceBroker.this.mMetricQueryCallbackList.append(id.asInt(), remoteCallbackList);
                    }
                    int registeredCallbackCount = remoteCallbackList.getRegisteredCallbackCount();
                    remoteCallbackList.register(iMetricQueryCallback);
                    z = true;
                    if (remoteCallbackList.getRegisteredCallbackCount() != registeredCallbackCount + 1) {
                        z = false;
                    }
                }
                if (z) {
                    IQIServiceBroker.this.getBrokeredService().registerMetricQueryCallback(id, iMetricQueryCallback);
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("registerMetricQueryCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
            try {
                IQIServiceBroker.this.getBrokeredService().unregisterMetricQueryCallback(id, iMetricQueryCallback);
                synchronized (IQIServiceBroker.this.mMetricQueryCallbackList) {
                    RemoteCallbackList remoteCallbackList = (RemoteCallbackList) IQIServiceBroker.this.mMetricQueryCallbackList.get(id.asInt());
                    if (remoteCallbackList != null) {
                        remoteCallbackList.unregister(iMetricQueryCallback);
                    }
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("unregisterMetricQueryCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
            boolean z;
            try {
                synchronized (IQIServiceBroker.this.mMetricSourcingCallbackList) {
                    RemoteCallbackList remoteCallbackList = (RemoteCallbackList) IQIServiceBroker.this.mMetricSourcingCallbackList.get(id.asInt());
                    if (remoteCallbackList == null) {
                        remoteCallbackList = new RemoteCallbackList();
                        IQIServiceBroker.this.mMetricSourcingCallbackList.append(id.asInt(), remoteCallbackList);
                    }
                    int registeredCallbackCount = remoteCallbackList.getRegisteredCallbackCount();
                    remoteCallbackList.register(iMetricSourcingCallback);
                    z = true;
                    if (remoteCallbackList.getRegisteredCallbackCount() != registeredCallbackCount + 1) {
                        z = false;
                    }
                }
                if (z) {
                    IQIServiceBroker.this.getBrokeredService().registerMetricSourcingCallback(id, iMetricSourcingCallback);
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("registerMetricSourcingCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
            try {
                IQIServiceBroker.this.getBrokeredService().unregisterMetricSourcingCallback(id, iMetricSourcingCallback);
                synchronized (IQIServiceBroker.this.mMetricSourcingCallbackList) {
                    RemoteCallbackList remoteCallbackList = (RemoteCallbackList) IQIServiceBroker.this.mMetricSourcingCallbackList.get(id.asInt());
                    if (remoteCallbackList != null) {
                        remoteCallbackList.unregister(iMetricSourcingCallback);
                    }
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("unregisterMetricSourcingCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
            boolean z;
            try {
                synchronized (IQIServiceBroker.this.mProfileChangeCallbackList) {
                    int registeredCallbackCount = IQIServiceBroker.this.mProfileChangeCallbackList.getRegisteredCallbackCount();
                    IQIServiceBroker.this.mProfileChangeCallbackList.register(iProfileChangedCallback);
                    z = true;
                    if (IQIServiceBroker.this.mProfileChangeCallbackList.getRegisteredCallbackCount() != registeredCallbackCount + 1) {
                        z = false;
                    }
                }
                if (z) {
                    IQIServiceBroker.this.getBrokeredService().registerProfileChangedCallback(iProfileChangedCallback);
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("registerProfileChangedCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
            try {
                IQIServiceBroker.this.getBrokeredService().unregisterProfileChangedCallback(iProfileChangedCallback);
                synchronized (IQIServiceBroker.this.mProfileChangeCallbackList) {
                    IQIServiceBroker.this.mProfileChangeCallbackList.unregister(iProfileChangedCallback);
                }
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("unregisterProfileChangedCallback failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public long getTimestamp() {
            try {
                return IQIServiceBroker.this.getBrokeredService().getTimestamp();
            } catch (Exception e) {
                if (!LogUtil.canLog()) {
                    return -1L;
                }
                LogUtil.logd("getTimestamp failed", e);
                return -1L;
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
            boolean z;
            synchronized (IQIServiceBroker.this.mServiceStateChangeList) {
                try {
                    z = IQIServiceBroker.this.mServiceStateChangeList.add(iServiceStateChangeCallback);
                } catch (Exception e) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("registerServiceChangedCallback failed", e);
                    }
                    z = false;
                }
            }
            if (z) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("Call service changed callback now");
                }
                try {
                    iServiceStateChangeCallback.onServiceChange(IQIServiceBroker.this.mImplementingBinderInterface != null);
                } catch (Exception e2) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("notifyServiceState failed", e2);
                    }
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
            synchronized (IQIServiceBroker.this.mServiceStateChangeList) {
                IQIServiceBroker.this.mServiceStateChangeList.remove(iServiceStateChangeCallback);
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void forceStopService() {
            try {
                IQIServiceBroker.this.getBrokeredService().forceStopService();
                IQIServiceBroker.this.mMessageDispatcher.sendMessageDelayed(IQIServiceBroker.this.mMessageDispatcher.obtainMessage(1), 4000L);
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("forceStopService failed", e);
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public void disableService() {
            try {
                final Message obtainMessage = IQIServiceBroker.this.mMessageDispatcher.obtainMessage(4);
                IQIServiceBroker.this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.BinderService.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        IQIServiceBroker.this.mMessageDispatcher.removeMessages(obtainMessage.what);
                        IQIServiceBroker.this.disablePackage();
                        context.unregisterReceiver(this);
                    }
                }, new IntentFilter(IQIServiceBroker.IQI_UPLOAD_COMPLETE_ACTION));
                IQIServiceBroker.this.mMessageDispatcher.sendMessageDelayed(obtainMessage, IQIServiceBroker.PACKAGE_UPLOAD_WAIT_MS);
                IQIServiceBroker.this.getBrokeredService().disableService();
            } catch (Exception e) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("disableService failed", e);
                }
            }
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (DumpUtils.checkDumpAndUsageStatsPermission(IQIServiceBroker.this.getContext(), IQIServiceBroker.TAG, printWriter) && LogUtil.canLog() && !ArrayUtils.isEmpty(strArr)) {
                for (String str : strArr) {
                    if ("-h".equals(str)) {
                        IQIServiceBroker.dumpHelp(printWriter);
                    } else if ("--concierge".equals(str)) {
                        IQIServiceBroker.printConciergeVersion(printWriter);
                    } else if ("-v".equals(str)) {
                        IQIServiceBroker.printArtifactsVersion(printWriter);
                    } else {
                        if (str.length() <= 0 || str.charAt(0) != '-') {
                            return;
                        }
                        printWriter.println("Unknown option: " + str);
                        return;
                    }
                }
            }
        }

        @Override // com.att.iqi.IIQIBroker
        public boolean setUnlockCode(long j) {
            if (IQIServiceBroker.this.mContext.checkCallingOrSelfPermission(IQIServiceBroker.CAN_CHANGE_UNLOCK_KEYCODE_PERMISSION) != 0) {
                throw new RemoteException("Calling process not allowed to change unlock code");
            }
            try {
                return IQIServiceBroker.this.getBrokeredService().setUnlockCode(j);
            } catch (RemoteException e) {
                if (!LogUtil.canLog()) {
                    return false;
                }
                LogUtil.logd("setUnlockCode failed", e);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disablePackage() {
        this.mContext.getPackageManager().setApplicationEnabledSetting(PACKAGE_NAME, 3, 0);
        if (LogUtil.canLog()) {
            LogUtil.logd("package has been disabled");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void suspendPackage() {
        try {
            this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.att.iqi.libs.IQIServiceBroker.7
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("app has been force stopped, actually suspending now");
                    }
                    IQIServiceBroker.this.tryDisconnecting();
                    IQIServiceBroker.this.mPackageSuspended = true;
                    context.unregisterReceiver(this);
                }
            }, new IntentFilter(IQI_SERVICE_FORCE_STOPPED_ACTION));
            if (LogUtil.canLog()) {
                LogUtil.logd("Attempting to force stop the app to suspend the service...");
            }
            getBrokeredService().forceStopService();
        } catch (RemoteException e) {
            if (LogUtil.canLog()) {
                LogUtil.loge("Failed to force stop service", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumePackage(Bundle bundle) {
        if (LogUtil.canLog()) {
            LogUtil.logd("Resuming service broker...");
        }
        this.mPackageSuspended = false;
        Handler handler = this.mMessageDispatcher;
        handler.sendMessage(handler.obtainMessage(1, bundle));
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int i) {
        super.onBootPhase(i);
        if (i == 600) {
            if (LogUtil.canLog()) {
                LogUtil.logd("Third party apps ready");
            }
            Handler handler = this.mMessageDispatcher;
            handler.sendMessage(handler.obtainMessage(2));
            IQIConcierge.init(this.mContext);
            SubscriptionManager subscriptionManager = (SubscriptionManager) this.mContext.getSystemService(SubscriptionManager.class);
            if (subscriptionManager != null) {
                subscriptionManager.addOnSubscriptionsChangedListener(this.mSubListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyServiceState(boolean z) {
        if (LogUtil.canLog()) {
            LogUtil.logd("notifyServiceState = " + z);
        }
        if (z != this.mLastServiceEnabled) {
            if (z && this.mInitialServiceConnect) {
                restoreCallbacks();
            }
            if (z) {
                this.mInitialServiceConnect = true;
            }
            this.mLastServiceEnabled = z;
        }
        synchronized (this.mServiceStateChangeList) {
            Iterator it = this.mServiceStateChangeList.iterator();
            while (it.hasNext()) {
                try {
                    ((IServiceStateChangeCallback) it.next()).onServiceChange(z);
                } catch (Exception e) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("notifyServiceState failed", e);
                    }
                }
            }
        }
    }

    public IIQIService getBrokeredService() {
        synchronized (this) {
            IIQIService iIQIService = this.mImplementingBinderInterface;
            if (iIQIService != null) {
                return iIQIService;
            }
            if (!shouldConnect()) {
                return this.mServiceStubForFailure;
            }
            Handler handler = this.mMessageDispatcher;
            handler.sendMessage(handler.obtainMessage(2));
            long elapsedRealtime = SystemClock.elapsedRealtime() + 3000;
            for (long j = 3000; j > 0; j = elapsedRealtime - SystemClock.elapsedRealtime()) {
                try {
                    wait(j);
                } catch (InterruptedException e) {
                    if (LogUtil.canLog()) {
                        LogUtil.logw("Connection wait interrupted", e);
                    }
                }
                IIQIService iIQIService2 = this.mImplementingBinderInterface;
                if (iIQIService2 != null) {
                    return iIQIService2;
                }
            }
            if (LogUtil.canLog()) {
                LogUtil.logw("Timed out waiting for service connection, returning stub");
            }
            return this.mServiceStubForFailure;
        }
    }

    private ComponentName getServiceComponent() {
        return TARGET_IMPLEMENTATION_COMPONENT;
    }

    public boolean checkPkgValidity() {
        SigningInfo signingInfo;
        String packageName = getServiceComponent().getPackageName();
        synchronized (this) {
            try {
                try {
                    PackageManager packageManager = this.mContext.getPackageManager();
                    if (packageManager != null && (signingInfo = packageManager.getPackageInfo(packageName, 134217728).signingInfo) != null) {
                        Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                        int length = signingCertificateHistory.length;
                        int i = 0;
                        boolean z = false;
                        while (i < length) {
                            if (signingCertificateHistory[i].toCharsString().equals(VALIDSIG)) {
                                if (LogUtil.canLog()) {
                                    LogUtil.logd("Valid signature");
                                }
                                i++;
                                z = true;
                            } else {
                                if (LogUtil.canLog()) {
                                    LogUtil.loge("Bad signature");
                                }
                                return false;
                            }
                        }
                        return z;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    if (LogUtil.canLog()) {
                        LogUtil.loge("cannot find package information for " + packageName + ": " + e.toString());
                    }
                    checkRetryAttemptsLocked(2, "Retry check package");
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean appEnabled() {
        ApplicationInfo applicationInfo;
        String packageName = getServiceComponent().getPackageName();
        synchronized (this) {
            if (this.mPackageSuspended) {
                return false;
            }
            try {
                PackageManager packageManager = this.mContext.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(packageName, 0)) != null) {
                    this.mApplicationEnabled = applicationInfo.enabled;
                    if (LogUtil.canLog()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Application ");
                        sb.append(this.mApplicationEnabled ? "enabled" : "disabled");
                        LogUtil.logd(sb.toString());
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                this.mApplicationEnabled = false;
                if (LogUtil.canLog()) {
                    LogUtil.loge("cannot find application information for " + packageName + ": " + e.toString());
                }
            }
            return this.mApplicationEnabled;
        }
    }

    public boolean shouldConnect() {
        boolean z;
        synchronized (this) {
            z = true;
            if (this.mServiceState != 1 || !this.mServicePublished || !this.mApplicationEnabled || !IQIConcierge.isServiceBindingAllowed()) {
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryConnecting(Bundle bundle) {
        if (LogUtil.canLog()) {
            LogUtil.logw("Connecting to implementation");
        }
        synchronized (this) {
            if (this.mImplementingBinderInterface != null) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("Already connected");
                }
                return;
            }
            Intent intent = new Intent();
            ComponentName serviceComponent = getServiceComponent();
            if (serviceComponent == null) {
                if (LogUtil.canLog()) {
                    LogUtil.loge("No implementation service found");
                }
                return;
            }
            intent.setComponent(serviceComponent);
            intent.putExtras(bundle);
            IQIConcierge.loadBridgeLibrary(this.mContext, serviceComponent.getPackageName());
            try {
                if (!this.mContext.bindServiceAsUser(intent, this.mConnection, 1, UserHandle.CURRENT)) {
                    if (LogUtil.canLog()) {
                        LogUtil.loge("Failed to bind to implementation " + serviceComponent);
                    }
                    checkRetryAttemptsLocked(1, "Retry reconnecting");
                }
            } catch (SecurityException e) {
                if (LogUtil.canLog()) {
                    LogUtil.loge("Forbidden to bind to implementation " + serviceComponent, e);
                }
            }
        }
    }

    public final void tryDisconnecting() {
        if (LogUtil.canLog()) {
            LogUtil.logw("Disconnecting from implementation");
        }
        synchronized (this) {
            if (this.mImplementingBinderInterface == null) {
                if (LogUtil.canLog()) {
                    LogUtil.logd("Already disconnected");
                }
            } else {
                this.mContext.unbindService(this.mConnection);
                notifyServiceState(false);
                this.mImplementingBinderInterface = null;
            }
        }
    }

    private void restoreCallbacks() {
        try {
            synchronized (this.mMetricQueryCallbackList) {
                int size = this.mMetricQueryCallbackList.size();
                for (int i = 0; i < size; i++) {
                    int beginBroadcast = ((RemoteCallbackList) this.mMetricQueryCallbackList.valueAt(i)).beginBroadcast();
                    for (int i2 = 0; i2 < beginBroadcast; i2++) {
                        getBrokeredService().registerMetricQueryCallback(new Metric.ID(this.mMetricQueryCallbackList.keyAt(i)), (IMetricQueryCallback) ((RemoteCallbackList) this.mMetricQueryCallbackList.valueAt(i)).getBroadcastItem(i2));
                    }
                    ((RemoteCallbackList) this.mMetricQueryCallbackList.valueAt(i)).finishBroadcast();
                }
            }
            synchronized (this.mProfileChangeCallbackList) {
                int beginBroadcast2 = this.mProfileChangeCallbackList.beginBroadcast();
                for (int i3 = 0; i3 < beginBroadcast2; i3++) {
                    getBrokeredService().registerProfileChangedCallback((IProfileChangedCallback) this.mProfileChangeCallbackList.getBroadcastItem(i3));
                }
                this.mProfileChangeCallbackList.finishBroadcast();
            }
            synchronized (this.mMetricSourcingCallbackList) {
                int size2 = this.mMetricSourcingCallbackList.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    int beginBroadcast3 = ((RemoteCallbackList) this.mMetricSourcingCallbackList.valueAt(i4)).beginBroadcast();
                    for (int i5 = 0; i5 < beginBroadcast3; i5++) {
                        getBrokeredService().registerMetricSourcingCallback(new Metric.ID(this.mMetricSourcingCallbackList.keyAt(i4)), (IMetricSourcingCallback) ((RemoteCallbackList) this.mMetricSourcingCallbackList.valueAt(i4)).getBroadcastItem(i5));
                    }
                    ((RemoteCallbackList) this.mMetricSourcingCallbackList.valueAt(i4)).finishBroadcast();
                }
            }
        } catch (Exception e) {
            if (LogUtil.canLog()) {
                LogUtil.logd("Remote exception in restoreCallbacks", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IIQIService getIBinderAsIInterface(IBinder iBinder) {
        return IIQIService.Stub.asInterface(iBinder);
    }

    private void registerPackageMonitor() {
        new PackageMonitor() { // from class: com.att.iqi.libs.IQIServiceBroker.9
            public void onPackageModified(String str) {
                if (TextUtils.equals(str, IQIServiceBroker.TARGET_IMPLEMENTATION_COMPONENT.getPackageName()) && IQIServiceBroker.this.appEnabled()) {
                    if (LogUtil.canLog()) {
                        LogUtil.logd("Package modified, try to reconnect...");
                    }
                    IQIServiceBroker.this.mMessageDispatcher.sendMessageDelayed(IQIServiceBroker.this.mMessageDispatcher.obtainMessage(1), 3000L);
                }
            }
        }.register(this.mContext, BackgroundThread.getHandler().getLooper(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerReceivers(boolean z) {
        if (z) {
            this.mContext.registerReceiver(this.mStateChangeReceiver, new IntentFilter(CHANGE_IQI_STATE_ACTION), CHANGE_IQI_STATE_PERMISSION, null);
        }
        this.mContext.registerReceiver(this.mKeyCodeReceiver, new IntentFilter("android.intent.action.NEW_OUTGOING_CALL"));
        this.mContext.registerReceiver(this.mDebugReceiver, new IntentFilter(IQI_DEBUG_ACTION), TOGGLE_DEBUG_STATE_PERMISSION, null);
        this.mContext.registerReceiver(this.mUserUnlockedReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        this.mCBObserver.register();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterReceivers() {
        this.mContext.unregisterReceiver(this.mKeyCodeReceiver);
        this.mContext.unregisterReceiver(this.mDebugReceiver);
        this.mContext.unregisterReceiver(this.mUserUnlockedReceiver);
        this.mCBObserver.unregister();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dumpHelp(PrintWriter printWriter) {
        printWriter.println("IQIServiceBroker dump options:");
        printWriter.println("    -h: print this help");
        printWriter.println("    --concierge: print IQIConcierge version");
        printWriter.println("    -v: print the version of all artifacts");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printConciergeVersion(PrintWriter printWriter) {
        printWriter.println("IQIConcierge version: " + IQIConcierge.getVersion());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printArtifactsVersion(PrintWriter printWriter) {
        printConciergeVersion(printWriter);
    }

    private void checkRetryAttemptsLocked(int i, String str) {
        int i2 = this.mRetryCount;
        if (i2 < 10) {
            this.mRetryCount = i2 + 1;
            if (LogUtil.canLog()) {
                LogUtil.logd(str + ", attempt # " + this.mRetryCount);
            }
            Handler handler = this.mMessageDispatcher;
            handler.sendMessageDelayed(handler.obtainMessage(i), 3000L);
            return;
        }
        if (LogUtil.canLog()) {
            LogUtil.logd("Retried several times already, give up");
        }
    }
}
