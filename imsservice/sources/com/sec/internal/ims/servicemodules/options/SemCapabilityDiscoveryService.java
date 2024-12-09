package com.sec.internal.ims.servicemodules.options;

import android.os.IBinder;
import android.os.RemoteException;
import com.samsung.android.ims.options.SemCapabilities;
import com.samsung.android.ims.options.SemCapabilityServiceEventListener;
import com.samsung.android.ims.options.SemImsCapabilityService;
import com.samsung.android.ims.util.SemImsUri;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.ICapabilityServiceEventListener;
import com.sec.ims.util.ImsUri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class SemCapabilityDiscoveryService extends SemImsCapabilityService.Stub {
    private CapabilityDiscoveryService mCapabilityService = null;
    private Map<String, CapabilityServiceEventCallBack> mCapServiceEventCallbacks = new ConcurrentHashMap();
    private Map<String, CapabilityServiceEventCallBack> mQueuedCapabilityListener = new ConcurrentHashMap();

    public void setServiceModule(CapabilityDiscoveryService capabilityDiscoveryService) {
        this.mCapabilityService = capabilityDiscoveryService;
        if (this.mQueuedCapabilityListener.isEmpty()) {
            return;
        }
        Iterator<CapabilityServiceEventCallBack> it = this.mQueuedCapabilityListener.values().iterator();
        while (it.hasNext()) {
            ICapabilityServiceEventListener iCapabilityServiceEventListener = (CapabilityServiceEventCallBack) it.next();
            String str = iCapabilityServiceEventListener.mToken;
            int i = iCapabilityServiceEventListener.mPhoneId;
            this.mCapServiceEventCallbacks.put(str, iCapabilityServiceEventListener);
            this.mCapabilityService.registerListenerWithToken(iCapabilityServiceEventListener, str, i);
        }
        this.mQueuedCapabilityListener.clear();
    }

    public SemCapabilities getOwnCapabilities(int i) throws RemoteException {
        CapabilityDiscoveryService capabilityDiscoveryService = this.mCapabilityService;
        if (capabilityDiscoveryService != null) {
            return buildSemCapabilities(capabilityDiscoveryService.getOwnCapabilities(i));
        }
        return null;
    }

    public SemCapabilities getCapabilities(String str, int i, int i2) throws RemoteException {
        if (this.mCapabilityService == null) {
            return null;
        }
        return buildSemCapabilities(this.mCapabilityService.getCapabilities(ImsUri.parse(str), i, i2));
    }

    public SemCapabilities getCapabilitiesByNumber(String str, int i, boolean z, int i2) throws RemoteException {
        Capabilities capabilitiesByNumber;
        CapabilityDiscoveryService capabilityDiscoveryService = this.mCapabilityService;
        if (capabilityDiscoveryService == null) {
            return null;
        }
        if (z) {
            capabilitiesByNumber = capabilityDiscoveryService.getCapabilitiesWithDelay(str, i, i2);
        } else {
            capabilitiesByNumber = capabilityDiscoveryService.getCapabilitiesByNumber(str, i, i2);
        }
        return buildSemCapabilities(capabilitiesByNumber);
    }

    public SemCapabilities[] getCapabilitiesByContactId(String str, int i, int i2) throws RemoteException {
        CapabilityDiscoveryService capabilityDiscoveryService = this.mCapabilityService;
        if (capabilityDiscoveryService != null) {
            return buildSemCapabilitiesList(capabilityDiscoveryService.getCapabilitiesByContactId(str, i, i2));
        }
        return null;
    }

    public String registerListener(SemCapabilityServiceEventListener semCapabilityServiceEventListener, int i) throws RemoteException {
        String registerToken;
        CapabilityServiceEventCallBack capabilityServiceEventCallBack = new CapabilityServiceEventCallBack(semCapabilityServiceEventListener, i);
        CapabilityDiscoveryService capabilityDiscoveryService = this.mCapabilityService;
        if (capabilityDiscoveryService != null) {
            registerToken = capabilityDiscoveryService.registerListener(capabilityServiceEventCallBack, i);
            if (registerToken != null) {
                capabilityServiceEventCallBack.mToken = registerToken;
                this.mCapServiceEventCallbacks.put(registerToken, capabilityServiceEventCallBack);
            } else {
                capabilityServiceEventCallBack.reset();
                return registerToken;
            }
        } else {
            registerToken = CapabilityDiscoveryService.getRegisterToken(capabilityServiceEventCallBack);
            if (registerToken != null) {
                capabilityServiceEventCallBack.mToken = registerToken;
                this.mQueuedCapabilityListener.put(registerToken, capabilityServiceEventCallBack);
            }
        }
        return registerToken;
    }

    public void unregisterListener(String str, int i) throws RemoteException {
        CapabilityServiceEventCallBack remove;
        if (str == null) {
            return;
        }
        CapabilityDiscoveryService capabilityDiscoveryService = this.mCapabilityService;
        if (capabilityDiscoveryService != null) {
            capabilityDiscoveryService.unregisterListener(str, i);
            CapabilityServiceEventCallBack remove2 = this.mCapServiceEventCallbacks.remove(str);
            if (remove2 != null) {
                remove2.reset();
            }
        }
        if (this.mQueuedCapabilityListener.isEmpty() || (remove = this.mQueuedCapabilityListener.remove(str)) == null) {
            return;
        }
        remove.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SemImsUri buildSemImsUri(ImsUri imsUri) {
        if (imsUri == null) {
            return null;
        }
        SemImsUri semImsUri = new SemImsUri();
        semImsUri.setUser(imsUri.getUser());
        semImsUri.setMsisdn(imsUri.getMsisdn());
        semImsUri.setUriType(imsUri.getUriType().name());
        semImsUri.setScheme(imsUri.getScheme());
        semImsUri.setString(imsUri.toString());
        return semImsUri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SemCapabilities buildSemCapabilities(Capabilities capabilities) {
        if (capabilities != null) {
            return SemCapabilities.getBuilder().setIsAvailable(capabilities.isAvailable()).setFeature(capabilities.getFeature()).setAvailableFeatures(capabilities.getAvailableFeatures()).setIsExpired(capabilities.getExpired()).setLegacyLatching(capabilities.getLegacyLatching()).setTimestamp(capabilities.getTimestamp()).setExtFeature(capabilities.getExtFeature()).setBotServiceId(capabilities.getBotServiceId()).build();
        }
        return null;
    }

    private SemCapabilities[] buildSemCapabilitiesList(Capabilities[] capabilitiesArr) {
        ArrayList arrayList = new ArrayList();
        if (capabilitiesArr == null) {
            return null;
        }
        for (Capabilities capabilities : capabilitiesArr) {
            arrayList.add(buildSemCapabilities(capabilities));
        }
        return (SemCapabilities[]) arrayList.toArray(new SemCapabilities[arrayList.size()]);
    }

    private class CapabilityServiceEventCallBack extends ICapabilityServiceEventListener.Stub implements IBinder.DeathRecipient {
        SemCapabilityServiceEventListener mListener;
        int mPhoneId;
        String mToken = null;

        public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) {
        }

        public CapabilityServiceEventCallBack(SemCapabilityServiceEventListener semCapabilityServiceEventListener, int i) {
            this.mListener = semCapabilityServiceEventListener;
            this.mPhoneId = i;
            try {
                semCapabilityServiceEventListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        public void onOwnCapabilitiesChanged() {
            SemCapabilityServiceEventListener semCapabilityServiceEventListener = this.mListener;
            if (semCapabilityServiceEventListener != null) {
                try {
                    semCapabilityServiceEventListener.onOwnCapabilitiesChanged();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }

        public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) {
            SemImsUri buildSemImsUri = SemCapabilityDiscoveryService.this.buildSemImsUri(list.get(0));
            SemCapabilities buildSemCapabilities = SemCapabilityDiscoveryService.this.buildSemCapabilities(capabilities);
            SemCapabilityServiceEventListener semCapabilityServiceEventListener = this.mListener;
            if (semCapabilityServiceEventListener != null) {
                try {
                    semCapabilityServiceEventListener.onCapabilitiesChanged(buildSemImsUri, buildSemCapabilities);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }

        public void onCapabilityAndAvailabilityPublished(int i) {
            SemCapabilityServiceEventListener semCapabilityServiceEventListener = this.mListener;
            if (semCapabilityServiceEventListener != null) {
                try {
                    semCapabilityServiceEventListener.onCapabilityAndAvailabilityPublished(i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            try {
                SemCapabilityDiscoveryService.this.unregisterListener(this.mToken, this.mPhoneId);
            } catch (RemoteException unused) {
            }
        }

        protected void reset() {
            try {
                this.mListener.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }
}
