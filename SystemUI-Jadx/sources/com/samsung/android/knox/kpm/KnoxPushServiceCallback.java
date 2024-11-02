package com.samsung.android.knox.kpm;

import android.util.Log;
import com.samsung.android.knox.kpm.IKnoxPushServiceCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class KnoxPushServiceCallback {
    public static final String TAG = "KnoxPushServiceCallback";
    public KnoxPushServiceCallback acb = this;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class PushServiceCallback extends IKnoxPushServiceCallback.Stub {
        public /* synthetic */ PushServiceCallback(KnoxPushServiceCallback knoxPushServiceCallback, int i) {
            this();
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
            Log.d(KnoxPushServiceCallback.TAG, "onRegistrationFinished: ");
            KnoxPushService.getInstance().removeFromTrackMap(KnoxPushServiceCallback.this.acb);
            KnoxPushServiceCallback.this.acb.onRegistrationFinished(knoxPushServiceResult);
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onRegistrationStatus(KnoxPushServiceResult knoxPushServiceResult) {
            Log.d(KnoxPushServiceCallback.TAG, "onRegistrationStatus: ");
            KnoxPushService.getInstance().removeFromTrackMap(KnoxPushServiceCallback.this.acb);
            KnoxPushServiceCallback.this.acb.onRegistrationStatus(knoxPushServiceResult);
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onUnRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
            Log.d(KnoxPushServiceCallback.TAG, "onUnRegistrationFinished: ");
            KnoxPushService.getInstance().removeFromTrackMap(KnoxPushServiceCallback.this.acb);
            KnoxPushServiceCallback.this.acb.onUnRegistrationFinished(knoxPushServiceResult);
        }

        private PushServiceCallback() {
        }
    }

    public final IKnoxPushServiceCallback getKnoxPushServiceCb() {
        return new PushServiceCallback(this, 0);
    }

    public abstract void onRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult);

    public abstract void onRegistrationStatus(KnoxPushServiceResult knoxPushServiceResult);

    public abstract void onUnRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult);
}
