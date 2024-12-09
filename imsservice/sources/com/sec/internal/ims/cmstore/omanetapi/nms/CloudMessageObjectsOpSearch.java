package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import com.sec.internal.omanetapi.nms.ObjectsOpSearch;
import com.sec.internal.omanetapi.nms.data.SelectionCriteria;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class CloudMessageObjectsOpSearch extends ObjectsOpSearch {
    private static final long serialVersionUID = 513693735609008639L;
    private final String JSON_CURSOR_TAG;
    private final String JSON_OBJECT_LIST_TAG;
    private String TAG;
    private boolean isCmsMcsEnabled;
    private transient CloudMessageBufferDBPersister mBufferDB;
    private final SimpleDateFormat mFormatOfName;
    private final transient IAPICallFlowListener mIAPICallFlowListener;
    private final boolean mIsFullSync;

    public CloudMessageObjectsOpSearch(final IAPICallFlowListener iAPICallFlowListener, final String str, final String str2, final SyncMsgType syncMsgType, boolean z, MessageStoreClient messageStoreClient, boolean z2) {
        super(messageStoreClient.getCloudMessageStrategyManager().getStrategy().getNmsHost(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getOMAApiVersion(), messageStoreClient.getCloudMessageStrategyManager().getStrategy().getStoreName(), str2, messageStoreClient);
        this.TAG = CloudMessageObjectsOpSearch.class.getSimpleName();
        this.JSON_OBJECT_LIST_TAG = "objectList";
        this.JSON_CURSOR_TAG = "cursor";
        this.isCmsMcsEnabled = false;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        this.mFormatOfName = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.mIAPICallFlowListener = iAPICallFlowListener;
        this.mIsFullSync = z2;
        this.mBufferDB = CloudMessageBufferDBPersister.getInstance(messageStoreClient.getContext(), messageStoreClient.getClientID(), false);
        SelectionCriteria selectionCriteria = new SelectionCriteria();
        constructSearchParam(str2, syncMsgType, selectionCriteria, z);
        if (!TextUtils.isEmpty(str)) {
            selectionCriteria.fromCursor = str;
        }
        boolean isMcsSupported = CmsUtil.isMcsSupported(messageStoreClient.getContext(), messageStoreClient.getClientID());
        this.isCmsMcsEnabled = isMcsSupported;
        if (isMcsSupported) {
            initMcsCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getAuthorizationBearer());
        } else {
            initCommonRequestHeaders(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getContentType(), this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getValidTokenByLine(str2));
        }
        initPostRequest(selectionCriteria, true);
        setCallback(new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageObjectsOpSearch.1
            /* JADX WARN: Removed duplicated region for block: B:38:0x024a A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:39:0x024b  */
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onComplete(com.sec.internal.helper.httpclient.HttpResponseParams r13) {
                /*
                    Method dump skipped, instructions count: 605
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageObjectsOpSearch.AnonymousClass1.onComplete(com.sec.internal.helper.httpclient.HttpResponseParams):void");
            }

            private ParamOMAresponseforBufDB makeSearchCompleteResponse() {
                return new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE).setOMASyncEventType(OMASyncEventType.INITIAL_SYNC_SUMMARY_COMPLETE).setMStoreClient(((BaseNMSRequest) CloudMessageObjectsOpSearch.this).mStoreClient).setLine(str2).setSyncType(syncMsgType).setIsFullSync(CloudMessageObjectsOpSearch.this.mIsFullSync).setCursor("").build();
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                Log.e(CloudMessageObjectsOpSearch.this.TAG, "Http request onFail: " + iOException.getMessage());
                CloudMessageObjectsOpSearch.this.mIAPICallFlowListener.onFailedCall(this);
            }
        });
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00ed: MOVE (r8 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:55:0x00ed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void constructSearchParam(java.lang.String r18, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r19, com.sec.internal.omanetapi.nms.data.SelectionCriteria r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageObjectsOpSearch.constructSearchParam(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType, com.sec.internal.omanetapi.nms.data.SelectionCriteria, boolean):void");
    }
}
