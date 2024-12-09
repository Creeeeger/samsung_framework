package com.sec.internal.ims.cmstore.servicecontainer;

import android.os.RemoteException;
import android.util.Log;
import com.sec.ims.ICentralMsgStoreService;
import com.sec.ims.ICentralMsgStoreServiceListener;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.JanskyIntentTranslation;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.NetAPIWorkingStatusController;
import com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CentralMsgStoreInterface {
    private static final String LOG_TAG = "CentralMsgStoreInterface";
    private ICentralMsgStoreService.Stub mBinder;
    private CloudMessageBufferSchedulingHandler mCloudMessageScheduler;
    private JanskyIntentTranslation mJanskyIntentTranslation;
    private NetAPIWorkingStatusController mNetAPIWorkingController;
    private MessageStoreClient mStoreClient;

    /* JADX INFO: Access modifiers changed from: private */
    public void logInvalidAppType() {
        Log.e(LOG_TAG, "invalid apptype ");
    }

    public CentralMsgStoreInterface(CloudMessageBufferSchedulingHandler cloudMessageBufferSchedulingHandler, NetAPIWorkingStatusController netAPIWorkingStatusController, JanskyIntentTranslation janskyIntentTranslation, ICloudMessageManagerHelper iCloudMessageManagerHelper, MessageStoreClient messageStoreClient) {
        this.mBinder = null;
        this.mStoreClient = messageStoreClient;
        this.mCloudMessageScheduler = cloudMessageBufferSchedulingHandler;
        this.mNetAPIWorkingController = netAPIWorkingStatusController;
        this.mJanskyIntentTranslation = janskyIntentTranslation;
        this.mBinder = new ICentralMsgStoreService.Stub() { // from class: com.sec.internal.ims.cmstore.servicecontainer.CentralMsgStoreInterface.1
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
                Log.i(CentralMsgStoreInterface.LOG_TAG, "receivedMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "receivedMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.receivedMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void sentMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "sentMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "sentMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.sentMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void readMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "readMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "readMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.readMessageJson(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void unReadMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "unReadMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "unReadMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.unReadMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void cancelMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "cancelMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "cancelMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.cancelMessageJson(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void deleteMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "deleteMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "deleteMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.deleteMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void uploadMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "uploadMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "uploadMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.uploadMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void downloadMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "downloadMessage " + str);
                Log.i(CentralMsgStoreInterface.LOG_TAG, "downloadMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.downloadMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void requestMessageProcess(String str, String str2, int i) {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "requestMessageProcess " + str + " function: " + i + ": " + str2);
            }

            public void requestOperation(int i, int i2, String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "requestOperation " + str + " operation: " + i2 + ": " + str2);
            }

            public void wipeOutMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "wipeOutMessage " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "wipeOutMessage : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.wipeOutMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void onUserEnterApp(String str) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onUserEnterApp " + str);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mNetAPIWorkingController.setMsgAppForegroundStatus(true);
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.onReturnAppFetchingFailedMsg(str);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void onUserLeaveApp(String str) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onUserLeaveApp " + str);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mNetAPIWorkingController.setMsgAppForegroundStatus(false);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public boolean onUIButtonProceed(String str, int i, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onUIButtonProceed " + str + " screenName: " + i);
                String str3 = CentralMsgStoreInterface.LOG_TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onUIButtonProceed , message: ");
                sb.append(str2);
                Log.d(str3, sb.toString());
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    return CentralMsgStoreInterface.this.mNetAPIWorkingController.onUIButtonProceed(i, str2);
                }
                CentralMsgStoreInterface.this.logInvalidAppType();
                return false;
            }

            public void onBufferDBReadResult(String str, String str2, String str3, String str4, int i, boolean z) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onBufferDBReadResult: " + str + " msgType: " + str2 + " bufferRowID: " + str3 + " appMessageId: " + str4 + " syncAction: " + i + " isSuccess: " + z);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    if (CentralMsgStoreInterface.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getIsInitSyncIndicatorRequired() && Integer.valueOf(str3).intValue() < 0) {
                        CentralMsgStoreInterface.this.mNetAPIWorkingController.hideIndicator();
                        return;
                    } else {
                        CentralMsgStoreInterface.this.mCloudMessageScheduler.onBufferDBReadResult(str2, str3, str4, i, z);
                        return;
                    }
                }
                Log.d(CentralMsgStoreInterface.LOG_TAG, "ignore");
            }

            public void onBufferDBReadResultBatch(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onBufferDBReadResultBatch " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "onBufferDBReadResultBatch : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.bufferDbReadBatchMessageJson(str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void registerCallback(String str, ICentralMsgStoreService iCentralMsgStoreService) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "registerCallback " + str);
            }

            public void stopSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "stopSync " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "stopSync : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.stopSync(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void startFullSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "startFullSync " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "startFullSync : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.startFullSync(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void startDeltaSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "startDeltaSync " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "startDeltaSync : " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.startDeltaSync(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void deleteOldLegacyMessage(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "deleteOldLegacyMessage " + str + " thread:" + str2);
            }

            public void resumeSync(String str) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "resumeSync " + str);
            }

            public void restartService(String str) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "restartService " + str);
                if (CentralMsgStoreInterface.this.mNetAPIWorkingController.getCmsProfileEnabled()) {
                    CentralMsgStoreInterface.this.mNetAPIWorkingController.onRestartService();
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public void notifyCloudMessageUpdate(String str, String str2, String str3) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "notifyCloudMessageUpdate, apptype: " + str + " msgType: " + str2 + " rowIDs: " + str3);
            }

            public void createSession(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "createSession " + str + " chatId: " + str2);
                CentralMsgStoreInterface.this.mCloudMessageScheduler.createSession(str2);
            }

            public void createParticipant(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "createParticipant " + str + " chatId: " + str2);
                CentralMsgStoreInterface.this.mCloudMessageScheduler.createParticipant(str2);
            }

            public void deleteSession(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "deleteSession " + str + " chatId: " + str2);
                CentralMsgStoreInterface.this.mCloudMessageScheduler.deleteSession(str2);
            }

            public void deleteParticipant(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "deleteParticipant " + str + " chatId: " + str2);
                CentralMsgStoreInterface.this.mCloudMessageScheduler.deleteParticipant(str2);
            }

            public void onRCSDBReady(String str) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onRCSDBReady: " + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.CMS_PROFILE_EVENT);
                    String string2 = jSONObject.getString(CloudMessageProviderContract.JsonParamTags.SIM_STATUS);
                    Log.i(CentralMsgStoreInterface.LOG_TAG, "eventType =" + string + ", simStatus =" + string2);
                    if (CloudMessageProviderContract.SimStatusValue.SIM_REMOVED.equals(string2)) {
                        CentralMsgStoreInterface.this.mNetAPIWorkingController.setCmsProfileEnabled(false);
                        return;
                    }
                    if (CloudMessageProviderContract.SimStatusValue.SIM_READY.equals(string2) && CloudMessageProviderContract.CmsEventTypeValue.CMS_PROFILE_DISABLE.equals(string) && CmsUtil.isSimChanged(CentralMsgStoreInterface.this.mStoreClient)) {
                        CentralMsgStoreInterface.this.mStoreClient.getPrerenceManager().clearAll();
                    }
                    if (CloudMessageProviderContract.CmsEventTypeValue.CMS_PROFILE_ENABLE.equals(string)) {
                        if (!CentralMsgStoreInterface.this.mNetAPIWorkingController.getCmsProfileEnabled()) {
                            CentralMsgStoreInterface.this.mNetAPIWorkingController.setCmsProfileEnabled(true);
                            CentralMsgStoreInterface.this.mCloudMessageScheduler.onRCSDbReady();
                        }
                        if (CentralMsgStoreInterface.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().needToHandleSimSwap() && CmsUtil.isSimChanged(CentralMsgStoreInterface.this.mStoreClient)) {
                            CentralMsgStoreInterface.this.mNetAPIWorkingController.onRestartService();
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            public void manualSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "manualSync: " + str);
                Log.d(CentralMsgStoreInterface.LOG_TAG, "manualSync jsonSummary: " + str2);
                CentralMsgStoreInterface.this.mNetAPIWorkingController.setImpuFromImsRegistration(str2);
            }

            public void enableAutoSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "enableAutoSync: " + str);
            }

            public void disableAutoSync(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "disableAutoSync: " + str);
            }

            public void onFTUriResponse(String str, String str2) throws RemoteException {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "onFtUriResponse " + str + " " + str2);
                if (CentralMsgStoreInterface.this.isValidAppType(str, false)) {
                    CentralMsgStoreInterface.this.mCloudMessageScheduler.onFtUriResponseJson(str, str2);
                } else {
                    CentralMsgStoreInterface.this.logInvalidAppType();
                }
            }

            public int getRestartScreenName(String str) {
                Log.i(CentralMsgStoreInterface.LOG_TAG, "Restart Screen " + str);
                return 1;
            }
        };
    }

    public void notifyUIScreen(int i, String str, int i2) {
        String str2 = LOG_TAG;
        Log.i(str2, "notifyUIScreen, screenName: " + i);
        Log.d(str2, "notifyUIScreen, message: " + str + " param: " + i2);
        this.mJanskyIntentTranslation.onNotifyMessageAppUI(i, str, i2);
    }

    public void notifyAppInitialSyncStatus(String str, String str2, String str3, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag, boolean z) {
        Log.i(LOG_TAG, "notifyAppInitialSyncStatus, apptype: " + str + " msgType: " + str2 + " SyncStatus: " + initialSyncStatusFlag);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyIntentTranslation.onNotifyMessageAppInitialSyncStatus(str3, str2, initialSyncStatusFlag);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyIntentTranslation.onNotifyVVMAppInitialSyncStatus(str3, str2, initialSyncStatusFlag, z);
        }
    }

    public void notifyCloudMessageUpdate(String str, String str2, String str3) {
        Log.i(LOG_TAG, "notifyCloudMessageUpdate, apptype: " + str + " msgType: " + str2 + " rowIDs: " + str3);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyIntentTranslation.onNotifyMessageApp(str2, str3, false);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyIntentTranslation.onNotifyVVMApp(str2, str3);
        }
    }

    public void notifyAppCloudDeleteFail(String str, String str2, String str3) {
        Log.i(LOG_TAG, "notifyAppCloudDeleteFail, type: " + str + " msgtype: " + str2 + " bufferId: " + str3);
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equals(str)) {
            this.mJanskyIntentTranslation.onNotifyMessageAppCloudDeleteFailure(str2, str3);
        } else if ("VVMDATA".equals(str)) {
            this.mJanskyIntentTranslation.onNotifyVVMAppCloudDeleteFailure(str2, str3);
        }
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
            return CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str) || "VVMDATA".equalsIgnoreCase(str) || CloudMessageProviderContract.ApplicationTypes.RCSDATA.equalsIgnoreCase(str);
        }
        return false;
    }

    public ICentralMsgStoreService.Stub getBinder() {
        return this.mBinder;
    }
}
