package com.sec.internal.ims.cmstore.omanetapi;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.LineManager;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.SyncParam;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.MessageDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.VvmDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.OMAObjectUpdateScheduler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.MessageSyncHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.VvmGreetingSyncHandler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.VvmSyncHandler;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class SyncHandlerFactory {
    public String TAG = SyncHandlerFactory.class.getSimpleName();
    private Context mContext;
    private Map<SyncParam, BaseDataChangeHandler> mDataChangeHandlerPool;
    private Map<SyncParam, BaseDeviceDataUpdateHandler> mDeviceDataUpdatePool;
    private ICloudMessageManagerHelper mICloudMessageManagerHelper;
    private final INetAPIEventListener mINetAPIEventListener;
    private final LineManager mLineManager;
    private Looper mLooper;
    private final MessageStoreClient mStoreClient;
    private Map<SyncParam, BaseSyncHandler> mSyncHandlerPool;
    private final IUIEventCallback mUIInterface;

    public SyncHandlerFactory(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, LineManager lineManager, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mContext = messageStoreClient.getContext();
        this.mLooper = looper;
        this.mINetAPIEventListener = iNetAPIEventListener;
        this.mUIInterface = iUIEventCallback;
        this.mLineManager = lineManager;
        this.mSyncHandlerPool = new HashMap();
        this.mDataChangeHandlerPool = new HashMap();
        this.mDeviceDataUpdatePool = new HashMap();
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
        registerLineListener();
    }

    private void registerLineListener() {
        this.mLineManager.registerLineStatusOberser(new LineManager.LineStatusObserver() { // from class: com.sec.internal.ims.cmstore.omanetapi.SyncHandlerFactory.1
            @Override // com.sec.internal.ims.cmstore.LineManager.LineStatusObserver
            public void onLineAdded(String str) {
                Log.i(SyncHandlerFactory.this.TAG, "onLineAdded: " + IMSLog.checker(str));
            }
        });
    }

    public BaseSyncHandler getSyncHandlerInstance(SyncParam syncParam) {
        return getSyncHandlerInstance(syncParam, true);
    }

    public BaseSyncHandler getSyncHandlerInstance(SyncParam syncParam, boolean z) {
        if (this.mSyncHandlerPool.containsKey(syncParam)) {
            return this.mSyncHandlerPool.get(syncParam);
        }
        String str = syncParam.mLine;
        int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType[syncParam.mType.ordinal()];
        if (i == 1) {
            MessageSyncHandler messageSyncHandler = new MessageSyncHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper, true);
            this.mSyncHandlerPool.put(syncParam, messageSyncHandler);
            return messageSyncHandler;
        }
        if (i == 2) {
            VvmGreetingSyncHandler vvmGreetingSyncHandler = new VvmGreetingSyncHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.VM_GREETINGS, this.mICloudMessageManagerHelper);
            this.mSyncHandlerPool.put(syncParam, vvmGreetingSyncHandler);
            return vvmGreetingSyncHandler;
        }
        if (i == 3) {
            VvmSyncHandler vvmSyncHandler = new VvmSyncHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.VM, this.mICloudMessageManagerHelper, z);
            this.mSyncHandlerPool.put(syncParam, vvmSyncHandler);
            return vvmSyncHandler;
        }
        MessageSyncHandler messageSyncHandler2 = new MessageSyncHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper, z);
        this.mSyncHandlerPool.put(syncParam, messageSyncHandler2);
        return messageSyncHandler2;
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.SyncHandlerFactory$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType;

        static {
            int[] iArr = new int[SyncMsgType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType = iArr;
            try {
                iArr[SyncMsgType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType[SyncMsgType.VM_GREETINGS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType[SyncMsgType.VM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public List<BaseSyncHandler> getAllSyncHandlerInstances() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<SyncParam, BaseSyncHandler>> it = this.mSyncHandlerPool.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public void clearAllSyncHandlerInstances() {
        this.mSyncHandlerPool.clear();
    }

    public List<BaseSyncHandler> getAllSyncHandlerInstancesByLine(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (Map.Entry<SyncParam, BaseSyncHandler> entry : this.mSyncHandlerPool.entrySet()) {
            if (entry.getKey().mLine.equals(str)) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    public BaseDataChangeHandler getDataChangeHandlerInstance(SyncParam syncParam) {
        if (this.mDataChangeHandlerPool.containsKey(syncParam)) {
            return this.mDataChangeHandlerPool.get(syncParam);
        }
        String str = syncParam.mLine;
        int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType[syncParam.mType.ordinal()];
        if (i == 1) {
            MessageDataChangeHandler messageDataChangeHandler = new MessageDataChangeHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper);
            this.mDataChangeHandlerPool.put(syncParam, messageDataChangeHandler);
            return messageDataChangeHandler;
        }
        if (i == 2 || i == 3) {
            VvmDataChangeHandler vvmDataChangeHandler = new VvmDataChangeHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.VM, this.mICloudMessageManagerHelper);
            this.mDataChangeHandlerPool.put(syncParam, vvmDataChangeHandler);
            return vvmDataChangeHandler;
        }
        MessageDataChangeHandler messageDataChangeHandler2 = new MessageDataChangeHandler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, this.mUIInterface, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper);
        this.mDataChangeHandlerPool.put(syncParam, messageDataChangeHandler2);
        return messageDataChangeHandler2;
    }

    public List<BaseDataChangeHandler> getAllDataChangeHandlerInstances() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<SyncParam, BaseDataChangeHandler>> it = this.mDataChangeHandlerPool.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public void clearAllDataChangeHandlerInstances() {
        this.mDataChangeHandlerPool.clear();
    }

    public List<BaseDataChangeHandler> getAllDataChangeHandlerInstancesByLine(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (Map.Entry<SyncParam, BaseDataChangeHandler> entry : this.mDataChangeHandlerPool.entrySet()) {
            if (entry.getKey().mLine.equals(str)) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    public BaseDeviceDataUpdateHandler getDeviceDataUpdateHandlerInstance(SyncParam syncParam) {
        OMAObjectUpdateScheduler oMAObjectUpdateScheduler;
        Log.d(this.TAG, "getDeviceDataUpdateHandlerInstance: " + syncParam);
        if (this.mDeviceDataUpdatePool.containsKey(syncParam)) {
            return this.mDeviceDataUpdatePool.get(syncParam);
        }
        String str = syncParam.mLine;
        int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType[syncParam.mType.ordinal()];
        if (i == 1) {
            oMAObjectUpdateScheduler = new OMAObjectUpdateScheduler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper);
            this.mDeviceDataUpdatePool.put(syncParam, oMAObjectUpdateScheduler);
        } else if (i == 3) {
            oMAObjectUpdateScheduler = new OMAObjectUpdateScheduler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, str, SyncMsgType.VM, this.mICloudMessageManagerHelper);
            this.mDeviceDataUpdatePool.put(syncParam, oMAObjectUpdateScheduler);
        } else {
            oMAObjectUpdateScheduler = new OMAObjectUpdateScheduler(this.mLooper, this.mStoreClient, this.mINetAPIEventListener, str, SyncMsgType.MESSAGE, this.mICloudMessageManagerHelper);
            this.mDeviceDataUpdatePool.put(syncParam, oMAObjectUpdateScheduler);
        }
        oMAObjectUpdateScheduler.start();
        return oMAObjectUpdateScheduler;
    }

    public List<BaseDeviceDataUpdateHandler> getAllDeviceDataUpdateHandlerInstances() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<SyncParam, BaseDeviceDataUpdateHandler>> it = this.mDeviceDataUpdatePool.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public void clearAllDeviceDataUpdateHandlerInstances() {
        this.mDeviceDataUpdatePool.clear();
    }

    public List<BaseDeviceDataUpdateHandler> getAllDeviceDataUpdateHandlerInstancesByLine(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (Map.Entry<SyncParam, BaseDeviceDataUpdateHandler> entry : this.mDeviceDataUpdatePool.entrySet()) {
            if (entry.getKey().mLine.equals(str)) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }
}
