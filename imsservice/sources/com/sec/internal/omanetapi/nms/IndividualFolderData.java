package com.sec.internal.omanetapi.nms;

import android.net.Uri;
import android.util.Log;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class IndividualFolderData extends BaseNMSRequest {
    private static final String TAG = IndividualFolderData.class.getSimpleName();
    private final String mFolderId;
    private final String mResourceRelPath;

    public IndividualFolderData(String str, String str2, String str3, String str4, String str5, String str6, MessageStoreClient messageStoreClient) {
        super(str, str2, str3, str4, messageStoreClient);
        this.mFolderId = str5;
        this.mResourceRelPath = str6;
        buildAPISpecificURLFromBase();
    }

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest
    protected void buildAPISpecificURLFromBase() {
        Uri.Builder buildUpon = Uri.parse(this.mBaseUrl).buildUpon();
        buildUpon.appendPath("folders");
        buildUpon.appendPath(this.mFolderId);
        buildUpon.appendPath(this.mResourceRelPath);
        String uri = buildUpon.build().toString();
        this.mBaseUrl = uri;
        Log.i(TAG, IMSLog.checker(uri));
    }
}
