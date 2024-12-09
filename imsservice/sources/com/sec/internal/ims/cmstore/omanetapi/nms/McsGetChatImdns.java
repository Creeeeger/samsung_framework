package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.io.IOException;

/* loaded from: classes.dex */
public class McsGetChatImdns extends BaseNMSRequest {
    public String TAG;

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest
    protected void buildAPISpecificURLFromBase() {
    }

    public McsGetChatImdns(final IAPICallFlowListener iAPICallFlowListener, String str, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
        this.TAG = McsGetChatImdns.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        initCommonGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.1
            /* JADX WARN: Removed duplicated region for block: B:9:0x007a  */
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onComplete(com.sec.internal.helper.httpclient.HttpResponseParams r5) {
                /*
                    r4 = this;
                    com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns r0 = com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.this
                    java.lang.String r0 = r0.TAG
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r2 = "statusCode: "
                    r1.append(r2)
                    int r2 = r5.getStatusCode()
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    android.util.Log.i(r0, r1)
                    int r0 = r5.getStatusCode()
                    r1 = 200(0xc8, float:2.8E-43)
                    r2 = 0
                    if (r0 != r1) goto L98
                    com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns r0 = com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.this
                    java.lang.String r5 = r5.getDataString()
                    java.lang.String r5 = r0.getDecryptedString(r5)
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    java.lang.Class<com.sec.internal.omanetapi.nms.GetImdnList> r1 = com.sec.internal.omanetapi.nms.GetImdnList.class
                    java.lang.Object r5 = r0.fromJson(r5, r1)     // Catch: java.lang.Exception -> L5e
                    com.sec.internal.omanetapi.nms.GetImdnList r5 = (com.sec.internal.omanetapi.nms.GetImdnList) r5     // Catch: java.lang.Exception -> L5e
                    com.sec.internal.omanetapi.nms.data.ImdnList r5 = r5.imdnList     // Catch: java.lang.Exception -> L5e
                    if (r5 == 0) goto L5c
                    com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns r0 = com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.this     // Catch: java.lang.Exception -> L5a
                    java.lang.String r0 = r0.TAG     // Catch: java.lang.Exception -> L5a
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5a
                    r1.<init>()     // Catch: java.lang.Exception -> L5a
                    java.lang.String r3 = "ImdnList response: "
                    r1.append(r3)     // Catch: java.lang.Exception -> L5a
                    r1.append(r5)     // Catch: java.lang.Exception -> L5a
                    java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L5a
                    android.util.Log.i(r0, r1)     // Catch: java.lang.Exception -> L5a
                    goto L78
                L5a:
                    r0 = move-exception
                    goto L60
                L5c:
                    r5 = r2
                    goto L78
                L5e:
                    r0 = move-exception
                    r5 = r2
                L60:
                    com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns r1 = com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.this
                    java.lang.String r1 = r1.TAG
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder
                    r3.<init>()
                    r3.append(r0)
                    java.lang.String r0 = " ImdnList parse exception."
                    r3.append(r0)
                    java.lang.String r0 = r3.toString()
                    android.util.Log.e(r1, r0)
                L78:
                    if (r5 == 0) goto L98
                    com.sec.internal.omanetapi.nms.data.Object r0 = new com.sec.internal.omanetapi.nms.data.Object
                    r0.<init>()
                    r0.imdns = r5
                    com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB$Builder r5 = new com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB$Builder
                    r5.<init>()
                    com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB$Builder r5 = r5.setObject(r0)
                    com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB$ActionType r0 = com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB.ActionType.NOTIFICATION_IMDN_DOWNLOADED
                    r5.setActionType(r0)
                    com.sec.internal.ims.cmstore.params.BufferDBChangeParam r0 = r2
                    r5.setBufferDBChangeParam(r0)
                    com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB r2 = r5.build()
                L98:
                    com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener r5 = r3
                    com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns r4 = com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.this
                    r5.onMoveOnToNext(r4, r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.nms.McsGetChatImdns.AnonymousClass1.onComplete(com.sec.internal.helper.httpclient.HttpResponseParams):void");
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(McsGetChatImdns.this.TAG, "Http request onFail: " + iOException.getMessage());
                iAPICallFlowListener.onFailedCall(this);
            }
        });
    }
}
