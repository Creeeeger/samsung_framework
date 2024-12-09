package com.sec.internal.omanetapi.nms;

import android.net.Uri;
import android.util.Log;
import com.google.gson.Gson;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ObjectsOpBulkCreation extends BaseNMSRequest {
    private static final String TAG = ObjectsOpBulkCreation.class.getSimpleName();

    public ObjectsOpBulkCreation(String str, String str2, String str3, String str4, MessageStoreClient messageStoreClient) {
        super(str, str2, str3, str4, messageStoreClient);
        buildAPISpecificURLFromBase();
    }

    public void initPostRequest(ObjectList objectList, boolean z, List<HttpPostBody> list) {
        setUrl(this.mBaseUrl);
        this.mNMSRequestHeaderMap.put("Content-Type", HttpPostBody.CONTENT_TYPE_MULTIPART_FORMDATA);
        setHeaders(this.mNMSRequestHeaderMap);
        setMethod(HttpRequestParams.Method.POST);
        setFollowRedirects(false);
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(new HttpPostBody("form-data; name=root-fields", "application/json", new Gson().toJson(objectList)));
        }
        Iterator<HttpPostBody> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
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
        Log.i(TAG, IMSLog.checker(uri));
    }
}
