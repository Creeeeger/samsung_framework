package com.sec.internal.ims.cmstore.mcs;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sec.ims.ICentralMsgStoreService;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.ims.cmstore.CloudMessageProvider;
import com.sec.internal.ims.cmstore.CloudMessageService;
import com.sec.internal.ims.cmstore.JanskyIntentTranslation;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.NetAPIWorkingStatusControllerMcs;
import com.sec.internal.ims.cmstore.adapters.McsRetryMapAdapter;
import com.sec.internal.ims.cmstore.adapters.RetryMapAdapter;
import com.sec.internal.ims.cmstore.adapters.RetryStackAdapter;
import com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.mcs.contactsync.McsContactSync;
import com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.AppRequestHandler;
import com.sec.internal.ims.cmstore.strategy.CloudMessageStrategyManager;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MCSClient extends Handler implements MessageStoreClient, IBufferDBEventListener, IUIEventCallback {
    private HandlerThread mBufferDBHandlingThread;
    private CloudMessagePreferenceManager mCloudMessagePreferenceManager;
    private final CloudMessageService mCloudMessageService;
    private CloudMessageStrategyManager mCloudMessageStrategyManager;
    private Context mContext;
    private CmsHttpController mHttpController;
    private JanskyIntentTranslation mJanskyTranslation;
    private McsContactSync mMcsContactSync;
    private McsFcmPushNotifier mMcsFcmPushNotifier;
    private HandlerThread mNetAPIHandlingThread;
    private int mPhoneId;
    private HandlerThread mProvisionHandlingThread;
    private WorkflowMcs mProvisionWorkflow;
    private ISimManager mSimManager;
    private String LOG_TAG = MCSClient.class.getSimpleName();
    private NetAPIWorkingStatusControllerMcs mNetAPIWorkingController = null;
    private CloudMessageBufferSchedulingHandler mCloudMessageScheduler = null;
    private AppRequestHandler mAppRequestHandler = null;
    private ConnectivityManager.NetworkCallback mDefaultNetworkCallback = null;
    protected final RemoteCallbackList<ICentralMsgStoreServiceListener> mMcsProvisioningListener = new RemoteCallbackList<>();
    protected final Object mLock = new Object();
    public boolean mIsProvisioned = false;
    private ArrayList<IMcsFcmPushNotificationListener> mMcsFcmPushNotificationListener = new ArrayList<>();
    private McsRetryMapAdapter mRetryMapAdapter = null;
    ICentralMsgStoreService.Stub mBinder = new ICentralMsgStoreService.Stub() { // from class: com.sec.internal.ims.cmstore.mcs.MCSClient.1
        public void deleteOldLegacyMessage(String str, String str2) throws RemoteException {
        }

        public void deleteParticipant(String str, String str2) throws RemoteException {
        }

        public void deleteSession(String str, String str2) throws RemoteException {
        }

        public void disableAutoSync(String str, String str2) throws RemoteException {
        }

        public void enableAutoSync(String str, String str2) throws RemoteException {
        }

        public int getRestartScreenName(String str) throws RemoteException {
            return 0;
        }

        public void manualSync(String str, String str2) throws RemoteException {
        }

        public void notifyCloudMessageUpdate(String str, String str2, String str3) throws RemoteException {
        }

        public void notifyUIScreen(String str, int i, String str2, int i2) throws RemoteException {
        }

        public void onBufferDBReadResultBatch(String str, String str2) throws RemoteException {
        }

        public boolean onUIButtonProceed(String str, int i, String str2) throws RemoteException {
            return false;
        }

        public void onUserEnterApp(String str) throws RemoteException {
        }

        public void onUserLeaveApp(String str) throws RemoteException {
        }

        public void registerCallback(String str, ICentralMsgStoreService iCentralMsgStoreService) throws RemoteException {
        }

        public void restartService(String str) throws RemoteException {
        }

        public void resumeSync(String str) throws RemoteException {
        }

        public void startDeltaSync(String str, String str2) throws RemoteException {
        }

        public void startFullSync(String str, String str2) throws RemoteException {
        }

        public void stopSync(String str, String str2) throws RemoteException {
        }

        public void wipeOutMessage(String str, String str2) throws RemoteException {
        }

        public void receivedMessage(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "receivedMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.receivedMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void sentMessage(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "sentMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.sentMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void readMessage(String str, String str2) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "readMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.readMessageJson(str, str2);
            } else {
                logInvalidAppType();
            }
        }

        public void unReadMessage(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "unReadMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.unReadMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void cancelMessage(String str, String str2) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "cancelMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.cancelMessageJson(str, str2);
            } else {
                logInvalidAppType();
            }
        }

        public void deleteMessage(String str, String str2) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "deleteMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.deleteMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void uploadMessage(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "uploadMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.uploadMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void downloadMessage(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "downloadMessage " + str + ": " + str2);
            if (isValidAppType(str, true)) {
                MCSClient.this.mCloudMessageScheduler.downloadMessageJson(str2);
            } else {
                logInvalidAppType();
            }
        }

        public void requestMessageProcess(String str, String str2, int i) {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "requestMessageProcess " + str + " function: " + i + ": " + str2);
            if (!MCSClient.this.mNetAPIWorkingController.isCmsProfileActive()) {
                logInvalidAppType();
                return;
            }
            if (i == 0) {
                MCSClient.this.mCloudMessageScheduler.unStarredMessageList(str2);
                return;
            }
            if (i == 1) {
                MCSClient.this.mCloudMessageScheduler.starredMessageList(str2);
            } else if (i == 2) {
                MCSClient.this.mCloudMessageScheduler.acceptedGroupChatList(str2);
            } else {
                if (i != 3) {
                    return;
                }
                MCSClient.this.mCloudMessageScheduler.spamMessageList(str2);
            }
        }

        public void requestOperation(int i, int i2, String str, String str2) throws RemoteException {
            String str3 = MCSClient.this.getCloudMessageStrategyManager().getStrategy().getNmsHost() + str;
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "requestOperation " + i2 + " url: " + str3 + ": " + str2);
            if (MCSClient.this.mNetAPIWorkingController.isCmsProfileActive()) {
                MCSClient.this.mAppRequestHandler.processAppRequest(str2, str3, i2);
            } else {
                IMSLog.e(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "Cms Profile is inactive");
            }
        }

        private boolean isValidAppType(String str, boolean z) {
            boolean cmsProfileEnabled;
            if (z) {
                cmsProfileEnabled = MCSClient.this.mNetAPIWorkingController.isCmsProfileActive();
            } else {
                cmsProfileEnabled = MCSClient.this.mNetAPIWorkingController.getCmsProfileEnabled();
            }
            if (cmsProfileEnabled) {
                return CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str) || CloudMessageProviderContract.ApplicationTypes.RCSDATA.equalsIgnoreCase(str) || "VVMDATA".equalsIgnoreCase(str);
            }
            return false;
        }

        private void logInvalidAppType() {
            IMSLog.e(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "invalid apptype ");
        }

        public void onBufferDBReadResult(String str, String str2, String str3, String str4, int i, boolean z) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onBufferDBReadResult: " + str + " msgType: " + str2 + " bufferRowID: " + str3 + " appMessageId: " + str4 + " syncAction: " + i + " isSuccess: " + z);
            if (isValidAppType(str, true)) {
                if (MCSClient.this.getCloudMessageStrategyManager().getStrategy().getIsInitSyncIndicatorRequired() && Integer.valueOf(str3).intValue() < 0) {
                    IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "rowID < 0");
                    MCSClient.this.mNetAPIWorkingController.hideIndicator();
                    return;
                } else {
                    MCSClient.this.mCloudMessageScheduler.onBufferDBReadResult(str2, str3, str4, i, z);
                    return;
                }
            }
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onBufferDBReadResult ignore");
        }

        public void createSession(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "createSession " + str + " chatId: " + str2);
            MCSClient.this.mCloudMessageScheduler.createSession(str2);
        }

        public void createParticipant(String str, String str2) throws RemoteException {
            IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "createParticipant " + str + " chatId: " + str2);
            MCSClient.this.mCloudMessageScheduler.createParticipant(str2);
        }

        public void onRCSDBReady(String str) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onRCSDBReady");
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.CMS_PROFILE_EVENT);
                String string2 = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.SIM_STATUS);
                IMSLog.d(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "eventType = " + string + ", simStatus = " + string2);
                if (CloudMessageProviderContract.SimStatusValue.SIM_REMOVED.equals(string2)) {
                    EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "SIM removed");
                    IMSLog.c(LogClass.MCS_PV_SIM_EVENT, MCSClient.this.mPhoneId + ",PV:SIM RM");
                    MCSClient.this.mNetAPIWorkingController.setCmsProfileEnabled(false);
                    MCSClient.this.setProvisionStatus(false);
                    MCSClient.this.mProvisionWorkflow.clearWorkflow();
                    return;
                }
                if (CmsUtil.isSimChanged(MCSClient.this.msc)) {
                    EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "SIM changed");
                    IMSLog.c(LogClass.MCS_PV_SIM_EVENT, MCSClient.this.mPhoneId + ",PV:SIM CH");
                    String simImsi = MCSClient.this.msc.getPrerenceManager().getSimImsi();
                    if (!TextUtils.isEmpty(simImsi)) {
                        MCSClient.this.mNetAPIWorkingController.clearData(simImsi);
                    } else {
                        MCSClient.this.mNetAPIWorkingController.clearData();
                    }
                    MCSClient.this.mProvisionWorkflow.clearData();
                }
                if (CloudMessageProviderContract.CmsEventTypeValue.CMS_PROFILE_ENABLE.equals(string)) {
                    EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "CMS profile enabled");
                    IMSLog.c(LogClass.MCS_PV_SIM_EVENT, MCSClient.this.mPhoneId + ",PV:CMS EN");
                    MCSClient.this.mNetAPIWorkingController.setCmsProfileEnabled(true);
                    MCSClient.this.startProvisioning();
                    MCSClient.this.mCloudMessageScheduler.onRCSDbReady();
                }
            } catch (JSONException unused) {
                IMSLog.e(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "Json parsing exception");
            }
        }

        public void onFTUriResponse(String str, String str2) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onFtUriResponse " + str + " " + str2);
            if (isValidAppType(str, false)) {
                MCSClient.this.mCloudMessageScheduler.onFtUriResponseJson(str, str2);
            } else {
                logInvalidAppType();
            }
        }

        public void sendTryRegisterCms(int i, String str) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            if (DmConfigHelper.getImsUserSetting(MCSClient.this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), MCSClient.this.mPhoneId) != 1 || !CmsUtil.isMcsSupported(MCSClient.this.mContext, MCSClient.this.mPhoneId)) {
                EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "Registration is not allowed in non RCS user");
                MCSClient.this.mProvisionWorkflow.notifyMcsProvisionListener(1, 200, 2, null);
                return;
            }
            EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "sendTryRegisterCms consent_context " + str);
            IMSLog.c(LogClass.MCS_PV_INIT_REGISTRATION, MCSClient.this.mPhoneId + ",PV:TRY REGI");
            MCSClient mCSClient = MCSClient.this;
            mCSClient.sendMessage(mCSClient.obtainMessage(1, str));
        }

        public void sendTryDeregisterCms(int i) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "sendTryDeregisterCms");
            IMSLog.c(LogClass.MCS_PV_DEREGISTRATION, MCSClient.this.mPhoneId + ",PV:TRY DEREGI");
            MCSClient.this.sendEmptyMessage(7);
        }

        public void manageSd(int i, int i2, String str) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "manageSd type : " + i2);
            MCSClient mCSClient = MCSClient.this;
            mCSClient.sendMessage(mCSClient.obtainMessage(2, i2, 0, str));
        }

        public void getSd(int i, boolean z, String str) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "getSd getAll : " + z);
            Bundle bundle = new Bundle();
            bundle.putBoolean(McsConstants.BundleData.GET_ALL, z);
            bundle.putString(McsConstants.BundleData.INFO, str);
            MCSClient mCSClient = MCSClient.this;
            mCSClient.sendMessage(mCSClient.obtainMessage(3, bundle));
        }

        public void getAccount(int i) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "getAccount");
            MCSClient mCSClient = MCSClient.this;
            mCSClient.sendMessage(mCSClient.obtainMessage(6));
        }

        public void updateAccountInfo(int i, String str) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "phoneid is not matched. ignore");
                return;
            }
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "updateAccountInfo");
            MCSClient mCSClient = MCSClient.this;
            mCSClient.sendMessage(mCSClient.obtainMessage(5, str));
        }

        public void startContactSyncActivity(int i, boolean z) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, i, "startContactSyncActivity: initialSync: " + z);
            if (i != MCSClient.this.mPhoneId) {
                IMSLog.i(MCSClient.this.LOG_TAG, i, "phoneId is not matched. ignore");
            } else if (z) {
                MCSClient.this.mMcsContactSync.sendMessage(MCSClient.this.mMcsContactSync.obtainMessage(1, Boolean.TRUE));
            } else {
                MCSClient.this.mMcsContactSync.sendMessage(MCSClient.this.mMcsContactSync.obtainMessage(2, Boolean.TRUE));
            }
        }

        public void onDefaultSmsPackageChanged() throws RemoteException {
            MCSClient.this.mProvisionWorkflow.onDefaultSmsPackageChanged();
            if (!CmsUtil.isDefaultMessageAppInUse(MCSClient.this.mContext)) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "msg app is not Samsung Messages");
                MCSClient.this.mMcsContactSync.sendEmptyMessage(8);
                MCSClient.this.setProvisionStatus(false);
                return;
            }
            EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onDefaultSmsPackageChanged");
            IMSLog.c(LogClass.MCS_PV_INIT_REGISTRATION, MCSClient.this.mPhoneId + ",PV:DMA CH");
            if (MCSClient.this.mCloudMessagePreferenceManager.getMcsUser() == 1) {
                MCSClient.this.sendEmptyMessage(4);
            }
        }

        public void onRegistered(ImsRegistration imsRegistration) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onRegistered " + imsRegistration);
            if (imsRegistration.hasRcsService() && imsRegistration.getPhoneId() == MCSClient.this.mPhoneId && !MCSClient.this.getProvisionStatus()) {
                MCSClient.this.startProvisioning();
            }
        }

        public void onDeregistered(ImsRegistration imsRegistration) throws RemoteException {
            IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onDeregistered " + imsRegistration);
            if (imsRegistration.hasRcsService() && imsRegistration.getPhoneId() == MCSClient.this.mPhoneId && DmConfigHelper.getImsUserSetting(MCSClient.this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), MCSClient.this.mPhoneId) == 0 && CmsUtil.isMcsSupported(MCSClient.this.mContext, MCSClient.this.mPhoneId)) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "It is RCS OFF, so try deregister MCS service");
                MCSClient.this.sendEmptyMessage(7);
            }
        }

        public void registerCmsProvisioningListenerByPhoneId(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, int i) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "registerCmsProvisioningListenerByPhoneId phoneid is not matched. ignore");
            } else {
                EventLogHelper.infoLogAndAdd(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "registerCmsProvisioningListener from app");
                MCSClient.this.registerCmsProvisioningListener(iCentralMsgStoreServiceListener, true);
            }
        }

        public void unregisterCmsProvisioningListenerByPhoneId(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, int i) throws RemoteException {
            if (MCSClient.this.mPhoneId != i) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "unregisterCmsProvisioningListenerByPhoneId phoneid is not matched. ignore");
            } else {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "unregisterCmsProvisioningListener from app");
                MCSClient.this.unregisterCmsProvisioningListener(iCentralMsgStoreServiceListener);
            }
        }
    };
    private MessageStoreClient msc = this;

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RetryMapAdapter getRetryMapAdapter() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RetryStackAdapter getRetryStackAdapter() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppCloudDeleteFail(String str, String str2, String str3) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void notifyAppNetworkOperationResult(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IUIEventCallback
    public void notifyAppUIScreen(int i, String str, int i2) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void onDestroy() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IUIEventCallback
    public void showInitsyncIndicator(boolean z) {
    }

    public MCSClient(int i, Context context, CloudMessageService cloudMessageService) {
        this.mPhoneId = 0;
        this.mContext = context;
        this.mPhoneId = i;
        this.mSimManager = SimManagerFactory.getSimManagerFromSimSlot(i);
        this.mCloudMessageService = cloudMessageService;
    }

    private void initializeRetryAdapter() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "initializeRetryAdapter ");
        if (this.mRetryMapAdapter == null) {
            this.mRetryMapAdapter = new McsRetryMapAdapter();
        }
        this.mRetryMapAdapter.initRetryMapAdapter(this);
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public synchronized ArrayList<IMcsFcmPushNotificationListener> getMcsFcmPushNotificationListener() {
        return this.mMcsFcmPushNotificationListener;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public synchronized void setMcsFcmPushNotificationListener(IMcsFcmPushNotificationListener iMcsFcmPushNotificationListener) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "setMcsFcmPushNotificationListener: listener: " + iMcsFcmPushNotificationListener);
        if (iMcsFcmPushNotificationListener == null) {
            this.mMcsFcmPushNotificationListener.clear();
        } else {
            this.mMcsFcmPushNotificationListener.add(iMcsFcmPushNotificationListener);
        }
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void updateEvent(int i) {
        sendEmptyMessage(i);
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public List<String> getMultilineStatusValues() {
        CloudMessageBufferSchedulingHandler cloudMessageBufferSchedulingHandler = this.mCloudMessageScheduler;
        if (cloudMessageBufferSchedulingHandler != null) {
            return cloudMessageBufferSchedulingHandler.getMulitLineStatusTable();
        }
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public boolean updateDelay(int i, long j) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "update with " + i + " delayed " + j);
        return sendMessageDelayed(obtainMessage(i), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startProvisioning() {
        EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "startProvisioning");
        if (!isRcsRegistered()) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "not RCS ready");
            return;
        }
        if (!NetworkUtil.isConnected(this.mContext)) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "not network connection");
            registerDefaultNetworkCallback();
            return;
        }
        if (!CmsUtil.isDefaultMessageAppInUse(this.mContext)) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "not samsung msg app");
            return;
        }
        if (Util.isRegistrationCodeInvalid(this.mCloudMessagePreferenceManager.getRegCode())) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "registration code is expired, remove it");
            this.mCloudMessagePreferenceManager.saveRegCode("");
        }
        if (Util.isAuthCodeInvalid(this.mCloudMessagePreferenceManager.getAuthCode())) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "auth code is expired, remove it");
            this.mCloudMessagePreferenceManager.saveAuthCode("");
        }
        unregisterNetworkCallback();
        sendEmptyMessage(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x006f  */
    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isRcsRegistered() {
        /*
            r7 = this;
            android.net.Uri r0 = com.sec.internal.constants.ims.cmstore.McsConstants.Uris.RCS_REGISTRATION_STATUS_URI
            android.net.Uri$Builder r0 = r0.buildUpon()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "simslot"
            r1.append(r2)
            int r2 = r7.mPhoneId
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.net.Uri$Builder r0 = r0.fragment(r1)
            android.net.Uri r2 = r0.build()
            android.content.Context r0 = r7.mContext
            android.content.ContentResolver r1 = r0.getContentResolver()
            java.lang.String r0 = "registration_status"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r0 = r1.query(r2, r3, r4, r5, r6)
            r1 = 0
            if (r0 == 0) goto L4e
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L44
            if (r2 == 0) goto L4e
            int r2 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L44
            goto L4f
        L44:
            r7 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L49
            goto L4d
        L49:
            r0 = move-exception
            r7.addSuppressed(r0)
        L4d:
            throw r7
        L4e:
            r2 = r1
        L4f:
            if (r0 == 0) goto L54
            r0.close()
        L54:
            java.lang.String r0 = r7.LOG_TAG
            int r7 = r7.mPhoneId
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "isRcsRegistered "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            com.sec.internal.log.IMSLog.i(r0, r7, r3)
            r7 = 1
            if (r2 != r7) goto L70
            r1 = r7
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.mcs.MCSClient.isRcsRegistered():boolean");
    }

    private void initializeSimInfo() {
        String msisdn = getSimManager().getMsisdn();
        this.mCloudMessagePreferenceManager.saveSimImsi(getSimManager().getImsi());
        this.mCloudMessagePreferenceManager.saveUserCtn(msisdn, false);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "handleMessage: msg: " + message.what);
        switch (message.what) {
            case 0:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_INIT");
                initializeSimInfo();
                if (this.mCloudMessagePreferenceManager.getMcsUser() == 0) {
                    IMSLog.i(this.LOG_TAG, this.mPhoneId, "Do not start for not MCS user");
                    break;
                } else {
                    sendEmptyMessage(1);
                    break;
                }
            case 1:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_START");
                Object obj = message.obj;
                String str = obj != null ? (String) obj : null;
                WorkflowMcs workflowMcs = this.mProvisionWorkflow;
                if (workflowMcs != null) {
                    workflowMcs.startProvisioning(str);
                    break;
                }
                break;
            case 2:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_MANAGE_SD");
                WorkflowMcs workflowMcs2 = this.mProvisionWorkflow;
                if (workflowMcs2 != null) {
                    workflowMcs2.manageSd(message.arg1, (String) message.obj);
                    break;
                }
                break;
            case 3:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_GET_SD");
                if (this.mProvisionWorkflow != null) {
                    this.mProvisionWorkflow.getSd(Boolean.valueOf(((Bundle) message.obj).getBoolean(McsConstants.BundleData.GET_ALL)), ((Bundle) message.obj).getString(McsConstants.BundleData.INFO));
                    break;
                }
                break;
            case 4:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_RE_AUTHENTICATION");
                WorkflowMcs workflowMcs3 = this.mProvisionWorkflow;
                if (workflowMcs3 != null) {
                    workflowMcs3.requestMcsReAuthentication();
                    break;
                }
                break;
            case 5:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_UPDATE_ACCOUNT");
                WorkflowMcs workflowMcs4 = this.mProvisionWorkflow;
                if (workflowMcs4 != null) {
                    workflowMcs4.updateAccountInfo((String) message.obj);
                    break;
                }
                break;
            case 6:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_GET_ACCOUNT");
                WorkflowMcs workflowMcs5 = this.mProvisionWorkflow;
                if (workflowMcs5 != null) {
                    workflowMcs5.getAccount();
                    break;
                }
                break;
            case 7:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_DEREGISTER");
                WorkflowMcs workflowMcs6 = this.mProvisionWorkflow;
                if (workflowMcs6 != null) {
                    workflowMcs6.disableMCS();
                    break;
                }
                break;
            case 8:
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "HANDLE_MCS_PROVISION_COMPLETED");
                break;
        }
    }

    private ConnectivityManager.NetworkCallback getDefaultNetworkCallback() {
        return new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.cmstore.mcs.MCSClient.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onAvailable");
                if (network == null || MCSClient.this.getProvisionStatus()) {
                    return;
                }
                MCSClient.this.startProvisioning();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(MCSClient.this.LOG_TAG, MCSClient.this.mPhoneId, "onLost");
            }
        };
    }

    private void registerDefaultNetworkCallback() {
        ConnectivityManager connectivityManager;
        if (this.mDefaultNetworkCallback != null || (connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity")) == null) {
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "registerDefaultNetworkCallback");
        ConnectivityManager.NetworkCallback defaultNetworkCallback = getDefaultNetworkCallback();
        this.mDefaultNetworkCallback = defaultNetworkCallback;
        connectivityManager.registerDefaultNetworkCallback(defaultNetworkCallback);
    }

    private void unregisterNetworkCallback() {
        ConnectivityManager connectivityManager;
        if (this.mDefaultNetworkCallback == null || (connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity")) == null) {
            return;
        }
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "unregisterNetworkCallback");
        connectivityManager.unregisterNetworkCallback(this.mDefaultNetworkCallback);
        this.mDefaultNetworkCallback = null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void setProvisionStatus(boolean z) {
        IMSLog.i(this.LOG_TAG, "setProvisionStatus:" + z);
        this.mIsProvisioned = z;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public boolean getProvisionStatus() {
        return this.mIsProvisioned;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void registerCmsProvisioningListener(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, boolean z) {
        if (iCentralMsgStoreServiceListener == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "listener: null");
            return;
        }
        synchronized (this.mLock) {
            if (this.mMcsProvisioningListener != null) {
                EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "register listener: " + iCentralMsgStoreServiceListener);
                this.mMcsProvisioningListener.register(iCentralMsgStoreServiceListener);
            }
            if (z) {
                int i = this.mCloudMessagePreferenceManager.getMcsUser() == 1 ? 100 : 200;
                try {
                    IMSLog.i(this.LOG_TAG, this.mPhoneId, "broadcast : " + i);
                    iCentralMsgStoreServiceListener.onCmsRegistrationCompleted(i, 1);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void unregisterCmsProvisioningListener(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener) {
        if (iCentralMsgStoreServiceListener == null) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "listener: null");
            return;
        }
        synchronized (this.mLock) {
            if (this.mMcsProvisioningListener != null) {
                IMSLog.i(this.LOG_TAG, this.mPhoneId, "unregister listener: " + iCentralMsgStoreServiceListener);
                this.mMcsProvisioningListener.unregister(iCentralMsgStoreServiceListener);
            }
        }
    }

    public boolean requestMcsAccessToken(boolean z) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "requestMcsAccessToken: forceRefresh = " + z);
        WorkflowMcs workflowMcs = this.mProvisionWorkflow;
        if (workflowMcs == null) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "requestMcsAccessToken: workflow is null");
            return false;
        }
        if (!z && workflowMcs.isValidAccessToken()) {
            return false;
        }
        this.mProvisionWorkflow.requestMcsAccessToken();
        return true;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RemoteCallbackList<ICentralMsgStoreServiceListener> getMcsProvisioningListener() {
        return this.mMcsProvisioningListener;
    }

    public String getRcsConfigurationValue(String str) {
        RcsConfigurationHelper.ConfigData configData = RcsConfigurationHelper.getConfigData(this.mContext, "root/*", this.mPhoneId);
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "getConfigurationValue: key: " + str);
        return configData.readString(str, "");
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public int getClientID() {
        return this.mPhoneId;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public Binder getBinder() {
        return this.mBinder;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CloudMessagePreferenceManager getPrerenceManager() {
        return this.mCloudMessagePreferenceManager;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public WorkflowMcs getProvisionWorkFlow() {
        return this.mProvisionWorkflow;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CmsHttpController getHttpController() {
        return this.mHttpController;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void onCreate(IImsFramework iImsFramework, GbaServiceModule gbaServiceModule) {
        this.mJanskyTranslation = new JanskyIntentTranslation(getContext(), this);
        this.mCloudMessagePreferenceManager = new CloudMessagePreferenceManager(this);
        this.mCloudMessageStrategyManager = new CloudMessageStrategyManager(this);
        this.mBufferDBHandlingThread = new HandlerThread("cloud message service buffer DB thread");
        this.mNetAPIHandlingThread = new HandlerThread("cloud message service NetAPI thread");
        this.mProvisionHandlingThread = new HandlerThread("cloud message service Provision thread");
        this.mBufferDBHandlingThread.start();
        this.mNetAPIHandlingThread.start();
        this.mProvisionHandlingThread.start();
        Looper looper = this.mBufferDBHandlingThread.getLooper();
        Looper looper2 = this.mNetAPIHandlingThread.getLooper();
        Looper looper3 = this.mProvisionHandlingThread.getLooper();
        initializeRetryAdapter();
        CloudMessageProvider.createBufferDBInstance(this);
        this.mHttpController = new CmsHttpController(this.mContext, this.mPhoneId);
        this.mNetAPIWorkingController = new NetAPIWorkingStatusControllerMcs(looper2, this, this);
        this.mProvisionWorkflow = new WorkflowMcs(looper3, this, this, this.mNetAPIWorkingController);
        this.mNetAPIWorkingController.registerCentralMsgStoreServiceListener();
        this.mMcsContactSync = new McsContactSync(this, this.mContext, this.mPhoneId);
        this.mCloudMessageScheduler = new CloudMessageBufferSchedulingHandler(looper, this, this.mNetAPIWorkingController, this, null, true);
        this.mAppRequestHandler = new AppRequestHandler(this, this);
        this.mMcsFcmPushNotifier = new McsFcmPushNotifier(this, this.mPhoneId);
        startProvisioning();
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CloudMessageStrategyManager getCloudMessageStrategyManager() {
        return this.mCloudMessageStrategyManager;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public String getCurrentIMSI() {
        String imsi = this.mSimManager.getImsi();
        if (TextUtils.isEmpty(imsi)) {
            EventLogHelper.infoLogAndAdd(this.LOG_TAG, this.mPhoneId, "getCurrentIMSI is empty");
        }
        return imsi;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public NetAPIWorkingStatusControllerMcs getNetAPIWorkingStatusController() {
        return this.mNetAPIWorkingController;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CloudMessageBufferSchedulingHandler getCloudMessageBufferSchedulingHandler() {
        return this.mCloudMessageScheduler;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public ISimManager getSimManager() {
        return this.mSimManager;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public McsRetryMapAdapter getMcsRetryMapAdapter() {
        return this.mRetryMapAdapter;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyCloudMessageUpdate(String str, String str2, String str3, boolean z) {
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "notifyCloudMessageUpdate, apptype: " + str + " msgType: " + str2 + " rowIDs: " + str3);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyTranslation.onNotifyMessageApp(str2, str3, z);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppInitialSyncStatus(String str, String str2, String str3, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag, boolean z) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyAppInitialSyncStatus, apptype: " + str + " msgType: " + str2 + " SyncStatus: " + initialSyncStatusFlag);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyTranslation.onNotifyMessageAppInitialSyncStatus(str3, str2, initialSyncStatusFlag);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppOperationResult(String str, int i) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "notifyAppOperationResult");
        this.mJanskyTranslation.notifyAppOperationResult(str, i);
    }
}
