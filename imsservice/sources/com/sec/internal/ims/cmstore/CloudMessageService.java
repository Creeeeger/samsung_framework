package com.sec.internal.ims.cmstore;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.settings.ImsSettings;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.ImsFramework;
import com.sec.internal.ims.cmstore.ambs.AMBSClient;
import com.sec.internal.ims.cmstore.ambs.CmsServiceModuleManager;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.CircularQueue;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.mcs.MCSClient;
import com.sec.internal.ims.cmstore.receiver.GcmIntentBroadcastReceiver;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.core.imslogger.ImsDiagnosticMonitorNotificationManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.fcm.interfaces.IFcmHandler;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.ims.gba.GbaServiceModuleProxy;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.settings.GlobalSettingsManager;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.aec.IAECModule;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.INtpTimeController;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRawSipSender;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.IWfcEpdgManager;
import com.sec.internal.interfaces.ims.core.handler.IHandlerFactory;
import com.sec.internal.interfaces.ims.core.iil.IIilManager;
import com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor;
import com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.log.IMSLog;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageService extends Service implements IImsFramework {
    private static final String LOG_TAG = CloudMessageService.class.getSimpleName();
    private static Hashtable<Integer, MessageStoreClient> mClients = new Hashtable<>();
    GbaServiceModule mGbaServiceModule;
    private HandlerThread serviceHandlerThread;
    private int mInitSyncShow = 0;
    private ImsFramework mImsFramework = null;
    private ImsDiagnosticMonitorNotificationManager mImsDiagMonitor = null;
    private Context mContext = null;

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void enableRcsByPhoneId(boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IAECModule getAECModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public List<ServiceModuleBase> getAllServiceModules() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str, String str2) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int[] getCallCount(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcAccountManager getCmcAccountManager() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcConnectivityController getCmcConnectivityController() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IConfigModule getConfigModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ContentValues getConfigValues(String[] strArr, int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IFcmHandler getFcmHandler() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IGeolocationController getGeolocationController() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IHandlerFactory getHandlerFactory() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IIilManager getIilManager(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getNetworkType(int i) {
        return -1;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public INtpTimeController getNtpTimeController() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IPdnController getPdnController() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRawSipSender getRawSipSender() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRcsPolicyManager getRcsPolicyManager() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getRcsProfileType(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ImsRegistration[] getRegistrationInfoByPhoneId(int i) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRegistrationManager getRegistrationManager() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IWfcEpdgManager getWfcEpdgManager() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isCrossSimCallingSupportedByPhoneId(int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isDefaultDmValue(String str, int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isRcsEnabledByPhoneId(int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceAvailable(String str, int i, int i2) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceEnabledByPhoneId(String str, int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void notifyImsReady(boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String registerImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener, boolean z, int i) {
        return "";
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void registerImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void sendDeregister(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean setDefaultDmValue(String str, int i) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setIsimLoaded() {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setRttMode(int i, int i2) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void startAutoConfig(boolean z, Message message) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void suspendRegister(boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void triggerAutoConfigurationForApp(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void unregisterImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    public static MessageStoreClient getClientByID(int i) {
        if (i < 0 || i >= mClients.size()) {
            return mClients.get(0);
        }
        return mClients.get(Integer.valueOf(i));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        int intExtra = intent.getIntExtra("sim_slot", 0);
        Mno simMno = SimUtil.getSimMno(intExtra);
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onBind() simSlot: ");
        sb.append(intExtra);
        sb.append(", mno: ");
        sb.append(simMno);
        sb.append(", action: ");
        sb.append(intent.getAction() != null ? intent.getAction() : "null");
        EventLogHelper.infoLogAndAdd(str, intExtra, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(intExtra);
        sb2.append(",");
        sb2.append(simMno);
        sb2.append(",");
        sb2.append(intent.getAction() != null ? intent.getAction() : "null");
        IMSLog.c(LogClass.MCS_BIND_STATUS, sb2.toString());
        if (Mno.DEFAULT.equals(simMno)) {
            Log.e(str, "do not bind for DEFAULT mno");
            return null;
        }
        if (!mClients.containsKey(Integer.valueOf(intExtra))) {
            if (CmsUtil.isMcsSupported(this.mContext, intExtra)) {
                MCSClient mCSClient = new MCSClient(intExtra, getApplicationContext(), this);
                mCSClient.onCreate(this.mImsFramework, this.mGbaServiceModule);
                mClients.put(Integer.valueOf(intExtra), mCSClient);
            } else {
                if (OmcCode.isKorOpenOnlyOmcCode() || OmcCode.isSKTOmcCode()) {
                    IMSLog.e(str, "MCS not enabled for this KOR model");
                    return null;
                }
                if (Mno.ATT.equals(simMno)) {
                    ATTGlobalVariables.setAmbsPhaseVersion(getAMBSPhaseVersion(intExtra));
                    Log.d(str, "Carrier: " + simMno + " phase:" + ATTGlobalVariables.ambsPhaseVersion);
                }
                AMBSClient aMBSClient = new AMBSClient(intExtra, getApplicationContext(), this, this.mImsFramework);
                aMBSClient.onCreate(this.mImsFramework, this.mGbaServiceModule);
                mClients.put(Integer.valueOf(intExtra), aMBSClient);
            }
        }
        return mClients.get(Integer.valueOf(intExtra)).getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        String str = LOG_TAG;
        Log.d(str, "onCreate()");
        ATTGlobalVariables.setAmbsPhaseVersion(getAMBSPhaseVersion(0));
        this.mContext = getApplicationContext();
        HandlerThread handlerThread = new HandlerThread(str);
        this.serviceHandlerThread = handlerThread;
        handlerThread.start();
        SimManagerFactory.createInstance(this.serviceHandlerThread.getLooper(), getApplicationContext());
        this.mImsFramework = new ImsFramework(this);
        this.mImsDiagMonitor = new ImsDiagnosticMonitorNotificationManager(this.mContext, this.serviceHandlerThread.getLooper());
        enableGba();
        for (int i = 0; i < 2; i++) {
            EventLogHelper.initialise(getApplicationContext(), LOG_TAG + " " + i, 200, i);
        }
        registerGCMIntentReceiver(getApplicationContext());
        ContextExt.sendBroadcastAsUser(this, new Intent(CloudMessageIntent.INTENT_ACTION_CMS_RESTART), ContextExt.ALL);
    }

    private void enableGba() {
        ArrayList arrayList = new ArrayList();
        SimManagerFactory.createInstance(this.serviceHandlerThread.getLooper(), this.mContext);
        arrayList.addAll(SimManagerFactory.getAllSimManagers());
        arrayList.forEach(new CloudMessageService$$ExternalSyntheticLambda0());
        SimManagerFactory.initInstances();
        GbaServiceModuleProxy.getInstance(0).setContext(this.mContext);
        this.mGbaServiceModule = new GbaServiceModule(this.serviceHandlerThread.getLooper(), this.mContext, this.mImsFramework);
        GbaServiceModuleProxy.getInstance(0).setGbaServiceModule(this.mGbaServiceModule);
        Log.i(LOG_TAG, "enableGbaModule done");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i(LOG_TAG, "onStartCommand(): Received start id " + i2 + ": " + intent);
        return 1;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IServiceModuleManager getServiceModuleManager() {
        return CmsServiceModuleManager.getInstance(this.mImsFramework, this.mGbaServiceModule);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IImsDiagMonitor getImsDiagMonitor() {
        return this.mImsDiagMonitor;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getInt(int i, String str, int i2) {
        return CmsUtil.getIntGlobalSettings(this.mContext, i, str, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean getBoolean(int i, String str, boolean z) {
        return CmsUtil.getBooleanGlobalSettings(this.mContext, i, str, z);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getString(int i, String str, String str2) {
        return CmsUtil.getStringGlobalSettings(this.mContext, i, str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String[] getStringArray(int i, String str, String[] strArr) {
        getContext().enforceCallingOrSelfPermission(ISignallingNotifier.PERMISSION, LOG_TAG);
        return GlobalSettingsManager.getInstance(this.mContext, i).getStringArray(str, strArr);
    }

    public int getAMBSPhaseVersion(int i) {
        Cursor query;
        int i2 = 4;
        try {
            query = getApplicationContext().getContentResolver().query(ImsSettings.GLOBAL_CONTENT_URI.buildUpon().fragment("simslot" + i).build(), new String[]{GlobalSettingsConstants.RCS.RCS_PHASE_VERSION}, null, null, null);
        } catch (SQLiteException | IllegalArgumentException e) {
            Log.d(LOG_TAG, "!!!Could not get RCS_PHASE_VERSION from db " + e.toString());
        }
        if (query != null) {
            try {
                if (query.getCount() != 0) {
                    if (query.moveToFirst()) {
                        if (!"RCS_ATT_PHASE2".equals(query.getString(0))) {
                            i2 = 3;
                        }
                    }
                    query.close();
                    Log.d(LOG_TAG, "get RCS_PHASE_VERSION: " + i2);
                    return i2;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return 4;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        List<String> multilineStatusValues;
        printWriter.println("Dump of CloudMessageService");
        List<CircularQueue<String>> list = HttpController.queue_sim;
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            try {
                if (list.get(i).size() != 0) {
                    printWriter.println("Sim " + (i + 1));
                    printWriter.println(list.get(i));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        IMSLog.prepareDump(this.mContext, printWriter);
        for (MessageStoreClient messageStoreClient : mClients.values()) {
            printWriter.println("Client ID " + messageStoreClient.getClientID());
            if (!z && (multilineStatusValues = messageStoreClient.getMultilineStatusValues()) != null && !multilineStatusValues.isEmpty()) {
                Iterator<String> it = multilineStatusValues.iterator();
                while (it.hasNext()) {
                    printWriter.println(it.next());
                }
                z = true;
            }
            EventLogHelper.dump(messageStoreClient.getClientID());
        }
        IMSLog.postDump(printWriter);
    }

    private void registerGCMIntentReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(NSDSNamespaces.NSDSActions.RECEIVED_GCM_EVENT_NOTIFICATION);
        context.registerReceiver(new GcmIntentBroadcastReceiver(mClients), intentFilter);
    }

    protected int getResourceIdByName(String str, String str2) {
        return getApplicationContext().getResources().getIdentifier(str2, str, getApplicationContext().getPackageName());
    }

    public void showInitsyncIndicator(boolean z, int i) {
        String str = LOG_TAG;
        Log.v(str, "showInitsyncIndicator: " + z);
        NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService("notification");
        if (notificationManager == null) {
            Log.e(str, "notifyManager is null");
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel("ambs_channel", "ambs_channel_ni", 2);
        notificationChannel.setLockscreenVisibility(0);
        notificationManager.createNotificationChannel(notificationChannel);
        Notification.Builder builder = new Notification.Builder(getApplicationContext(), "ambs_channel");
        if (z) {
            Log.d(str, "init sync will be displayed");
            builder.setContentTitle("Messages Backup & Sync").setContentText("Messages syncing...").setOngoing(true).setAutoCancel(false);
            int i2 = i + 1;
            if ((this.mInitSyncShow | i2) == 3) {
                Log.d(str, "slot1&2 sync at same time.");
                builder.setSmallIcon(getResourceIdByName("drawable", "stat_notify_ambs_sync_both_sims"));
                this.mInitSyncShow = 3;
            } else {
                Log.d(str, "show indicator for slot " + i2);
                if (i2 == 1) {
                    builder.setSmallIcon(getResourceIdByName("drawable", "stat_notify_ambs_sync_sim1"));
                } else {
                    builder.setSmallIcon(getResourceIdByName("drawable", "stat_notify_ambs_sync_esim"));
                }
                this.mInitSyncShow = i2;
            }
            notificationManager.notify(1, builder.build());
            return;
        }
        int i3 = i + 1;
        if ((this.mInitSyncShow & i3) == 0) {
            Log.d(str, "already cancelled indicator for slot " + i3);
            return;
        }
        notificationManager.cancel(1);
        if (this.mInitSyncShow == 3) {
            builder.setContentTitle("Messages Backup & Sync").setContentText("Messages syncing...").setOngoing(true).setAutoCancel(false);
            if (i3 == 1) {
                builder.setSmallIcon(getResourceIdByName("drawable", "stat_notify_ambs_sync_esim"));
            } else {
                builder.setSmallIcon(getResourceIdByName("drawable", "stat_notify_ambs_sync_sim1"));
            }
            notificationManager.notify(1, builder.build());
        }
        this.mInitSyncShow ^= i3;
    }
}
