package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.gsma.services.rcs.IRcsServiceRegistrationListener;
import com.gsma.services.rcs.RcsServiceRegistration;
import com.gsma.services.rcs.capability.CapabilitiesLog;
import com.gsma.services.rcs.capability.ICapabilitiesListener;
import com.gsma.services.rcs.capability.ICapabilityService;
import com.gsma.services.rcs.contact.ContactId;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.options.ICapabilityServiceEventListener;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryService;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CapabilityServiceImpl extends ICapabilityService.Stub {
    private static final String LOG_TAG = CapabilityServiceImpl.class.getSimpleName();
    private static final String SERVICE_ID_CALL_COMPOSER = "gsma.callcomposer";
    private static final String SERVICE_ID_POST_CALL = "gsma.callunanswered";
    private static final String SERVICE_ID_SHARED_MAP = "gsma.sharedmap";
    private static final String SERVICE_ID_SHARED_SKETCH = "gsma.sharedsketch";
    private CapabilityDiscoveryService mCapabilityDiscoveryService;
    Context mContext;
    private ICapabilityServiceEventListener.Stub serviceEventListener;
    private RemoteCallbackList<IRcsServiceRegistrationListener> mServiceListeners = new RemoteCallbackList<>();
    private RemoteCallbackList<ICapabilitiesListener> mCapabilitiesListeners = new RemoteCallbackList<>();
    private Hashtable<String, RemoteCallbackList<ICapabilitiesListener>> mContactCapalitiesListeners = new Hashtable<>();
    private Object mLock = new Object();

    public int getServiceVersion() throws ServerApiException {
        return 2;
    }

    public CapabilityServiceImpl(Context context) {
        this.mCapabilityDiscoveryService = null;
        this.serviceEventListener = null;
        this.mContext = context;
        this.serviceEventListener = new ICapabilityServiceEventListener.Stub() { // from class: com.sec.internal.ims.servicemodules.tapi.service.api.CapabilityServiceImpl.1
            public void onCapabilityAndAvailabilityPublished(int i) throws RemoteException {
            }

            public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) throws RemoteException {
            }

            public void onOwnCapabilitiesChanged() throws RemoteException {
                CapabilityServiceImpl.this.notifyOwnCapabilityChange();
            }

            public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) throws RemoteException {
                Iterator<ImsUri> it = list.iterator();
                while (it.hasNext()) {
                    CapabilityServiceImpl.this.receiveCapabilities(it.next().toString(), capabilities);
                }
            }
        };
        this.mCapabilityDiscoveryService = (CapabilityDiscoveryService) ImsRegistry.getBinder("options", null);
        try {
            int phoneCount = SimUtil.getPhoneCount();
            for (int i = 0; i < phoneCount; i++) {
                this.mCapabilityDiscoveryService.registerListener(this.serviceEventListener, i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean isServiceRegistered() throws ServerApiException {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            return false;
        }
        for (ImsRegistration imsRegistration : registrationManager.getRegistrationInfo()) {
            if (imsRegistration.hasService("options") || imsRegistration.hasService(SipMsg.EVENT_PRESENCE)) {
                return true;
            }
        }
        return false;
    }

    public void addEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        this.mServiceListeners.register(iRcsServiceRegistrationListener);
    }

    public void removeEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        this.mServiceListeners.unregister(iRcsServiceRegistrationListener);
    }

    public void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode) {
        Log.d(LOG_TAG, "start : notifyRegistrationEvent()");
        synchronized (this.mLock) {
            int beginBroadcast = this.mServiceListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (z) {
                    try {
                        this.mServiceListeners.getBroadcastItem(i).onServiceRegistered();
                    } catch (Exception e) {
                        Log.d(LOG_TAG, "Can't notify listener : " + e.getMessage());
                    }
                } else {
                    this.mServiceListeners.getBroadcastItem(i).onServiceUnregistered(reasonCode);
                }
            }
            this.mServiceListeners.finishBroadcast();
        }
    }

    public com.gsma.services.rcs.capability.Capabilities getMyCapabilities() throws ServerApiException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                Capabilities ownCapabilities = this.mCapabilityDiscoveryService.getOwnCapabilities(SimUtil.getActiveDataPhoneId());
                com.gsma.services.rcs.capability.Capabilities transferCapabilities = ownCapabilities != null ? transferCapabilities(ownCapabilities) : null;
                Binder.restoreCallingIdentity(clearCallingIdentity);
                Log.d(LOG_TAG, "getMyCapabilities: " + transferCapabilities);
                return transferCapabilities;
            } catch (RemoteException e) {
                e.printStackTrace();
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return null;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public com.gsma.services.rcs.capability.Capabilities getContactCapabilities(ContactId contactId) throws ServerApiException {
        try {
            Capabilities capabilities = this.mCapabilityDiscoveryService.getCapabilities(ImsUri.parse("tel:" + PhoneUtils.extractNumberFromUri(contactId.toString())), CapabilityRefreshType.DISABLED.ordinal(), SimUtil.getActiveDataPhoneId());
            com.gsma.services.rcs.capability.Capabilities transferCapabilities = capabilities != null ? transferCapabilities(capabilities) : null;
            Log.d(LOG_TAG, "getContactCapabilities: contact = " + contactId + ", ret = " + transferCapabilities);
            return transferCapabilities;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Map<String, com.gsma.services.rcs.capability.Capabilities> getAllContactCapabilities() {
        Log.d(LOG_TAG, "start : getAllContactCapabilities()");
        HashMap hashMap = null;
        try {
            Capabilities[] allCapabilities = this.mCapabilityDiscoveryService.getAllCapabilities(SimUtil.getActiveDataPhoneId());
            if (allCapabilities == null) {
                return null;
            }
            HashMap hashMap2 = new HashMap();
            try {
                for (Capabilities capabilities : allCapabilities) {
                    hashMap2.put(capabilities.getNumber(), transferCapabilities(capabilities));
                }
                return hashMap2;
            } catch (RemoteException e) {
                e = e;
                hashMap = hashMap2;
                e.printStackTrace();
                return hashMap;
            }
        } catch (RemoteException e2) {
            e = e2;
        }
    }

    public void requestContactCapabilities(ContactId contactId) throws ServerApiException {
        Log.d(LOG_TAG, "start : requestContactCapabilities(String contact)");
        try {
            this.mCapabilityDiscoveryService.getCapabilities(ImsUri.parse("tel:" + PhoneUtils.extractNumberFromUri(contactId.toString())), CapabilityRefreshType.ALWAYS_FORCE_REFRESH.ordinal(), SimUtil.getActiveDataPhoneId());
        } catch (RemoteException e) {
            throw new ServerApiException(e.getMessage());
        }
    }

    public void receiveCapabilities(String str, Capabilities capabilities) {
        synchronized (this.mLock) {
            IMSLog.s(LOG_TAG, "receiveCapabilities() contact = " + str + " capabilities = " + capabilities);
            com.gsma.services.rcs.capability.Capabilities transferCapabilities = transferCapabilities(capabilities);
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(str);
            notifyListeners(extractNumberFromUri, transferCapabilities, this.mCapabilitiesListeners);
            RemoteCallbackList<ICapabilitiesListener> remoteCallbackList = this.mContactCapalitiesListeners.get(extractNumberFromUri);
            if (remoteCallbackList != null) {
                notifyListeners(extractNumberFromUri, transferCapabilities, remoteCallbackList);
            }
        }
    }

    private void notifyListeners(String str, com.gsma.services.rcs.capability.Capabilities capabilities, RemoteCallbackList<ICapabilitiesListener> remoteCallbackList) {
        IMSLog.s(LOG_TAG, "start : notifyListeners() contact = " + str + " capabilities = " + capabilities);
        ContactId contactId = new ContactId(str);
        try {
            int beginBroadcast = remoteCallbackList.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                remoteCallbackList.getBroadcastItem(i).onCapabilitiesReceived(contactId, capabilities);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        } catch (NullPointerException e3) {
            e3.printStackTrace();
        }
        try {
            remoteCallbackList.finishBroadcast();
        } catch (IllegalStateException e4) {
            e4.printStackTrace();
        } catch (NullPointerException e5) {
            e5.printStackTrace();
        }
    }

    public void requestAllContactsCapabilities() throws ServerApiException {
        Log.i(LOG_TAG, "start : requestAllContactsCapabilities()");
        this.mContext.sendBroadcast(new Intent("com.sec.internal.ims.servicemodules.options.poll_timeout"));
    }

    public void addCapabilitiesListener(ICapabilitiesListener iCapabilitiesListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mCapabilitiesListeners.register(iCapabilitiesListener);
        }
    }

    public void removeCapabilitiesListener(ICapabilitiesListener iCapabilitiesListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mCapabilitiesListeners.unregister(iCapabilitiesListener);
        }
    }

    public void addContactCapabilitiesListener(ContactId contactId, ICapabilitiesListener iCapabilitiesListener) throws ServerApiException {
        synchronized (this.mLock) {
            Log.i(LOG_TAG, "start : addContactCapabilitiesListener()");
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(contactId.toString());
            RemoteCallbackList<ICapabilitiesListener> remoteCallbackList = this.mContactCapalitiesListeners.get(extractNumberFromUri);
            if (remoteCallbackList == null) {
                remoteCallbackList = new RemoteCallbackList<>();
                this.mContactCapalitiesListeners.put(extractNumberFromUri, remoteCallbackList);
            }
            remoteCallbackList.register(iCapabilitiesListener);
        }
    }

    public void removeContactCapabilitiesListener(ContactId contactId, ICapabilitiesListener iCapabilitiesListener) throws ServerApiException {
        synchronized (this.mLock) {
            Log.i(LOG_TAG, "start : removeContactCapabilitiesListener()");
            RemoteCallbackList<ICapabilitiesListener> remoteCallbackList = this.mContactCapalitiesListeners.get(PhoneUtils.extractNumberFromUri(contactId.toString()));
            if (remoteCallbackList != null) {
                remoteCallbackList.unregister(iCapabilitiesListener);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
    
        if ((r2 & r0) == r2) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.gsma.services.rcs.capability.Capabilities transferCapabilities(com.sec.ims.options.Capabilities r13) {
        /*
            long r0 = r13.getFeature()
            java.util.List r2 = r13.getExtFeature()
            boolean r3 = r13.isAvailable()
            if (r3 == 0) goto L14
            java.util.HashSet r4 = new java.util.HashSet
            r4.<init>(r2)
            goto L19
        L14:
            java.util.HashSet r4 = new java.util.HashSet
            r4.<init>()
        L19:
            r7 = r4
            java.util.Date r2 = r13.getTimestamp()
            if (r2 == 0) goto L29
            java.util.Date r2 = r13.getTimestamp()
            long r4 = r2.getTime()
            goto L2b
        L29:
            r4 = 0
        L2b:
            r9 = r4
            java.lang.String r2 = com.sec.internal.ims.servicemodules.tapi.service.api.CapabilityServiceImpl.LOG_TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "transferCapabilities, bValid : "
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = ", bAutomata:"
            r4.append(r3)
            r3 = 0
            r4.append(r3)
            java.lang.String r4 = r4.toString()
            android.util.Log.d(r2, r4)
            int r2 = com.sec.ims.options.Capabilities.FEATURE_ISH
            long r4 = (long) r2
            long r4 = r4 & r0
            long r11 = (long) r2
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 != 0) goto L57
            r3 = 8
        L57:
            int r2 = com.sec.ims.options.Capabilities.FEATURE_VSH
            long r4 = (long) r2
            long r4 = r4 & r0
            long r11 = (long) r2
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 != 0) goto L62
            r3 = r3 | 16
        L62:
            int r2 = com.sec.ims.options.Capabilities.FEATURE_CHAT_CPM
            long r4 = (long) r2
            long r4 = r4 & r0
            long r11 = (long) r2
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 == 0) goto L74
            int r2 = com.sec.ims.options.Capabilities.FEATURE_CHAT_SIMPLE_IM
            long r4 = (long) r2
            long r4 = r4 & r0
            long r11 = (long) r2
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 != 0) goto L76
        L74:
            r3 = r3 | 2
        L76:
            int r2 = com.sec.ims.options.Capabilities.FEATURE_FT
            long r4 = (long) r2
            long r4 = r4 & r0
            long r11 = (long) r2
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 != 0) goto L81
            r3 = r3 | 1
        L81:
            int r2 = com.sec.ims.options.Capabilities.FEATURE_GEOLOCATION_PUSH
            long r4 = (long) r2
            long r0 = r0 & r4
            long r4 = (long) r2
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto L8e
            r0 = r3 | 4
            r6 = r0
            goto L8f
        L8e:
            r6 = r3
        L8f:
            long r0 = com.sec.ims.options.Capabilities.FEATURE_ENRICHED_CALL_COMPOSER
            boolean r0 = r13.hasFeature(r0)
            if (r0 == 0) goto L9c
            java.lang.String r0 = "gsma.callcomposer"
            r7.add(r0)
        L9c:
            long r0 = com.sec.ims.options.Capabilities.FEATURE_ENRICHED_SHARED_MAP
            boolean r0 = r13.hasFeature(r0)
            if (r0 == 0) goto La9
            java.lang.String r0 = "gsma.sharedmap"
            r7.add(r0)
        La9:
            long r0 = com.sec.ims.options.Capabilities.FEATURE_ENRICHED_SHARED_SKETCH
            boolean r0 = r13.hasFeature(r0)
            if (r0 == 0) goto Lb6
            java.lang.String r0 = "gsma.sharedsketch"
            r7.add(r0)
        Lb6:
            long r0 = com.sec.ims.options.Capabilities.FEATURE_ENRICHED_POST_CALL
            boolean r0 = r13.hasFeature(r0)
            if (r0 == 0) goto Lc3
            java.lang.String r0 = "gsma.callunanswered"
            r7.add(r0)
        Lc3:
            com.gsma.services.rcs.capability.Capabilities r0 = new com.gsma.services.rcs.capability.Capabilities
            long r11 = r13.getLastSeen()
            r8 = 0
            r5 = r0
            r5.<init>(r6, r7, r8, r9, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.tapi.service.api.CapabilityServiceImpl.transferCapabilities(com.sec.ims.options.Capabilities):com.gsma.services.rcs.capability.Capabilities");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOwnCapabilityChange() {
        Log.d(LOG_TAG, "notifyOwnCapabilityChange");
        this.mContext.getContentResolver().notifyChange(Uri.withAppendedPath(CapabilitiesLog.CONTENT_URI, "own"), null);
    }

    public void setUserActive(boolean z) {
        try {
            this.mCapabilityDiscoveryService.setUserActivity(z, SimUtil.getActiveDataPhoneId());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
