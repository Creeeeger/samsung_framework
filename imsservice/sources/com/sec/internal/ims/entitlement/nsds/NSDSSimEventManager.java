package com.sec.internal.ims.entitlement.nsds;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.telephony.SubscriptionInfo;
import android.text.TextUtils;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.entitlement.config.app.nsdsconfig.strategy.MnoNsdsConfigStrategyCreator;
import com.sec.internal.ims.entitlement.nsds.strategy.MnoNsdsStrategyCreator;
import com.sec.internal.ims.entitlement.storagehelper.DeviceIdHelper;
import com.sec.internal.ims.entitlement.storagehelper.MigrationHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.ims.entitlement.util.NSDSConfigHelper;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class NSDSSimEventManager extends Handler {
    private static final int EVENT_SIMMOBILITY_CHANGED = 2;
    private static final int EVENT_SIM_SUBSCRIBE_ID_CHANGED = 1;
    private static final int EVT_DEVICE_READY = 10;
    private static final int EVT_SIM_READY = 0;
    private static final int EVT_SIM_REFRESH = 3;
    private static final String LOG_TAG = "NSDSSimEventManager";
    public static final int NOTIFY_SIM_READY = 100;
    private static NSDSSimEventManager mInstance;
    private static final Object mLock = new Object();
    private static final UriMatcher sUriMatcher;
    protected ContentObserver mContentObserver;
    private final Context mContext;
    protected BroadcastReceiver mDeviceReadyReceiver;
    private List<Messenger> mSimEvtMessengers;
    private boolean mSimEvtRegistered;
    protected List<ISimManager> mSimManagers;
    protected Map<Integer, Boolean> mSimMobilitystatus;
    protected boolean notifySimReadyAlreadyDone;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        ImsConstants.SystemSettings.SettingsItem settingsItem = ImsConstants.SystemSettings.IMS_SIM_MOBILITY;
        uriMatcher.addURI(settingsItem.getAuthority(), settingsItem.getPath(), 2);
    }

    public NSDSSimEventManager(Context context, Looper looper) {
        super(looper);
        this.mSimManagers = new ArrayList();
        this.mSimEvtMessengers = new ArrayList();
        this.mSimEvtRegistered = false;
        this.notifySimReadyAlreadyDone = false;
        this.mSimMobilitystatus = new HashMap();
        this.mDeviceReadyReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.entitlement.nsds.NSDSSimEventManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                IMSLog.i(NSDSSimEventManager.LOG_TAG, "DeviceReadyReceiver: " + intent.getAction());
                if (NSDSSimEventManager.this.isDeviceReady()) {
                    for (ISimManager iSimManager : NSDSSimEventManager.this.mSimManagers) {
                        DeviceIdHelper.makeDeviceId(NSDSSimEventManager.this.mContext, iSimManager.getSimSlotIndex());
                        NSDSSimEventManager.this.onEventSimReady(iSimManager.getSimSlotIndex(), 0);
                    }
                    NSDSSimEventManager nSDSSimEventManager = NSDSSimEventManager.this;
                    nSDSSimEventManager.sendMessage(nSDSSimEventManager.obtainMessage(10));
                }
            }
        };
        this.mContentObserver = new ContentObserver(new Handler()) { // from class: com.sec.internal.ims.entitlement.nsds.NSDSSimEventManager.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                IMSLog.i(NSDSSimEventManager.LOG_TAG, "Uri changed:" + uri);
                int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                if (uri.getFragment() != null && uri.getFragment().contains("simslot")) {
                    activeDataPhoneId = Character.getNumericValue(uri.getFragment().charAt(7));
                    IMSLog.i(NSDSSimEventManager.LOG_TAG, "query : Exist simslot on uri: " + activeDataPhoneId);
                }
                if (NSDSSimEventManager.sUriMatcher.match(uri) == 2) {
                    NSDSSimEventManager.this.onSimMobilityChanged(activeDataPhoneId);
                }
            }
        };
        this.mContext = context;
        initSimManagers();
        registerContentObserver();
        registerDeviceReadyReceiver();
    }

    public static NSDSSimEventManager getInstance() {
        return mInstance;
    }

    public static NSDSSimEventManager createInstance(Looper looper, Context context) {
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new NSDSSimEventManager(context, looper);
            }
        }
        return mInstance;
    }

    private void registerContentObserver() {
        this.mContext.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.IMS_SIM_MOBILITY.getUri(), false, this.mContentObserver);
    }

    public ISimManager getSimManager(String str) {
        for (ISimManager iSimManager : this.mSimManagers) {
            if (str.equals(iSimManager.getImsi())) {
                return iSimManager;
            }
        }
        return null;
    }

    public ISimManager getSimManagerFromSimSlot(int i) {
        for (ISimManager iSimManager : this.mSimManagers) {
            if (iSimManager.getSimSlotIndex() == i) {
                return iSimManager;
            }
        }
        IMSLog.i(LOG_TAG, "ISimManager[" + i + "] is not exist. Return null..");
        return null;
    }

    public void registerSimEventMessenger(Messenger messenger, int i) {
        synchronized (mLock) {
            if (messenger == null) {
                IMSLog.e(LOG_TAG, "registerSimEventMessenger: null messenger");
                return;
            }
            IMSLog.i(LOG_TAG, "registerSimEventMessenger size: " + this.mSimEvtMessengers.size());
            if (!this.mSimEvtMessengers.contains(messenger)) {
                this.mSimEvtMessengers.add(messenger);
            }
            notifyLazySimReady(messenger, i);
        }
    }

    public void unregisterSimEventMessenger(Messenger messenger) {
        synchronized (mLock) {
            if (messenger == null) {
                IMSLog.e(LOG_TAG, "unregisterSimEventMessenger: messenger null");
                return;
            }
            IMSLog.i(LOG_TAG, "unregisterSimEventMessenger: " + this.mSimEvtMessengers.size());
            this.mSimEvtMessengers.remove(messenger);
        }
    }

    private void registerDeviceReadyReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(NSDSNamespaces.NSDSActions.DEVICE_READY_AFTER_BOOTUP);
        IMSLog.i(LOG_TAG, "registerDeviceReadyReceiver");
        this.mContext.registerReceiver(this.mDeviceReadyReceiver, intentFilter);
    }

    private void unregisterDeviceReadyReceiver() {
        try {
            IMSLog.i(LOG_TAG, "unregisterDeviceReadyReceiver");
            this.mContext.unregisterReceiver(this.mDeviceReadyReceiver);
        } catch (IllegalArgumentException e) {
            IMSLog.e(LOG_TAG, "unregisterDeviceReadyReceiver: " + e.getMessage());
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, "handleMessage:" + message.what);
        int i = message.what;
        if (i != 0) {
            if (i == 1) {
                onSimSubscribeIdChanged((SubscriptionInfo) ((AsyncResult) message.obj).result);
                return;
            } else if (i != 3) {
                if (i != 10) {
                    return;
                }
                unregisterDeviceReadyReceiver();
                return;
            }
        }
        AsyncResult asyncResult = (AsyncResult) message.obj;
        DeviceIdHelper.makeDeviceId(this.mContext, ((Integer) asyncResult.result).intValue());
        onEventSimReady(((Integer) asyncResult.result).intValue(), i);
    }

    private void initSimManagers() {
        this.mSimManagers.clear();
        this.mSimManagers.addAll(SimManagerFactory.getAllSimManagers());
        Iterator<ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            this.mSimMobilitystatus.put(Integer.valueOf(it.next().getSimSlotIndex()), Boolean.FALSE);
        }
        if (this.mSimEvtRegistered) {
            return;
        }
        registerForSimEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEventSimReady(int i, int i2) {
        ISimManager simManagerFromSimSlot;
        IMSLog.i(LOG_TAG, i, "onEventSimReady:");
        if (isDeviceReady() && (simManagerFromSimSlot = getSimManagerFromSimSlot(i)) != null) {
            notifySimReady((i < 0 || simManagerFromSimSlot.hasNoSim()) || simManagerFromSimSlot.hasVsim(), i, i2);
        }
    }

    private void registerForSimEvents() {
        for (ISimManager iSimManager : this.mSimManagers) {
            iSimManager.registerForSimReady(this, 0, null);
            iSimManager.registerForSimRefresh(this, 3, null);
            iSimManager.registerForSimRemoved(this, 3, null);
        }
        SimManagerFactory.registerForSubIdChange(this, 1, null);
        this.mSimEvtRegistered = true;
    }

    private void onSimSubscribeIdChanged(SubscriptionInfo subscriptionInfo) {
        IMSLog.i(LOG_TAG, subscriptionInfo.getSimSlotIndex(), "onSimSubscribeIdChanged, subId: " + subscriptionInfo.getSubscriptionId());
        for (ISimManager iSimManager : this.mSimManagers) {
            if (iSimManager.getSimSlotIndex() == subscriptionInfo.getSimSlotIndex()) {
                iSimManager.setSubscriptionInfo(subscriptionInfo);
            }
        }
    }

    private void notifySimReady(boolean z, int i, int i2) {
        IMSLog.i(LOG_TAG, "notifySimReady, isSimAbsent: " + z);
        String deviceId = DeviceIdHelper.getDeviceId(this.mContext, i);
        boolean isSimSwapped = isSimSwapped(i);
        IMSLog.i(LOG_TAG, i, " isSimSwapped:" + isSimSwapped);
        IMSLog.c(LogClass.ES_CHECK_SIMSWAP, i + ",SIMSWAP:" + isSimSwapped);
        if (isSimSwapped) {
            NSDSSharedPrefHelper.clearEntitlementServerUrl(this.mContext, deviceId);
            MnoNsdsStrategyCreator.resetMnoStrategy();
        }
        MnoNsdsConfigStrategyCreator.updateMnoStrategy(this.mContext, i);
        this.notifySimReadyAlreadyDone = i2 == 0;
        notifyMessengerSimReady(getSimManagerFromSimSlot(i));
    }

    private void notifyLazySimReady(Messenger messenger, int i) {
        ISimManager simManagerFromSimSlot = getSimManagerFromSimSlot(i);
        IMSLog.i(LOG_TAG, "notifyLazySimReady : notifySimReadyAlreadyDone " + this.notifySimReadyAlreadyDone);
        if (this.notifySimReadyAlreadyDone && simManagerFromSimSlot != null && simManagerFromSimSlot.isSimAvailable()) {
            try {
                messenger.send(obtainSimReadyMessage(simManagerFromSimSlot));
            } catch (RemoteException e) {
                IMSLog.e(LOG_TAG, "notifyLazySimReady: " + e.getMessage());
                this.mSimEvtMessengers.remove(messenger);
            }
        }
    }

    private boolean isSimSwapped(int i) {
        ISimManager simManagerFromSimSlot = getSimManagerFromSimSlot(i);
        String prefForSlot = NSDSSharedPrefHelper.getPrefForSlot(this.mContext, i, "imsi");
        String imsi = simManagerFromSimSlot == null ? null : simManagerFromSimSlot.getImsi();
        NSDSSharedPrefHelper.savePrefForSlot(this.mContext, i, NSDSNamespaces.NSDSSharedPref.PREF_PREV_IMSI, prefForSlot);
        NSDSSharedPrefHelper.savePrefForSlot(this.mContext, i, "imsi", imsi);
        if (!TextUtils.isEmpty(prefForSlot) && !prefForSlot.equals(imsi)) {
            Context context = this.mContext;
            NSDSSharedPrefHelper.save(context, DeviceIdHelper.getDeviceId(context, i), NSDSNamespaces.NSDSSharedPref.PREF_PEDNING_SIM_SWAP, true);
            return true;
        }
        return isSimSwapPending(i);
    }

    private boolean isSimSwapPending(int i) {
        return NSDSSharedPrefHelper.isSimSwapPending(this.mContext, DeviceIdHelper.getDeviceId(this.mContext, i));
    }

    private void notifyMessengerSimReady(ISimManager iSimManager) {
        synchronized (mLock) {
            for (int size = this.mSimEvtMessengers.size() - 1; size >= 0; size--) {
                try {
                    this.mSimEvtMessengers.get(size).send(obtainSimReadyMessage(iSimManager));
                } catch (RemoteException e) {
                    IMSLog.e(LOG_TAG, "notifyMessengerSimReady: dead messenger, removed" + e.getMessage());
                    this.mSimEvtMessengers.remove(size);
                }
            }
            IMSLog.i(LOG_TAG, "notifyMessengerSimReady: notified");
        }
    }

    private Bundle getSimEvtBundle(ISimManager iSimManager) {
        int simSlotIndex = iSimManager.getSimSlotIndex();
        IMSLog.i(LOG_TAG, "getSimEvtBundle: phoneId " + simSlotIndex);
        boolean z = simSlotIndex < 0 || iSimManager.hasNoSim() || iSimManager.hasVsim();
        Bundle bundle = new Bundle();
        bundle.putInt(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, simSlotIndex);
        bundle.putBoolean(NSDSNamespaces.NSDSExtras.SIM_ABSENT, z);
        bundle.putBoolean(NSDSNamespaces.NSDSExtras.SIM_SWAPPED, isSimSwapPending(simSlotIndex));
        return bundle;
    }

    private Message obtainSimReadyMessage(ISimManager iSimManager) {
        Message message = new Message();
        message.what = 100;
        message.obj = getSimEvtBundle(iSimManager);
        return message;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void startIMSDeviceConfigService(android.content.Context r10, com.sec.internal.interfaces.ims.core.ISimManager r11) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.entitlement.nsds.NSDSSimEventManager.startIMSDeviceConfigService(android.content.Context, com.sec.internal.interfaces.ims.core.ISimManager):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSimMobilityChanged(int i) {
        boolean z;
        ISimManager simManagerFromSimSlot = getSimManagerFromSimSlot(i);
        Iterator<ImsProfile> it = SlotBasedConfig.getInstance(i).getProfiles().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().getSimMobility()) {
                z = true;
                break;
            }
        }
        if (simManagerFromSimSlot == null || z == this.mSimMobilitystatus.get(Integer.valueOf(i)).booleanValue()) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "onSimMobilityChanged to " + z + " : Start again entitlement service");
        this.mSimMobilitystatus.put(Integer.valueOf(i), Boolean.valueOf(z));
        startIMSDeviceConfigService(this.mContext, simManagerFromSimSlot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDeviceReady() {
        if (!NSDSConfigHelper.isUserUnlocked(this.mContext)) {
            IMSLog.i(LOG_TAG, "isDeviceReady() User lock ");
            return false;
        }
        if (MigrationHelper.checkMigrateDB(this.mContext)) {
            return true;
        }
        MigrationHelper.migrateDBToCe(this.mContext);
        return true;
    }
}
