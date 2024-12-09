package com.sec.internal.omanetapi.nc;

import android.net.Uri;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class NotificationList extends BaseNCRequest {
    private static final String TAG = NotificationList.class.getSimpleName();
    private static final long serialVersionUID = 1611862466283057959L;

    @Override // com.sec.internal.omanetapi.nc.BaseNCRequest, com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface
    public HttpRequestParams getRetryInstance(SyncMsgType syncMsgType, IAPICallFlowListener iAPICallFlowListener, MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return this;
    }

    public NotificationList(String str, String str2, String str3, String str4, MessageStoreClient messageStoreClient) {
        super(str, str2, str3, messageStoreClient);
        buildAPISpecificURLFromBase();
    }

    public NotificationList(String str, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
        Log.i(TAG, "NotificationList: baseUrl: " + IMSLog.checker(this.mBaseUrl));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initPostRequest(com.sec.internal.omanetapi.nc.data.LongPollingRequestParameters r4, boolean r5) {
        /*
            r3 = this;
            com.sec.internal.omanetapi.common.data.OMAApiRequestParam$NotificationListRequest r0 = new com.sec.internal.omanetapi.common.data.OMAApiRequestParam$NotificationListRequest
            r0.<init>()
            r0.longPollingRequestParameters = r4
            java.lang.String r4 = r3.mBaseUrl
            r3.setUrl(r4)
            com.sec.internal.helper.httpclient.HttpRequestParams$Method r4 = com.sec.internal.helper.httpclient.HttpRequestParams.Method.POST
            r3.setMethod(r4)
            r4 = 0
            r3.setFollowRedirects(r4)
            java.lang.String r4 = com.sec.internal.omanetapi.nc.NotificationList.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "initPostRequest "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r4, r1)
            if (r5 == 0) goto L58
            java.util.Map<java.lang.String, java.lang.String> r5 = r3.mNCRequestHeaderMap
            java.lang.String r1 = "Content-Type"
            java.lang.String r2 = "application/json"
            r5.put(r1, r2)
            java.util.Map<java.lang.String, java.lang.String> r5 = r3.mNCRequestHeaderMap
            r3.setHeaders(r5)
            boolean r5 = com.sec.internal.ims.cmstore.helper.ATTGlobalVariables.isGcmReplacePolling()
            if (r5 != 0) goto L58
            com.google.gson.GsonBuilder r5 = new com.google.gson.GsonBuilder
            r5.<init>()
            com.google.gson.GsonBuilder r5 = r5.serializeNulls()
            com.google.gson.Gson r5 = r5.create()
            com.sec.internal.helper.httpclient.HttpPostBody r1 = new com.sec.internal.helper.httpclient.HttpPostBody
            java.lang.String r5 = r5.toJson(r0)
            r1.<init>(r5)
            goto L59
        L58:
            r1 = 0
        L59:
            if (r1 == 0) goto L63
            java.lang.String r5 = "initPostRequest"
            android.util.Log.d(r4, r5)
            r3.setPostBody(r1)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.omanetapi.nc.NotificationList.initPostRequest(com.sec.internal.omanetapi.nc.data.LongPollingRequestParameters, boolean):void");
    }

    @Override // com.sec.internal.omanetapi.nc.BaseNCRequest
    protected void buildAPISpecificURLFromBase() {
        this.mBaseUrl = Uri.parse(this.mBaseUrl).buildUpon().build().toString();
        Log.i(TAG, "NotificationList: baseUrl: " + IMSLog.checker(this.mBaseUrl));
    }
}
