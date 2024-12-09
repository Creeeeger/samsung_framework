package com.sec.internal.ims.cmstore.adapters;

import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.BaseProvisionAPIRequest;
import com.sec.internal.ims.cmstore.utils.RetryParam;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class RetryMapAdapter {
    private static final RetryMapAdapter sInstance = new RetryMapAdapter();
    public String TAG;
    private transient Map<Pair<IHttpAPICommonInterface, SyncMsgType>, RetryParam> mMap = new HashMap();
    private MessageStoreClient messageStoreClient;

    public RetryMapAdapter() {
        String simpleName = RetryMapAdapter.class.getSimpleName();
        this.TAG = simpleName;
        Log.i(simpleName, "RetryMapAdapter Constructor");
    }

    public static RetryMapAdapter getInstance() {
        return sInstance;
    }

    public synchronized void initRetryMapAdapter(MessageStoreClient messageStoreClient) {
        this.messageStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    public synchronized boolean increaseRetryCount(Pair<IHttpAPICommonInterface, SyncMsgType> pair, int i) {
        if (this.mMap.containsKey(pair)) {
            RetryParam retryParam = this.mMap.get(pair);
            Log.i(this.TAG, "increaseRetryCount, Already Exists in Map with retried count :" + retryParam.getRetryCount());
            if (retryParam.getRetryCount() == 2) {
                Log.i(this.TAG, "increaseRetryCount, removed key ");
                this.mMap.remove(pair);
                return false;
            }
            retryParam.setRetryCount(retryParam.getRetryCount() + 1);
            return true;
        }
        Log.i(this.TAG, "increaseRetryCount, New to Map, added entry for errorCode: " + i);
        this.mMap.put(pair, new RetryParam((IHttpAPICommonInterface) pair.first, 1, i));
        return true;
    }

    public synchronized boolean searchAndPush(Pair<IHttpAPICommonInterface, SyncMsgType> pair, int i) {
        if (pair != null) {
            if (this.mMap != null) {
                IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) pair.first;
                if (!(iHttpAPICommonInterface instanceof BaseProvisionAPIRequest) && !(iHttpAPICommonInterface instanceof BaseNMSRequest)) {
                    Log.i(this.TAG, "searchAndPush, returning because of wrong request");
                    return false;
                }
                if (increaseRetryCount(pair, i)) {
                    return true;
                }
                Log.i(this.TAG, "searchAndPush, Already exhausted Max Counts");
                return false;
            }
        }
        Log.i(this.TAG, "searchAndPush, param or mMap is null");
        return false;
    }

    public synchronized void remove(Pair<IHttpAPICommonInterface, SyncMsgType> pair) {
        Map<Pair<IHttpAPICommonInterface, SyncMsgType>, RetryParam> map = this.mMap;
        if (map != null && map.size() != 0) {
            if (this.mMap.containsKey(pair)) {
                this.mMap.remove(pair);
            }
        }
    }

    public synchronized void clearRetryHistory() {
        Log.i(this.TAG, "clearRetryCounter: retry history cleared");
        Map<Pair<IHttpAPICommonInterface, SyncMsgType>, RetryParam> map = this.mMap;
        if (map != null) {
            map.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00bc A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0024, B:8:0x002c, B:10:0x0036, B:12:0x0055, B:14:0x0083, B:17:0x0090, B:19:0x00bc, B:26:0x00a0), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00de A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean retryApi(android.util.Pair<com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType> r9, com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener r10, com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper r11, com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper r12) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.lang.String r0 = r8.TAG     // Catch: java.lang.Throwable -> Le1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le1
            r1.<init>()     // Catch: java.lang.Throwable -> Le1
            java.lang.String r2 = "retryApi : Second "
            r1.append(r2)     // Catch: java.lang.Throwable -> Le1
            java.lang.Object r2 = r9.second     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r2 = (com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType) r2     // Catch: java.lang.Throwable -> Le1
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Le1
            r1.append(r2)     // Catch: java.lang.Throwable -> Le1
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Le1
            android.util.Log.i(r0, r1)     // Catch: java.lang.Throwable -> Le1
            java.util.Map<android.util.Pair<com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType>, com.sec.internal.ims.cmstore.utils.RetryParam> r0 = r8.mMap     // Catch: java.lang.Throwable -> Le1
            if (r0 == 0) goto Lb9
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Le1
            if (r0 != 0) goto Lb9
            if (r10 == 0) goto Lb9
            java.util.Map<android.util.Pair<com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType>, com.sec.internal.ims.cmstore.utils.RetryParam> r0 = r8.mMap     // Catch: java.lang.Throwable -> Le1
            java.lang.Object r0 = r0.get(r9)     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.utils.RetryParam r0 = (com.sec.internal.ims.cmstore.utils.RetryParam) r0     // Catch: java.lang.Throwable -> Le1
            if (r0 == 0) goto Lb9
            int r1 = r0.getErrorCode()     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.MessageStoreClient r2 = r8.messageStoreClient     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.strategy.CloudMessageStrategyManager r2 = r2.getCloudMessageStrategyManager()     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy r2 = r2.getStrategy()     // Catch: java.lang.Throwable -> Le1
            long r1 = r2.getTimerValue(r1)     // Catch: java.lang.Throwable -> Le1
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Le1
            long r5 = r0.getLastExecuted()     // Catch: java.lang.Throwable -> Le1
            long r5 = r5 + r1
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 < 0) goto Lb9
            java.lang.Object r0 = r9.first     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface r0 = (com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface) r0     // Catch: java.lang.Throwable -> Le1
            java.lang.String r1 = r8.TAG     // Catch: java.lang.Throwable -> Le1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le1
            r2.<init>()     // Catch: java.lang.Throwable -> Le1
            java.lang.String r3 = "Time Exhausted, Last Retry Val: "
            r2.append(r3)     // Catch: java.lang.Throwable -> Le1
            java.lang.Class r3 = r0.getClass()     // Catch: java.lang.Throwable -> Le1
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> Le1
            r2.append(r3)     // Catch: java.lang.Throwable -> Le1
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Le1
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> Le1
            java.lang.Object r1 = r9.second     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r1 = (com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType) r1     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r2 = com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType.VM     // Catch: java.lang.Throwable -> Le1
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> Le1
            if (r1 != 0) goto La0
            java.lang.Object r1 = r9.second     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r1 = (com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType) r1     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r2 = com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType.VM_GREETINGS     // Catch: java.lang.Throwable -> Le1
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> Le1
            if (r1 == 0) goto L90
            goto La0
        L90:
            com.sec.internal.ims.cmstore.MessageStoreClient r9 = r8.messageStoreClient     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.utils.CmsHttpController r9 = r9.getHttpController()     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.MessageStoreClient r1 = r8.messageStoreClient     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.helper.httpclient.HttpRequestParams r10 = r0.getRetryInstance(r10, r1, r11, r12)     // Catch: java.lang.Throwable -> Le1
            r9.execute(r10)     // Catch: java.lang.Throwable -> Le1
            goto Lba
        La0:
            com.sec.internal.ims.cmstore.MessageStoreClient r1 = r8.messageStoreClient     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.utils.CmsHttpController r7 = r1.getHttpController()     // Catch: java.lang.Throwable -> Le1
            java.lang.Object r9 = r9.second     // Catch: java.lang.Throwable -> Le1
            r2 = r9
            com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r2 = (com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType) r2     // Catch: java.lang.Throwable -> Le1
            com.sec.internal.ims.cmstore.MessageStoreClient r4 = r8.messageStoreClient     // Catch: java.lang.Throwable -> Le1
            r1 = r0
            r3 = r10
            r5 = r11
            r6 = r12
            com.sec.internal.helper.httpclient.HttpRequestParams r9 = r1.getRetryInstance(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Le1
            r7.execute(r9)     // Catch: java.lang.Throwable -> Le1
            goto Lba
        Lb9:
            r0 = 0
        Lba:
            if (r0 == 0) goto Lde
            java.lang.String r9 = r8.TAG     // Catch: java.lang.Throwable -> Le1
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le1
            r10.<init>()     // Catch: java.lang.Throwable -> Le1
            java.lang.String r11 = "retryLastApi: "
            r10.append(r11)     // Catch: java.lang.Throwable -> Le1
            java.lang.Class r11 = r0.getClass()     // Catch: java.lang.Throwable -> Le1
            java.lang.String r11 = r11.getSimpleName()     // Catch: java.lang.Throwable -> Le1
            r10.append(r11)     // Catch: java.lang.Throwable -> Le1
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> Le1
            android.util.Log.i(r9, r10)     // Catch: java.lang.Throwable -> Le1
            monitor-exit(r8)
            r8 = 1
            return r8
        Lde:
            monitor-exit(r8)
            r8 = 0
            return r8
        Le1:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.adapters.RetryMapAdapter.retryApi(android.util.Pair, com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener, com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper, com.sec.internal.interfaces.ims.cmstore.IRetryStackAdapterHelper):boolean");
    }
}
