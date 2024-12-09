package com.sec.internal.ims.servicemodules.euc;

import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.servicemodules.euc.data.EucMessageKey;
import com.sec.internal.ims.servicemodules.euc.data.EucState;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.data.IDialogData;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEuc;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest;
import com.sec.internal.ims.servicemodules.euc.locale.DeviceLocale;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class EucFactory implements IEucFactory {
    EucFactory() {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public Iterable<IEucQuery> combine(List<IEucData> list, List<IDialogData> list2) {
        HashMap hashMap = new HashMap();
        Iterator<IEucData> it = list.iterator();
        while (it.hasNext()) {
            EUCQuery eUCQuery = new EUCQuery(it.next());
            hashMap.put(eUCQuery.getEucData().getKey(), eUCQuery);
        }
        for (IDialogData iDialogData : list2) {
            IEucQuery iEucQuery = (IEucQuery) hashMap.get(iDialogData.getKey());
            Preconditions.checkNotNull(iEucQuery, "Database Integrity Error");
            iEucQuery.addDialogData(iDialogData);
        }
        return hashMap.values();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public IEucQuery createEUC(IEucRequest iEucRequest) {
        Preconditions.checkNotNull(iEucRequest);
        IEucData createEucData = createEucData(iEucRequest, iEucRequest.getType() == IEucRequest.EucRequestType.PERSISTENT ? EucType.PERSISTENT : EucType.VOLATILE, iEucRequest.isPinRequested(), iEucRequest.isExternal(), iEucRequest.getTimeOut() == null ? null : Long.valueOf(iEucRequest.getTimestamp() + (iEucRequest.getTimeOut().longValue() * 1000)));
        EUCQuery eUCQuery = new EUCQuery(createEucData);
        for (Map.Entry<String, IEucRequest.IEucMessageData> entry : iEucRequest.getLanguageMapping().entrySet()) {
            eUCQuery.addDialogData(createDialogData(entry.getValue(), createEucData.getKey(), entry.getKey()));
        }
        eUCQuery.addDialogData(createDialogData(iEucRequest.getDefaultData(), createEucData.getKey(), DeviceLocale.DEFAULT_LANG_VALUE));
        return eUCQuery;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public IEucQuery createEUC(IEucNotification iEucNotification) {
        Preconditions.checkNotNull(iEucNotification);
        IEucData createEucData = createEucData(iEucNotification, EucType.NOTIFICATION, false, false, null);
        EUCQuery eUCQuery = new EUCQuery(createEucData);
        for (Map.Entry<String, IEucNotification.IEucMessageData> entry : iEucNotification.getLanguageMapping().entrySet()) {
            eUCQuery.addDialogData(createDialogData(entry.getValue(), createEucData.getKey(), entry.getKey()));
        }
        eUCQuery.addDialogData(createDialogData(iEucNotification.getDefaultData(), createEucData.getKey(), DeviceLocale.DEFAULT_LANG_VALUE));
        return eUCQuery;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public IEucQuery createEUC(IEucAcknowledgment iEucAcknowledgment) {
        Preconditions.checkNotNull(iEucAcknowledgment);
        IEucData createEucData = createEucData(iEucAcknowledgment, EucType.ACKNOWLEDGEMENT, false, false, null);
        EUCQuery eUCQuery = new EUCQuery(createEucData);
        for (Map.Entry<String, IEucAcknowledgment.IEUCMessageData> entry : iEucAcknowledgment.getLanguageMapping().entrySet()) {
            eUCQuery.addDialogData(createDialogData(entry.getValue(), createEucData.getKey(), entry.getKey()));
        }
        if (iEucAcknowledgment.getDefaultData() != null) {
            eUCQuery.addDialogData(createDialogData(iEucAcknowledgment.getDefaultData(), createEucData.getKey(), DeviceLocale.DEFAULT_LANG_VALUE));
        }
        return eUCQuery;
    }

    private <T> IEucData createEucData(IEuc<T> iEuc, EucType eucType, boolean z, boolean z2, Long l) {
        return createEucData(new EucMessageKey(iEuc.getEucId(), iEuc.getOwnIdentity(), eucType, iEuc.getFromHeader()), z, null, z2, EucState.NONE, iEuc.getTimestamp(), l);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public IEucData createEucData(final EucMessageKey eucMessageKey, final boolean z, final String str, final boolean z2, final EucState eucState, final long j, final Long l) {
        return new IEucData() { // from class: com.sec.internal.ims.servicemodules.euc.EucFactory.1
            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public EucMessageKey getKey() {
                return eucMessageKey;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public String getId() {
                return eucMessageKey.getEucId();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public boolean getPin() {
                return z;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public boolean getExternal() {
                return z2;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public EucState getState() {
                return eucState;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public EucType getType() {
                return eucMessageKey.getEucType();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public ImsUri getRemoteUri() {
                return eucMessageKey.getRemoteUri();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public String getOwnIdentity() {
                return eucMessageKey.getOwnIdentity();
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public long getTimestamp() {
                return j;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public Long getTimeOut() {
                return l;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IEucData
            public String getUserPin() {
                return str;
            }
        };
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory
    public IDialogData createDialogData(final EucMessageKey eucMessageKey, final String str, final String str2, final String str3, final String str4, final String str5) {
        return new IDialogData() { // from class: com.sec.internal.ims.servicemodules.euc.EucFactory.2
            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public EucMessageKey getKey() {
                return eucMessageKey;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public String getLanguage() {
                return str;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public String getSubject() {
                return str2;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public String getText() {
                return str3;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public String getAcceptButton() {
                return str4;
            }

            @Override // com.sec.internal.ims.servicemodules.euc.data.IDialogData
            public String getRejectButton() {
                return str5;
            }
        };
    }

    private IDialogData createDialogData(IEucRequest.IEucMessageData iEucMessageData, EucMessageKey eucMessageKey, String str) {
        return createDialogData(eucMessageKey, str, iEucMessageData.getSubject(), iEucMessageData.getText(), iEucMessageData.getAcceptButton(), iEucMessageData.getRejectButton());
    }

    private IDialogData createDialogData(IEucNotification.IEucMessageData iEucMessageData, EucMessageKey eucMessageKey, String str) {
        return createDialogData(eucMessageKey, str, iEucMessageData.getSubject(), iEucMessageData.getText(), iEucMessageData.getOkButton(), null);
    }

    private IDialogData createDialogData(IEucAcknowledgment.IEUCMessageData iEUCMessageData, EucMessageKey eucMessageKey, String str) {
        return createDialogData(eucMessageKey, str, iEUCMessageData.getSubject(), iEUCMessageData.getText(), null, null);
    }

    private static class EUCQuery implements IEucQuery {
        private final Map<String, IDialogData> mDialogMap = new HashMap();
        private IEucData mEUCData;

        EUCQuery(IEucData iEucData) {
            this.mEUCData = iEucData;
        }

        @Override // com.sec.internal.ims.servicemodules.euc.data.IEucQuery
        public void addDialogData(IDialogData iDialogData) {
            this.mDialogMap.put(iDialogData.getLanguage(), iDialogData);
        }

        @Override // com.sec.internal.ims.servicemodules.euc.data.IEucQuery
        public IEucData getEucData() {
            return this.mEUCData;
        }

        @Override // com.sec.internal.ims.servicemodules.euc.data.IEucQuery
        public IDialogData getDialogData(String str) {
            IDialogData iDialogData = this.mDialogMap.get(str);
            return iDialogData == null ? this.mDialogMap.get(DeviceLocale.DEFAULT_LANG_VALUE) : iDialogData;
        }

        @Override // com.sec.internal.ims.servicemodules.euc.data.IEucQuery
        public boolean hasDialog(String str) {
            return this.mDialogMap.containsKey(str);
        }

        @Override // java.lang.Iterable
        public Iterator<IDialogData> iterator() {
            return this.mDialogMap.values().iterator();
        }
    }
}
