package com.sec.internal.ims.cmstore.params;

import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class BufferDBChangeParam {
    private String TAG;
    public final CloudMessageBufferDBConstants.ActionStatusFlag mAction;
    public final int mDBIndex;
    public String mFTThumbnailFileName;
    public boolean mIsAdhocV2t;
    public boolean mIsDownloadRequestFromApp;
    public boolean mIsFTThumbnail;
    public final boolean mIsGoforwardSync;
    public boolean mIsGroupSMSUpload;
    public String mLine;
    public String mPayloadThumbnailUrl;
    public final long mRowId;
    private MessageStoreClient mStoreClient;

    public BufferDBChangeParam(int i, long j, boolean z, String str, MessageStoreClient messageStoreClient) {
        this.mIsFTThumbnail = false;
        this.mIsGroupSMSUpload = false;
        this.mIsDownloadRequestFromApp = false;
        this.mIsAdhocV2t = false;
        this.TAG = BufferDBChangeParam.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mDBIndex = i;
        this.mRowId = j;
        this.mIsGoforwardSync = z;
        this.mStoreClient = messageStoreClient;
        if (str == null) {
            this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
            Log.e(this.TAG, "multiline not supported. or line null value is given, Ingore line param");
        } else {
            this.mLine = str;
        }
        this.mAction = null;
    }

    public BufferDBChangeParam(int i, long j, boolean z, String str, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, MessageStoreClient messageStoreClient) {
        this.mIsFTThumbnail = false;
        this.mIsGroupSMSUpload = false;
        this.mIsDownloadRequestFromApp = false;
        this.mIsAdhocV2t = false;
        this.TAG = BufferDBChangeParam.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mDBIndex = i;
        this.mRowId = j;
        this.mIsGoforwardSync = z;
        this.mStoreClient = messageStoreClient;
        if (str == null) {
            this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
            Log.e(this.TAG, "multiline not supported. or line null value is given, Ingore line param");
        } else {
            this.mLine = str;
        }
        this.mAction = actionStatusFlag;
    }

    public BufferDBChangeParam(int i, long j, boolean z, String str, MessageStoreClient messageStoreClient, boolean z2) {
        this.mIsFTThumbnail = false;
        this.mIsGroupSMSUpload = false;
        this.mIsDownloadRequestFromApp = false;
        this.mIsAdhocV2t = false;
        this.TAG = BufferDBChangeParam.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mIsAdhocV2t = z2;
        this.mDBIndex = i;
        this.mRowId = j;
        this.mIsGoforwardSync = z;
        this.mStoreClient = messageStoreClient;
        if (str == null) {
            this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
            Log.e(this.TAG, "multiline not supported. or line null value is given, Ingore line param");
        } else {
            this.mLine = str;
        }
        this.mAction = null;
    }

    public BufferDBChangeParam(int i, long j, boolean z, String str, CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag, MessageStoreClient messageStoreClient, boolean z2) {
        this.mIsFTThumbnail = false;
        this.mIsGroupSMSUpload = false;
        this.mIsDownloadRequestFromApp = false;
        this.mIsAdhocV2t = false;
        this.TAG = BufferDBChangeParam.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mDBIndex = i;
        this.mRowId = j;
        this.mIsGoforwardSync = z;
        this.mStoreClient = messageStoreClient;
        if (str == null) {
            this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
            Log.e(this.TAG, "multiline not supported. or line null value is given, Ingore line param");
        } else {
            this.mLine = str;
        }
        this.mAction = actionStatusFlag;
        this.mIsGroupSMSUpload = z2;
    }

    public String toString() {
        return "BufferDBChangeParam [mDBIndex= " + this.mDBIndex + " mRowId = " + this.mRowId + " mIsGoforwardSync = " + this.mIsGoforwardSync + " mLine = " + IMSLog.checker(this.mLine) + " mFTThumbnailFileName = " + this.mFTThumbnailFileName + " mPayloadThumbnailUrl = " + this.mPayloadThumbnailUrl + " mIsFTThumbnail = " + this.mIsFTThumbnail + " mIsAdhocV2t = " + this.mIsAdhocV2t + " groupSMSUpload:" + this.mIsGroupSMSUpload + "]";
    }
}
