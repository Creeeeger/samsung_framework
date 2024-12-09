package com.sec.internal.ims.translate;

import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.EucContent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.RequestMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.TextLangPair;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest;
import com.sec.internal.ims.util.ImsUtil;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
class EucMessageTranslator {
    EucMessageTranslator() {
    }

    protected IEucRequest translate(final RequestMessage requestMessage, final Long l, final IEucRequest.EucRequestType eucRequestType) throws TranslationException {
        if (requestMessage == null || requestMessage.base() == null || requestMessage.content() == null) {
            throw new TranslationException("EucMessageTranslator, incomplete or null message data!");
        }
        final EucMessageDataCollector eucMessageDataCollector = new EucMessageDataCollector();
        final ImsUri parse = ImsUri.parse(requestMessage.base().remoteUri());
        final String ownIdentity = EucTranslatorUtil.getOwnIdentity(ImsUtil.getHandle(requestMessage.base().handle()));
        EucContent content = requestMessage.content();
        int i = 0;
        while (true) {
            if (i >= content.textsLength()) {
                break;
            }
            TextLangPair texts = content.texts(i);
            if (texts != null) {
                EucTranslatorUtil.checkTextLangPair(texts.text(), texts.lang(), content.textsLength() == 1);
                eucMessageDataCollector.addText(texts.lang(), texts.text());
            }
            i++;
        }
        for (int i2 = 0; i2 < content.subjectsLength(); i2++) {
            TextLangPair subjects = content.subjects(i2);
            if (subjects != null) {
                EucTranslatorUtil.checkTextLangPair(subjects.text(), subjects.lang(), content.subjectsLength() == 1);
                eucMessageDataCollector.addSubject(subjects.lang(), subjects.text());
            }
        }
        for (int i3 = 0; i3 < requestMessage.acceptButtonsLength(); i3++) {
            TextLangPair acceptButtons = requestMessage.acceptButtons(i3);
            if (acceptButtons != null) {
                EucTranslatorUtil.checkTextLangPair(acceptButtons.text(), acceptButtons.lang(), requestMessage.acceptButtonsLength() == 1);
                eucMessageDataCollector.addAcceptButton(acceptButtons.lang(), acceptButtons.text());
            }
        }
        for (int i4 = 0; i4 < requestMessage.rejectButtonsLength(); i4++) {
            TextLangPair rejectButtons = requestMessage.rejectButtons(i4);
            if (rejectButtons != null) {
                EucTranslatorUtil.checkTextLangPair(rejectButtons.text(), rejectButtons.lang(), requestMessage.rejectButtonsLength() == 1);
                eucMessageDataCollector.addRejectButton(rejectButtons.lang(), rejectButtons.text());
            }
        }
        eucMessageDataCollector.prepareMessageData();
        if (eucMessageDataCollector.getAllElements().isEmpty()) {
            throw new TranslationException("EucMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!");
        }
        return new IEucRequest() { // from class: com.sec.internal.ims.translate.EucMessageTranslator.1
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public Map<String, IEucRequest.IEucMessageData> getLanguageMapping() {
                return eucMessageDataCollector.getAllElements();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public IEucRequest.IEucMessageData getDefaultData() {
                return eucMessageDataCollector.getDefaultElement();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public String getEucId() {
                if (requestMessage.base() != null) {
                    return requestMessage.base().id();
                }
                return null;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest
            public boolean isPinRequested() {
                return requestMessage.pin();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest
            public boolean isExternal() {
                return requestMessage.externalEucr();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest
            public Long getTimeOut() {
                return l;
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
                if (requestMessage.base() != null) {
                    return requestMessage.base().timestamp();
                }
                return 0L;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest
            public IEucRequest.EucRequestType getType() {
                return eucRequestType;
            }
        };
    }

    private class EucMessageDataCollector {
        private Map<String, String> mAcceptButtons;
        private IEucRequest.IEucMessageData mDefault;
        private final Map<String, IEucRequest.IEucMessageData> mElements;
        private Set<String> mLanguages;
        private Map<String, String> mRejectButtons;
        private Map<String, String> mSubjects;
        private Map<String, String> mTexts;

        private EucMessageDataCollector() {
            this.mLanguages = new LinkedHashSet();
            this.mTexts = new LinkedHashMap();
            this.mSubjects = new LinkedHashMap();
            this.mAcceptButtons = new LinkedHashMap();
            this.mRejectButtons = new LinkedHashMap();
            this.mElements = new HashMap();
            this.mDefault = null;
        }

        Map<String, IEucRequest.IEucMessageData> getAllElements() {
            return this.mElements;
        }

        IEucRequest.IEucMessageData getDefaultElement() {
            return this.mDefault;
        }

        void addText(String str, String str2) {
            this.mTexts.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addSubject(String str, String str2) {
            this.mSubjects.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addAcceptButton(String str, String str2) {
            this.mAcceptButtons.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addRejectButton(String str, String str2) {
            this.mRejectButtons.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void prepareMessageData() {
            for (String str : this.mLanguages) {
                add(str, createEucMessageData(EucTranslatorUtil.getValue(str, this.mTexts), EucTranslatorUtil.getValue(str, this.mSubjects), EucTranslatorUtil.nullIfEmpty(this.mAcceptButtons.get(str)), EucTranslatorUtil.nullIfEmpty(this.mRejectButtons.get(str))));
            }
            releaseTemporaryData();
        }

        private void releaseTemporaryData() {
            this.mLanguages = null;
            this.mTexts = null;
            this.mSubjects = null;
            this.mAcceptButtons = null;
            this.mRejectButtons = null;
        }

        private void add(String str, IEucRequest.IEucMessageData iEucMessageData) {
            this.mElements.put(str, iEucMessageData);
            if (this.mDefault == null) {
                this.mDefault = iEucMessageData;
            }
        }

        private IEucRequest.IEucMessageData createEucMessageData(final String str, final String str2, final String str3, final String str4) {
            return new IEucRequest.IEucMessageData() { // from class: com.sec.internal.ims.translate.EucMessageTranslator.EucMessageDataCollector.1
                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest.IEucMessageData
                public String getText() {
                    return str;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest.IEucMessageData
                public String getSubject() {
                    return str2;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest.IEucMessageData
                public String getRejectButton() {
                    return str4;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest.IEucMessageData
                public String getAcceptButton() {
                    return str3;
                }
            };
        }
    }
}
