package com.sec.internal.ims.cmstore.omanetapi.tmoappapi;

import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.ObjectsOpSearch;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import com.sec.internal.omanetapi.nms.data.SelectionCriteria;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CloudMessageObjectsOpSearchForVvmNormalSync extends ObjectsOpSearch {
    private static final String TAG = CloudMessageObjectsOpSearchForVvmNormalSync.class.getSimpleName();
    private static final long serialVersionUID = 976829149172393071L;
    private final String JSON_CURSOR_TAG;
    private final String JSON_OBJECT_LIST_TAG;
    private transient CloudMessageBufferDBPersister mBufferDB;
    private final SimpleDateFormat mFormatOfName;
    private final transient IAPICallFlowListener mIAPICallFlowListener;

    public CloudMessageObjectsOpSearchForVvmNormalSync(final IAPICallFlowListener iAPICallFlowListener, final String str, final String str2, final SyncMsgType syncMsgType, boolean z, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), str2, messageStoreClient);
        this.JSON_OBJECT_LIST_TAG = "objectList";
        this.JSON_CURSOR_TAG = "cursor";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        this.mFormatOfName = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mBufferDB = CloudMessageBufferDBPersister.getInstance(messageStoreClient.getContext(), messageStoreClient.getClientID(), false);
        SelectionCriteria selectionCriteria = new SelectionCriteria();
        constructSearchParam(str2, syncMsgType, selectionCriteria, z);
        if (!TextUtils.isEmpty(str)) {
            selectionCriteria.fromCursor = str;
        }
        initCommonRequestHeaders(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(str2));
        initPostRequest(selectionCriteria, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageObjectsOpSearchForVvmNormalSync.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                OMAApiResponseParam oMAApiResponseParam;
                JSONObject jSONObject;
                ObjectList objectList;
                int statusCode = httpResponseParams.getStatusCode();
                if (statusCode == 206) {
                    httpResponseParams.setStatusCode(200);
                }
                Log.d(CloudMessageObjectsOpSearchForVvmNormalSync.TAG, "Result code = " + statusCode);
                if (statusCode != 200) {
                    if (statusCode != 204) {
                        if (statusCode == 401 && CloudMessageObjectsOpSearchForVvmNormalSync.this.handleUnAuthorized(httpResponseParams)) {
                            return;
                        }
                        if (((BaseNMSRequest) CloudMessageObjectsOpSearchForVvmNormalSync.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(statusCode)) {
                            iAPICallFlowListener.onFailedCall(this, null, syncMsgType, statusCode);
                            return;
                        } else {
                            CloudMessageObjectsOpSearchForVvmNormalSync.this.onSearchComplete(str2, syncMsgType);
                            return;
                        }
                    }
                    CloudMessageObjectsOpSearchForVvmNormalSync.this.onSearchComplete(str2, syncMsgType);
                    return;
                }
                try {
                    oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(httpResponseParams.getDataString(), OMAApiResponseParam.class);
                } catch (Exception e) {
                    Log.e(CloudMessageObjectsOpSearchForVvmNormalSync.TAG, e.toString() + " ");
                    e.printStackTrace();
                    oMAApiResponseParam = new OMAApiResponseParam();
                    try {
                        JSONObject jSONObject2 = new JSONObject(httpResponseParams.getDataString());
                        String string = (jSONObject2.isNull("objectList") || (jSONObject = jSONObject2.getJSONObject("objectList")) == null) ? "" : jSONObject.getString("cursor");
                        Log.e(CloudMessageObjectsOpSearchForVvmNormalSync.TAG, "cursor==" + string);
                        if (TextUtils.isEmpty(string)) {
                            oMAApiResponseParam.objectList = null;
                        } else {
                            ObjectList objectList2 = new ObjectList();
                            oMAApiResponseParam.objectList = objectList2;
                            objectList2.cursor = string;
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        oMAApiResponseParam.objectList = null;
                    }
                }
                if (oMAApiResponseParam != null && (objectList = oMAApiResponseParam.objectList) != null) {
                    String str3 = objectList.cursor;
                    ParamOMAresponseforBufDB.Builder cursor = new ParamOMAresponseforBufDB.Builder().setObjectList(objectList).setLine(str2).setSyncType(syncMsgType).setCursor(str3);
                    if (!TextUtils.isEmpty(str3) && !str3.equals(str)) {
                        cursor.setActionType(ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_PARTIAL);
                        Message message = new Message();
                        message.obj = cursor.build();
                        message.what = OMASyncEventType.VVM_NORMAL_SYNC_CONTINUE.getId();
                        iAPICallFlowListener.onFixedFlowWithMessage(message);
                        return;
                    }
                    cursor.setActionType(ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE);
                    Message message2 = new Message();
                    message2.obj = cursor.build();
                    message2.what = OMASyncEventType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE.getId();
                    iAPICallFlowListener.onFixedFlowWithMessage(message2);
                    return;
                }
                CloudMessageObjectsOpSearchForVvmNormalSync.this.onSearchComplete(str2, syncMsgType);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageObjectsOpSearchForVvmNormalSync.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageObjectsOpSearchForVvmNormalSync.this.mIAPICallFlowListener.onFailedCall(this);
                CloudMessageObjectsOpSearchForVvmNormalSync.this.onSearchComplete(str2, syncMsgType);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a8, code lost:
    
        if (r5 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00aa, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cb, code lost:
    
        if (r5 == null) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void constructSearchParam(java.lang.String r12, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r13, com.sec.internal.omanetapi.nms.data.SelectionCriteria r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageObjectsOpSearchForVvmNormalSync.constructSearchParam(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType, com.sec.internal.omanetapi.nms.data.SelectionCriteria, boolean):void");
    }

    public HttpRequestParams getRetryInstance(IAPICallFlowListener iAPICallFlowListener) {
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(getBoxId()));
        return this;
    }

    public void onSearchComplete(String str, SyncMsgType syncMsgType) {
        ParamOMAresponseforBufDB.Builder actionType = new ParamOMAresponseforBufDB.Builder().setLine(str).setSyncType(syncMsgType).setActionType(ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE);
        Message message = new Message();
        message.obj = actionType.build();
        message.what = OMASyncEventType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE.getId();
        this.mIAPICallFlowListener.onFixedFlowWithMessage(message);
    }
}
