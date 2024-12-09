package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import com.gsma.services.rcs.capability.Capabilities;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.contact.ContactUtil;
import com.gsma.services.rcs.contact.IContactService;
import com.gsma.services.rcs.contact.RcsContact;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryService;
import com.sec.internal.ims.servicemodules.tapi.service.utils.BlockContactItem;
import com.sec.internal.ims.servicemodules.tapi.service.utils.BlockContactPersisit;
import com.sec.internal.ims.servicemodules.tapi.service.utils.ContactInfo;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class ContactServiceImpl extends IContactService.Stub {
    private static final String LOG_TAG = ContactServiceImpl.class.getSimpleName();
    private CapabilityDiscoveryService capabilityDiscoveryService;
    private Context mContext;
    private IPresenceModule presenceModule;

    private interface FilterContactInfo {
        boolean inScope(ContactInfo contactInfo);
    }

    public ContactServiceImpl(Context context) {
        this.mContext = null;
        this.presenceModule = null;
        this.capabilityDiscoveryService = null;
        this.presenceModule = ImsRegistry.getServiceModuleManager().getPresenceModule();
        this.capabilityDiscoveryService = (CapabilityDiscoveryService) ImsRegistry.getBinder("options", null);
        this.mContext = context;
    }

    public RcsContact getRcsContact(ContactId contactId) throws ServerApiException {
        if (contactId == null || contactId.toString() == null) {
            return null;
        }
        ContactInfo contactInfo = getContactInfo(contactId);
        boolean z = contactInfo.getRegistrationState() == 1;
        boolean isBlock = isBlock(contactInfo.getContact());
        Capabilities capabilities = z ? contactInfo.getCapabilities() : null;
        Log.d(LOG_TAG, "getRcsContact ContactId = " + contactId.toString() + ", contactInfo = " + contactInfo.toString() + ", registered = " + z + ", capApi = " + capabilities + ", DisplayName" + contactInfo.getDisplayName());
        return new RcsContact(contactInfo.getContact(), z, capabilities, contactInfo.getDisplayName(), getBlockTime(contactInfo.getContact()), isBlock);
    }

    private List<RcsContact> getRcsContacts(FilterContactInfo filterContactInfo) throws ServerApiException {
        RcsContact rcsContact;
        ArrayList arrayList = new ArrayList();
        Set<ContactId> contactIds = getContactIds();
        if (contactIds == null) {
            return null;
        }
        Iterator<ContactId> it = contactIds.iterator();
        while (it.hasNext()) {
            ContactInfo contactInfo = getContactInfo(it.next());
            if (contactInfo != null && filterContactInfo.inScope(contactInfo) && (rcsContact = getRcsContact(contactInfo.getContact())) != null) {
                arrayList.add(rcsContact);
            }
        }
        return arrayList;
    }

    public Set<ContactId> getContactIds() {
        int i;
        com.sec.ims.options.Capabilities[] allCapabilities;
        HashSet hashSet = new HashSet();
        try {
            allCapabilities = this.capabilityDiscoveryService.getAllCapabilities(0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (allCapabilities == null) {
            Log.d(LOG_TAG, "capabilitiesArray = null");
            return null;
        }
        for (com.sec.ims.options.Capabilities capabilities : allCapabilities) {
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(capabilities.getUri().toString());
            if (extractNumberFromUri != null) {
                hashSet.add(ContactUtil.getInstance(this.mContext).formatContact(extractNumberFromUri));
            }
        }
        return hashSet;
    }

    public List<RcsContact> getRcsContacts() throws ServerApiException {
        com.sec.ims.options.Capabilities[] allCapabilities;
        Log.d(LOG_TAG, "getRcsContacts");
        ArrayList arrayList = new ArrayList();
        ContactInfo contactInfo = new ContactInfo();
        try {
            allCapabilities = this.capabilityDiscoveryService.getAllCapabilities(0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        if (allCapabilities == null) {
            return null;
        }
        for (com.sec.ims.options.Capabilities capabilities : allCapabilities) {
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(capabilities.getUri().toString());
            if (extractNumberFromUri != null) {
                ContactId contactId = new ContactId(extractNumberFromUri);
                contactInfo.setRcsStatusTimestamp(capabilities.getTimestamp().getTime());
                contactInfo.setRcsDisplayName(capabilities.getDisplayName());
                contactInfo.setRcsStatus(capabilities.isAvailable() ? 2 : 1);
                contactInfo.setRegistrationState(capabilities.isAvailable() ? 1 : 2);
                contactInfo.setContact(contactId);
                contactInfo.setCapabilities(CapabilityServiceImpl.transferCapabilities(capabilities));
                arrayList.add(new RcsContact(contactInfo.getContact(), contactInfo.getRegistrationState() == 1, contactInfo.getCapabilities(), contactInfo.getDisplayName(), getBlockTime(contactInfo.getContact()), isBlock(contactInfo.getContact())));
            }
        }
        return arrayList;
    }

    public List<RcsContact> getRcsContactsOnline() throws ServerApiException {
        Log.d(LOG_TAG, "getRcsContactsOnline");
        return getRcsContacts(new FilterContactInfo() { // from class: com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.1
            @Override // com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.FilterContactInfo
            public boolean inScope(ContactInfo contactInfo) {
                return contactInfo.getRegistrationState() == 1;
            }
        });
    }

    public List<RcsContact> getRcsContactsSupporting(final String str) throws ServerApiException {
        Log.d(LOG_TAG, "getRcsContactsSupporting");
        return getRcsContacts(new FilterContactInfo() { // from class: com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.2
            @Override // com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.FilterContactInfo
            public boolean inScope(ContactInfo contactInfo) {
                Set supportedExtensions;
                Capabilities capabilities = contactInfo.getCapabilities();
                if (capabilities == null || (supportedExtensions = capabilities.getSupportedExtensions()) == null) {
                    return false;
                }
                Iterator it = supportedExtensions.iterator();
                while (it.hasNext()) {
                    if (((String) it.next()).equals(str)) {
                        return true;
                    }
                }
                return false;
            }
        });
    }

    public void blockContact(ContactId contactId) throws RemoteException {
        if (contactId == null) {
            throw new ServerApiException("contact is null!");
        }
        Log.d(LOG_TAG, "Block contact:" + contactId.toString());
        try {
            BlockContactPersisit.changeContactInfo(this.mContext, setBlockingState(contactId, ContactInfo.BlockingState.BLOCKED));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unblockContact(ContactId contactId) throws RemoteException {
        if (contactId == null) {
            throw new ServerApiException("contact is null!");
        }
        Log.d(LOG_TAG, "unblockContact contact" + contactId.toString());
        try {
            BlockContactPersisit.changeContactInfo(this.mContext, setBlockingState(contactId, ContactInfo.BlockingState.NOT_BLOCKED));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public ContactInfo setBlockingState(ContactId contactId, ContactInfo.BlockingState blockingState) throws RemoteException {
        ContactInfo contactInfo = new ContactInfo();
        contactInfo.setBlockingState(blockingState);
        contactInfo.setBlockingTimestamp(System.currentTimeMillis());
        contactInfo.setContact(contactId);
        setContactInfo(contactInfo);
        return contactInfo;
    }

    public ContactInfo getContactInfo(ContactId contactId) throws ServerApiException {
        ContactInfo contactInfo = new ContactInfo();
        contactInfo.setContact(contactId);
        try {
            setContactInfo(contactInfo);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return contactInfo;
    }

    public void setContactInfo(ContactInfo contactInfo) throws RemoteException {
        PresenceInfo presenceInfo;
        contactInfo.setRcsStatus(8);
        contactInfo.setRegistrationState(0);
        contactInfo.setRcsStatusTimestamp(System.currentTimeMillis());
        String str = "tel:" + PhoneUtils.extractNumberFromUri(contactInfo.getContact().toString());
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        try {
            com.sec.ims.options.Capabilities capabilities = this.capabilityDiscoveryService.getCapabilities(ImsUri.parse(str), CapabilityRefreshType.ONLY_IF_NOT_FRESH.ordinal(), activeDataPhoneId);
            if (capabilities != null) {
                contactInfo.setRcsStatusTimestamp(capabilities.getTimestamp().getTime());
                contactInfo.setRcsDisplayName(capabilities.getDisplayName());
                contactInfo.setRcsStatus(capabilities.isAvailable() ? 2 : 1);
                contactInfo.setRegistrationState(capabilities.isAvailable() ? 1 : 2);
                String str2 = LOG_TAG;
                Log.d(str2, "RcsStatus:" + contactInfo.getRcsStatus() + "State:" + contactInfo.getRegistrationState());
                Capabilities transferCapabilities = CapabilityServiceImpl.transferCapabilities(capabilities);
                if (transferCapabilities != null) {
                    contactInfo.setCapabilities(transferCapabilities);
                }
                IPresenceModule iPresenceModule = this.presenceModule;
                if (iPresenceModule != null) {
                    presenceInfo = iPresenceModule.getPresenceInfoByContactId(str, activeDataPhoneId);
                    if (presenceInfo == null) {
                        presenceInfo = this.presenceModule.getPresenceInfo(ImsUri.parse(str), activeDataPhoneId);
                    }
                } else {
                    presenceInfo = null;
                }
                if (presenceInfo != null) {
                    Log.d(str2, "presenceInfo.getContactId() = " + presenceInfo.getContactId());
                    contactInfo.setPresenceInfo(presenceInfo);
                }
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private Cursor getCursor(ContactId contactId) {
        return this.mContext.getContentResolver().query(Uri.parse("content://com.gsma.services.rcs.provider.blockedcontact/" + contactId), null, null, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isBlock(com.gsma.services.rcs.contact.ContactId r5) {
        /*
            r4 = this;
            android.database.Cursor r4 = r4.getCursor(r5)
            if (r4 == 0) goto L17
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L17
            java.lang.String r5 = "key_blocked"
            int r5 = r4.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L49
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> L49
            goto L19
        L17:
            java.lang.String r5 = ""
        L19:
            java.lang.String r0 = "BLOCKED"
            boolean r0 = r0.equals(r5)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L23
            r0 = 1
            goto L24
        L23:
            r0 = 0
        L24:
            java.lang.String r1 = com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.LOG_TAG     // Catch: java.lang.Throwable -> L49
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
            r2.<init>()     // Catch: java.lang.Throwable -> L49
            java.lang.String r3 = "string blocked: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L49
            r2.append(r5)     // Catch: java.lang.Throwable -> L49
            java.lang.String r5 = "count ==1 mIsBlocked: "
            r2.append(r5)     // Catch: java.lang.Throwable -> L49
            r2.append(r0)     // Catch: java.lang.Throwable -> L49
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L49
            android.util.Log.d(r1, r5)     // Catch: java.lang.Throwable -> L49
            if (r4 == 0) goto L48
            r4.close()
        L48:
            return r0
        L49:
            r5 = move-exception
            if (r4 == 0) goto L54
            r4.close()     // Catch: java.lang.Throwable -> L50
            goto L54
        L50:
            r4 = move-exception
            r5.addSuppressed(r4)
        L54:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.tapi.service.api.ContactServiceImpl.isBlock(com.gsma.services.rcs.contact.ContactId):boolean");
    }

    public long getBlockTime(ContactId contactId) {
        Cursor cursor = getCursor(contactId);
        try {
            long j = -1;
            if (true == isBlock(contactId) && cursor != null && cursor.moveToFirst()) {
                j = cursor.getLong(cursor.getColumnIndex(BlockContactItem.BlockDataItem.KEY_BLOCKING_TIMESTAMP));
            }
            if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
