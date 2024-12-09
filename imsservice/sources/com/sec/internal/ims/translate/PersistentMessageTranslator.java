package com.sec.internal.ims.translate;

import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.PersistentMessage;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest;

/* loaded from: classes.dex */
public class PersistentMessageTranslator extends EucMessageTranslator implements TypeTranslator<PersistentMessage, IEucRequest> {
    @Override // com.sec.internal.ims.translate.TypeTranslator
    public IEucRequest translate(PersistentMessage persistentMessage) throws TranslationException {
        return translate(persistentMessage.request(), null, IEucRequest.EucRequestType.PERSISTENT);
    }
}
