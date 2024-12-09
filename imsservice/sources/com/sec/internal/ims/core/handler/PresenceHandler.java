package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.util.ImsUri;
import com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface;
import java.util.List;

/* loaded from: classes.dex */
public abstract class PresenceHandler extends BaseHandler implements IPresenceStackInterface {
    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void publish(PresenceInfo presenceInfo, Message message, int i) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceInfo(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceNotifyInfo(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPresenceNotifyStatus(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForPublishFailure(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void registerForWatcherInfo(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void subscribe(ImsUri imsUri, boolean z, Message message, String str, int i) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void subscribeList(List<ImsUri> list, boolean z, Message message, String str, boolean z2, int i, int i2) {
    }

    @Override // com.sec.internal.ims.servicemodules.presence.IPresenceStackInterface
    public void unpublish(int i) {
    }

    protected PresenceHandler(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        Log.e(this.LOG_TAG, "Unknown event " + message.what);
    }
}
