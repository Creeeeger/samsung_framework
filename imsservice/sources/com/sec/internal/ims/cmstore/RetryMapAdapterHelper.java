package com.sec.internal.ims.cmstore;

import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;

/* loaded from: classes.dex */
public class RetryMapAdapterHelper implements IRetryStackAdapterHelper {
    private static final String TAG = "RetryMapAdapterHelper";

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean checkRequestRetried(IHttpAPICommonInterface iHttpAPICommonInterface) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public IHttpAPICommonInterface getLastFailedRequest() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean isEmpty() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean isRetryTimesFinished() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public IHttpAPICommonInterface pop() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void retryApi(IHttpAPICommonInterface iHttpAPICommonInterface, IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean retryLastApi(IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void saveRetryLastFailedTime(long j) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean searchAndPush(Pair<IHttpAPICommonInterface, SyncMsgType> pair, int i, MessageStoreClient messageStoreClient) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean searchAndPush(IHttpAPICommonInterface iHttpAPICommonInterface) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void clearRetryHistory() {
        Log.i(TAG, "Special Helper Clear History");
    }
}
