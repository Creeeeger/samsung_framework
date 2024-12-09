package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.util.Log;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.AllPayloads;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

/* loaded from: classes.dex */
public class CloudMessageGetAllPayloads extends AllPayloads {
    private static final long serialVersionUID = 1;
    public String TAG;

    public static CloudMessageGetAllPayloads buildFromPayloadUrl(IAPICallFlowListener iAPICallFlowListener, String str, BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        return new CloudMessageGetAllPayloads(str, iAPICallFlowListener, bufferDBChangeParam, messageStoreClient);
    }

    private CloudMessageGetAllPayloads(String str, IAPICallFlowListener iAPICallFlowListener, BufferDBChangeParam bufferDBChangeParam, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
        this.TAG = CloudMessageGetAllPayloads.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBaseUrl = Util.replaceUrlPrefix(this.mBaseUrl, messageStoreClient);
        buildInternal(iAPICallFlowListener, bufferDBChangeParam);
    }

    private void buildInternal(final IAPICallFlowListener iAPICallFlowListener, final BufferDBChangeParam bufferDBChangeParam) {
        String validTokenByLine = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(bufferDBChangeParam.mLine);
        if (this.isCmsMcsEnabled) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), validTokenByLine);
        }
        initGetRequest();
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageGetAllPayloads.1
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                ParamOMAresponseforBufDB paramOMAresponseforBufDB;
                if (httpResponseParams.getStatusCode() == 401 && CloudMessageGetAllPayloads.this.handleUnAuthorized(httpResponseParams)) {
                    return;
                }
                if (httpResponseParams.getStatusCode() == 206) {
                    httpResponseParams.setStatusCode(200);
                }
                if (httpResponseParams.getStatusCode() == 404) {
                    paramOMAresponseforBufDB = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND).setBufferDBChangeParam(bufferDBChangeParam).build();
                } else if (httpResponseParams.getStatusCode() != 200) {
                    paramOMAresponseforBufDB = null;
                } else {
                    if (httpResponseParams.getDataBinary() == null || httpResponseParams.getDataString() == null) {
                        handleFailedCall();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    CloudMessageGetAllPayloads.this.parseResponsePayload(httpResponseParams, arrayList);
                    if (arrayList.size() < 1) {
                        handleFailedCall();
                        return;
                    }
                    ParamOMAresponseforBufDB.Builder bufferDBChangeParam2 = new ParamOMAresponseforBufDB.Builder().setAllPayloads(arrayList).setBufferDBChangeParam(bufferDBChangeParam);
                    IAPICallFlowListener iAPICallFlowListener2 = iAPICallFlowListener;
                    if (iAPICallFlowListener2 instanceof BaseSyncHandler) {
                        bufferDBChangeParam2.setActionType(ParamOMAresponseforBufDB.ActionType.ALL_PAYLOAD_DOWNLOAD);
                    } else if (iAPICallFlowListener2 instanceof BaseDataChangeHandler) {
                        bufferDBChangeParam2.setActionType(ParamOMAresponseforBufDB.ActionType.NOTIFICATION_ALL_PAYLOAD_DOWNLOADED);
                    }
                    paramOMAresponseforBufDB = bufferDBChangeParam2.build();
                }
                if (CloudMessageGetAllPayloads.this.shouldCareAfterResponsePreProcess(iAPICallFlowListener, httpResponseParams, paramOMAresponseforBufDB, bufferDBChangeParam, Integer.MIN_VALUE)) {
                    iAPICallFlowListener.onMoveOnToNext(CloudMessageGetAllPayloads.this, paramOMAresponseforBufDB);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageGetAllPayloads.this.TAG, "Http request onFail: " + iOException.getMessage());
                handleFailedCall();
            }

            public void handleFailedCall() {
                if (((BaseNMSRequest) CloudMessageGetAllPayloads.this).isCmsMcsEnabled) {
                    iAPICallFlowListener.onFailedCall(this);
                } else {
                    iAPICallFlowListener.onFailedCall(this, bufferDBChangeParam);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseResponsePayload(HttpResponseParams httpResponseParams, List<BodyPart> list) {
        boolean z;
        MimeBodyPart mimeBodyPart;
        ByteArrayDataSource byteArrayDataSource = new ByteArrayDataSource(httpResponseParams.getDataBinary(), "multipart/related");
        if (httpResponseParams.getHeaders() == null || httpResponseParams.getHeaders().isEmpty()) {
            Log.i(this.TAG, "Header is null");
            return;
        }
        List<String> list2 = httpResponseParams.getHeaders().get("content-type");
        if (list2 == null || list2.isEmpty()) {
            list2 = httpResponseParams.getHeaders().get("Content-type");
        }
        if (list2 == null || list2.isEmpty()) {
            list2 = httpResponseParams.getHeaders().get("Content-Type");
        }
        boolean z2 = true;
        if (list2 != null && !list2.isEmpty()) {
            for (int i = 0; i < list2.size(); i++) {
                if (list2.get(i) != null && list2.get(i).contains("boundary=")) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        String dataString = httpResponseParams.getDataString();
        if (!dataString.contains("boundary=") && !dataString.contains("--")) {
            z2 = z;
        }
        MimeMultipart mimeMultipart = null;
        try {
            if (z2) {
                mimeMultipart = new MimeMultipart(byteArrayDataSource);
                mimeBodyPart = null;
            } else {
                int indexOf = dataString.indexOf("Content-type:");
                if (indexOf < 0) {
                    indexOf = dataString.indexOf("Content-Type:");
                }
                if (indexOf < 0) {
                    indexOf = dataString.indexOf("content-type:");
                }
                Log.i(this.TAG, "mimebodystart: " + indexOf);
                if (indexOf < 0) {
                    return;
                } else {
                    mimeBodyPart = new MimeBodyPart(new ByteArrayInputStream(dataString.substring(indexOf).getBytes()));
                }
            }
            if (mimeMultipart != null) {
                for (int i2 = 0; i2 < mimeMultipart.getCount(); i2++) {
                    try {
                        list.add(mimeMultipart.getBodyPart(i2));
                    } catch (MessagingException e) {
                        list.clear();
                        e.printStackTrace();
                        return;
                    }
                }
                list.size();
                return;
            }
            if (mimeBodyPart != null) {
                try {
                    Log.i(this.TAG, "mimebodypart: " + mimeBodyPart.getContentType());
                    list.add(mimeBodyPart);
                    return;
                } catch (MessagingException e2) {
                    list.clear();
                    e2.printStackTrace();
                    return;
                }
            }
            list.clear();
        } catch (MessagingException e3) {
            e3.printStackTrace();
        }
    }
}
