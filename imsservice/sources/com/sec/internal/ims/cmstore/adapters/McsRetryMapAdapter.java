package com.sec.internal.ims.cmstore.adapters;

import android.util.Log;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsCreateNotificationChannel;
import com.sec.internal.ims.cmstore.utils.RetryParam;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class McsRetryMapAdapter {
    public String TAG;
    private final transient Map<String, RetryParam> mMap = new HashMap();
    private MessageStoreClient messageStoreClient;

    public McsRetryMapAdapter() {
        String simpleName = McsRetryMapAdapter.class.getSimpleName();
        this.TAG = simpleName;
        Log.i(simpleName, "McsRetryMapAdapter Constructor");
    }

    public synchronized void initRetryMapAdapter(MessageStoreClient messageStoreClient) {
        this.messageStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    public synchronized boolean checkAndIncreaseRetry(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        if (iHttpAPICommonInterface != null) {
            if (this.mMap != null) {
                if (increaseRetryCount(iHttpAPICommonInterface, i)) {
                    return true;
                }
                Log.i(this.TAG, "checkAndIncreaseRetry, Already exhausted Max Counts");
                return false;
            }
        }
        Log.i(this.TAG, "checkAndIncreaseRetry, param or mMap is null");
        return false;
    }

    public synchronized boolean isAlreadyInRetry(String str) {
        Log.i(this.TAG, " isAlreadyInRetry : " + str);
        Map<String, RetryParam> map = this.mMap;
        if (map == null || !map.containsKey(str)) {
            return false;
        }
        return this.mMap.get(str).getRetryCount() != 0;
    }

    public synchronized boolean increaseRetryCount(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        Map<String, RetryParam> map = this.mMap;
        if (map == null) {
            return false;
        }
        if (map.containsKey(simpleName)) {
            RetryParam retryParam = this.mMap.get(simpleName);
            Log.i(this.TAG, "increaseRetryCount, Already Exists in Map with retried count :" + retryParam.getRetryCount());
            if (retryParam.getRetryCount() == 3 && !simpleName.equalsIgnoreCase(McsCreateNotificationChannel.class.getSimpleName())) {
                Log.i(this.TAG, "increaseRetryCount, removed key retry limit reached ");
                this.mMap.remove(simpleName);
                return false;
            }
            retryParam.setRetryCount(retryParam.getRetryCount() + 1);
        } else {
            Log.i(this.TAG, "increaseRetryCount, New to Map, added entry for request and errorCode: " + iHttpAPICommonInterface.getClass().getSimpleName() + " " + i);
            this.mMap.put(simpleName, new RetryParam(iHttpAPICommonInterface, 1, i));
        }
        return true;
    }

    public synchronized void clearRetryHistory() {
        Log.i(this.TAG, "clearRetryCounter: retry history cleared");
        Map<String, RetryParam> map = this.mMap;
        if (map != null) {
            map.clear();
        }
    }

    public synchronized void remove(IHttpAPICommonInterface iHttpAPICommonInterface) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        Map<String, RetryParam> map = this.mMap;
        if (map != null && map.size() != 0) {
            this.mMap.remove(simpleName);
        }
    }

    public synchronized boolean retryApi(IHttpAPICommonInterface iHttpAPICommonInterface, IAPICallFlowListener iAPICallFlowListener) {
        Log.i(this.TAG, "retryApi : " + iHttpAPICommonInterface.getClass().getSimpleName());
        Map<String, RetryParam> map = this.mMap;
        if (map == null || map.isEmpty() || iAPICallFlowListener == null || this.mMap.get(iHttpAPICommonInterface.getClass().getSimpleName()) == null) {
            iHttpAPICommonInterface = null;
        } else {
            Log.i(this.TAG, "Time Exhausted, Last Retry Val: " + iHttpAPICommonInterface.getClass().getSimpleName());
            this.messageStoreClient.getHttpController().execute(iHttpAPICommonInterface.getRetryInstance(iAPICallFlowListener, this.messageStoreClient));
        }
        if (iHttpAPICommonInterface == null) {
            return false;
        }
        Log.i(this.TAG, "retryLastApi: " + iHttpAPICommonInterface.getClass().getSimpleName());
        return true;
    }

    public synchronized int getRetryCount(String str) {
        Map<String, RetryParam> map = this.mMap;
        if (map == null || !map.containsKey(str)) {
            return 0;
        }
        return this.mMap.get(str).getRetryCount();
    }

    public synchronized RetryParam getRetryParam(String str) {
        Map<String, RetryParam> map;
        map = this.mMap;
        return (map == null || !map.containsKey(str)) ? null : this.mMap.get(str);
    }
}
