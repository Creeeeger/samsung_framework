package com.sec.internal.ims.servicemodules.euc.snf;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucSendResponseStatus;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class EucStoreAndForward extends Handler implements IEucStoreAndForward {
    private static final int EVENT_SEND_RESPONSE_RESPONSE = 1;
    private static final String LOG_TAG = EucStoreAndForward.class.getSimpleName();
    private IEucServiceInterface mEucService;
    private Set<String> mOwnIdentitiesInForwardState;
    private List<IEucStoreAndForwardResponseData> storedResponses;

    public EucStoreAndForward(IEucServiceInterface iEucServiceInterface, Looper looper) {
        super(looper);
        this.mEucService = iEucServiceInterface;
        this.mOwnIdentitiesInForwardState = new HashSet();
        this.storedResponses = new LinkedList();
    }

    @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward
    public IEucStoreAndForward.IResponseHandle sendResponse(IEucData iEucData, EucResponseData.Response response, IEucStoreAndForward.IResponseCallback iResponseCallback) {
        IEucStoreAndForward.IResponseHandle iResponseHandle = new IEucStoreAndForward.IResponseHandle() { // from class: com.sec.internal.ims.servicemodules.euc.snf.EucStoreAndForward.1
            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward.IResponseHandle
            public void invalidate() {
                Iterator it = EucStoreAndForward.this.storedResponses.iterator();
                while (it.hasNext()) {
                    if (this == ((IEucStoreAndForwardResponseData) it.next()).getResponseToWorkflowHandle()) {
                        it.remove();
                    }
                }
            }
        };
        this.storedResponses.add(createEUCStoreAndForwardResponseData(iEucData, response, null, iResponseCallback, iResponseHandle));
        if (this.mOwnIdentitiesInForwardState.contains(iEucData.getOwnIdentity())) {
            this.mEucService.sendEucResponse(new EucResponseData(iEucData.getId(), iEucData.getType(), null, iEucData.getRemoteUri(), iEucData.getOwnIdentity(), response, obtainMessage(1)));
        }
        return iResponseHandle;
    }

    @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward
    public IEucStoreAndForward.IResponseHandle sendResponse(IEucData iEucData, EucResponseData.Response response, String str, IEucStoreAndForward.IResponseCallback iResponseCallback) {
        IEucStoreAndForward.IResponseHandle iResponseHandle = new IEucStoreAndForward.IResponseHandle() { // from class: com.sec.internal.ims.servicemodules.euc.snf.EucStoreAndForward.2
            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward.IResponseHandle
            public void invalidate() {
                Iterator it = EucStoreAndForward.this.storedResponses.iterator();
                while (it.hasNext()) {
                    if (this == ((IEucStoreAndForwardResponseData) it.next()).getResponseToWorkflowHandle()) {
                        it.remove();
                    }
                }
            }
        };
        this.storedResponses.add(createEUCStoreAndForwardResponseData(iEucData, response, str, iResponseCallback, iResponseHandle));
        if (this.mOwnIdentitiesInForwardState.contains(iEucData.getOwnIdentity())) {
            this.mEucService.sendEucResponse(new EucResponseData(iEucData.getId(), iEucData.getType(), str, iEucData.getRemoteUri(), iEucData.getOwnIdentity(), response, obtainMessage(1)));
        }
        return iResponseHandle;
    }

    @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward
    public void store(String str) {
        this.mOwnIdentitiesInForwardState.remove(str);
        Log.i(LOG_TAG, "state for ownIdentity = " + IMSLog.checker(str) + " set to STORE");
    }

    @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward
    public void forward(String str) {
        this.mOwnIdentitiesInForwardState.add(str);
        Log.i(LOG_TAG, "state for ownIdentity = " + IMSLog.checker(str) + " set to FORWARD");
        for (IEucStoreAndForwardResponseData iEucStoreAndForwardResponseData : this.storedResponses) {
            IEucData eUCData = iEucStoreAndForwardResponseData.getEUCData();
            if (eUCData.getOwnIdentity().equals(str)) {
                this.mEucService.sendEucResponse(new EucResponseData(eUCData.getId(), eUCData.getType(), iEucStoreAndForwardResponseData.getPIN(), eUCData.getRemoteUri(), eUCData.getOwnIdentity(), iEucStoreAndForwardResponseData.getResponse(), obtainMessage(1)));
            }
        }
    }

    private IEucStoreAndForwardResponseData createEUCStoreAndForwardResponseData(final IEucData iEucData, final EucResponseData.Response response, final String str, final IEucStoreAndForward.IResponseCallback iResponseCallback, final IEucStoreAndForward.IResponseHandle iResponseHandle) {
        return new IEucStoreAndForwardResponseData() { // from class: com.sec.internal.ims.servicemodules.euc.snf.EucStoreAndForward.3
            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForwardResponseData
            public IEucData getEUCData() {
                return iEucData;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForwardResponseData
            public EucResponseData.Response getResponse() {
                return response;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForwardResponseData
            public String getPIN() {
                return str;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForwardResponseData
            public IEucStoreAndForward.IResponseCallback getCallback() {
                return iResponseCallback;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForwardResponseData
            public IEucStoreAndForward.IResponseHandle getResponseToWorkflowHandle() {
                return iResponseHandle;
            }
        };
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (1 == message.what) {
            EucSendResponseStatus eucSendResponseStatus = (EucSendResponseStatus) ((AsyncResult) message.obj).result;
            IEucStoreAndForwardResponseData iEucStoreAndForwardResponseData = null;
            for (IEucStoreAndForwardResponseData iEucStoreAndForwardResponseData2 : this.storedResponses) {
                if (iEucStoreAndForwardResponseData2.getEUCData().getKey().equals(eucSendResponseStatus.getKey()) && iEucStoreAndForwardResponseData == null) {
                    iEucStoreAndForwardResponseData = iEucStoreAndForwardResponseData2;
                }
            }
            if (iEucStoreAndForwardResponseData != null) {
                iEucStoreAndForwardResponseData.getCallback().onStatus(eucSendResponseStatus);
                this.storedResponses.remove(iEucStoreAndForwardResponseData);
                return;
            }
            return;
        }
        Log.e(LOG_TAG, "handleMessage: Undefined message, ignoring!");
    }
}
