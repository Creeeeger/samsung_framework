package com.sec.internal.ims.servicemodules.presence;

import android.os.Handler;
import android.os.HandlerThread;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.presence.ServiceTuple;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityEventListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PresenceUpdate {
    private static final String LOG_TAG = "PresenceUpdate";
    protected Handler mBackgroundHandler;
    private final PresenceModule mPresence;

    PresenceUpdate(PresenceModule presenceModule) {
        this.mPresence = presenceModule;
        HandlerThread handlerThread = new HandlerThread(LOG_TAG, 10);
        handlerThread.start();
        this.mBackgroundHandler = new Handler(handlerThread.getLooper());
    }

    void onNewPresenceInformation(final PresenceInfo presenceInfo, final int i, final PresenceSubscription presenceSubscription) {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceUpdate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PresenceUpdate.this.lambda$onNewPresenceInformation$0(i, presenceInfo, presenceSubscription);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ void lambda$onNewPresenceInformation$0(int r14, com.sec.ims.presence.PresenceInfo r15, com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription r16) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.presence.PresenceUpdate.lambda$onNewPresenceInformation$0(int, com.sec.ims.presence.PresenceInfo, com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription):void");
    }

    void onNewWatcherInformation(final PresenceInfo presenceInfo, final int i, final PresenceSubscription presenceSubscription) {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceUpdate$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PresenceUpdate.this.lambda$onNewWatcherInformation$1(i, presenceInfo, presenceSubscription);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNewWatcherInformation$1(int i, PresenceInfo presenceInfo, PresenceSubscription presenceSubscription) {
        ArrayList arrayList;
        IMSLog.s(LOG_TAG, i, "onNewWatcherInformation: uri " + presenceInfo.getUri());
        UriGenerator uriGenerator = this.mPresence.getUriGenerator(i);
        if (uriGenerator == null) {
            IMSLog.i(LOG_TAG, i, "onNewWatcherInformation: uriGenerator is null");
            return;
        }
        if (presenceInfo.isFetchSuccess()) {
            arrayList = new ArrayList();
            arrayList.add(ImsUri.parse(presenceInfo.getUri()));
        } else {
            arrayList = presenceSubscription != null ? new ArrayList(presenceSubscription.getUriList()) : null;
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2 != null) {
            this.mPresence.updatePresenceDatabase(arrayList2, presenceInfo, i);
            uriGenerator.normalize((ImsUri) arrayList2.get(0));
            long features = ServiceTuple.getFeatures(presenceInfo.getServiceList());
            CapabilityConstants.CapExResult translateToCapExResult = PresenceUtil.translateToCapExResult(presenceInfo, features, this.mPresence.getPresenceModuleInfo(i).mLastSubscribeStatusCode, presenceSubscription);
            ICapabilityEventListener iCapabilityEventListener = this.mPresence.mListener;
            if (iCapabilityEventListener != null) {
                iCapabilityEventListener.onCapabilityUpdate(arrayList2, features, translateToCapExResult, presenceInfo.getPidf(), i);
            }
        }
    }
}
