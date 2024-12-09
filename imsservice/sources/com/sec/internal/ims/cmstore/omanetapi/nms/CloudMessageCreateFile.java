package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.net.Uri;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.io.IOException;

/* loaded from: classes.dex */
public class CloudMessageCreateFile extends BaseNMSRequest {
    private static final long serialVersionUID = 1;
    private String TAG;
    private String mUploadUrl;

    public CloudMessageCreateFile(final IAPICallFlowListener iAPICallFlowListener, ParamObjectUpload paramObjectUpload, final boolean z, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getPrerenceManager().getOasisServerRoot(), messageStoreClient);
        this.TAG = CloudMessageCreateFile.class.getSimpleName();
        this.mUploadUrl = null;
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        IMSLog.i(str, "CloudMessageCreateFile");
        initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        this.mUploadUrl = Util.buildUploadURL(this.mStoreClient.getPrerenceManager().getOasisSmallFileServerRoot(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion());
        initPostRequestWithFile((HttpPostBody) paramObjectUpload.uploadObjectInfo.second);
        buildAPISpecificURLFromBase();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateFile.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                Log.i(CloudMessageCreateFile.this.TAG, "onComplete: status Code " + httpResponseParams.getStatusCode());
                if (httpResponseParams.getStatusCode() == 200 || httpResponseParams.getStatusCode() == 201) {
                    OMAApiResponseParam response = CloudMessageCreateFile.this.getResponse(httpResponseParams);
                    if (response == null || response.file == null) {
                        return;
                    }
                    Log.i(CloudMessageCreateFile.this.TAG, "onComplete: response " + response.file.size + " " + response.file.href);
                    if (z) {
                        iAPICallFlowListener.onGoToEvent(OMASyncEventType.THUMBNAIL_UPLOADED.getId(), response.file);
                        return;
                    } else {
                        iAPICallFlowListener.onGoToEvent(OMASyncEventType.FILE_UPLOADED.getId(), response.file);
                        return;
                    }
                }
                if (CloudMessageCreateFile.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, null, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onGoToEvent(OMASyncEventType.FILE_API_FAILED.getId(), null);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageCreateFile.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest
    protected void buildAPISpecificURLFromBase() {
        Uri.Builder buildUpon = Uri.parse(this.mBaseUrl).buildUpon();
        buildUpon.appendPath("oapi").appendPath("v1").appendPath("file");
        this.mBaseUrl = buildUpon.build().toString();
    }

    public void initPostRequestWithFile(HttpPostBody httpPostBody) {
        Log.d(this.TAG, "initPostRequestWithFile");
        setUrl(this.mUploadUrl);
        setMethod(HttpRequestParams.Method.POST);
        setFollowRedirects(false);
        this.mNMSRequestHeaderMap.put("Content-Type", HttpPostBody.CONTENT_TYPE_MULTIPART_FORMDATA);
        setPostBody(httpPostBody);
        setHeaders(this.mNMSRequestHeaderMap);
    }
}
