package com.sec.internal.ims.cmstore;

import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.adapters.RetryStackAdapter;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper;

/* loaded from: classes.dex */
public class RetryStackAdapterHelper implements IRetryStackAdapterHelper {
    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean searchAndPush(Pair<IHttpAPICommonInterface, SyncMsgType> pair, int i, MessageStoreClient messageStoreClient) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public IHttpAPICommonInterface getLastFailedRequest() {
        return RetryStackAdapter.getInstance().getLastFailedRequest();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public IHttpAPICommonInterface pop() {
        return RetryStackAdapter.getInstance().pop();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean isEmpty() {
        return RetryStackAdapter.getInstance().isEmpty();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void retryApi(IHttpAPICommonInterface iHttpAPICommonInterface, IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        RetryStackAdapter.getInstance().retryApi(iHttpAPICommonInterface, iAPICallFlowListener, iCloudMessageManagerHelper, iRetryStackAdapterHelper);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean checkRequestRetried(IHttpAPICommonInterface iHttpAPICommonInterface) {
        return RetryStackAdapter.getInstance().checkRequestRetried(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean isRetryTimesFinished() {
        return RetryStackAdapter.getInstance().isRetryTimesFinished(new CloudMessageManagerHelper());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void clearRetryHistory() {
        RetryStackAdapter.getInstance().clearRetryHistory();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean searchAndPush(IHttpAPICommonInterface iHttpAPICommonInterface) {
        return RetryStackAdapter.getInstance().searchAndPush(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public void saveRetryLastFailedTime(long j) {
        RetryStackAdapter.getInstance().saveRetryLastFailedTime(System.currentTimeMillis());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper
    public boolean retryLastApi(IAPICallFlowListener iAPICallFlowListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, IRetryStackAdapterHelper iRetryStackAdapterHelper) {
        return RetryStackAdapter.getInstance().retryLastApi(iAPICallFlowListener, iCloudMessageManagerHelper, iRetryStackAdapterHelper);
    }
}
