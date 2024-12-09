package com.sec.internal.ims.servicemodules.tapi.service.broadcaster;

import android.content.Intent;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener;
import com.gsma.services.rcs.extension.MultimediaSession;

/* loaded from: classes.dex */
public class MultimediaStreamingSessionEventBroadcaster implements IMultimediaStreamingSessionEventBroadcaster {
    private final RemoteCallbackList<IMultimediaStreamingSessionListener> mMultimediaStreamingListeners = new RemoteCallbackList<>();

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IMultimediaStreamingSessionEventBroadcaster
    public void broadcastInvitation(String str, Intent intent) {
    }

    public void addMultimediaStreamingEventListener(IMultimediaStreamingSessionListener iMultimediaStreamingSessionListener) {
        this.mMultimediaStreamingListeners.register(iMultimediaStreamingSessionListener);
    }

    public void removeMultimediaStreamingEventListener(IMultimediaStreamingSessionListener iMultimediaStreamingSessionListener) {
        this.mMultimediaStreamingListeners.unregister(iMultimediaStreamingSessionListener);
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IMultimediaStreamingSessionEventBroadcaster
    public void broadcastPayloadReceived(ContactId contactId, String str, byte[] bArr) {
        int beginBroadcast = this.mMultimediaStreamingListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mMultimediaStreamingListeners.getBroadcastItem(i).onPayloadReceived(contactId, str, bArr);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mMultimediaStreamingListeners.finishBroadcast();
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IMultimediaStreamingSessionEventBroadcaster
    public void broadcastStateChanged(ContactId contactId, String str, MultimediaSession.State state, MultimediaSession.ReasonCode reasonCode) {
        int beginBroadcast = this.mMultimediaStreamingListeners.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            try {
                this.mMultimediaStreamingListeners.getBroadcastItem(i).onStateChanged(contactId, str, state, reasonCode);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mMultimediaStreamingListeners.finishBroadcast();
    }
}
