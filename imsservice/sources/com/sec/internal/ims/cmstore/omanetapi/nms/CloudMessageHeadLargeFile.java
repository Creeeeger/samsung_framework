package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.file.BaseFileRequest;
import com.sec.internal.omanetapi.file.LargeFileDownloadParams;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CloudMessageHeadLargeFile extends BaseFileRequest {
    private static final long serialVersionUID = 1;
    private String TAG;

    public CloudMessageHeadLargeFile(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient);
        this.TAG = CloudMessageHeadLargeFile.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.HEAD);
        setUrl(str);
        initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        setHeaders(this.mNMSRequestHeaderMap);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageHeadLargeFile.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                Log.i(CloudMessageHeadLargeFile.this.TAG, "onComplete: status Code " + httpResponseParams.getStatusCode());
                if (httpResponseParams.getStatusCode() == 200 || httpResponseParams.getStatusCode() == 206) {
                    if (httpResponseParams.getHeaders() == null || httpResponseParams.getHeaders().isEmpty()) {
                        Log.i(CloudMessageHeadLargeFile.this.TAG, "onComplete:result.getHeaders().isEmpty()");
                    } else {
                        LargeFileDownloadParams largeFileDownloadParams = new LargeFileDownloadParams();
                        CloudMessageHeadLargeFile.this.parseResponseHeaders(httpResponseParams, largeFileDownloadParams);
                        iAPICallFlowListener.onGoToEvent(OMASyncEventType.DOWNLOAD_FILE_HEAD_COMPLETED.getId(), largeFileDownloadParams);
                        return;
                    }
                }
                if (CloudMessageHeadLargeFile.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onGoToEvent(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId(), null);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageHeadLargeFile.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseResponseHeaders(HttpResponseParams httpResponseParams, LargeFileDownloadParams largeFileDownloadParams) {
        Iterator<String> it = httpResponseParams.getHeaders().get("content-type").iterator();
        if (it.hasNext()) {
            largeFileDownloadParams.contentType = it.next();
        }
        Iterator<String> it2 = httpResponseParams.getHeaders().get("content-length").iterator();
        if (it2.hasNext()) {
            largeFileDownloadParams.contentLength = it2.next();
        }
        Iterator<String> it3 = httpResponseParams.getHeaders().get("content-disposition").iterator();
        if (it3.hasNext()) {
            largeFileDownloadParams.contentDisposition = it3.next();
        }
        Iterator<String> it4 = httpResponseParams.getHeaders().get("accept-ranges").iterator();
        if (it4.hasNext()) {
            largeFileDownloadParams.acceptRanges = it4.next();
        }
        Log.i(this.TAG, "parseResponseHeaders: " + largeFileDownloadParams.toString());
    }
}
