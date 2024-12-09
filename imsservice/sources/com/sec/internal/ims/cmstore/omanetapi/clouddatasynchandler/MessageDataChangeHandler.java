package com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetAllPayloads;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetIndividualObject;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetIndividualPayLoad;
import com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MessageDataChangeHandler extends BaseDataChangeHandler {
    private String TAG;

    public MessageDataChangeHandler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper, messageStoreClient, iNetAPIEventListener, iUIEventCallback, str, syncMsgType, iCloudMessageManagerHelper);
        this.TAG = MessageDataChangeHandler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler
    public void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam) {
        this.mWorkingQueue.offer(bufferDBChangeParam);
        Log.i(this.TAG, "setWorkingQueue: message type: " + bufferDBChangeParam.mDBIndex + ", size : " + this.mWorkingQueue.size());
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler
    protected Pair<HttpRequestParams, Boolean> peekWorkingQueue() {
        BufferDBChangeParam peek = this.mWorkingQueue.peek();
        Log.i(this.TAG, "peekWorkingQueue: " + peek);
        if (peek == null) {
            return null;
        }
        int i = peek.mDBIndex;
        if (i == 3) {
            return new Pair<>(new CloudMessageGetIndividualObject(this, this.mBufferDBTranslation.getSmsObjectIdFromBufDb(peek), peek, this.mStoreClient), Boolean.FALSE);
        }
        if (i == 4) {
            Pair<String, List<String>> objectIdPartIdFromMmsBufDb = this.mBufferDBTranslation.getObjectIdPartIdFromMmsBufDb(peek);
            if (this.isCmsEnabled) {
                Log.i(this.TAG, "Download MMS All payload");
                return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, this.mBufferDBTranslation.getPayloadUrlfromMmsPduBufferId(peek), peek, this.mStoreClient), Boolean.FALSE);
            }
            List<String> payloadPartUrlFromMmsBufDb = this.mBufferDBTranslation.getPayloadPartUrlFromMmsBufDb(peek);
            String str = (String) objectIdPartIdFromMmsBufDb.first;
            if (payloadPartUrlFromMmsBufDb != null && payloadPartUrlFromMmsBufDb.size() > 0) {
                Log.i(this.TAG, "setWorkingQueue payloadUrls size: " + payloadPartUrlFromMmsBufDb.size());
                Iterator<String> it = payloadPartUrlFromMmsBufDb.iterator();
                if (it.hasNext()) {
                    return new Pair<>(CloudMessageGetIndividualPayLoad.buildFromPayloadUrl(this, it.next(), peek, this.mStoreClient), Boolean.FALSE);
                }
                return null;
            }
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new Pair<>(new CloudMessageGetIndividualObject(this, str, peek, this.mStoreClient), Boolean.FALSE);
        }
        if (i == 6) {
            String payloadPartUrlFromMmsPartUsingPartBufferId = this.mBufferDBTranslation.getPayloadPartUrlFromMmsPartUsingPartBufferId(peek);
            if (TextUtils.isEmpty(payloadPartUrlFromMmsPartUsingPartBufferId)) {
                return null;
            }
            return new Pair<>(CloudMessageGetIndividualPayLoad.buildFromPayloadUrl(this, payloadPartUrlFromMmsPartUsingPartBufferId, peek, this.mStoreClient), Boolean.FALSE);
        }
        if (i != 1) {
            if (i == 7) {
                return new Pair<>(new CloudMessageGetIndividualObject(this, this.mBufferDBTranslation.getSummaryObjectIdFromBufDb(peek), peek, this.mStoreClient), Boolean.FALSE);
            }
            if (i != 13) {
                return null;
            }
            String imdnResUrl = this.mBufferDBTranslation.getImdnResUrl(peek.mRowId);
            if (TextUtils.isEmpty(imdnResUrl)) {
                IMSLog.e(this.TAG, "resUrl of Imdn is empty!");
                return null;
            }
            return new Pair<>(new McsGetChatImdns(this, imdnResUrl, peek, this.mStoreClient), Boolean.FALSE);
        }
        Pair<String, List<String>> objectIdPartIdFromRCSBufDb = this.mBufferDBTranslation.getObjectIdPartIdFromRCSBufDb(peek);
        Pair<String, String> payloadPartandAllPayloadUrlFromRCSBufDb = this.mBufferDBTranslation.getPayloadPartandAllPayloadUrlFromRCSBufDb(peek);
        if (this.isCmsEnabled && !peek.mIsDownloadRequestFromApp) {
            if (this.mIsFTThumbnailDownload) {
                this.mIsFTThumbnailDownload = false;
            } else {
                payloadPartandAllPayloadUrlFromRCSBufDb = this.mBufferDBTranslation.getAllPayloadUrlFromRCSBufDb(peek);
                if (peek.mIsFTThumbnail) {
                    this.mIsFTThumbnailDownload = true;
                }
                Log.i(this.TAG, "param.mPayloadThumbnailUrl : " + peek.mPayloadThumbnailUrl + ", mIsFTThumbnailDownload = " + this.mIsFTThumbnailDownload);
            }
        }
        String str2 = (String) payloadPartandAllPayloadUrlFromRCSBufDb.first;
        String str3 = (String) payloadPartandAllPayloadUrlFromRCSBufDb.second;
        String str4 = (String) objectIdPartIdFromRCSBufDb.first;
        Log.d(this.TAG, "payloadpartUrl: " + str2 + " payloadUrl: " + str3 + " objId: " + str4);
        if (this.mIsFTThumbnailDownload) {
            return getPayloadRequestOrDownload(peek, peek.mPayloadThumbnailUrl, true);
        }
        if (!TextUtils.isEmpty(str2)) {
            return getPayloadRequestOrDownload(peek, str2, true);
        }
        if (!TextUtils.isEmpty(str3)) {
            return getPayloadRequestOrDownload(peek, str3, false);
        }
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        return new Pair<>(new CloudMessageGetIndividualObject(this, str4, peek, this.mStoreClient), Boolean.FALSE);
    }

    private Pair<HttpRequestParams, Boolean> getPayloadRequestOrDownload(BufferDBChangeParam bufferDBChangeParam, String str, boolean z) {
        if (this.isCmsEnabled) {
            if (bufferDBChangeParam.mIsDownloadRequestFromApp) {
                if (CmsUtil.urlContainsLargeFile(this.mStoreClient, str)) {
                    return downloadPayloadFromFileDownloadHandler(bufferDBChangeParam, str);
                }
            } else {
                if (this.mBufferDBTranslation.needToSkipDownloadLargeFileAndUpdateDB(bufferDBChangeParam.mRowId, CloudMessageBufferDBConstants.ActionStatusFlag.None.getId(), CloudMessageBufferDBConstants.DirectionFlag.Done.getId(), str, this.mIsFTThumbnailDownload)) {
                    Log.i(this.TAG, "getPayloadRequestOrDownload large file download payload skipped");
                    return null;
                }
                if (CmsUtil.urlContainsLargeFile(this.mStoreClient, str)) {
                    return downloadPayloadFromFileDownloadHandler(bufferDBChangeParam, str);
                }
            }
        }
        return getPayloadRequestBasedOnUrl(bufferDBChangeParam, str, z);
    }

    private Pair<HttpRequestParams, Boolean> getPayloadRequestBasedOnUrl(BufferDBChangeParam bufferDBChangeParam, String str, boolean z) {
        if (z) {
            return new Pair<>(CloudMessageGetIndividualPayLoad.buildFromPayloadUrl(this, str, bufferDBChangeParam, this.mStoreClient), Boolean.FALSE);
        }
        return new Pair<>(CloudMessageGetAllPayloads.buildFromPayloadUrl(this, str, bufferDBChangeParam, this.mStoreClient), Boolean.FALSE);
    }

    private Pair<HttpRequestParams, Boolean> downloadPayloadFromFileDownloadHandler(BufferDBChangeParam bufferDBChangeParam, String str) {
        this.mFileDownloadHandler.start(str, bufferDBChangeParam);
        return new Pair<>(null, Boolean.TRUE);
    }
}
