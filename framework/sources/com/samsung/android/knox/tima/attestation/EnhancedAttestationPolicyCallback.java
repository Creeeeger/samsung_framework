package com.samsung.android.knox.tima.attestation;

import android.os.RemoteException;
import android.util.Log;
import com.samsung.android.knox.tima.attestation.IEnhancedAttestationPolicyCallback;

/* loaded from: classes5.dex */
public abstract class EnhancedAttestationPolicyCallback {
    private static final String TAG = "SEMEAPolicyCb";
    private EnhancedAttestationPolicyCallback acb = this;

    public abstract void onAttestationFinished(EnhancedAttestationResult enhancedAttestationResult);

    /* loaded from: classes5.dex */
    public class EaAttestationPolicyCallback extends IEnhancedAttestationPolicyCallback.Stub {
        private String mNonce;

        /* synthetic */ EaAttestationPolicyCallback(EnhancedAttestationPolicyCallback enhancedAttestationPolicyCallback, EaAttestationPolicyCallbackIA eaAttestationPolicyCallbackIA) {
            this();
        }

        private EaAttestationPolicyCallback() {
            this.mNonce = "";
        }

        @Override // com.samsung.android.knox.tima.attestation.IEnhancedAttestationPolicyCallback
        public void onAttestationFinished(EnhancedAttestationResult result) throws RemoteException {
            Log.d(EnhancedAttestationPolicyCallback.TAG, "onAttestationFinished: " + this.mNonce.length());
            EnhancedAttestationPolicy.getInstance().removeFromTrackMap(this.mNonce);
            EnhancedAttestationPolicyCallback.this.acb.onAttestationFinished(result);
        }
    }

    public IEnhancedAttestationPolicyCallback getEaAttestationCb(String nonce) {
        EaAttestationPolicyCallback eaAttestationCb = new EaAttestationPolicyCallback();
        eaAttestationCb.mNonce = nonce;
        return eaAttestationCb;
    }
}
