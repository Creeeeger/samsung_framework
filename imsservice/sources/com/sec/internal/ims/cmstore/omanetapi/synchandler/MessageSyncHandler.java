package com.sec.internal.ims.cmstore.omanetapi.synchandler;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkCreation;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateAllObjects;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetAllPayloads;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetIndividualObject;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetIndividualPayLoad;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamBulkCreation;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MessageSyncHandler extends BaseSyncHandler {
    public static final int MAX_PAYLOAD_SIZE = 104857600;
    private String TAG;
    FileDownloadHandler mFileDownloadHandler;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
    }

    public MessageSyncHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper, boolean z) {
        super(looper, messageStoreClient, iNetAPIEventListener, iUIEventCallback, str, syncMsgType, iCloudMessageManagerHelper, z);
        this.TAG = MessageSyncHandler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mFileDownloadHandler = new FileDownloadHandler(this, looper, messageStoreClient, this.mBufferDBTranslation);
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam, BaseSyncHandler.SyncOperation syncOperation) {
        if (BaseSyncHandler.SyncOperation.DOWNLOAD.equals(syncOperation)) {
            setDownloadQueueInternal(bufferDBChangeParam);
        } else if (BaseSyncHandler.SyncOperation.UPLOAD.equals(syncOperation)) {
            setUploadQueueInternal(bufferDBChangeParam);
        }
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected Pair<HttpRequestParams, Boolean> peekDownloadQueue() {
        Pair<String, String> allPayloadUrlFromRCSBufDb;
        BufferDBChangeParam peek = this.mWorkingDownloadQueue.peek();
        Log.i(this.TAG, "peekDownloadQueue: " + peek);
        if (peek == null) {
            return null;
        }
        int i = peek.mDBIndex;
        if (i == 4) {
            Pair<String, List<String>> objectIdPartIdFromMmsBufDb = this.mBufferDBTranslation.getObjectIdPartIdFromMmsBufDb(peek);
            String payloadUrlfromMmsPduBufferId = this.mBufferDBTranslation.getPayloadUrlfromMmsPduBufferId(peek);
            String str = (String) objectIdPartIdFromMmsBufDb.first;
            if (this.isCmsEnabled && payloadUrlfromMmsPduBufferId != null) {
                Log.i(this.TAG, "peekDownloadQueue PDU Payload Part partUrl: " + IMSLog.numberChecker(payloadUrlfromMmsPduBufferId));
                return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, payloadUrlfromMmsPduBufferId, peek, this.mStoreClient), Boolean.FALSE);
            }
            if (!TextUtils.isEmpty(str)) {
                Log.i(this.TAG, "peekDownloadQueue PDU Object");
                return new Pair<>(new CloudMessageGetIndividualObject(this, str, peek, this.mStoreClient), Boolean.FALSE);
            }
        } else if (i == 6) {
            String payloadPartUrlFromMmsPartUsingPartBufferId = this.mBufferDBTranslation.getPayloadPartUrlFromMmsPartUsingPartBufferId(peek);
            Log.i(this.TAG, "peekDownloadQueue part: payloadUrl: " + IMSLog.numberChecker(payloadPartUrlFromMmsPartUsingPartBufferId));
            if (!TextUtils.isEmpty(payloadPartUrlFromMmsPartUsingPartBufferId)) {
                return new Pair<>(CloudMessageGetIndividualPayLoad.buildFromPayloadUrl(this, payloadPartUrlFromMmsPartUsingPartBufferId, peek, this.mStoreClient), Boolean.FALSE);
            }
        } else if (i == 1) {
            Pair<String, List<String>> objectIdPartIdFromRCSBufDb = this.mBufferDBTranslation.getObjectIdPartIdFromRCSBufDb(peek);
            if (this.mIsFTThumbnailDownload) {
                allPayloadUrlFromRCSBufDb = this.mBufferDBTranslation.getPayloadPartandAllPayloadUrlFromRCSBufDb(peek);
                this.mIsFTThumbnailDownload = false;
            } else {
                allPayloadUrlFromRCSBufDb = this.mBufferDBTranslation.getAllPayloadUrlFromRCSBufDb(peek);
                if (peek.mIsFTThumbnail) {
                    this.mIsFTThumbnailDownload = true;
                }
                Log.i(this.TAG, "param.mPayloadThumbnailUrl : " + peek.mPayloadThumbnailUrl + ", mIsFTThumbnailDownload = " + this.mIsFTThumbnailDownload);
            }
            String str2 = (String) allPayloadUrlFromRCSBufDb.first;
            String str3 = (String) allPayloadUrlFromRCSBufDb.second;
            String str4 = (String) objectIdPartIdFromRCSBufDb.first;
            Log.i(this.TAG, "payloadpartUrl: " + IMSLog.numberChecker(str2) + " payloadUrl: " + IMSLog.numberChecker(str3) + " objId: " + str4);
            if (this.mIsFTThumbnailDownload) {
                return getPayloadRequestOrDownload(peek, peek.mPayloadThumbnailUrl, true);
            }
            if (!TextUtils.isEmpty(str2)) {
                return getPayloadRequestOrDownload(peek, str2, true);
            }
            if (!TextUtils.isEmpty(str3)) {
                return getPayloadRequestOrDownload(peek, str3, false);
            }
            if (!TextUtils.isEmpty(str4)) {
                return new Pair<>(new CloudMessageGetIndividualObject(this, str4, peek, this.mStoreClient), Boolean.FALSE);
            }
        } else if (i == 17) {
            return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, this.mBufferDBTranslation.getVVMpayLoadUrlFromBufDb(peek), peek, this.mStoreClient), Boolean.FALSE);
        }
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected Pair<HttpRequestParams, Boolean> peekUploadQueue() {
        BufferDBChangeParam peek = this.mWorkingUploadQueue.peek();
        Log.i(this.TAG, "peekUploadQueue: " + peek);
        if (peek == null) {
            return null;
        }
        if (this.isCmsEnabled && peek.mDBIndex == 12) {
            IMSLog.i(this.TAG, "Cloud DB is FT");
            this.mFileHandler.start(peek);
            return new Pair<>(null, Boolean.TRUE);
        }
        Pair<Object, HttpPostBody> pairFromCursor = getPairFromCursor(peek);
        if (pairFromCursor == null) {
            return null;
        }
        int i = peek.mDBIndex;
        if (i == 13 && pairFromCursor.first == null) {
            return null;
        }
        if (i == 13 || pairFromCursor.first != null) {
            return new Pair<>(new CloudMessageCreateAllObjects(this, new ParamObjectUpload(pairFromCursor, peek), this.mStoreClient), Boolean.FALSE);
        }
        return null;
    }

    private Pair<Object, HttpPostBody> getPairFromCursor(BufferDBChangeParam bufferDBChangeParam) {
        Log.i(this.TAG, "getPairFromCursor param: " + bufferDBChangeParam);
        int i = bufferDBChangeParam.mDBIndex;
        if (i == 3) {
            return this.mBufferDBTranslation.getSmsObjectPairFromCursor(bufferDBChangeParam);
        }
        if (i == 4) {
            return this.mBufferDBTranslation.getMmsObjectPairFromCursor(bufferDBChangeParam);
        }
        if (i == 1) {
            return this.mBufferDBTranslation.getRCSObjectPairFromCursor(bufferDBChangeParam, null);
        }
        if (i == 13) {
            return this.mBufferDBTranslation.getImdnObjectPair(bufferDBChangeParam);
        }
        if (i == 10) {
            return this.mBufferDBTranslation.getRcsSessionFromCursor(bufferDBChangeParam);
        }
        return null;
    }

    protected Pair<Object, HttpPostBody> makeBulkUploadBody(BufferDBChangeParam bufferDBChangeParam) {
        Log.e(this.TAG, "makeBulkUploadBody: " + bufferDBChangeParam);
        if (bufferDBChangeParam == null) {
            return null;
        }
        Pair<Object, HttpPostBody> pairFromCursor = getPairFromCursor(bufferDBChangeParam);
        if (pairFromCursor != null) {
            int i = bufferDBChangeParam.mDBIndex;
            if (i == 13 && pairFromCursor.first == null) {
                return null;
            }
            if (i != 13 && (pairFromCursor.first == null || pairFromCursor.second == null)) {
                return null;
            }
        }
        return pairFromCursor;
    }

    private void setDownloadQueueInternal(BufferDBChangeParam bufferDBChangeParam) {
        Pair<Integer, Long> pair = new Pair<>(Integer.valueOf(bufferDBChangeParam.mDBIndex), Long.valueOf(bufferDBChangeParam.mRowId));
        if (this.mWorkingDownloadSet.contains(pair)) {
            Log.d(this.TAG, "setDownloadQueueInternal : Already downloading dbId:" + bufferDBChangeParam.mDBIndex + " rowId:" + bufferDBChangeParam.mRowId);
            return;
        }
        this.mWorkingDownloadQueue.offer(bufferDBChangeParam);
        this.mWorkingDownloadSet.add(pair);
        Log.d(this.TAG, "setWorkingQueue :: " + bufferDBChangeParam + " size: " + this.mWorkingDownloadQueue.size() + " Setsize:" + this.mWorkingDownloadSet.size());
    }

    private void setUploadQueueInternal(BufferDBChangeParam bufferDBChangeParam) {
        this.mWorkingUploadQueue.offer(bufferDBChangeParam);
        Log.d(this.TAG, "setUploadQueueInternal: " + bufferDBChangeParam + " size : " + this.mWorkingUploadQueue.size());
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void setBulkUploadQueue(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.d(this.TAG, "setBulkUploadQueue param: " + bufferDBChangeParamList);
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            if (next != null) {
                this.mBulkUploadQueue.add(next);
            }
        }
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected void makeBulkUploadparameter() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        int maxBulkOptionEntry = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxBulkOptionEntry();
        Log.d(this.TAG, "maxEntryBulkUpload: " + maxBulkOptionEntry + " listsize: " + this.mBulkUploadQueue.size());
        if (maxBulkOptionEntry <= 1) {
            maxBulkOptionEntry = 100;
        }
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        int i = 0;
        while (!this.mBulkUploadQueue.isEmpty()) {
            BufferDBChangeParam peek = this.mBulkUploadQueue.peek();
            if (peek == null) {
                this.mBulkUploadQueue.poll();
            } else {
                Pair<Object, HttpPostBody> makeBulkUploadBody = makeBulkUploadBody(peek);
                if (makeBulkUploadBody == null) {
                    this.mBulkUploadQueue.poll();
                } else {
                    Object object = (Object) makeBulkUploadBody.first;
                    HttpPostBody httpPostBody = (HttpPostBody) makeBulkUploadBody.second;
                    if (object == null || httpPostBody == null) {
                        this.mBulkUploadQueue.poll();
                    } else {
                        long j = i;
                        if (httpPostBody.getBodySize() + j > 104857600) {
                            break;
                        }
                        i = (int) (j + httpPostBody.getBodySize());
                        Log.d(this.TAG, "postBodySize is: " + i);
                        bufferDBChangeParamList.mChangelst.add(peek);
                        arrayList.add((Object) makeBulkUploadBody.first);
                        arrayList2.add((HttpPostBody) makeBulkUploadBody.second);
                        this.mBulkUploadQueue.poll();
                        if (arrayList.size() >= maxBulkOptionEntry) {
                            break;
                        }
                    }
                }
            }
        }
        if (bufferDBChangeParamList.mChangelst.isEmpty()) {
            return;
        }
        ObjectList objectList = new ObjectList();
        objectList.object = (Object[]) arrayList.toArray(new Object[arrayList.size()]);
        this.mBulkCreation = new ParamBulkCreation(new Pair(objectList, arrayList2), bufferDBChangeParamList, userTelCtn);
        Log.e(this.TAG, "bulk upload count:" + arrayList.size());
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler
    protected HttpRequestParams peekBulkUploadQueue() {
        if (this.mBulkCreation == null) {
            return null;
        }
        return new CloudMessageBulkCreation(this, this.mBulkCreation, this.mStoreClient);
    }

    private Pair<HttpRequestParams, Boolean> getPayloadRequestOrDownload(BufferDBChangeParam bufferDBChangeParam, String str, boolean z) {
        if (this.isCmsEnabled) {
            if (this.mBufferDBTranslation.needToSkipDownloadLargeFileAndUpdateDB(bufferDBChangeParam.mRowId, CloudMessageBufferDBConstants.ActionStatusFlag.None.getId(), CloudMessageBufferDBConstants.DirectionFlag.Done.getId(), str, this.mIsFTThumbnailDownload)) {
                Log.i(this.TAG, "large file download payload skipped");
                return null;
            }
            if (CmsUtil.urlContainsLargeFile(this.mStoreClient, str)) {
                this.mFileDownloadHandler.start(str, bufferDBChangeParam);
                return new Pair<>(null, Boolean.TRUE);
            }
        }
        if (z) {
            return new Pair<>(CloudMessageGetIndividualPayLoad.buildFromPayloadUrl(this, str, bufferDBChangeParam, this.mStoreClient), Boolean.FALSE);
        }
        return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, str, bufferDBChangeParam, this.mStoreClient), Boolean.FALSE);
    }
}
