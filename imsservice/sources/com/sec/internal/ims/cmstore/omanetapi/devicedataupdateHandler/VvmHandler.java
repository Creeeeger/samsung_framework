package com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateAllObjects;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGetVvmProfile;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGreetingBulkDeletion;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGreetingSearch;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageObjectsOpSearchForVvmNormalSync;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageVvmProfileAttributePut;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageVvmProfileUpdate;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmServiceProfile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.omanetapi.nms.CloudMessageGetVVMQuotaInfo;
import com.sec.internal.omanetapi.nms.data.BulkDelete;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import com.sec.internal.omanetapi.nms.data.ObjectReferenceList;
import com.sec.internal.omanetapi.nms.data.Reference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class VvmHandler extends Handler implements IAPICallFlowListener, IControllerCommonInterface {
    private String TAG;
    private IRetryStackAdapterHelper iRetryStackAdapterHelper;
    private final BufferDBTranslation mBufferDbTranslation;
    private final ICloudMessageManagerHelper mICloudMessageManagerHelper;
    private final INetAPIEventListener mINetAPIEventListener;
    private MessageStoreClient mStoreClient;
    private final RegistrantList mUpdateFromCloudRegistrants;
    private boolean mbIsSyncing;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public VvmHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper);
        this.TAG = VvmHandler.class.getSimpleName();
        this.mbIsSyncing = false;
        this.mUpdateFromCloudRegistrants = new RegistrantList();
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBufferDbTranslation = new BufferDBTranslation(this.mStoreClient, iCloudMessageManagerHelper);
        this.mINetAPIEventListener = iNetAPIEventListener;
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
    }

    public void resetDateFormat() {
        this.mBufferDbTranslation.resetDateFormat();
    }

    public void registerForUpdateFromCloud(Handler handler, int i, Object obj) {
        this.mUpdateFromCloudRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        Log.i(this.TAG, "message: " + message.what);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        if (valueOf == null) {
        }
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()]) {
            case 1:
                this.mStoreClient.getRetryMapAdapter().retryApi((Pair) message.obj, this, this.mICloudMessageManagerHelper, null);
                break;
            case 2:
                setUpVvmDataUpdate((BufferDBChangeParamList) message.obj);
                break;
            case 3:
                this.mStoreClient.getHttpController().execute(new CloudMessageGetVVMQuotaInfo(this, (BufferDBChangeParam) message.obj, this.mStoreClient));
                break;
            case 4:
                BufferDBChangeParam bufferDBChangeParam = (BufferDBChangeParam) message.obj;
                this.mStoreClient.getHttpController().execute(new CloudMessageGreetingSearch(this, "", bufferDBChangeParam.mLine, bufferDBChangeParam, this.mStoreClient));
                break;
            case 5:
                deleteGreeting((ParamOMAresponseforBufDB) message.obj);
                break;
            case 6:
                Object obj = message.obj;
                if (obj != null) {
                    deleteGreetingAndSearch((ParamOMAresponseforBufDB) obj);
                    break;
                }
                break;
            case 7:
                uploadGreeting((ParamOMAresponseforBufDB) message.obj);
                break;
            case 8:
                ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.VVM_FAX_ERROR_WITH_NO_RETRY).setBufferDBChangeParam((BufferDBChangeParam) message.obj);
                Message obtainMessage = obtainMessage(OMASyncEventType.VVM_NOTIFY.getId());
                obtainMessage.obj = bufferDBChangeParam2.build();
                sendMessage(obtainMessage);
                break;
            case 9:
            case 10:
                Message obtainMessage2 = obtainMessage(OMASyncEventType.VVM_NOTIFY.getId());
                obtainMessage2.obj = message.obj;
                sendMessage(obtainMessage2);
                break;
            case 11:
                this.mINetAPIEventListener.onOmaAuthenticationFailed((ParamOMAresponseforBufDB) message.obj, 0L);
                break;
            case 12:
                notifyBufferDB((ParamOMAresponseforBufDB) message.obj);
                break;
            case 13:
                if (this.mbIsSyncing) {
                    normalSyncRequest();
                    break;
                } else {
                    sendNormalSyncRequest();
                    break;
                }
            case 14:
                notifyBufferDB((ParamOMAresponseforBufDB) message.obj);
                sendNormalSyncRequest();
                break;
            case 15:
                notifyBufferDB((ParamOMAresponseforBufDB) message.obj);
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.VvmHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.VVM_FALLBACK_TO_LAST_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.EVENT_VVM_DATA_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_GET_QUOTA_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEARCH_GREETING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_GREETING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.INITIAL_SYNC_CONTINUE_SEARCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPLOAD_GREETING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_CHANGE_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_CHANGE_ERROR_REASON.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_CHANGE_SUCCEED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_NOTIFY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_NORMAL_SYNC_REQUEST.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_NORMAL_SYNC_CONTINUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private void deleteGreetingAndSearch(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "deleteGreetingAndSearch: " + paramOMAresponseforBufDB);
        if (paramOMAresponseforBufDB == null) {
            return;
        }
        deleteGreeting(paramOMAresponseforBufDB);
        BufferDBChangeParam bufferDBChangeParam = paramOMAresponseforBufDB.getBufferDBChangeParam();
        this.mStoreClient.getHttpController().execute(new CloudMessageGreetingSearch(this, paramOMAresponseforBufDB.getSearchCursor(), bufferDBChangeParam.mLine, bufferDBChangeParam, this.mStoreClient));
    }

    private void deleteGreeting(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Object[] objectArr;
        Log.i(this.TAG, "deleteGreeting: " + paramOMAresponseforBufDB);
        if (paramOMAresponseforBufDB == null) {
            return;
        }
        ObjectList objectList = paramOMAresponseforBufDB.getObjectList();
        if (objectList == null || (objectArr = objectList.object) == null || objectArr.length == 0) {
            Message obtainMessage = obtainMessage(OMASyncEventType.UPLOAD_GREETING.getId());
            obtainMessage.obj = paramOMAresponseforBufDB;
            sendMessage(obtainMessage);
            return;
        }
        BulkDelete bulkDelete = new BulkDelete();
        bulkDelete.objects = new ObjectReferenceList();
        ArrayList arrayList = new ArrayList();
        for (Object object : objectList.object) {
            Reference reference = new Reference();
            reference.resourceURL = object.resourceURL;
            arrayList.add(reference);
        }
        bulkDelete.objects.objectReference = (Reference[]) arrayList.toArray(new Reference[arrayList.size()]);
        this.mStoreClient.getHttpController().execute(new CloudMessageGreetingBulkDeletion(this, bulkDelete, paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), paramOMAresponseforBufDB.getBufferDBChangeParam(), this.mStoreClient));
    }

    private void uploadGreeting(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Object obj;
        if (paramOMAresponseforBufDB == null) {
            return;
        }
        BufferDBChangeParam bufferDBChangeParam = paramOMAresponseforBufDB.getBufferDBChangeParam();
        Pair<Object, HttpPostBody> vVMGreetingObjectPairFromBufDb = this.mBufferDbTranslation.getVVMGreetingObjectPairFromBufDb(bufferDBChangeParam);
        ParamVvmUpdate.VvmGreetingType vVMGreetingTypeFromBufDb = this.mBufferDbTranslation.getVVMGreetingTypeFromBufDb(bufferDBChangeParam);
        Log.i(this.TAG, "uploadGreeting: " + paramOMAresponseforBufDB + " greetingtype: " + vVMGreetingTypeFromBufDb);
        if (!ParamVvmUpdate.VvmGreetingType.Default.equals(vVMGreetingTypeFromBufDb)) {
            if (vVMGreetingObjectPairFromBufDb != null && (obj = vVMGreetingObjectPairFromBufDb.second) != null && ((HttpPostBody) obj).getMultiparts() != null && ((HttpPostBody) vVMGreetingObjectPairFromBufDb.second).getMultiparts().size() > 0) {
                this.mStoreClient.getHttpController().execute(new CloudMessageCreateAllObjects(this, new ParamObjectUpload(vVMGreetingObjectPairFromBufDb, bufferDBChangeParam), this.mStoreClient));
                return;
            } else {
                sendMessage(obtainMessage(OMASyncEventType.VVM_CHANGE_ERROR.getId(), paramOMAresponseforBufDB.getBufferDBChangeParam()));
                return;
            }
        }
        ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.ONE_MESSAGE_UPLOADED).setBufferDBChangeParam(bufferDBChangeParam);
        Message obtainMessage = obtainMessage(OMASyncEventType.VVM_CHANGE_SUCCEED.getId());
        obtainMessage.obj = bufferDBChangeParam2.build();
        sendMessage(obtainMessage);
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    public void sendVvmUpdate(BufferDBChangeParamList bufferDBChangeParamList) {
        Message obtainMessage = obtainMessage(OMASyncEventType.EVENT_VVM_DATA_UPDATE.getId());
        obtainMessage.obj = bufferDBChangeParamList;
        sendMessage(obtainMessage);
    }

    public void getVvmQuota(BufferDBChangeParamList bufferDBChangeParamList) {
        ArrayList<BufferDBChangeParam> arrayList;
        if (bufferDBChangeParamList == null || (arrayList = bufferDBChangeParamList.mChangelst) == null || arrayList.isEmpty()) {
            Log.i(this.TAG, "Empty Buffer List");
            return;
        }
        Message obtainMessage = obtainMessage(OMASyncEventType.VVM_GET_QUOTA_INFO.getId());
        obtainMessage.obj = bufferDBChangeParamList.mChangelst.get(0);
        sendMessage(obtainMessage);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        this.mINetAPIEventListener.onOmaSuccess(iHttpAPICommonInterface);
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        sendEmptyMessage(OMASyncEventType.VVM_CHANGE_ERROR.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
        Log.i(this.TAG, "onFailedCall, SyncMsgType : " + syncMsgType);
        if (syncMsgType == SyncMsgType.VM || syncMsgType == SyncMsgType.VM_GREETINGS) {
            Pair<IHttpAPICommonInterface, SyncMsgType> pair = new Pair<>(iHttpAPICommonInterface, syncMsgType);
            boolean searchAndPush = this.mStoreClient.getRetryMapAdapter().searchAndPush(pair, i);
            long timerValue = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getTimerValue(i);
            Log.i(this.TAG, "Timer Value : " + timerValue + ", isRetryAvailable: " + searchAndPush);
            if (searchAndPush && timerValue != -1) {
                sendMessageDelayed(obtainMessage(OMASyncEventType.VVM_FALLBACK_TO_LAST_REQUEST.getId(), pair), timerValue);
                return;
            }
            if (pair.first instanceof CloudMessageObjectsOpSearchForVvmNormalSync) {
                this.mbIsSyncing = false;
                ParamOMAresponseforBufDB.Builder actionType = new ParamOMAresponseforBufDB.Builder().setLine(this.mStoreClient.getPrerenceManager().getUserTelCtn()).setSyncType(syncMsgType).setActionType(ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE);
                Message message = new Message();
                message.obj = actionType.build();
                message.what = OMASyncEventType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE.getId();
                onFixedFlowWithMessage(message);
                return;
            }
            sendMessage(obtainMessage(OMASyncEventType.VVM_CHANGE_ERROR.getId(), bufferDBChangeParam));
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        sendMessage(obtainMessage(OMASyncEventType.VVM_CHANGE_ERROR.getId(), bufferDBChangeParam));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        sendEmptyMessage(OMASyncEventType.VVM_CHANGE_ERROR.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        sendMessage(obtainMessage(OMASyncEventType.SELF_RETRY.getId(), Integer.valueOf(i)));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
        sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
        if (message != null && message.obj != null) {
            Log.i(this.TAG, "onFixedFlowWithMessage message is " + message.what);
        }
        sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        return sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        return sendMessage(message);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        Log.i(this.TAG, "updateDelay: eventType: " + i + " delay: " + j);
        return sendMessageDelayed(obtainMessage(i), j);
    }

    private void notifyBufferDB(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null) {
            Log.e(this.TAG, "notifyBufferDB ParamOMAresponseforBufDB is null");
        }
        this.mUpdateFromCloudRegistrants.notifyRegistrants(new AsyncResult(null, paramOMAresponseforBufDB, null));
    }

    private void setUpVvmDataUpdate(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "setUpVvmDataUpdate param: " + bufferDBChangeParamList);
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            if (next != null) {
                VvmServiceProfile vvmServiceProfile = new VvmServiceProfile();
                switch (next.mDBIndex) {
                    case 17:
                    case 20:
                        ParamVvmUpdate.VvmTypeChange vVMServiceProfileFromBufDb = this.mBufferDbTranslation.getVVMServiceProfileFromBufDb(next, vvmServiceProfile);
                        if (vVMServiceProfileFromBufDb != null) {
                            Log.i(this.TAG, "setUpVvmDataUpdate :VvmTypeChange " + vVMServiceProfileFromBufDb.getId());
                            if (vVMServiceProfileFromBufDb.equals(ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT)) {
                                this.mStoreClient.getHttpController().execute(new CloudMessageVvmProfileUpdate(this, vvmServiceProfile, next, this.mStoreClient));
                                break;
                            } else if (isProfileAttributePut(vVMServiceProfileFromBufDb)) {
                                this.mStoreClient.getHttpController().execute(new CloudMessageVvmProfileAttributePut(this, vvmServiceProfile, next, this.mStoreClient));
                                break;
                            } else if (!vVMServiceProfileFromBufDb.equals(ParamVvmUpdate.VvmTypeChange.FULLPROFILE)) {
                                break;
                            } else {
                                this.mStoreClient.getHttpController().execute(new CloudMessageGetVvmProfile(this, next, this.mStoreClient));
                                break;
                            }
                        } else {
                            break;
                        }
                    case 18:
                        Message obtainMessage = obtainMessage(OMASyncEventType.SEARCH_GREETING.getId());
                        obtainMessage.obj = next;
                        sendMessage(obtainMessage);
                        break;
                    case 19:
                        this.mBufferDbTranslation.getVVMServiceProfileFromBufDb(next, vvmServiceProfile);
                        this.mStoreClient.getHttpController().execute(new CloudMessageVvmProfileUpdate(this, vvmServiceProfile, next, this.mStoreClient));
                        break;
                }
            }
        }
    }

    public void normalSyncRequest() {
        OMASyncEventType oMASyncEventType = OMASyncEventType.VVM_NORMAL_SYNC_REQUEST;
        removeMessages(oMASyncEventType.getId());
        sendEmptyMessageDelayed(oMASyncEventType.getId(), 1000L);
    }

    private void sendNormalSyncRequest() {
        Log.d(this.TAG, "sendNormalSyncRequest ");
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        Log.d(this.TAG, "line is " + userTelCtn);
        BufferDBTranslation bufferDBTranslation = this.mBufferDbTranslation;
        SyncMsgType syncMsgType = SyncMsgType.VM;
        OMASyncEventType initialSyncStatusByLine = bufferDBTranslation.getInitialSyncStatusByLine(userTelCtn, syncMsgType, CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS);
        if (initialSyncStatusByLine == null) {
            Log.d(this.TAG, "full sync is not complete yet mEventType is null");
            return;
        }
        if (!OMASyncEventType.INITIAL_SYNC_COMPLETE.equals(initialSyncStatusByLine)) {
            Log.d(this.TAG, "full sync is not complete yet, do normal sync until initial sync is finished");
            return;
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGbaSupported()) {
            if (!TextUtils.isEmpty(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost())) {
                CloudMessageObjectsOpSearchForVvmNormalSync cloudMessageObjectsOpSearchForVvmNormalSync = new CloudMessageObjectsOpSearchForVvmNormalSync(this, null, userTelCtn, syncMsgType, false, this.mStoreClient);
                this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
                this.mStoreClient.getHttpController().execute(cloudMessageObjectsOpSearchForVvmNormalSync);
                this.mbIsSyncing = true;
                return;
            }
            Log.e(this.TAG, "NMS host is null");
            return;
        }
        Log.e(this.TAG, "Gba not supported");
    }

    public void setSyncState(boolean z) {
        this.mbIsSyncing = z;
    }

    public boolean getSyncState() {
        return this.mbIsSyncing;
    }

    private boolean isProfileAttributePut(ParamVvmUpdate.VvmTypeChange vvmTypeChange) {
        return vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.ACTIVATE) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.DEACTIVATE) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.NUTOFF) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.NUTON) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.V2TLANGUAGE) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.ADHOC_V2T) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.V2T_SMS) || vvmTypeChange.equals(ParamVvmUpdate.VvmTypeChange.V2T_EMAIL);
    }
}
