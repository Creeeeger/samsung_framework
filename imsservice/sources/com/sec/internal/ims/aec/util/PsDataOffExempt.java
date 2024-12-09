package com.sec.internal.ims.aec.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.TelephonyNetworkSpecifier;
import android.os.Handler;
import android.text.TextUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.aec.util.PsDataOffExempt;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import com.sec.internal.log.AECLog;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import javax.net.SocketFactory;
import okhttp3.Dns;

/* loaded from: classes.dex */
public class PsDataOffExempt {
    private static final String LOG_TAG = "PsDataOffExempt";
    private static final int NETWORK_ACQUIRE_TIMEOUT_MILLIS = 30000;
    private final ConnectivityManager mConnMgr;
    private final int mPhoneId;
    private final Handler mWorkflowHandler;
    protected Dns mDns = null;
    protected Network mNetwork = null;
    protected NetworkCallback mNetworkCallback = null;
    protected SocketFactory mSocketFactory = null;

    public PsDataOffExempt(Context context, int i, Handler handler) {
        this.mPhoneId = i;
        this.mWorkflowHandler = handler;
        this.mConnMgr = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public Dns getDns() {
        return this.mDns;
    }

    public Network getNetwork() {
        return this.mNetwork;
    }

    public SocketFactory getSocketFactory() {
        return this.mSocketFactory;
    }

    public boolean isAvailable() {
        return (this.mNetworkCallback == null || this.mNetwork == null) ? false : true;
    }

    public boolean hasXcapApn() {
        IUtServiceModule utServiceModule = ImsRegistry.getServiceModuleManager().getUtServiceModule();
        if (utServiceModule != null) {
            return utServiceModule.checkXcapApn(this.mPhoneId);
        }
        return false;
    }

    public void requestNetwork() {
        if (!hasXcapApn()) {
            AECLog.e(LOG_TAG, "requestNetwork: No XCAP PDN, don't try requestNetwork using xcap ", this.mPhoneId);
            return;
        }
        if (isAvailable()) {
            this.mWorkflowHandler.sendEmptyMessage(1008);
            return;
        }
        if (this.mNetworkCallback == null) {
            int subId = SimUtil.getSubId(this.mPhoneId);
            AECLog.i(LOG_TAG, "requestNetwork: transport 0 capability 9 subId " + subId, this.mPhoneId);
            NetworkRequest build = new NetworkRequest.Builder().addTransportType(0).addCapability(9).setNetworkSpecifier(new TelephonyNetworkSpecifier.Builder().setSubscriptionId(subId).build()).build();
            NetworkCallback networkCallback = new NetworkCallback();
            this.mNetworkCallback = networkCallback;
            this.mConnMgr.requestNetwork(build, networkCallback, NETWORK_ACQUIRE_TIMEOUT_MILLIS);
            return;
        }
        AECLog.i(LOG_TAG, "requestNetwork: network callback is already registered", this.mPhoneId);
    }

    public void unregisterNetworkCallback() {
        NetworkCallback networkCallback = this.mNetworkCallback;
        if (networkCallback != null) {
            this.mConnMgr.unregisterNetworkCallback(networkCallback);
            this.mDns = null;
            this.mNetwork = null;
            this.mNetworkCallback = null;
            this.mSocketFactory = null;
            AECLog.i(LOG_TAG, "unregisterNetworkCallback", this.mPhoneId);
        }
    }

    protected class NetworkCallback extends ConnectivityManager.NetworkCallback {
        protected NetworkCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            PsDataOffExempt psDataOffExempt = PsDataOffExempt.this;
            psDataOffExempt.mNetwork = network;
            psDataOffExempt.mDns = new Dns() { // from class: com.sec.internal.ims.aec.util.PsDataOffExempt$NetworkCallback$$ExternalSyntheticLambda0
                @Override // okhttp3.Dns
                public final List lookup(String str) {
                    List lambda$onAvailable$0;
                    lambda$onAvailable$0 = PsDataOffExempt.NetworkCallback.this.lambda$onAvailable$0(str);
                    return lambda$onAvailable$0;
                }
            };
            PsDataOffExempt psDataOffExempt2 = PsDataOffExempt.this;
            psDataOffExempt2.mSocketFactory = psDataOffExempt2.mNetwork.getSocketFactory();
            AECLog.d(PsDataOffExempt.LOG_TAG, "onAvailable: " + PsDataOffExempt.this.mNetwork, PsDataOffExempt.this.mPhoneId);
            LinkProperties linkProperties = PsDataOffExempt.this.mConnMgr.getLinkProperties(PsDataOffExempt.this.mNetwork);
            if (linkProperties == null || linkProperties.getInterfaceName() == null) {
                AECLog.d(PsDataOffExempt.LOG_TAG, "onAvailable: no link properties", PsDataOffExempt.this.mPhoneId);
                PsDataOffExempt.this.unregisterNetworkCallback();
                return;
            }
            AECLog.i(PsDataOffExempt.LOG_TAG, "onAvailable link properties InterfaceName: " + linkProperties.getInterfaceName() + ", LinkAddresses: " + linkProperties.getLinkAddresses() + ", DnsAddresses: " + linkProperties.getDnsServers(), PsDataOffExempt.this.mPhoneId);
            PsDataOffExempt.this.mWorkflowHandler.sendEmptyMessage(1008);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ List lambda$onAvailable$0(String str) throws UnknownHostException {
            if (TextUtils.isEmpty(str)) {
                throw new UnknownHostException("there is no hostname");
            }
            try {
                return Arrays.asList(PsDataOffExempt.this.mNetwork.getAllByName(str));
            } catch (NullPointerException unused) {
                throw new UnknownHostException("the address lookup fails");
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            AECLog.i(PsDataOffExempt.LOG_TAG, "onLost: " + network, PsDataOffExempt.this.mPhoneId);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            AECLog.e(PsDataOffExempt.LOG_TAG, "onUnavailable: mNetworkCallback = " + PsDataOffExempt.this.mNetworkCallback + ", network = " + PsDataOffExempt.this.mNetwork, PsDataOffExempt.this.mPhoneId);
            PsDataOffExempt.this.unregisterNetworkCallback();
        }
    }
}
