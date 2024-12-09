package com.sec.internal.ims.translate;

import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.AckMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.EucContent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.TextLangPair;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment;
import com.sec.internal.ims.util.ImsUtil;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class AcknowledgementMessageTranslator implements TypeTranslator<AckMessage, IEucAcknowledgment> {
    @Override // com.sec.internal.ims.translate.TypeTranslator
    public IEucAcknowledgment translate(final AckMessage ackMessage) throws TranslationException {
        if (ackMessage == null || ackMessage.base() == null || ackMessage.content() == null) {
            throw new TranslationException("AcknowledgementMessageTranslator, incomplete or null message data!");
        }
        final EucMessageDataCollector eucMessageDataCollector = new EucMessageDataCollector();
        final ImsUri parse = ImsUri.parse(ackMessage.base().remoteUri());
        final String ownIdentity = EucTranslatorUtil.getOwnIdentity(ImsUtil.getHandle(ackMessage.base().handle()));
        EucContent content = ackMessage.content();
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
        eucMessageDataCollector.prepareMessageData();
        if (eucMessageDataCollector.getAllElements().isEmpty()) {
            throw new TranslationException("AcknowledgementMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!");
        }
        return new IEucAcknowledgment() { // from class: com.sec.internal.ims.translate.AcknowledgementMessageTranslator.1
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public Map<String, IEucAcknowledgment.IEUCMessageData> getLanguageMapping() {
                return eucMessageDataCollector.getAllElements();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment, com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public IEucAcknowledgment.IEUCMessageData getDefaultData() {
                return eucMessageDataCollector.getDefaultElement();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public String getEucId() {
                return ackMessage.base().id();
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
                return ackMessage.base().timestamp();
            }
        };
    }

    private class EucMessageDataCollector {
        private IEucAcknowledgment.IEUCMessageData mDefault;
        private final Map<String, IEucAcknowledgment.IEUCMessageData> mElements;
        private Set<String> mLanguages;
        private Map<String, String> mSubjects;
        private Map<String, String> mTexts;

        private EucMessageDataCollector() {
            this.mLanguages = new LinkedHashSet();
            this.mTexts = new LinkedHashMap();
            this.mSubjects = new LinkedHashMap();
            this.mElements = new HashMap();
            this.mDefault = null;
        }

        Map<String, IEucAcknowledgment.IEUCMessageData> getAllElements() {
            return this.mElements;
        }

        IEucAcknowledgment.IEUCMessageData getDefaultElement() {
            return this.mDefault;
        }

        void addText(String str, String str2) {
            this.mTexts.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addSubject(String str, String str2) {
            this.mSubjects.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void prepareMessageData() {
            for (String str : this.mLanguages) {
                add(str, createEucMessageData(EucTranslatorUtil.getValue(str, this.mTexts), EucTranslatorUtil.getValue(str, this.mSubjects)));
            }
            releaseTemporaryData();
        }

        private void releaseTemporaryData() {
            this.mLanguages = null;
            this.mTexts = null;
            this.mSubjects = null;
        }

        private void add(String str, IEucAcknowledgment.IEUCMessageData iEUCMessageData) {
            this.mElements.put(str, iEUCMessageData);
            if (this.mDefault == null) {
                this.mDefault = iEUCMessageData;
            }
        }

        private IEucAcknowledgment.IEUCMessageData createEucMessageData(final String str, final String str2) {
            return new IEucAcknowledgment.IEUCMessageData() { // from class: com.sec.internal.ims.translate.AcknowledgementMessageTranslator.EucMessageDataCollector.1
                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment.IEUCMessageData
                public String getText() {
                    return str;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment.IEUCMessageData
                public String getSubject() {
                    return str2;
                }
            };
        }
    }
}
