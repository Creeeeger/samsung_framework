package com.sec.internal.ims.translate;

import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.VolatileMessage;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest;

/* loaded from: classes.dex */
public class VolatileMessageTranslator extends EucMessageTranslator implements TypeTranslator<VolatileMessage, IEucRequest> {
    @Override // com.sec.internal.ims.translate.TypeTranslator
    public IEucRequest translate(VolatileMessage volatileMessage) throws TranslationException {
        return translate(volatileMessage.request(), Long.valueOf(volatileMessage.timeout()), IEucRequest.EucRequestType.VOLATILE);
    }
}
