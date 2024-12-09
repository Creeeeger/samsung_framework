package com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.NSDSRequest;
import com.sec.internal.constants.ims.entitilement.data.NSDSResponse;
import com.sec.internal.constants.ims.entitilement.data.Response3gppAuthentication;
import com.sec.internal.ims.entitlement.nsds.strategy.IMnoNsdsStrategy;
import com.sec.internal.ims.entitlement.nsds.strategy.MnoNsdsStrategyCreator;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public abstract class NSDSBaseProcedure extends Handler {
    protected static final int BASE_OP_MAX_RETRY = 4;
    public static final int EXEC_ENTITLEMENT_OP_WITH_CHALLENGE = 2;
    private static final String LOG_TAG = NSDSBaseProcedure.class.getSimpleName();
    public static final int RESPONSE_RECEIVED = 1;
    protected BaseFlowImpl mBaseFlowImpl;
    protected Context mContext;
    protected String mImeiForUA;
    protected Messenger mMessenger;
    protected int mRetryCount;
    protected long mRetryInterval;
    protected String mUserAgent;
    protected String mVersion;

    public abstract NSDSRequest[] buildRequests(NSDSCommonParameters nSDSCommonParameters);

    protected abstract void executeOperationWithChallenge();

    protected abstract Message getResponseMessage();

    protected abstract boolean processResponse(Bundle bundle);

    public NSDSBaseProcedure(Looper looper, Context context, BaseFlowImpl baseFlowImpl, Messenger messenger, String str) {
        super(looper);
        this.mRetryCount = 0;
        this.mRetryInterval = 0L;
        this.mContext = context;
        this.mBaseFlowImpl = baseFlowImpl;
        this.mMessenger = messenger;
        this.mVersion = str;
        this.mUserAgent = null;
        this.mImeiForUA = null;
    }

    public NSDSBaseProcedure(Looper looper, Context context, BaseFlowImpl baseFlowImpl, Messenger messenger, String str, String str2, String str3) {
        super(looper);
        this.mRetryCount = 0;
        this.mRetryInterval = 0L;
        this.mContext = context;
        this.mBaseFlowImpl = baseFlowImpl;
        this.mMessenger = messenger;
        this.mVersion = str;
        this.mUserAgent = str2;
        this.mImeiForUA = str3;
    }

    public boolean isResponseAkaChallenge(Response3gppAuthentication response3gppAuthentication) {
        return response3gppAuthentication != null && response3gppAuthentication.responseCode == 1003;
    }

    protected Response3gppAuthentication getResponse3gppAuthenticatoin(Bundle bundle) {
        if (bundle != null) {
            return (Response3gppAuthentication) bundle.getParcelable(NSDSNamespaces.NSDSMethodNamespace.REQ_3GPP_AUTH);
        }
        return null;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                executeOperationWithChallenge();
                return;
            }
            IMSLog.i(LOG_TAG, "Unknown flow request: " + message.what);
            return;
        }
        if (isResponseAkaChallenge(getResponse3gppAuthenticatoin(message.getData()))) {
            Message message2 = (Message) message.getData().getParcelable(BaseFlowImpl.KEY_REQUEST_MESSAGE);
            Response3gppAuthentication response3gppAuthenticatoin = getResponse3gppAuthenticatoin(message.getData());
            boolean z = message2 != null && message2.arg1 == 1;
            boolean z2 = (response3gppAuthenticatoin == null || TextUtils.isEmpty(response3gppAuthenticatoin.akaChallenge)) ? false : true;
            if (message2 != null && !z && z2) {
                this.mBaseFlowImpl.resubmitWithChallenge(message2, response3gppAuthenticatoin);
                return;
            } else {
                reportResult(message.getData());
                return;
            }
        }
        if (processResponse(message.getData())) {
            reportResult(message.getData());
        }
    }

    private void reportResult(Bundle bundle) {
        try {
            if (this.mMessenger != null) {
                Message responseMessage = getResponseMessage();
                responseMessage.setData(bundle);
                this.mMessenger.send(responseMessage);
            } else {
                IMSLog.i(LOG_TAG, "mMessenger is null:");
            }
        } catch (RemoteException e) {
            IMSLog.s(LOG_TAG, "Could not send response to the caller" + e.getMessage());
        }
    }

    protected boolean retryForServerError(NSDSResponse nSDSResponse) {
        String str = LOG_TAG;
        IMSLog.i(str, "retryForServerError:" + this.mRetryCount);
        if (nSDSResponse != null && nSDSResponse.responseCode == 1111 && this.mRetryCount < 4) {
            IMSLog.i(str, "Failed with server error");
            this.mRetryCount++;
            sendEmptyMessageDelayed(2, this.mRetryInterval);
            return true;
        }
        if (nSDSResponse != null && nSDSResponse.responseCode != 1041) {
            this.mRetryCount = 0;
        }
        return false;
    }

    protected boolean retryForServerError(NSDSResponse[] nSDSResponseArr) {
        boolean z;
        int length = nSDSResponseArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (isServerErrror(nSDSResponseArr[i])) {
                z = true;
                break;
            }
            i++;
        }
        IMnoNsdsStrategy mnoVSimStrategy = getMnoVSimStrategy();
        if (z && mnoVSimStrategy != null && this.mRetryCount < mnoVSimStrategy.getBaseOperationMaxRetry()) {
            IMSLog.i(LOG_TAG, "Failed with server error. Retrying count:" + this.mRetryCount);
            this.mRetryCount = this.mRetryCount + 1;
            executeOperationWithChallenge();
            return true;
        }
        this.mRetryCount = 0;
        return false;
    }

    protected boolean isServerErrror(NSDSResponse nSDSResponse) {
        return nSDSResponse != null && nSDSResponse.responseCode == 1111;
    }

    protected String getVersionInfo() {
        return this.mVersion;
    }

    protected String getUserAgent() {
        return this.mUserAgent;
    }

    protected String getImeiForUA() {
        return this.mImeiForUA;
    }

    protected IMnoNsdsStrategy getMnoVSimStrategy() {
        return MnoNsdsStrategyCreator.getInstance(this.mContext, this.mBaseFlowImpl.getSimManager().getSimSlotIndex()).getMnoStrategy();
    }
}
