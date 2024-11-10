package com.android.net.module.util;

import android.net.INetd;
import android.net.InterfaceConfigurationParcel;
import android.net.IpPrefix;
import android.net.RouteInfo;
import android.net.TetherConfigParcel;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.system.OsConstants;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class NetdUtils {
    public static final String TAG = "NetdUtils";

    /* loaded from: classes.dex */
    public enum ModifyOperation {
        ADD,
        REMOVE
    }

    public static InterfaceConfigurationParcel getInterfaceConfigParcel(INetd iNetd, String str) {
        try {
            return iNetd.interfaceGetCfg(str);
        } catch (RemoteException | ServiceSpecificException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void validateFlag(String str) {
        if (str.indexOf(32) < 0) {
            return;
        }
        throw new IllegalArgumentException("flag contains space: " + str);
    }

    public static boolean hasFlag(InterfaceConfigurationParcel interfaceConfigurationParcel, String str) {
        validateFlag(str);
        return new HashSet(Arrays.asList(interfaceConfigurationParcel.flags)).contains(str);
    }

    public static String[] removeAndAddFlags(String[] strArr, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
            validateFlag(str2);
            for (String str3 : strArr) {
                if (!str.equals(str3) && !str2.equals(str3)) {
                    arrayList.add(str3);
                }
            }
            arrayList.add(str2);
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (IllegalArgumentException e) {
            throw new IllegalStateException("Invalid InterfaceConfigurationParcel", e);
        }
    }

    public static void setInterfaceConfig(INetd iNetd, InterfaceConfigurationParcel interfaceConfigurationParcel) {
        try {
            iNetd.interfaceSetCfg(interfaceConfigurationParcel);
        } catch (RemoteException | ServiceSpecificException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void setInterfaceUp(INetd iNetd, String str) {
        InterfaceConfigurationParcel interfaceConfigParcel = getInterfaceConfigParcel(iNetd, str);
        interfaceConfigParcel.flags = removeAndAddFlags(interfaceConfigParcel.flags, INetd.IF_STATE_DOWN, INetd.IF_STATE_UP);
        setInterfaceConfig(iNetd, interfaceConfigParcel);
    }

    public static void setInterfaceDown(INetd iNetd, String str) {
        InterfaceConfigurationParcel interfaceConfigParcel = getInterfaceConfigParcel(iNetd, str);
        interfaceConfigParcel.flags = removeAndAddFlags(interfaceConfigParcel.flags, INetd.IF_STATE_UP, INetd.IF_STATE_DOWN);
        setInterfaceConfig(iNetd, interfaceConfigParcel);
    }

    public static void tetherStart(INetd iNetd, boolean z, String[] strArr) {
        TetherConfigParcel tetherConfigParcel = new TetherConfigParcel();
        tetherConfigParcel.usingLegacyDnsProxy = z;
        tetherConfigParcel.dhcpRanges = strArr;
        iNetd.tetherStartWithConfiguration(tetherConfigParcel);
    }

    public static void tetherInterface(INetd iNetd, String str, IpPrefix ipPrefix) {
        tetherInterface(iNetd, str, ipPrefix, 20, 50);
    }

    public static void tetherInterface(INetd iNetd, String str, IpPrefix ipPrefix, int i, int i2) {
        iNetd.tetherInterfaceAdd(str);
        networkAddInterface(iNetd, str, i, i2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RouteInfo(ipPrefix, null, str, 1));
        addRoutesToLocalNetwork(iNetd, str, arrayList);
    }

    public static void networkAddInterface(INetd iNetd, String str, int i, int i2) {
        for (int i3 = 1; i3 <= i; i3++) {
            try {
                iNetd.networkAddInterface(99, str);
                return;
            } catch (ServiceSpecificException e) {
                if (e.errorCode == OsConstants.EBUSY && i3 < i) {
                    SystemClock.sleep(i2);
                } else {
                    Log.e(TAG, "Retry Netd#networkAddInterface failure: " + e);
                    throw e;
                }
            }
        }
    }

    public static void untetherInterface(INetd iNetd, String str) {
        try {
            iNetd.tetherInterfaceRemove(str);
        } finally {
            iNetd.networkRemoveInterface(99, str);
        }
    }

    public static void addRoutesToLocalNetwork(INetd iNetd, String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RouteInfo routeInfo = (RouteInfo) it.next();
            if (!routeInfo.isDefaultRoute()) {
                modifyRoute(iNetd, ModifyOperation.ADD, 99, routeInfo);
            }
        }
        modifyRoute(iNetd, ModifyOperation.ADD, 99, new RouteInfo(new IpPrefix("fe80::/64"), null, str, 1));
    }

    public static int removeRoutesFromLocalNetwork(INetd iNetd, List list) {
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            try {
                modifyRoute(iNetd, ModifyOperation.REMOVE, 99, (RouteInfo) it.next());
            } catch (IllegalStateException unused) {
                i++;
            }
        }
        return i;
    }

    public static String findNextHop(RouteInfo routeInfo) {
        int type = routeInfo.getType();
        return type != 1 ? type != 7 ? type != 9 ? "" : INetd.NEXTHOP_THROW : INetd.NEXTHOP_UNREACHABLE : routeInfo.hasGateway() ? routeInfo.getGateway().getHostAddress() : "";
    }

    public static void modifyRoute(INetd iNetd, ModifyOperation modifyOperation, int i, RouteInfo routeInfo) {
        String str = routeInfo.getInterface();
        String ipPrefix = routeInfo.getDestination().toString();
        String findNextHop = findNextHop(routeInfo);
        try {
            int i2 = AnonymousClass1.$SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation[modifyOperation.ordinal()];
            if (i2 == 1) {
                iNetd.networkAddRoute(i, str, ipPrefix, findNextHop);
            } else {
                if (i2 == 2) {
                    iNetd.networkRemoveRoute(i, str, ipPrefix, findNextHop);
                    return;
                }
                throw new IllegalStateException("Unsupported modify operation:" + modifyOperation);
            }
        } catch (RemoteException | ServiceSpecificException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: com.android.net.module.util.NetdUtils$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation;

        static {
            int[] iArr = new int[ModifyOperation.values().length];
            $SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation = iArr;
            try {
                iArr[ModifyOperation.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation[ModifyOperation.REMOVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
