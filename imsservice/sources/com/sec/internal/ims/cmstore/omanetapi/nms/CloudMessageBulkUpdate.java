package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BulkUpdating;
import com.sec.internal.omanetapi.nms.data.BulkUpdate;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageBulkUpdate extends BulkUpdating {
    private static final long serialVersionUID = 1;
    private String TAG;
    protected int bulkUpdateRetryCount;
    private final transient IAPICallFlowListener mIAPICallFlowListener;
    protected int responseCode;

    public CloudMessageBulkUpdate(final IAPICallFlowListener iAPICallFlowListener, BulkUpdate bulkUpdate, final String str, final SyncMsgType syncMsgType, final BufferDBChangeParamList bufferDBChangeParamList, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), str, messageStoreClient);
        this.TAG = CloudMessageBulkUpdate.class.getSimpleName();
        this.bulkUpdateRetryCount = 0;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIAPICallFlowListener = iAPICallFlowListener;
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(str));
        initBulkUpdateRequest(bulkUpdate, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkUpdate.1
            /* JADX WARN: Removed duplicated region for block: B:38:0x0127 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0128  */
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onComplete(com.sec.internal.helper.httpclient.HttpResponseParams r9) {
                /*
                    Method dump skipped, instructions count: 308
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkUpdate.AnonymousClass1.onComplete(com.sec.internal.helper.httpclient.HttpResponseParams):void");
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageBulkUpdate.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageBulkUpdate.this.mIAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    public int getRetryCount() {
        return this.bulkUpdateRetryCount;
    }

    public void increaseRetryCount() {
        this.bulkUpdateRetryCount++;
    }

    public int getResponseCode() {
        return this.responseCode;
    }
}
