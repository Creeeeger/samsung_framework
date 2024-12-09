package com.sec.internal.ims.core.iil;

import android.os.AsyncResult;
import android.os.IBinder;
import android.os.Registrant;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import vendor.samsung.hardware.radio.channel.ISehRadioChannel;

/* loaded from: classes.dex */
public class IpcDispatcherAidl extends IpcDispatcher {
    private long mBinderDeathCount;
    private final ImsSecRadioChannelCallback mImsSecRadioChannelCallback;
    protected volatile ISehRadioChannel mSecRadioChannelProxy;
    private final SecRadioChannelProxyDeathRecipient mSecRadioChannelProxyDeathRecipient;

    public IpcDispatcherAidl() {
        this(0);
    }

    public IpcDispatcherAidl(int i) {
        super(i);
        this.mSecRadioChannelProxy = null;
        this.mImsSecRadioChannelCallback = new ImsSecRadioChannelCallback(this);
        this.mSecRadioChannelProxyDeathRecipient = new SecRadioChannelProxyDeathRecipient();
        this.mBinderDeathCount = 0L;
    }

    @Override // com.sec.internal.ims.core.iil.IpcDispatcher
    protected void initChannel() {
        getSecRadioChannelProxy();
    }

    @Override // com.sec.internal.ims.core.iil.IpcDispatcher
    protected void handleChannelProxyDead(long j) {
        IMSLog.i("IpcDispatcher", this.mSlotId, "handleMessage: EVENT_SEC_RADIO_CHANNEL_PROXY_DEAD cookie = " + j + " mSecChannelProxyCookie = " + this.mChannelProxyCookie.get());
        if (j == this.mChannelProxyCookie.get()) {
            resetProxy();
            getSecRadioChannelProxy();
        }
    }

    @Override // com.sec.internal.ims.core.iil.IpcDispatcher
    protected void resetProxy() {
        this.mSecRadioChannelProxy = null;
        this.mChannelProxyCookie.incrementAndGet();
    }

    @Override // com.sec.internal.ims.core.iil.IpcDispatcher
    protected void handleSendIpc(byte[] bArr) {
        ISehRadioChannel secRadioChannelProxy = getSecRadioChannelProxy();
        if (secRadioChannelProxy != null) {
            try {
                IMSLog.i("IpcDispatcher", this.mSlotId, "ImsModemSender(): send");
                secRadioChannelProxy.send(bArr);
            } catch (RemoteException | RuntimeException e) {
                handleChannelProxyExceptionForRR("send", e);
            }
        }
    }

    final class SecRadioChannelProxyDeathRecipient implements IBinder.DeathRecipient {
        SecRadioChannelProxyDeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            IpcDispatcherAidl ipcDispatcherAidl = IpcDispatcherAidl.this;
            ipcDispatcherAidl.notifyChannelProxyDied(ipcDispatcherAidl.mBinderDeathCount);
            IpcDispatcherAidl.this.mBinderDeathCount++;
        }
    }

    protected ISehRadioChannel getSecRadioChannelProxy() {
        if (this.mSecRadioChannelProxy != null) {
            return this.mSecRadioChannelProxy;
        }
        try {
            createChannelBySlotCount();
        } catch (RemoteException | RuntimeException e) {
            this.mSecRadioChannelProxy = null;
            IMSLog.e("IpcDispatcher", this.mSlotId, "SecRadioChannelProxy getService/setCallback: " + e);
        }
        if (this.mSecRadioChannelProxy == null) {
            publishChannelProxyDeadEvent(this.mChannelProxyCookie.incrementAndGet());
        }
        return this.mSecRadioChannelProxy;
    }

    private synchronized void createChannelBySlotCount() throws RemoteException {
        IBinder waitForDeclaredService = ServiceManager.waitForDeclaredService(ISehRadioChannel.DESCRIPTOR + "/" + IpcDispatcher.CHANNEL_SERVICE_NAME[this.mSlotId]);
        if (waitForDeclaredService != null) {
            this.mSecRadioChannelProxy = getSehRadioChannelInterface(waitForDeclaredService);
        }
        if (this.mSecRadioChannelProxy != null) {
            this.mSecRadioChannelProxy.asBinder().linkToDeath(this.mSecRadioChannelProxyDeathRecipient, 0);
            this.mSecRadioChannelProxy.setCallback(this.mImsSecRadioChannelCallback);
            IMSLog.s("IpcDispatcher", this.mSlotId, "notify IIL Connected");
            Iterator<Registrant> it = this.mRegistrantsForIilConnected.iterator();
            while (it.hasNext()) {
                it.next().notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
            }
        } else {
            IMSLog.e("IpcDispatcher", this.mSlotId, "getSecRadioChannelProxy: mSecRadioChannelProxy == null");
        }
    }

    protected ISehRadioChannel getSehRadioChannelInterface(IBinder iBinder) {
        return ISehRadioChannel.Stub.asInterface(iBinder);
    }
}
