package com.sec.internal.ims.translate;

import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.EucContent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.NotificationMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EucMessage_.TextLangPair;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification;
import com.sec.internal.ims.util.ImsUtil;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class NotificationMessageTranslator implements TypeTranslator<NotificationMessage, IEucNotification> {
    @Override // com.sec.internal.ims.translate.TypeTranslator
    public IEucNotification translate(final NotificationMessage notificationMessage) throws TranslationException {
        if (notificationMessage == null || notificationMessage.base() == null || notificationMessage.content() == null) {
            throw new TranslationException("NotificationMessageTranslator, incomplete or null message data!");
        }
        final EucMessageDataCollector eucMessageDataCollector = new EucMessageDataCollector();
        final ImsUri parse = ImsUri.parse(notificationMessage.base().remoteUri());
        final String ownIdentity = EucTranslatorUtil.getOwnIdentity(ImsUtil.getHandle(notificationMessage.base().handle()));
        EucContent content = notificationMessage.content();
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
        for (int i3 = 0; i3 < notificationMessage.okButtonsLength(); i3++) {
            TextLangPair okButtons = notificationMessage.okButtons(i3);
            if (okButtons != null) {
                EucTranslatorUtil.checkTextLangPair(okButtons.text(), okButtons.lang(), notificationMessage.okButtonsLength() == 1);
                eucMessageDataCollector.addOkButton(okButtons.lang(), okButtons.text());
            }
        }
        eucMessageDataCollector.prepareMessageData();
        if (eucMessageDataCollector.getAllElements().isEmpty()) {
            throw new TranslationException("NotificationMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!");
        }
        return new IEucNotification() { // from class: com.sec.internal.ims.translate.NotificationMessageTranslator.1
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public Map<String, IEucNotification.IEucMessageData> getLanguageMapping() {
                return eucMessageDataCollector.getAllElements();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public IEucNotification.IEucMessageData getDefaultData() {
                return eucMessageDataCollector.getDefaultElement();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
            public String getEucId() {
                if (notificationMessage.base() != null) {
                    return notificationMessage.base().id();
                }
                return null;
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
                if (notificationMessage.base() != null) {
                    return notificationMessage.base().timestamp();
                }
                return 0L;
            }
        };
    }

    private class EucMessageDataCollector {
        private IEucNotification.IEucMessageData mDefault;
        private final Map<String, IEucNotification.IEucMessageData> mElements;
        private Set<String> mLanguages;
        private Map<String, String> mOkButtons;
        private Map<String, String> mSubjects;
        private Map<String, String> mTexts;

        private EucMessageDataCollector() {
            this.mLanguages = new LinkedHashSet();
            this.mTexts = new LinkedHashMap();
            this.mSubjects = new LinkedHashMap();
            this.mOkButtons = new LinkedHashMap();
            this.mElements = new HashMap();
            this.mDefault = null;
        }

        Map<String, IEucNotification.IEucMessageData> getAllElements() {
            return this.mElements;
        }

        IEucNotification.IEucMessageData getDefaultElement() {
            return this.mDefault;
        }

        void addText(String str, String str2) {
            this.mTexts.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addSubject(String str, String str2) {
            this.mSubjects.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void addOkButton(String str, String str2) {
            this.mOkButtons.put(EucTranslatorUtil.addLanguage(str, this.mLanguages), str2);
        }

        void prepareMessageData() {
            for (String str : this.mLanguages) {
                add(str, createEucMessageData(EucTranslatorUtil.getValue(str, this.mTexts), EucTranslatorUtil.getValue(str, this.mSubjects), EucTranslatorUtil.nullIfEmpty(this.mOkButtons.get(str))));
            }
            releaseTemporaryData();
        }

        private void releaseTemporaryData() {
            this.mLanguages = null;
            this.mTexts = null;
            this.mSubjects = null;
            this.mOkButtons = null;
        }

        private void add(String str, IEucNotification.IEucMessageData iEucMessageData) {
            this.mElements.put(str, iEucMessageData);
            if (this.mDefault == null) {
                this.mDefault = iEucMessageData;
            }
        }

        private IEucNotification.IEucMessageData createEucMessageData(final String str, final String str2, final String str3) {
            return new IEucNotification.IEucMessageData() { // from class: com.sec.internal.ims.translate.NotificationMessageTranslator.EucMessageDataCollector.1
                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification.IEucMessageData
                public String getText() {
                    return str;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification.IEucMessageData
                public String getSubject() {
                    return str2;
                }

                @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification.IEucMessageData
                public String getOkButton() {
                    return str3;
                }
            };
        }
    }
}
