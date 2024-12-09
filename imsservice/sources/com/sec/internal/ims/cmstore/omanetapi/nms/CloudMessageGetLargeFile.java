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
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageGetLargeFile extends BaseFileRequest {
    private static final long serialVersionUID = 1;
    private String TAG;

    public CloudMessageGetLargeFile(final IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, String str, String str2, String str3) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient);
        this.TAG = CloudMessageGetLargeFile.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        setMethod(HttpRequestParams.Method.GET);
        setUrl(str2);
        initMcsCommonRequestHeaders(str3, this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer(), str);
        setHeaders(this.mNMSRequestHeaderMap);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetLargeFile.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                int statusCode = httpResponseParams.getStatusCode();
                Log.i(CloudMessageGetLargeFile.this.TAG, "onComplete: status Code " + statusCode);
                if (statusCode == 200 || statusCode == 206) {
                    List<String> list = httpResponseParams.getHeaders().get("content-type");
                    List<String> list2 = httpResponseParams.getHeaders().get("content-length");
                    List<String> list3 = httpResponseParams.getHeaders().get("content-range");
                    Log.i(CloudMessageGetLargeFile.this.TAG, "contentType : " + list + " contentLength: " + list2 + " contentRange " + list3);
                    if (httpResponseParams.getDataBinary() != null) {
                        LargeFileDownloadParams largeFileDownloadParams = new LargeFileDownloadParams();
                        largeFileDownloadParams.strbody = httpResponseParams.getDataBinary();
                        iAPICallFlowListener.onGoToEvent(OMASyncEventType.DOWNLOADED_PART.getId(), largeFileDownloadParams);
                        return;
                    }
                }
                if (CloudMessageGetLargeFile.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onGoToEvent(OMASyncEventType.DOWNLOAD_FILE_API_FAILED.getId(), null);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGetLargeFile.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }
}
