package com.sec.internal.ims.core.cmc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.samsung.android.wifi.SemWifiManager;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.log.IMSLog;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class CmcHotspotManager {
    private Context mContext;
    private final String LOG_TAG = CmcHotspotManager.class.getSimpleName();
    private final String WIFI_AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    private RegistrantList mHotSpotStateChangeRegistrant = new RegistrantList();
    private boolean mLastHotspotEnabledFromReceiver = false;
    private final BroadcastReceiver mHotspotStateChangedReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.cmc.CmcHotspotManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean isHotspotEnabled = CmcHotspotManager.this.isHotspotEnabled();
            if (CmcHotspotManager.this.mLastHotspotEnabledFromReceiver != isHotspotEnabled) {
                IMSLog.i(CmcHotspotManager.this.LOG_TAG, "mHotspotStateChangedReceiver: Hotspot state changed: " + CmcHotspotManager.this.mLastHotspotEnabledFromReceiver + " > " + isHotspotEnabled);
                CmcHotspotManager.this.setLastHotspotState(isHotspotEnabled);
                CmcHotspotManager.this.notifyHotspotStateChange();
            }
        }
    };

    public CmcHotspotManager(Context context) {
        this.mContext = context;
    }

    public void registerHotspotStateChangeEvent(Handler handler, int i, Object obj) {
        this.mHotSpotStateChangeRegistrant.addUnique(handler, i, obj);
        registerHotspotStateChangedReceiver();
    }

    public void unregisterHotspotStateChangeEvent(Handler handler) {
        this.mHotSpotStateChangeRegistrant.remove(handler);
        unRegisterHotspotStateChangedReceiver();
        setLastHotspotState(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyHotspotStateChange() {
        this.mHotSpotStateChangeRegistrant.notifyRegistrants();
    }

    private void registerHotspotStateChangedReceiver() {
        this.mContext.registerReceiver(this.mHotspotStateChangedReceiver, new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
    }

    private void unRegisterHotspotStateChangedReceiver() {
        this.mContext.unregisterReceiver(this.mHotspotStateChangedReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLastHotspotState(boolean z) {
        this.mLastHotspotEnabledFromReceiver = z;
    }

    public boolean isHotspotEnabled() {
        return getWifiApState() == 13;
    }

    private int getWifiApState() {
        return ((SemWifiManager) this.mContext.getSystemService("sem_wifi")).getWifiApState();
    }

    public List<String> getHotspotAddressesWithSubnetPrefix() {
        NetworkInterface hotspotNetworkInterface = getHotspotNetworkInterface();
        if (hotspotNetworkInterface == null) {
            IMSLog.i(this.LOG_TAG, "getHotspotAddressesWithSubnetPrefix: There's no hotspot network interface");
            return Collections.EMPTY_LIST;
        }
        if (hotspotNetworkInterface.getInterfaceAddresses() == null) {
            IMSLog.i(this.LOG_TAG, "getHotspotAddressesWithSubnetPrefix: There's no hotspot network InterfaceAddresses");
            return Collections.EMPTY_LIST;
        }
        List list = (List) hotspotNetworkInterface.getInterfaceAddresses().stream().map(new Function() { // from class: com.sec.internal.ims.core.cmc.CmcHotspotManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((InterfaceAddress) obj).getAddress();
            }
        }).collect(Collectors.toList());
        List list2 = (List) hotspotNetworkInterface.getInterfaceAddresses().stream().map(new Function() { // from class: com.sec.internal.ims.core.cmc.CmcHotspotManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Short.valueOf(((InterfaceAddress) obj).getNetworkPrefixLength());
            }
        }).collect(Collectors.toList());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list2.size(); i++) {
            InetAddress inetAddress = (InetAddress) list.get(i);
            if (!isValidAddress(inetAddress)) {
                IMSLog.i(this.LOG_TAG, "getHotspotAddressesWithSubnetPrefix: skip invalid address: " + IMSLog.checker(((InetAddress) list.get(i)).getHostAddress()));
            } else {
                short shortValue = ((Short) list2.get(i)).shortValue();
                String str = inetAddress.getHostAddress() + "/" + ((int) shortValue);
                IMSLog.i(this.LOG_TAG, "getHotspotAddressesWithSubnetPrefix: networkPrefixLength: " + ((int) shortValue) + ", addressWithSubnetPrefix: " + IMSLog.checker(str));
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private NetworkInterface getHotspotNetworkInterface() {
        try {
            return (NetworkInterface) Collections.list(NetworkInterface.getNetworkInterfaces()).stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.cmc.CmcHotspotManager$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getHotspotNetworkInterface$0;
                    lambda$getHotspotNetworkInterface$0 = CmcHotspotManager.lambda$getHotspotNetworkInterface$0((NetworkInterface) obj);
                    return lambda$getHotspotNetworkInterface$0;
                }
            }).findFirst().orElse(null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getHotspotNetworkInterface$0(NetworkInterface networkInterface) {
        return networkInterface.getDisplayName().startsWith("swlan");
    }

    private boolean isValidAddress(InetAddress inetAddress) {
        return (inetAddress.isAnyLocalAddress() || inetAddress.isLinkLocalAddress() || inetAddress.isLoopbackAddress() || inetAddress.isMulticastAddress()) ? false : true;
    }
}
