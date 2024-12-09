package com.sec.internal.omanetapi.nms;

import android.net.Uri;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.omanetapi.common.data.OMAApiRequestParam;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BulkCreation extends BaseNMSRequest {
    public static final String TAG = BulkCreation.class.getSimpleName();
    private static final long serialVersionUID = 6070003579804341648L;

    public BulkCreation(String str, String str2, String str3, String str4, MessageStoreClient messageStoreClient) {
        super(str, str2, str3, str4, messageStoreClient);
        buildAPISpecificURLFromBase();
    }

    public BulkCreation(String str, MessageStoreClient messageStoreClient) {
        super(str, messageStoreClient);
    }

    public void initPostRequest(ObjectList objectList, boolean z, List<HttpPostBody> list) {
        if (list == null) {
            return;
        }
        try {
            Log.d(TAG, "initPostRequest: postBody: " + list.toString());
        } catch (OutOfMemoryError unused) {
            Log.e(TAG, "initPostRequest: postBody: " + list.size());
        }
        setUrl(this.mBaseUrl);
        this.mNMSRequestHeaderMap.put("Content-Type", HttpPostBody.CONTENT_TYPE_MULTIPART_FORMDATA);
        setHeaders(this.mNMSRequestHeaderMap);
        setMethod(HttpRequestParams.Method.POST);
        setFollowRedirects(false);
        ArrayList arrayList = new ArrayList();
        if (z) {
            OMAApiRequestParam.BulkCreationRequest bulkCreationRequest = new OMAApiRequestParam.BulkCreationRequest();
            bulkCreationRequest.objectList = objectList;
            arrayList.add(new HttpPostBody("form-data; name=\"root-fields\"", "application/json", new Gson().toJson(bulkCreationRequest)));
        }
        arrayList.addAll(list);
        setPostBody(new HttpPostBody(arrayList));
    }

    @Override // com.sec.internal.omanetapi.nms.BaseNMSRequest
    protected void buildAPISpecificURLFromBase() {
        Uri.Builder buildUpon = Uri.parse(this.mBaseUrl).buildUpon();
        buildUpon.appendPath("objects");
        buildUpon.appendPath("operations");
        buildUpon.appendPath("bulkCreation");
        String uri = buildUpon.build().toString();
        this.mBaseUrl = uri;
        Log.i(TAG, uri);
    }
}
