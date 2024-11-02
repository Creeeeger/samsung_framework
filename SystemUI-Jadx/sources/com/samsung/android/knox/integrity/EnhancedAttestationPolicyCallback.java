package com.samsung.android.knox.integrity;

import android.util.Log;
import com.samsung.android.knox.integrity.IEnhancedAttestationPolicyCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class EnhancedAttestationPolicyCallback {
    public static final String TAG = "EAPolicyCb";
    public EnhancedAttestationPolicyCallback acb = this;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class EaAttestationPolicyCallback extends IEnhancedAttestationPolicyCallback.Stub {
        public String mNonce;

        public /* synthetic */ EaAttestationPolicyCallback(EnhancedAttestationPolicyCallback enhancedAttestationPolicyCallback, int i) {
            this();
        }

        @Override // com.samsung.android.knox.integrity.IEnhancedAttestationPolicyCallback
        public final void onAttestationFinished(EnhancedAttestationResult enhancedAttestationResult) {
            Log.d(EnhancedAttestationPolicyCallback.TAG, "onAttestationFinished: " + this.mNonce.length());
            EnhancedAttestationPolicy.getInstance().removeFromTrackMap(this.mNonce);
            EnhancedAttestationPolicyCallback.this.acb.onAttestationFinished(enhancedAttestationResult);
        }

        private EaAttestationPolicyCallback() {
            this.mNonce = "";
        }
    }

    public final IEnhancedAttestationPolicyCallback getEaAttestationCb(String str) {
        EaAttestationPolicyCallback eaAttestationPolicyCallback = new EaAttestationPolicyCallback(this, 0);
        eaAttestationPolicyCallback.mNonce = str;
        return eaAttestationPolicyCallback;
    }

    public abstract void onAttestationFinished(EnhancedAttestationResult enhancedAttestationResult);
}
