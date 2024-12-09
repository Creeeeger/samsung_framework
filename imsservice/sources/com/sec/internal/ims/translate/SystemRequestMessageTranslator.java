package com.sec.internal.ims.translate;

import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.translate.MapTranslator;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.SystemMessage;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucSystemRequest;
import com.sec.internal.ims.util.ImsUtil;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SystemRequestMessageTranslator implements TypeTranslator<SystemMessage, IEucSystemRequest> {
    private final MapTranslator<String, IEucSystemRequest.EucSystemRequestType> mEUCSystemRequestTypeTranslator;

    public SystemRequestMessageTranslator() {
        HashMap hashMap = new HashMap();
        hashMap.put("urn:gsma:rcs:http-configuration:reconfigure", IEucSystemRequest.EucSystemRequestType.RECONFIGURE);
        this.mEUCSystemRequestTypeTranslator = new MapTranslator<>(hashMap);
    }

    @Override // com.sec.internal.ims.translate.TypeTranslator
    public IEucSystemRequest translate(final SystemMessage systemMessage) throws TranslationException {
        Preconditions.checkNotNull(systemMessage);
        Preconditions.checkNotNull(systemMessage.base());
        final IEucSystemRequest.IEUCMessageData data = getData(systemMessage);
        final IEucSystemRequest.IEUCMessageData dataAsOptional = getDataAsOptional(systemMessage);
        final ImsUri parse = ImsUri.parse(systemMessage.base().remoteUri());
        final String ownIdentity = EucTranslatorUtil.getOwnIdentity(ImsUtil.getHandle(systemMessage.base().handle()));
        final IEucSystemRequest.EucSystemRequestType translate = this.mEUCSystemRequestTypeTranslator.translate(systemMessage.type());
        return new IEucSystemRequest() { // from class: com.sec.internal.ims.translate.SystemRequestMessageTranslator.1
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public Map<String, IEucSystemRequest.IEUCMessageData> getLanguageMapping() {
                return new HashMap();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public IEucSystemRequest.IEUCMessageData getDefaultData() {
                return data;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public String getEucId() {
                Preconditions.checkNotNull(systemMessage);
                Preconditions.checkNotNull(systemMessage.base());
                return systemMessage.base().id();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public ImsUri getFromHeader() {
                return parse;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public String getOwnIdentity() {
                return ownIdentity;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public long getTimestamp() {
                Preconditions.checkNotNull(systemMessage);
                Preconditions.checkNotNull(systemMessage.base());
                return systemMessage.base().timestamp();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucSystemRequest
            public IEucSystemRequest.EucSystemRequestType getType() {
                return translate;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucSystemRequest
            public IEucSystemRequest.IEUCMessageData getMessageData() {
                return dataAsOptional;
            }
        };
    }

    private IEucSystemRequest.IEUCMessageData getDataAsOptional(SystemMessage systemMessage) {
        if (systemMessage.data() != null) {
            return getData(systemMessage);
        }
        return null;
    }

    private IEucSystemRequest.IEUCMessageData getData(final SystemMessage systemMessage) {
        return new IEucSystemRequest.IEUCMessageData() { // from class: com.sec.internal.ims.translate.SystemRequestMessageTranslator.2
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucSystemRequest.IEUCMessageData
            public String getData() {
                return systemMessage.data();
            }
        };
    }
}
