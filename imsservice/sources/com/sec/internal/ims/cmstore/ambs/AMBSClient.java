package com.sec.internal.ims.cmstore.ambs;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.telephony.PhoneStateListener;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ICentralMsgStoreService;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.cmstore.CloudMessageProvider;
import com.sec.internal.ims.cmstore.CloudMessageService;
import com.sec.internal.ims.cmstore.JanskyIntentTranslation;
import com.sec.internal.ims.cmstore.MStoreDebugTool;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.NetAPIWorkingStatusController;
import com.sec.internal.ims.cmstore.RetryMapAdapterHelper;
import com.sec.internal.ims.cmstore.RetryStackAdapterHelper;
import com.sec.internal.ims.cmstore.adapters.McsRetryMapAdapter;
import com.sec.internal.ims.cmstore.adapters.RetryMapAdapter;
import com.sec.internal.ims.cmstore.adapters.RetryStackAdapter;
import com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.mcs.provision.workflow.WorkflowMcs;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.ims.cmstore.servicecontainer.CentralMsgStoreInterface;
import com.sec.internal.ims.cmstore.strategy.CloudMessageStrategyManager;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.PhoneStateManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.ims.settings.GlobalSettingsManager;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.imslogger.ISignallingNotifier;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AMBSClient implements MessageStoreClient, IBufferDBEventListener, IUIEventCallback {
    private HandlerThread mBufferDBHandlingThread;
    private CentralMsgStoreInterface mCentralMsgStoreWrapper;
    private int mClientID;
    private CloudMessagePreferenceManager mCloudMessagePreferenceManager;
    private final CloudMessageService mCloudMessageService;
    private CloudMessageStrategyManager mCloudMessageStrategyManager;
    private Context mContext;
    GbaServiceModule mGbaServiceModule;
    private CmsHttpController mHttpController;
    private IImsFramework mImsFramework;
    private JanskyIntentTranslation mJanskyTranslation;
    private HandlerThread mNetAPIHandlingThread;
    private PhoneStateListener mPhoneStateListener;
    private PhoneStateManager mPhoneStateManager;
    private ISimManager mSimManager;
    private int mSlotID;
    private MessageStoreClient msc;
    private String LOG_TAG = AMBSClient.class.getSimpleName();
    private CloudMessageBufferSchedulingHandler mCloudMessageScheduler = null;
    private NetAPIWorkingStatusController mNetAPIWorkingController = null;
    private RetryStackAdapter mRetryStackAdapter = null;
    private RetryMapAdapter mRetryMapAdapter = null;
    ICentralMsgStoreService.Stub mBinder = new ICentralMsgStoreService.Stub() { // from class: com.sec.internal.ims.cmstore.ambs.AMBSClient.1
        public void getAccount(int i) throws RemoteException {
        }

        public void getSd(int i, boolean z, String str) throws RemoteException {
        }

        public void manageSd(int i, int i2, String str) throws RemoteException {
        }

        public void notifyUIScreen(String str, int i, String str2, int i2) throws RemoteException {
        }

        public void onDefaultSmsPackageChanged() throws RemoteException {
        }

        public void onDeregistered(ImsRegistration imsRegistration) throws RemoteException {
        }

        public void onRegistered(ImsRegistration imsRegistration) throws RemoteException {
        }

        public void registerCmsProvisioningListenerByPhoneId(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, int i) throws RemoteException {
        }

        public void sendTryDeregisterCms(int i) throws RemoteException {
        }

        public void sendTryRegisterCms(int i, String str) throws RemoteException {
        }

        public void startContactSyncActivity(int i, boolean z) throws RemoteException {
        }

        public void unregisterCmsProvisioningListenerByPhoneId(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, int i) throws RemoteException {
        }

        public void updateAccountInfo(int i, String str) throws RemoteException {
        }

        public void receivedMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "receivedMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.receivedMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void sentMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "sentMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.sentMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void readMessage(String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "readMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.readMessageJson(str, str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void unReadMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "unReadMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.unReadMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void cancelMessage(String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "cancelMessage " + str + ": " + str2);
        }

        public void deleteMessage(String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "deleteMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.deleteMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void uploadMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "uploadMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.uploadMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void downloadMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "downloadMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.downloadMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void requestMessageProcess(String str, String str2, int i) {
            Log.i(AMBSClient.this.LOG_TAG, "requestMessageProcess " + str + " function: " + i + ": " + str2);
        }

        public void requestOperation(int i, int i2, String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "requestOperation " + str + " operation: " + i2 + ": " + str2);
        }

        public void wipeOutMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "wipeOutMessage " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.getCloudMessageStrategyManager().getStrategy().resetVVMPendingRequestCount();
                AMBSClient.this.mCloudMessageScheduler.wipeOutMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void onUserEnterApp(String str) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "onUserEnterApp " + str);
            if (!AMBSClient.this.isValidSim()) {
                AMBSClient.this.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.EligibilityError_ErrMsg1.getId(), IUIEventCallback.NON_POP_UP, 0);
            } else if (AMBSClient.this.isValidAppType(str, false)) {
                AMBSClient.this.mNetAPIWorkingController.setMsgAppForegroundStatus(true);
                AMBSClient.this.mCloudMessageScheduler.onReturnAppFetchingFailedMsg(str);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void onUserLeaveApp(String str) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "onUserLeaveApp " + str);
            if (AMBSClient.this.isValidAppType(str, false)) {
                AMBSClient.this.mNetAPIWorkingController.setMsgAppForegroundStatus(false);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public boolean onUIButtonProceed(String str, int i, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "onUIButtonProceed " + str + " screenName: " + i + " ,message" + str2);
            if (!AMBSClient.this.isValidSim()) {
                AMBSClient.this.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.EligibilityError_ErrMsg1.getId(), IUIEventCallback.NON_POP_UP, 0);
                return false;
            }
            if (AMBSClient.this.isValidAppType(str, true)) {
                return AMBSClient.this.mNetAPIWorkingController.onUIButtonProceed(i, str2);
            }
            AMBSClient.this.logInvalidAppType();
            return false;
        }

        public void onBufferDBReadResult(String str, String str2, String str3, String str4, int i, boolean z) throws RemoteException {
            String str5 = "onBufferDBReadResult: " + str + " msgType: " + str2 + " bufferRowID: " + str3 + " appMessageId: " + str4 + " syncAction: " + i + " isSuccess: " + z;
            Log.d(AMBSClient.this.LOG_TAG, str5);
            if (!z) {
                EventLogHelper.add(AMBSClient.this.LOG_TAG, AMBSClient.this.mSlotID, str5);
            }
            if (AMBSClient.this.isValidAppType(str, true)) {
                if (AMBSClient.this.getCloudMessageStrategyManager().getStrategy().getIsInitSyncIndicatorRequired() && Integer.valueOf(str3).intValue() < 0) {
                    Log.d(AMBSClient.this.LOG_TAG, "rowID < 0");
                    AMBSClient.this.mNetAPIWorkingController.hideIndicator();
                    return;
                } else {
                    AMBSClient.this.mCloudMessageScheduler.onBufferDBReadResult(str2, str3, str4, i, z);
                    return;
                }
            }
            Log.d(AMBSClient.this.LOG_TAG, "ignore");
        }

        public void onBufferDBReadResultBatch(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "onBufferDBReadResultBatch " + str + ": " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.bufferDbReadBatchMessageJson(str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void registerCallback(String str, ICentralMsgStoreService iCentralMsgStoreService) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "registerCallback " + str);
        }

        public void stopSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "stopSync " + str + " " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.stopSync(str, str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void startFullSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "startFullSync " + str + " " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.startFullSync(str, str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void startDeltaSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "startDeltaSync : " + str2);
            if (AMBSClient.this.isValidAppType(str, true)) {
                AMBSClient.this.mCloudMessageScheduler.startDeltaSync(str, str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void deleteOldLegacyMessage(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "deleteOldLegacyMessage " + str + " thread:" + str2);
        }

        public void resumeSync(String str) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "resumeSync " + str);
        }

        public void restartService(String str) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "restartService " + str);
            if (AMBSClient.this.mNetAPIWorkingController.isCmsProfileActive()) {
                AMBSClient.this.mNetAPIWorkingController.onRestartService();
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public void notifyCloudMessageUpdate(String str, String str2, String str3) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "notifyCloudMessageUpdate, apptype: " + str + " msgType: " + str2 + " rowIDs: " + str3);
        }

        public void createSession(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "createSession " + str + " chatId: " + str2);
            AMBSClient.this.mCloudMessageScheduler.createSession(str2);
        }

        public void createParticipant(String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "createParticipant " + str + " chatId: " + str2);
            AMBSClient.this.mCloudMessageScheduler.createParticipant(str2);
        }

        public void deleteSession(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "deleteSession " + str + " chatId: " + str2);
            AMBSClient.this.mCloudMessageScheduler.deleteSession(str2);
        }

        public void deleteParticipant(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "deleteParticipant " + str + " chatId: " + str2);
            AMBSClient.this.mCloudMessageScheduler.deleteParticipant(str2);
        }

        public void onRCSDBReady(String str) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "onRCSDBReady: " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.CMS_PROFILE_EVENT);
                String string2 = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.SIM_STATUS);
                Log.d(AMBSClient.this.LOG_TAG, "eventType =" + string + " simStatus = " + string2);
                if (CloudMessageProviderContract.SimStatusValue.SIM_REMOVED.equals(string2)) {
                    AMBSClient.this.mNetAPIWorkingController.setCmsProfileEnabled(false);
                    AMBSClient.this.mJanskyTranslation.onNotifyMessageAppUI(ATTConstants.AttAmbsUIScreenNames.AMBS_SERVICE_DISABLE.getId(), IUIEventCallback.NON_POP_UP, 0);
                    return;
                }
                if (CloudMessageProviderContract.SimStatusValue.SIM_READY.equals(string2) && CloudMessageProviderContract.CmsEventTypeValue.CMS_PROFILE_DISABLE.equals(string) && CmsUtil.isSimChanged(AMBSClient.this.msc)) {
                    AMBSClient.this.getPrerenceManager().clearAll();
                }
                if (CloudMessageProviderContract.CmsEventTypeValue.CMS_PROFILE_ENABLE.equals(string)) {
                    Mno simMno = AMBSClient.this.getSimManager().getSimMno();
                    if (!Mno.ATT.equals(simMno) && !Mno.TMOUS.equals(simMno)) {
                        Log.d(AMBSClient.this.LOG_TAG, "inserted card is not a ATT or TMO card" + simMno.toString());
                        AMBSClient.this.mJanskyTranslation.onNotifyMessageAppUI(ATTConstants.AttAmbsUIScreenNames.AMBS_SERVICE_DISABLE.getId(), IUIEventCallback.NON_POP_UP, 0);
                        return;
                    }
                    boolean isSimChanged = CmsUtil.isSimChanged(AMBSClient.this.msc);
                    Log.i(AMBSClient.this.LOG_TAG, "CMS Account Service Stopped/Paused by server  Stop: " + AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServiceStop() + " Pause: " + AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServicePause() + " Mno: " + simMno + " isSimChanged: " + isSimChanged);
                    if (Mno.ATT.equals(simMno) && ATTGlobalVariables.supportSignedBinary() && AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServiceStop()) {
                        AMBSClient.this.mJanskyTranslation.onNotifyMessageAppUI(ATTConstants.AttAmbsUIScreenNames.AMBS_SERVICE_DISABLE.getId(), IUIEventCallback.NON_POP_UP, 0);
                        return;
                    }
                    boolean cmsProfileEnabled = AMBSClient.this.mNetAPIWorkingController.getCmsProfileEnabled();
                    if (!cmsProfileEnabled) {
                        AMBSClient.this.mJanskyTranslation.onNotifyMessageAppUI(ATTConstants.AttAmbsUIScreenNames.AMBS_SERVICE_ENABLE.getId(), IUIEventCallback.NON_POP_UP, 0);
                        AMBSClient.this.resetParams(simMno);
                        AMBSClient.this.mNetAPIWorkingController.setCmsProfileEnabled(true);
                        AMBSClient.this.mCloudMessageScheduler.onRCSDbReady();
                    }
                    if (AMBSClient.this.getCloudMessageStrategyManager().getStrategy().needToHandleSimSwap() && isSimChanged) {
                        AMBSClient.this.mNetAPIWorkingController.onRestartService();
                    }
                    if (Mno.TMOUS.equals(simMno) && isSimChanged && SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) > 33 && cmsProfileEnabled) {
                        Log.i(AMBSClient.this.LOG_TAG, "TMO Esim hotswap");
                        AMBSClient.this.resetParams(simMno);
                        AMBSClient.this.mNetAPIWorkingController.onEsimHotswap();
                        AMBSClient.this.mCloudMessageScheduler.onRCSDbReady();
                    }
                    if (ATTGlobalVariables.supportSignedBinary()) {
                        if (Mno.TMOUS.equals(simMno) || !(!Mno.ATT.equals(simMno) || AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServiceStop() || AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServicePause())) {
                            AMBSClient.this.mJanskyTranslation.onNotifyMessageAppUI(ATTConstants.AttAmbsUIScreenNames.RestartMenu_Enable_PrmptMsg15.getId(), IUIEventCallback.NON_POP_UP, 0);
                        }
                    }
                }
            } catch (JSONException unused) {
                Log.e(AMBSClient.this.LOG_TAG, "Json parsing exception");
            }
        }

        public void manualSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "manualSync: " + str + " jsonSummary: " + str2);
            AMBSClient.this.mNetAPIWorkingController.setImpuFromImsRegistration(str2);
        }

        public void enableAutoSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "enableAutoSync: " + str);
        }

        public void disableAutoSync(String str, String str2) throws RemoteException {
            Log.d(AMBSClient.this.LOG_TAG, "disableAutoSync: " + str);
        }

        public void onFTUriResponse(String str, String str2) throws RemoteException {
            Log.i(AMBSClient.this.LOG_TAG, "onFtUriResponse " + str + " " + str2);
            if (AMBSClient.this.isValidAppType(str, false)) {
                AMBSClient.this.mCloudMessageScheduler.onFtUriResponseJson(str, str2);
            } else {
                AMBSClient.this.logInvalidAppType();
            }
        }

        public int getRestartScreenName(String str) {
            Log.i(AMBSClient.this.LOG_TAG, "getRestartScreenName");
            if (SimUtil.getSubId(AMBSClient.this.getClientID()) == -1 || !AMBSClient.this.isValidSim() || AMBSClient.this.mNetAPIWorkingController.getCmsIsAccountServicePause()) {
                Log.i(AMBSClient.this.LOG_TAG, "AMBS Paused, notify 116");
                return ATTConstants.AttAmbsUIScreenNames.RestartMenu_Disable_PrmptMsg16.getId();
            }
            return ATTConstants.AttAmbsUIScreenNames.RestartMenu_Enable_PrmptMsg15.getId();
        }
    };

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public ArrayList<IMcsFcmPushNotificationListener> getMcsFcmPushNotificationListener() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RemoteCallbackList<ICentralMsgStoreServiceListener> getMcsProvisioningListener() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public McsRetryMapAdapter getMcsRetryMapAdapter() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public List<String> getMultilineStatusValues() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public boolean getProvisionStatus() {
        return false;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public WorkflowMcs getProvisionWorkFlow() {
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public boolean isRcsRegistered() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppOperationResult(String str, int i) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void onDestroy() {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void registerCmsProvisioningListener(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener, boolean z) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void setMcsFcmPushNotificationListener(IMcsFcmPushNotificationListener iMcsFcmPushNotificationListener) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void setProvisionStatus(boolean z) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void unregisterCmsProvisioningListener(ICentralMsgStoreServiceListener iCentralMsgStoreServiceListener) {
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public boolean updateDelay(int i, long j) {
        return false;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void updateEvent(int i) {
    }

    public AMBSClient(int i, Context context, CloudMessageService cloudMessageService, IImsFramework iImsFramework) {
        this.mClientID = 0;
        this.mContext = null;
        this.msc = null;
        this.mSlotID = 0;
        this.mClientID = i;
        this.mContext = context;
        this.mSlotID = i;
        this.mCloudMessageService = cloudMessageService;
        this.mImsFramework = iImsFramework;
        this.LOG_TAG += "[" + this.mClientID + "]";
        this.msc = this;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void notifyAppNetworkOperationResult(boolean z) {
        this.mJanskyTranslation.notifyAppNetworkOperationResult(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logInvalidAppType() {
        Log.e(this.LOG_TAG, "invalid apptype ");
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public int getClientID() {
        return this.mClientID;
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
    public String getCurrentIMSI() {
        String imsi = this.mSimManager.getImsi();
        if (TextUtils.isEmpty(imsi)) {
            EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mSlotID, "getCurrentIMSI is empty");
        }
        return imsi;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RetryStackAdapter getRetryStackAdapter() {
        return this.mRetryStackAdapter;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public RetryMapAdapter getRetryMapAdapter() {
        return this.mRetryMapAdapter;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CmsHttpController getHttpController() {
        return this.mHttpController;
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public void onCreate(IImsFramework iImsFramework, GbaServiceModule gbaServiceModule) {
        this.mBufferDBHandlingThread = new HandlerThread("cloud message service buffer DB thread");
        this.mNetAPIHandlingThread = new HandlerThread("cloud message service NetAPI thread");
        this.mBufferDBHandlingThread.start();
        this.mNetAPIHandlingThread.start();
        Looper looper = this.mBufferDBHandlingThread.getLooper();
        Looper looper2 = this.mNetAPIHandlingThread.getLooper();
        this.mSimManager = SimManagerFactory.getSimManagerFromSimSlot(this.mSlotID);
        this.mCloudMessagePreferenceManager = new CloudMessagePreferenceManager(this);
        this.mCloudMessageStrategyManager = new CloudMessageStrategyManager(this);
        this.mHttpController = new CmsHttpController(this.mContext, this.mSlotID);
        this.mPhoneStateListener = new PhoneStateListener(getContext().getMainExecutor()) { // from class: com.sec.internal.ims.cmstore.ambs.AMBSClient.2
            @Override // android.telephony.PhoneStateListener
            public void onMessageWaitingIndicatorChanged(boolean z) {
                Log.i(AMBSClient.this.LOG_TAG, "MWI is changed. " + z);
                if (AMBSClient.this.mNetAPIWorkingController.getCmsProfileEnabled() && z) {
                    AMBSClient.this.mNetAPIWorkingController.vvmNormalSyncRequest();
                } else {
                    Log.d(AMBSClient.this.LOG_TAG, "cms profile is not enabled or mwi is false");
                }
            }
        };
        Mno simMno = SimUtil.getSimMno(getClientID());
        if (simMno != null) {
            Log.i(this.LOG_TAG, "Carrier: " + simMno.toString());
        }
        CloudMessageProvider.createBufferDBInstance(this);
        if (Mno.ATT.equals(simMno)) {
            RetryStackAdapter retryStackAdapter = new RetryStackAdapter();
            this.mRetryStackAdapter = retryStackAdapter;
            retryStackAdapter.initRetryStackAdapter(this);
            this.mNetAPIWorkingController = new NetAPIWorkingStatusController(looper2, this, this, new RetryStackAdapterHelper(), iImsFramework, gbaServiceModule);
        } else {
            RetryMapAdapter retryMapAdapter = new RetryMapAdapter();
            this.mRetryMapAdapter = retryMapAdapter;
            retryMapAdapter.initRetryMapAdapter(this);
            this.mNetAPIWorkingController = new NetAPIWorkingStatusController(looper2, this, this, new RetryMapAdapterHelper(), iImsFramework, gbaServiceModule);
        }
        this.mCloudMessageScheduler = new CloudMessageBufferSchedulingHandler(looper, this, this.mNetAPIWorkingController, this, null, false);
        this.mJanskyTranslation = new JanskyIntentTranslation(getContext(), this);
        registerMWIWithLastVVMStatus();
        this.mCloudMessageScheduler.resyncPendingMsg();
        MStoreDebugTool.getInstance(this.mContext, this.mNetAPIWorkingController, this.mCentralMsgStoreWrapper).initDebugInfo();
    }

    public void handleVVMOn(String str, String str2, String str3) {
        if ("VVMDATA".equals(str) && CloudMessageProviderContract.DataTypes.VVMPROFILE.equals(str2)) {
            try {
                JSONArray jSONArray = new JSONArray(str3);
                for (int i = 0; i < jSONArray.length(); i++) {
                    int i2 = jSONArray.getJSONObject(i).getInt("id");
                    EventLogHelper.debugLogAndAdd(this.LOG_TAG, this.mSlotID, "queryVvmProfileBufferDB: " + i2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("content://com.samsung.rcs.cmstore/vvmprofile");
                    sb.append(this.mSlotID == 0 ? "" : "/slot2");
                    Cursor query = this.mContext.getContentResolver().query(Uri.withAppendedPath(Uri.parse(sb.toString()), String.valueOf(i2)), null, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                String string = query.getString(query.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.VVMON));
                                if (string != null) {
                                    this.mCloudMessagePreferenceManager.saveLastVVMStatus(string);
                                }
                                if (CloudMessageProviderContract.JsonData.TRUE.equalsIgnoreCase(string)) {
                                    int i3 = query.getInt(query.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.PROFILE_CHANGETYPE));
                                    if (ParamVvmUpdate.VvmTypeChange.ACTIVATE.getId() == i3) {
                                        if (query.getInt(query.getColumnIndex("uploadstatus")) == CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()) {
                                            registerMWI();
                                        }
                                    } else if (ParamVvmUpdate.VvmTypeChange.FULLPROFILE.getId() == i3) {
                                        registerMWI();
                                    }
                                } else if (ConfigConstants.VALUE.INFO_COMPLETED.equalsIgnoreCase(string)) {
                                    unregisterMWI();
                                }
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
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void registerMWIWithLastVVMStatus() {
        String lastVVMStatus = this.mCloudMessagePreferenceManager.getLastVVMStatus();
        EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mSlotID, "Registering MWI with VVM profile and vvm_Status :" + lastVVMStatus);
        if (CloudMessageProviderContract.JsonData.TRUE.equalsIgnoreCase(lastVVMStatus)) {
            registerMWI();
        }
    }

    public void registerMWI() {
        Log.i(this.LOG_TAG, "registerMWI");
        if (this.mPhoneStateManager != null) {
            EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mSlotID, "Trying to unregister for slot : " + this.mSlotID);
            this.mPhoneStateManager.unRegisterListener(this.mSlotID);
        } else {
            this.mPhoneStateManager = new PhoneStateManager(this.mContext, 4);
        }
        this.mPhoneStateManager.registerListener(this.mPhoneStateListener, this.mSlotID);
    }

    public void unregisterMWI() {
        EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mSlotID, "unregisterMWI for slot " + this.mSlotID);
        PhoneStateManager phoneStateManager = this.mPhoneStateManager;
        if (phoneStateManager != null) {
            phoneStateManager.unRegisterListener(this.mSlotID);
        }
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public CloudMessageStrategyManager getCloudMessageStrategyManager() {
        return this.mCloudMessageStrategyManager;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IUIEventCallback
    public void notifyAppUIScreen(int i, String str, int i2) {
        Log.d(this.LOG_TAG, "notifyAppUIScreen, screenName: " + i + " message: " + str + " param: " + i2);
        this.mJanskyTranslation.onNotifyMessageAppUI(i, str, i2);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppInitialSyncStatus(String str, String str2, String str3, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag, boolean z) {
        EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mSlotID, "notifyAppInitialSyncStatus, apptype: " + str + " msgType: " + str2 + " SyncStatus: " + initialSyncStatusFlag);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyTranslation.onNotifyMessageAppInitialSyncStatus(str3, str2, initialSyncStatusFlag);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyTranslation.onNotifyVVMAppInitialSyncStatus(str3, str2, initialSyncStatusFlag, z);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyCloudMessageUpdate(String str, String str2, String str3, boolean z) {
        Log.d(this.LOG_TAG, "notifyCloudMessageUpdate, apptype: " + str + " msgType: " + str2 + " rowIDs: " + str3);
        handleVVMOn(str, str2, str3);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyTranslation.onNotifyMessageApp(str2, str3, z);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyTranslation.onNotifyVVMApp(str2, str3);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener
    public void notifyAppCloudDeleteFail(String str, String str2, String str3) {
        EventLogHelper.debugLogAndAdd(this.LOG_TAG, this.mSlotID, "notifyAppCloudDeleteFail, type: " + str + " msgtype: " + str2 + " bufferId: " + str3);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyTranslation.onNotifyMessageAppCloudDeleteFailure(str2, str3);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyTranslation.onNotifyVVMAppCloudDeleteFailure(str2, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidSim() {
        if (Mno.ATT.equals(getSimManager().getSimMno())) {
            return true;
        }
        Log.i(this.LOG_TAG, "This is not ATT sim card");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidAppType(String str, boolean z) {
        boolean cmsProfileEnabled;
        if (z) {
            cmsProfileEnabled = this.mNetAPIWorkingController.isCmsProfileActive();
        } else {
            cmsProfileEnabled = this.mNetAPIWorkingController.getCmsProfileEnabled();
        }
        if (cmsProfileEnabled) {
            return CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str) || CloudMessageProviderContract.ApplicationTypes.RCSDATA.equalsIgnoreCase(str) || "VVMDATA".equalsIgnoreCase(str);
        }
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IUIEventCallback
    public void showInitsyncIndicator(boolean z) {
        if (getCloudMessageStrategyManager().getStrategy().getIsInitSyncIndicatorRequired()) {
            this.mCloudMessageService.showInitsyncIndicator(z, this.mClientID);
        } else {
            Log.v(this.LOG_TAG, "showInitsyncIndicator: not supported");
        }
    }

    @Override // com.sec.internal.ims.cmstore.MessageStoreClient
    public NetAPIWorkingStatusController getNetAPIWorkingStatusController() {
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

    public String[] getStringArray(int i, String str, String[] strArr) {
        getContext().enforceCallingOrSelfPermission(ISignallingNotifier.PERMISSION, this.LOG_TAG);
        return GlobalSettingsManager.getInstance(this.mContext, i).getStringArray(str, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetParams(Mno mno) {
        if (Mno.TMOUS.equals(mno)) {
            this.mRetryStackAdapter = null;
            RetryMapAdapter retryMapAdapter = new RetryMapAdapter();
            this.mRetryMapAdapter = retryMapAdapter;
            retryMapAdapter.initRetryMapAdapter(this);
            this.mNetAPIWorkingController.resetAdapter(new RetryMapAdapterHelper());
            return;
        }
        this.mRetryMapAdapter = null;
        RetryStackAdapter retryStackAdapter = new RetryStackAdapter();
        this.mRetryStackAdapter = retryStackAdapter;
        retryStackAdapter.initRetryStackAdapter(this);
        ATTGlobalVariables.setAmbsPhaseVersion(this.mCloudMessageService.getAMBSPhaseVersion(getClientID()));
        this.mNetAPIWorkingController.resetAdapter(new RetryStackAdapterHelper());
    }
}
