package com.sec.internal.ims.cmstore;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.Log;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.helper.os.TelephonyUtilsWrapper;
import com.sec.internal.ims.cmstore.CloudMessageIntent;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class JanskyIntentTranslation {
    private String LOG_TAG;
    private final Context mContext;
    private int mPhoneId;
    private MessageStoreClient mStoreClient;

    public JanskyIntentTranslation(Context context, MessageStoreClient messageStoreClient) {
        String simpleName = JanskyIntentTranslation.class.getSimpleName();
        this.LOG_TAG = simpleName;
        Log.i(simpleName, "Create JanskyServiceTranslation.");
        this.mContext = context;
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = messageStoreClient.getClientID();
        this.LOG_TAG += "[" + this.mStoreClient.getClientID() + "]";
    }

    public void onNotifyMessageApp(String str, String str2, boolean z) {
        Intent intent = new Intent(CloudMessageIntent.Action.MSGINTENT);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str);
        intent.putExtra(CloudMessageIntent.Extras.ROWIDS, str2);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        if ("FT".equals(str)) {
            intent.putExtra(CloudMessageIntent.Extras.FETCH_URI_RESPONSE, !z);
        }
        Log.i(this.LOG_TAG, "onNotifyMessageApp : " + str);
        IMSLog.s(this.LOG_TAG, "onNotifyMessageApp, broadcastIntent: " + intent.toString() + intent.getExtras());
        sendBroadcastToMsgApp(this.mContext, intent);
    }

    /* renamed from: com.sec.internal.ims.cmstore.JanskyIntentTranslation$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag;

        static {
            int[] iArr = new int[CloudMessageBufferDBConstants.InitialSyncStatusFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag = iArr;
            try {
                iArr[CloudMessageBufferDBConstants.InitialSyncStatusFlag.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag[CloudMessageBufferDBConstants.InitialSyncStatusFlag.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag[CloudMessageBufferDBConstants.InitialSyncStatusFlag.FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag[CloudMessageBufferDBConstants.InitialSyncStatusFlag.IGNORED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void onNotifyMessageAppInitialSyncStatus(String str, String str2, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag) {
        Intent intent;
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag[initialSyncStatusFlag.ordinal()];
        if (i == 1) {
            intent = new Intent(CloudMessageIntent.Action.MSGINTENT_INITSYNSTART);
        } else if (i == 2) {
            intent = new Intent(CloudMessageIntent.Action.MSGINTENT_INITSYNCEND);
        } else {
            intent = i != 3 ? null : new Intent(CloudMessageIntent.Action.MSGINTENT_INITSYNCFAIL);
        }
        if (intent != null) {
            intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
            intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str2);
            intent.putExtra("linenum", str);
            IMSLog.s(this.LOG_TAG, "onNotifyMessageAppInitialSyncStatus, broadcastIntent: " + intent.toString() + intent.getExtras());
            sendBroadcastToMsgApp(this.mContext, intent);
        }
    }

    public void onNotifyVVMAppInitialSyncStatus(String str, String str2, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag, boolean z) {
        Intent intent;
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag[initialSyncStatusFlag.ordinal()];
        if (i == 1) {
            intent = new Intent(CloudMessageIntent.Action.VVMINTENT_INITIALSYNCSTART);
        } else if (i == 2) {
            intent = new Intent(CloudMessageIntent.Action.VVMINTENT_INITIALSYNCEND);
        } else if (i == 3) {
            intent = new Intent(CloudMessageIntent.Action.VVMINTENT_INITIALSYNCFAIL);
        } else {
            intent = i != 4 ? null : new Intent(CloudMessageIntent.Action.VVMINTENT_NORMALSYNCPROCESSING);
        }
        if (intent != null) {
            intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
            intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str2);
            intent.putExtra("linenum", str);
            intent.putExtra(CloudMessageIntent.Extras.FULLSYNC, z);
            IMSLog.i(this.LOG_TAG, "onNotifyVVMAppInitialSyncStatus messageType: " + str2);
            broadcastIntent(intent);
        }
    }

    public void onNotifyMessageAppCloudDeleteFailure(String str, String str2) {
        Intent intent = new Intent(CloudMessageIntent.Action.MSGDELETEFAILURE);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str);
        intent.putExtra(CloudMessageIntent.Extras.ROWIDS, str2);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        Log.i(this.LOG_TAG, "onNotifyMessageAppCloudDeleteFailure : " + str);
        IMSLog.s(this.LOG_TAG, "onNotifyMessageAppCloudDeleteFailure, broadcastIntent: " + intent.toString() + intent.getExtras());
        sendBroadcastToMsgApp(this.mContext, intent);
    }

    public void onNotifyMessageAppUI(int i, String str, int i2) {
        Intent intent = new Intent(CloudMessageIntent.Action.MSGUIINTENT);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.ExtrasAMBSUI.SCREENNAME, i);
        intent.putExtra(CloudMessageIntent.ExtrasAMBSUI.STYLE, str);
        intent.putExtra(CloudMessageIntent.ExtrasAMBSUI.PARAM, i2);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        Log.i(this.LOG_TAG, "onNotifyMessageAppUI : " + i);
        IMSLog.s(this.LOG_TAG, "onNotifyMessageAppUI, broadcastIntent: " + intent.toString() + intent.getExtras());
        sendBroadcastToMsgApp(this.mContext, intent);
    }

    public void onNotifyVVMApp(String str, String str2) {
        Intent intent = new Intent(CloudMessageIntent.Action.VVMINTENT);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str);
        intent.putExtra(CloudMessageIntent.Extras.ROWIDS, str2);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        Log.i(this.LOG_TAG, "onNotifyVVMApp msgType: " + str);
        broadcastIntent(intent);
    }

    public void notifyAppNetworkOperationResult(boolean z) {
        Log.i(this.LOG_TAG, "notifyAppNetworkOperationResult opInProgress: " + z);
        Intent intent = new Intent(CloudMessageIntent.Action.VVMINTENT);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, "VVMDATA");
        intent.putExtra(CloudMessageIntent.Extras.NETWORK_OP_IN_PROGRESS, z);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        broadcastIntent(intent);
    }

    public void onNotifyVVMAppCloudDeleteFailure(String str, String str2) {
        Intent intent = new Intent(CloudMessageIntent.Action.VVMDATADELETEFAILURE);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra(CloudMessageIntent.Extras.MSGTYPE, str);
        intent.putExtra(CloudMessageIntent.Extras.ROWIDS, str2);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        IMSLog.i(this.LOG_TAG, "onNotifyVVMAppCloudDeleteFailure msgType: " + str);
        broadcastIntent(intent);
    }

    public void broadcastIntent(Intent intent) throws NullPointerException {
        IMSLog.s(this.LOG_TAG, "broadcastIntent: " + intent.toString() + intent.getExtras());
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mPhoneId));
        intent.setPackage(ImsConstants.Packages.PACKAGE_SEC_VVM);
        intent.addFlags(IntentUtil.FLAG_RECEIVER_INCLUDE_BACKGROUND);
        if (subscriptionUserHandle != null) {
            this.mContext.sendBroadcastAsUser(intent, subscriptionUserHandle);
        } else {
            this.mContext.sendBroadcastAsUser(intent, ContextExt.CURRENT_OR_SELF);
        }
    }

    public void sendBroadcastToMsgApp(Context context, Intent intent) {
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mPhoneId));
        intent.putExtra("sim_slot", this.mStoreClient.getClientID());
        intent.setPackage(ImsConstants.Packages.PACKAGE_SEC_MSG);
        intent.addFlags(IntentUtil.FLAG_RECEIVER_INCLUDE_BACKGROUND);
        if (subscriptionUserHandle != null) {
            context.sendBroadcastAsUser(intent, subscriptionUserHandle, CloudMessageIntent.Permission.MSGAPP);
        } else {
            context.sendBroadcastAsUser(intent, ContextExt.CURRENT_OR_SELF, CloudMessageIntent.Permission.MSGAPP);
        }
    }

    public void notifyAppOperationResult(String str, int i) {
        Intent intent = new Intent(CloudMessageIntent.Action.MSGAPPREQUEST);
        intent.addCategory(CloudMessageIntent.CATEGORY_ACTION);
        intent.putExtra("body", str);
        intent.putExtra("code", i);
        intent.putExtra("linenum", this.mStoreClient.getPrerenceManager().getUserCtn());
        IMSLog.s(this.LOG_TAG, "notifyAppOperationResult, broadcastIntent: " + intent + " " + intent.getExtras());
        sendBroadcastToMsgApp(this.mContext, intent);
    }
}
