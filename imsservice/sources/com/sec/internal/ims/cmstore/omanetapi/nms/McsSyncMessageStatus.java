package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.net.Uri;
import android.util.Log;
import com.google.gson.GsonBuilder;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nms.data.GsonInterfaceAdapter;
import com.sec.internal.ims.servicemodules.euc.test.EucTestIntent;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiRequestParam;
import com.sec.internal.omanetapi.common.data.SyncMessageStatus;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.data.Attribute;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsSyncMessageStatus extends BaseNMSRequest {
    private String TAG;
    private MessageStoreClient mStoreClient;

    public McsSyncMessageStatus(final IAPICallFlowListener iAPICallFlowListener, String str, String str2, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), messageStoreClient.getPrerenceManager().getUserTelCtn(), messageStoreClient);
        this.TAG = McsSyncMessageStatus.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mStoreClient = messageStoreClient;
        buildAPISpecificURLFromBase();
        initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        final SyncMessageStatus syncMessageStatus = new SyncMessageStatus(str, str2);
        initPostRequest(syncMessageStatus, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.McsSyncMessageStatus.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                Log.i(McsSyncMessageStatus.this.TAG, "onComplete status  " + httpResponseParams.getStatusCode());
                if (McsSyncMessageStatus.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, syncMessageStatus, null, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(McsSyncMessageStatus.this, syncMessageStatus);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(McsSyncMessageStatus.this.TAG, "Http request onFail: " + iOException.getMessage());
                if (iOException.getMessage().equals(EucTestIntent.Extras.TIMEOUT)) {
                    iAPICallFlowListener.onMoveOnToNext(McsSyncMessageStatus.this, syncMessageStatus);
                } else {
                    iAPICallFlowListener.onFailedCall(this);
                }
            }
        });
    }

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest
    protected void buildAPISpecificURLFromBase() {
        Uri.Builder buildUpon = Uri.parse(this.mBaseUrl).buildUpon();
        buildUpon.appendPath("syncMessage").appendPath("status");
        this.mBaseUrl = buildUpon.build().toString();
    }

    public void initPostRequest(SyncMessageStatus syncMessageStatus, boolean z) {
        String str;
        setUrl(this.mBaseUrl);
        setMethod(HttpRequestParams.Method.POST);
        setFollowRedirects(false);
        if (z) {
            OMAApiRequestParam.SyncMessageStatusRequest syncMessageStatusRequest = new OMAApiRequestParam.SyncMessageStatusRequest();
            syncMessageStatusRequest.syncMessageStatus = syncMessageStatus;
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.registerTypeAdapter(Attribute.class, new GsonInterfaceAdapter(Attribute.class));
            str = gsonBuilder.disableHtmlEscaping().setPrettyPrinting().create().toJson(syncMessageStatusRequest);
        } else {
            str = "";
        }
        this.mNMSRequestHeaderMap.put("Content-Type", "application/json");
        setPostBody(new HttpPostBody(str));
        setHeaders(this.mNMSRequestHeaderMap);
    }
}
