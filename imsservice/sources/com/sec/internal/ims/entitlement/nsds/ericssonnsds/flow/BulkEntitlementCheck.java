package com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.NSDSRequest;
import com.sec.internal.constants.ims.entitilement.data.Request3gppAuthentication;
import com.sec.internal.constants.ims.entitilement.data.RequestServiceEntitlementStatus;
import com.sec.internal.constants.ims.entitilement.data.ResponseServiceEntitlementStatus;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.NSDSClient;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BulkEntitlementCheck extends NSDSBaseProcedure {
    private static final String LOG_TAG = BulkEntitlementCheck.class.getSimpleName();
    private boolean mIncludeGetMSISDN;
    private ArrayList<String> mServiceList;

    public BulkEntitlementCheck(Looper looper, Context context, BaseFlowImpl baseFlowImpl, Messenger messenger, String str) {
        super(looper, context, baseFlowImpl, messenger, str);
        this.mServiceList = new ArrayList<>();
        this.mIncludeGetMSISDN = false;
        Log.i(LOG_TAG, "created.");
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    public NSDSRequest[] buildRequests(NSDSCommonParameters nSDSCommonParameters) {
        NSDSClient nSDSClient = this.mBaseFlowImpl.getNSDSClient();
        AtomicInteger atomicInteger = new AtomicInteger();
        Request3gppAuthentication buildAuthenticationRequest = nSDSClient.buildAuthenticationRequest(atomicInteger.incrementAndGet(), true, nSDSCommonParameters.getChallengeResponse(), nSDSCommonParameters.getAkaToken(), null, nSDSCommonParameters.getImsiEap(), nSDSCommonParameters.getDeviceId());
        RequestServiceEntitlementStatus buildServiceEntitlementStatusRequest = nSDSClient.buildServiceEntitlementStatusRequest(atomicInteger.incrementAndGet(), this.mServiceList, nSDSCommonParameters.getDeviceId());
        if (this.mIncludeGetMSISDN) {
            return new NSDSRequest[]{buildAuthenticationRequest, buildServiceEntitlementStatusRequest, nSDSClient.buildGetMSISDNRequest(atomicInteger.incrementAndGet(), nSDSCommonParameters.getDeviceId())};
        }
        return new NSDSRequest[]{buildAuthenticationRequest, buildServiceEntitlementStatusRequest};
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected Message getResponseMessage() {
        return Message.obtain((Handler) null, 101);
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected boolean processResponse(Bundle bundle) {
        ResponseServiceEntitlementStatus responseServiceEntitlementStatus;
        String str = LOG_TAG;
        Log.i(str, "processResponse:" + this.mRetryCount);
        if (bundle != null) {
            responseServiceEntitlementStatus = (ResponseServiceEntitlementStatus) bundle.getParcelable(NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS);
        } else {
            Log.e(str, "responseCollection is null");
            responseServiceEntitlementStatus = null;
        }
        return !retryForServerError(responseServiceEntitlementStatus);
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected void executeOperationWithChallenge() {
        this.mBaseFlowImpl.performOperation(30, this, new Messenger(this));
    }

    public void checkBulkEntitlement(List<String> list, boolean z) {
        this.mServiceList.addAll(list);
        this.mIncludeGetMSISDN = z;
        executeOperationWithChallenge();
    }

    public void checkBulkEntitlement(List<String> list, boolean z, long j) {
        this.mRetryInterval = j;
        checkBulkEntitlement(list, z);
    }
}
