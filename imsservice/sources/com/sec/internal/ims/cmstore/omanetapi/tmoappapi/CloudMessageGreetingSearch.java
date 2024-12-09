package com.sec.internal.ims.cmstore.omanetapi.tmoappapi;

import android.net.Uri;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.constants.ims.cmstore.CommonErrorName;
import com.sec.internal.constants.ims.cmstore.data.SortOrderEnum;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.TMOVariables;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.common.data.OMAApiResponseParam;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.ObjectsOpSearch;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import com.sec.internal.omanetapi.nms.data.Reference;
import com.sec.internal.omanetapi.nms.data.SelectionCriteria;
import com.sec.internal.omanetapi.nms.data.SortCriteria;
import com.sec.internal.omanetapi.nms.data.SortCriterion;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class CloudMessageGreetingSearch extends ObjectsOpSearch {
    private static final long serialVersionUID = 1;
    private String TAG;
    private final SimpleDateFormat mFormatOfName;
    private final transient IAPICallFlowListener mIAPICallFlowListener;

    public CloudMessageGreetingSearch(final IAPICallFlowListener iAPICallFlowListener, final String str, final String str2, final BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), str2, messageStoreClient);
        this.TAG = CloudMessageGreetingSearch.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        this.mFormatOfName = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.mIAPICallFlowListener = iAPICallFlowListener;
        SelectionCriteria selectionCriteria = new SelectionCriteria();
        constructSearchParam(str2, SyncMsgType.VM_GREETINGS, selectionCriteria);
        if (!TextUtils.isEmpty(str)) {
            selectionCriteria.fromCursor = str;
        }
        initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(str2));
        initPostRequest(selectionCriteria, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.tmoappapi.CloudMessageGreetingSearch.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                List<String> list;
                String str3;
                String dataString = httpResponseParams.getDataString();
                Log.d(CloudMessageGreetingSearch.this.TAG, "Result code = " + httpResponseParams.getStatusCode());
                if (httpResponseParams.getStatusCode() == 302) {
                    Log.d(CloudMessageGreetingSearch.this.TAG, "302 redirect");
                    List<String> list2 = httpResponseParams.getHeaders().get("Location");
                    if (list2 == null || list2.size() <= 0) {
                        str3 = null;
                    } else {
                        Log.i(CloudMessageGreetingSearch.this.TAG, list2.toString());
                        str3 = list2.get(0);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        try {
                            ((BaseNMSRequest) CloudMessageGreetingSearch.this).mStoreClient.getPrerenceManager().saveNcHost(new URL(str3).getHost());
                        } catch (MalformedURLException e) {
                            Log.d(CloudMessageGreetingSearch.this.TAG, "" + e.getMessage());
                            e.printStackTrace();
                        }
                        CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFailedCall(this, String.valueOf(302));
                        return;
                    }
                    CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                if (httpResponseParams.getStatusCode() == 401) {
                    if (CloudMessageGreetingSearch.this.handleUnAuthorized(httpResponseParams)) {
                        return;
                    }
                    ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setBufferDBChangeParam(bufferDBChangeParam).setLine(CloudMessageGreetingSearch.this.getBoxId());
                    Message message = new Message();
                    message.obj = line.build();
                    message.what = OMASyncEventType.CREDENTIAL_EXPIRED.getId();
                    iAPICallFlowListener.onFixedFlowWithMessage(message);
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                if (((BaseNMSRequest) CloudMessageGreetingSearch.this).mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryRequired(httpResponseParams.getStatusCode())) {
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam, SyncMsgType.VM_GREETINGS, httpResponseParams.getStatusCode());
                    return;
                }
                if (httpResponseParams.getStatusCode() == 429 && (list = httpResponseParams.getHeaders().get(HttpRequest.HEADER_RETRY_AFTER)) != null && list.size() > 0) {
                    Log.i(CloudMessageGreetingSearch.this.TAG, list.toString());
                    String str4 = list.get(0);
                    Log.d(CloudMessageGreetingSearch.this.TAG, "retryAfter is " + str4 + "seconds");
                    try {
                        int parseInt = Integer.parseInt(str4);
                        if (parseInt > 0) {
                            iAPICallFlowListener.onOverRequest(this, CommonErrorName.RETRY_HEADER, parseInt);
                            return;
                        } else {
                            iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                            return;
                        }
                    } catch (NumberFormatException e2) {
                        Log.e(CloudMessageGreetingSearch.this.TAG, e2.getMessage());
                        iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                        return;
                    }
                }
                if (httpResponseParams.getStatusCode() == 204) {
                    Message message2 = new Message();
                    ParamOMAresponseforBufDB.Builder actionType = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE);
                    OMASyncEventType oMASyncEventType = OMASyncEventType.DELETE_GREETING;
                    message2.obj = actionType.setOMASyncEventType(oMASyncEventType).setMStoreClient(((BaseNMSRequest) CloudMessageGreetingSearch.this).mStoreClient).setLine(str2).setSyncType(SyncMsgType.VM_GREETINGS).setCursor("").setBufferDBChangeParam(bufferDBChangeParam).build();
                    message2.what = oMASyncEventType.getId();
                    CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFixedFlowWithMessage(message2);
                    return;
                }
                if (httpResponseParams.getStatusCode() != 200 && httpResponseParams.getStatusCode() != 206) {
                    CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                    return;
                }
                try {
                    OMAApiResponseParam oMAApiResponseParam = (OMAApiResponseParam) new Gson().fromJson(dataString, OMAApiResponseParam.class);
                    if (oMAApiResponseParam == null) {
                        return;
                    }
                    ObjectList objectList = oMAApiResponseParam.objectList;
                    Message message3 = new Message();
                    if (objectList != null) {
                        String str5 = objectList.cursor;
                        if (!TextUtils.isEmpty(str5) && !str5.equals(str)) {
                            ParamOMAresponseforBufDB.Builder objectList2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_PARTIAL_SYNC_SUMMARY).setObjectList(objectList);
                            OMASyncEventType oMASyncEventType2 = OMASyncEventType.INITIAL_SYNC_CONTINUE_SEARCH;
                            message3.obj = objectList2.setOMASyncEventType(oMASyncEventType2).setMStoreClient(((BaseNMSRequest) CloudMessageGreetingSearch.this).mStoreClient).setLine(str2).setSyncType(SyncMsgType.VM_GREETINGS).setCursor(str5).setBufferDBChangeParam(bufferDBChangeParam).build();
                            message3.what = oMASyncEventType2.getId();
                            CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFixedFlowWithMessage(message3);
                            return;
                        }
                        ParamOMAresponseforBufDB.Builder actionType2 = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE);
                        OMASyncEventType oMASyncEventType3 = OMASyncEventType.DELETE_GREETING;
                        message3.obj = actionType2.setOMASyncEventType(oMASyncEventType3).setMStoreClient(((BaseNMSRequest) CloudMessageGreetingSearch.this).mStoreClient).setObjectList(objectList).setLine(str2).setSyncType(SyncMsgType.VM_GREETINGS).setCursor(str5).setBufferDBChangeParam(bufferDBChangeParam).build();
                        message3.what = oMASyncEventType3.getId();
                        CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFixedFlowWithMessage(message3);
                        return;
                    }
                    message3.obj = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE).setObjectList(objectList).setSyncType(SyncMsgType.VM_GREETINGS).setCursor("").setLine(str2).setBufferDBChangeParam(bufferDBChangeParam).build();
                    message3.what = OMASyncEventType.DELETE_GREETING.getId();
                    CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFixedFlowWithMessage(message3);
                } catch (Exception e3) {
                    Log.e(CloudMessageGreetingSearch.this.TAG, e3 + " ");
                    e3.printStackTrace();
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGreetingSearch.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageGreetingSearch.this.mIAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
            }
        });
    }

    private void constructSearchParam(String str, SyncMsgType syncMsgType, SelectionCriteria selectionCriteria) {
        Reference reference;
        selectionCriteria.maxEntries = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxSearchEntry();
        if (!SyncMsgType.VM_GREETINGS.equals(syncMsgType)) {
            Log.e(this.TAG, "illegal type " + syncMsgType);
            return;
        }
        SortCriteria sortCriteria = new SortCriteria();
        SortCriterion[] sortCriterionArr = {new SortCriterion()};
        SortCriterion sortCriterion = sortCriterionArr[0];
        sortCriterion.type = "Date";
        sortCriterion.order = SortOrderEnum.Date;
        sortCriteria.criterion = sortCriterionArr;
        String str2 = TMOVariables.TmoMessageFolderId.mVVMailGreeting;
        String protocol = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getProtocol();
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(protocol).encodedAuthority(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost()).appendPath("nms").appendPath(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion()).appendPath(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName()).appendPath(str).appendPath("folders").appendPath(str2);
        try {
            reference = new Reference();
            try {
                reference.resourceURL = new URL(builder.build().toString());
            } catch (MalformedURLException e) {
                e = e;
                Log.e(this.TAG, e.getMessage() + "");
                reference.resourceURL = null;
                selectionCriteria.searchScope = reference;
                selectionCriteria.sortCriteria = sortCriteria;
            }
        } catch (MalformedURLException e2) {
            e = e2;
            reference = null;
        }
        selectionCriteria.searchScope = reference;
        selectionCriteria.sortCriteria = sortCriteria;
    }
}
