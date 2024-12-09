package com.sec.internal.ims.servicemodules.options;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.options.ICapabilityService;
import com.sec.ims.options.ICapabilityServiceEventListener;
import com.sec.ims.util.ImsUri;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class CapabilityDiscoveryService extends ICapabilityService.Stub {
    private static int mRegisterToken;
    private CapabilityDiscoveryModule mServiceModule = null;
    Map<String, CallBack> mQueuedCapabilityListener = new ConcurrentHashMap();
    Map<String, CallBack> mCapabilityListenerMap = new ConcurrentHashMap();

    protected static synchronized String getRegisterToken(ICapabilityServiceEventListener iCapabilityServiceEventListener) {
        String str;
        synchronized (CapabilityDiscoveryService.class) {
            if (mRegisterToken == Integer.MAX_VALUE) {
                mRegisterToken = 100;
            }
            mRegisterToken++;
            str = iCapabilityServiceEventListener.hashCode() + "$" + mRegisterToken;
        }
        return str;
    }

    public void setServiceModule(ServiceModuleBase serviceModuleBase) {
        this.mServiceModule = (CapabilityDiscoveryModule) serviceModuleBase;
        if (this.mQueuedCapabilityListener.isEmpty()) {
            return;
        }
        for (CallBack callBack : this.mQueuedCapabilityListener.values()) {
            this.mCapabilityListenerMap.put(callBack.mToken, callBack);
            this.mServiceModule.registerListener(callBack.mListener, callBack.mPhoneId);
        }
        this.mQueuedCapabilityListener.clear();
    }

    public Capabilities getOwnCapabilities(int i) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getOwnCapabilities(i) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities getCapabilities(ImsUri imsUri, int i, int i2) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(imsUri, CapabilityRefreshType.values()[i], i2) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities getCapabilitiesByNumber(String str, int i, int i2) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(str, CapabilityRefreshType.values()[i], false, i2) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities getCapabilitiesWithDelay(String str, int i, int i2) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(str, CapabilityRefreshType.values()[i], true, i2) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities getCapabilitiesWithFeature(String str, int i, int i2) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(str, i, i2) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities[] getCapabilitiesWithFeatureByUriList(List<ImsUri> list, int i, int i2, int i3) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
            return capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(list, CapabilityRefreshType.values()[i], i2, i3) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Capabilities getCapabilitiesById(int i, int i2) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            return capabilityDiscoveryModule.getCapabilities(i, i2);
        }
        return null;
    }

    public Capabilities[] getCapabilitiesByContactId(String str, int i, int i2) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            return capabilityDiscoveryModule.getCapabilitiesByContactId(str, CapabilityRefreshType.values()[i], i2);
        }
        return null;
    }

    public Capabilities[] getAllCapabilities(int i) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            return capabilityDiscoveryModule.getAllCapabilities(i);
        }
        return null;
    }

    public String registerListener(ICapabilityServiceEventListener iCapabilityServiceEventListener, int i) throws RemoteException {
        if (iCapabilityServiceEventListener == null) {
            return null;
        }
        String registerToken = getRegisterToken(iCapabilityServiceEventListener);
        CallBack callBack = new CallBack(iCapabilityServiceEventListener, i, registerToken);
        if (this.mServiceModule != null) {
            this.mCapabilityListenerMap.put(registerToken, callBack);
            this.mServiceModule.registerListener(iCapabilityServiceEventListener, i);
        } else {
            this.mQueuedCapabilityListener.put(registerToken, callBack);
        }
        return registerToken;
    }

    public void registerListenerWithToken(ICapabilityServiceEventListener iCapabilityServiceEventListener, String str, int i) {
        if (iCapabilityServiceEventListener == null || str == null) {
            return;
        }
        CallBack callBack = new CallBack(iCapabilityServiceEventListener, i, str);
        if (this.mServiceModule != null) {
            this.mCapabilityListenerMap.put(str, callBack);
            this.mServiceModule.registerListener(iCapabilityServiceEventListener, i);
        } else {
            this.mQueuedCapabilityListener.put(str, callBack);
        }
    }

    public void unregisterListener(String str, int i) throws RemoteException {
        ICapabilityServiceEventListener removeCallback;
        CapabilityDiscoveryModule capabilityDiscoveryModule;
        if (str == null || (removeCallback = removeCallback(str)) == null || (capabilityDiscoveryModule = this.mServiceModule) == null) {
            return;
        }
        capabilityDiscoveryModule.unregisterListener(removeCallback, i);
    }

    public void addFakeCapabilityInfo(List<ImsUri> list, boolean z, int i) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            capabilityDiscoveryModule.addFakeCapabilityInfo(list, z, i);
        }
    }

    public boolean isOwnInfoPublished() throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            return capabilityDiscoveryModule.isOwnInfoPublished();
        }
        return false;
    }

    public void registerService(String str, String str2) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            capabilityDiscoveryModule.registerService(str, str2);
        }
    }

    public void deRegisterService(List<String> list) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            capabilityDiscoveryModule.deRegisterService(list);
        }
    }

    public void setUserActivity(boolean z, int i) throws RemoteException {
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mServiceModule;
        if (capabilityDiscoveryModule != null) {
            capabilityDiscoveryModule.setUserActive(z, i);
        }
    }

    ICapabilityServiceEventListener removeCallback(String str) {
        CallBack remove = this.mServiceModule != null ? this.mCapabilityListenerMap.remove(str) : null;
        if (!this.mQueuedCapabilityListener.isEmpty()) {
            CallBack remove2 = this.mQueuedCapabilityListener.remove(str);
            if (remove == null && remove2 != null) {
                remove = remove2;
            }
        }
        if (remove == null) {
            return null;
        }
        ICapabilityServiceEventListener iCapabilityServiceEventListener = remove.mListener;
        remove.reset();
        return iCapabilityServiceEventListener;
    }

    class CallBack implements IBinder.DeathRecipient {
        ICapabilityServiceEventListener mListener;
        final int mPhoneId;
        final String mToken;

        public CallBack(ICapabilityServiceEventListener iCapabilityServiceEventListener, int i, String str) {
            this.mListener = iCapabilityServiceEventListener;
            this.mPhoneId = i;
            this.mToken = str;
            try {
                iCapabilityServiceEventListener.asBinder().linkToDeath(this, 0);
            } catch (RemoteException unused) {
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            reset();
            if (!CapabilityDiscoveryService.this.mQueuedCapabilityListener.isEmpty()) {
                CapabilityDiscoveryService.this.mQueuedCapabilityListener.remove(this.mToken);
            }
            if (CapabilityDiscoveryService.this.mServiceModule != null) {
                CapabilityDiscoveryService.this.mCapabilityListenerMap.remove(this.mToken);
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
