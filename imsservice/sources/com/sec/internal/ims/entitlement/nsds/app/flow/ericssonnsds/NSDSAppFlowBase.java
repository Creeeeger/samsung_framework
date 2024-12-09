package com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BaseFlowImpl;
import com.sec.internal.ims.entitlement.nsds.strategy.IMnoNsdsStrategy;
import com.sec.internal.ims.entitlement.nsds.strategy.MnoNsdsStrategyCreator;
import com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class NSDSAppFlowBase extends Handler {
    private static final String LOG_TAG = NSDSAppFlowBase.class.getSimpleName();
    protected static final List<Messenger> sEvtMessengers = new ArrayList();
    protected BaseFlowImpl mBaseFlowImpl;
    protected final Context mContext;
    protected ArrayList<Message> mDeferredMessages;
    protected int mDeviceEventType;
    protected String mDeviceGroup;
    protected String mImeiForUA;
    protected Handler mModuleHandler;
    protected NSDSDatabaseHelper mNSDSDatabaseHelper;
    protected int mRetryCount;
    protected int mSlotId;
    protected String mUserAgent;

    protected abstract void notifyNSDSFlowResponse(boolean z, String str, int i, int i2);

    protected abstract void queueOperation(int i, Bundle bundle);

    public NSDSAppFlowBase(Looper looper, Context context, BaseFlowImpl baseFlowImpl, NSDSDatabaseHelper nSDSDatabaseHelper) {
        super(looper);
        this.mRetryCount = 0;
        this.mUserAgent = null;
        this.mImeiForUA = null;
        this.mDeviceGroup = null;
        this.mSlotId = 0;
        this.mModuleHandler = null;
        this.mDeferredMessages = new ArrayList<>();
        this.mContext = context;
        this.mBaseFlowImpl = baseFlowImpl;
        this.mNSDSDatabaseHelper = nSDSDatabaseHelper;
        init();
    }

    public NSDSAppFlowBase(Looper looper, Context context, BaseFlowImpl baseFlowImpl, NSDSDatabaseHelper nSDSDatabaseHelper, Handler handler) {
        super(looper);
        this.mRetryCount = 0;
        this.mUserAgent = null;
        this.mImeiForUA = null;
        this.mDeviceGroup = null;
        this.mSlotId = 0;
        this.mModuleHandler = null;
        this.mDeferredMessages = new ArrayList<>();
        this.mContext = context;
        this.mBaseFlowImpl = baseFlowImpl;
        this.mNSDSDatabaseHelper = nSDSDatabaseHelper;
        this.mModuleHandler = handler;
        init();
    }

    private void init() {
        this.mSlotId = this.mBaseFlowImpl.getSimManager().getSimSlotIndex();
        IMnoNsdsStrategy mnoNsdsStrategy = getMnoNsdsStrategy();
        this.mUserAgent = mnoNsdsStrategy == null ? null : mnoNsdsStrategy.getUserAgent();
        this.mDeviceGroup = mnoNsdsStrategy != null ? mnoNsdsStrategy.getDeviceGroup(this.mSlotId, this.mBaseFlowImpl.getSimManager().getSimMnoName()) : null;
    }

    protected <T> Iterable<T> emptyIfNull(Iterable<T> iterable) {
        return iterable == null ? Collections.emptyList() : iterable;
    }

    protected IMnoNsdsStrategy getMnoNsdsStrategy() {
        return MnoNsdsStrategyCreator.getInstance(this.mContext, this.mBaseFlowImpl.getSimManager().getSimSlotIndex()).getMnoStrategy();
    }

    protected final void deferMessage(Message message) {
        IMSLog.i(LOG_TAG, "deferMessage: msg=" + message.what);
        this.mDeferredMessages.add(Message.obtain(message));
    }

    protected int getHttpErrRespCode(Bundle bundle) {
        int i = bundle != null ? bundle.getInt(NSDSNamespaces.NSDSDataMapKey.HTTP_RESP_CODE, -1) : -1;
        IMSLog.i(LOG_TAG, "getHttpErrRespCode: " + i);
        return i;
    }

    protected String getHttpErrRespReason(Bundle bundle) {
        String string = bundle != null ? bundle.getString(NSDSNamespaces.NSDSDataMapKey.HTTP_RESP_REASON, null) : null;
        IMSLog.i(LOG_TAG, "getHttpErrRespReason: " + string);
        return string;
    }

    protected void moveDeferredMessageAtFrontOfQueue() {
        for (int size = this.mDeferredMessages.size() - 1; size >= 0; size += -1) {
            Message message = this.mDeferredMessages.get(size);
            IMSLog.i(LOG_TAG, "moveDeferredMessageAtFrontOfQueue: what = " + message.what);
            sendMessageAtFrontOfQueue(message);
        }
        this.mDeferredMessages.clear();
    }

    protected void clearDeferredMessage() {
        IMSLog.i(LOG_TAG, "clearDeferredMessage()");
        this.mDeferredMessages.clear();
    }

    public static void registerEventMessenger(Messenger messenger) {
        List<Messenger> list = sEvtMessengers;
        synchronized (list) {
            IMSLog.i(LOG_TAG, "registerEventMessenger: " + list.size());
            if (messenger != null) {
                list.add(messenger);
            }
        }
    }

    public static void unregisterEventMessenger(Messenger messenger) {
        List<Messenger> list = sEvtMessengers;
        synchronized (list) {
            IMSLog.i(LOG_TAG, "unregisterEventMessenger: " + list.size());
            if (messenger != null) {
                list.remove(messenger);
            }
        }
    }

    protected class NSDSResponseStatus {
        public int failedOperation;
        public String methodName;
        public int responseCode;

        public NSDSResponseStatus(int i, String str, int i2) {
            this.responseCode = i;
            this.methodName = str;
            this.failedOperation = i2;
        }
    }

    protected void performNextOperationIf(int i, NSDSResponseStatus nSDSResponseStatus, Bundle bundle) {
        if (getMnoNsdsStrategy() != null) {
            int nextOperation = getMnoNsdsStrategy().getNextOperation(this.mDeviceEventType, i, nSDSResponseStatus.responseCode, bundle);
            IMSLog.i(LOG_TAG, "performNextOperationIf: nextOperation " + nextOperation);
            if (nextOperation == -1) {
                int i2 = nSDSResponseStatus.responseCode;
                notifyNSDSFlowResponse(i2 == 1000, nSDSResponseStatus.methodName, nSDSResponseStatus.failedOperation, i2);
                return;
            } else {
                queueOperation(nextOperation, bundle);
                return;
            }
        }
        notifyNSDSFlowResponse(false, null, -1, -1);
    }

    protected void notifyCallbackForNsdsEvent(int i, int i2) {
        List<Messenger> list = sEvtMessengers;
        synchronized (list) {
            IMSLog.i(LOG_TAG, "notifyCallbackForNsdsEvent: eventType=" + i + ":" + list.size());
            for (int size = list.size() - 1; size >= 0; size--) {
                try {
                    sEvtMessengers.get(size).send(obtainMessage(i, i2, -1));
                } catch (RemoteException e) {
                    IMSLog.s(LOG_TAG, "notifyCallbackForNsdsEvent: dead messenger, removed " + e.getMessage());
                    sEvtMessengers.remove(size);
                }
            }
        }
    }
}
