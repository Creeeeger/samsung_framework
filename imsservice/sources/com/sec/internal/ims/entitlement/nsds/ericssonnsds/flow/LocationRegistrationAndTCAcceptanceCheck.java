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
import com.sec.internal.constants.ims.entitilement.data.NSDSResponse;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageLocationAndTC;
import com.sec.internal.ims.entitlement.nsds.NSDSModuleBase;
import com.sec.internal.ims.entitlement.nsds.NSDSModuleFactory;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.NSDSClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class LocationRegistrationAndTCAcceptanceCheck extends NSDSBaseProcedure {
    private static final String LOG_TAG = LocationRegistrationAndTCAcceptanceCheck.class.getSimpleName();
    private Messenger mMessenger;
    private String mServiceFingerPrint;

    public LocationRegistrationAndTCAcceptanceCheck(Looper looper, Context context, BaseFlowImpl baseFlowImpl, Messenger messenger, String str) {
        super(looper, context, baseFlowImpl, messenger, str);
        this.mMessenger = messenger;
        Log.i(LOG_TAG, "created.");
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    public NSDSRequest[] buildRequests(NSDSCommonParameters nSDSCommonParameters) {
        NSDSClient nSDSClient = this.mBaseFlowImpl.getNSDSClient();
        AtomicInteger atomicInteger = new AtomicInteger();
        return new NSDSRequest[]{nSDSClient.buildAuthenticationRequest(atomicInteger.incrementAndGet(), true, nSDSCommonParameters.getChallengeResponse(), nSDSCommonParameters.getAkaToken(), null, nSDSCommonParameters.getImsiEap(), nSDSCommonParameters.getDeviceId()), nSDSClient.buildManageLocationAndTCRequest(atomicInteger.incrementAndGet(), this.mServiceFingerPrint, nSDSCommonParameters.getDeviceId())};
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected Message getResponseMessage() {
        return Message.obtain((Handler) null, 104);
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected boolean processResponse(Bundle bundle) {
        ResponseManageLocationAndTC responseManageLocationAndTC = bundle != null ? (ResponseManageLocationAndTC) bundle.getParcelable(NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC) : null;
        if (retryForServerError(responseManageLocationAndTC)) {
            return false;
        }
        if (responseManageLocationAndTC == null) {
            return true;
        }
        Log.i(LOG_TAG, "handleResponseManageLocationAndTC : messageId:" + responseManageLocationAndTC.messageId + "responseCode:" + responseManageLocationAndTC.responseCode);
        return true;
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected boolean retryForServerError(NSDSResponse nSDSResponse) {
        NSDSModuleBase nsdsModule;
        if (super.retryForServerError(nSDSResponse)) {
            return true;
        }
        if (nSDSResponse != null && nSDSResponse.responseCode == 1041) {
            int i = this.mRetryCount;
            if (i >= 1) {
                if (i != 1 || (nsdsModule = NSDSModuleFactory.getInstance().getNsdsModule(this.mBaseFlowImpl.getSimManager())) == null) {
                    return false;
                }
                nsdsModule.deactivateSimDevice(1);
                return true;
            }
            Log.i(LOG_TAG, "Failed with ERROR_INVALID_FINGERPRINT. Retrying count:" + this.mRetryCount);
            this.mRetryCount = this.mRetryCount + 1;
            ArrayList arrayList = new ArrayList();
            arrayList.add("vowifi");
            new BulkEntitlementCheck(getLooper(), this.mContext, this.mBaseFlowImpl, this.mMessenger, "1.0").checkBulkEntitlement(arrayList, true);
            return true;
        }
        return false;
    }

    @Override // com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.NSDSBaseProcedure
    protected void executeOperationWithChallenge() {
        this.mBaseFlowImpl.performOperation(33, this, new Messenger(this));
    }

    public void checkLocationAndTC(String str, long j) {
        this.mServiceFingerPrint = str;
        this.mRetryInterval = j;
        executeOperationWithChallenge();
    }
}
