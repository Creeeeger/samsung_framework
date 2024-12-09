package com.sec.internal.ims.core.handler;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface;

/* loaded from: classes.dex */
public abstract class RawSipHandler extends BaseHandler implements ISipDialogInterface {
    @Override // com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void openSipDialog(boolean z) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void registerForIncomingMessages(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void registerForOutgoingMessages(Handler handler, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public boolean sendSip(int i, String str, Message message) {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface
    public void unregisterForEvent(Handler handler) {
    }

    protected RawSipHandler(Looper looper) {
        super(looper);
    }
}
