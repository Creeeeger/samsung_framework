package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothDump;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CachedBluetoothDeviceManager {
    static int sLateBondingTimeoutMillis = 5000;
    public final LocalBluetoothManager mBtManager;
    final List<CachedBluetoothDevice> mCachedDevices;
    public final Context mContext;
    CsipDeviceManager mCsipDeviceManager;
    public final List mFilteredCachedDevices;
    HearingAidDeviceManager mHearingAidDeviceManager;
    public int mOngoingSetMemberGroupId;
    public BluetoothDevice mOngoingSetMemberPair;
    public final Map stubInfoMap;

    public CachedBluetoothDeviceManager(Context context, LocalBluetoothManager localBluetoothManager) {
        ArrayList arrayList = new ArrayList();
        this.mFilteredCachedDevices = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.mCachedDevices = arrayList2;
        this.mOngoingSetMemberGroupId = -1;
        this.stubInfoMap = new HashMap();
        this.mContext = context;
        this.mBtManager = localBluetoothManager;
        this.mHearingAidDeviceManager = new HearingAidDeviceManager(context, localBluetoothManager, arrayList2, arrayList);
        this.mCsipDeviceManager = new CsipDeviceManager(localBluetoothManager, arrayList2, arrayList);
        setStubInfo("com.samsung.android.app.watchmanagerstub");
        setStubInfo("com.sec.android.app.applinker");
    }

    public final CachedBluetoothDevice addDevice(LocalBluetoothProfileManager localBluetoothProfileManager, BluetoothDevice bluetoothDevice) {
        LocalBluetoothAdapter localBluetoothAdapter = this.mBtManager.mLocalAdapter;
        CachedBluetoothDevice cachedBluetoothDevice = new CachedBluetoothDevice(this.mContext, localBluetoothProfileManager, bluetoothDevice);
        synchronized (this) {
            this.mCsipDeviceManager.initCsipDeviceIfNeeded(cachedBluetoothDevice);
            this.mHearingAidDeviceManager.initHearingAidDeviceIfNeeded(cachedBluetoothDevice);
            if (localBluetoothAdapter.mAdapter.isCustomDeviceAddress(cachedBluetoothDevice.getAddress())) {
                return null;
            }
            this.mCsipDeviceManager.setMemberDeviceIfNeeded(cachedBluetoothDevice);
            if (!this.mHearingAidDeviceManager.setSubDeviceIfNeeded(cachedBluetoothDevice)) {
                if (this.mCachedDevices.contains(cachedBluetoothDevice)) {
                    Log.d("CachedBluetoothDeviceManager", "addDevice :: newDevice is added already");
                    return findDevice(bluetoothDevice);
                }
                boolean addDevice = addDevice(cachedBluetoothDevice);
                cachedBluetoothDevice.mSequence = this.mCachedDevices.indexOf(cachedBluetoothDevice);
                if (!addDevice) {
                    this.mBtManager.mEventManager.dispatchDeviceAdded(cachedBluetoothDevice);
                }
            }
            return cachedBluetoothDevice;
        }
    }

    public final synchronized void clearNonBondedDevices() {
        int size = this.mCachedDevices.size();
        while (true) {
            size--;
            if (size >= 0) {
                CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevices.get(size);
                if (cachedBluetoothDevice.mBondState == 10 && !cachedBluetoothDevice.mIsRestored) {
                    removeDevice(cachedBluetoothDevice);
                }
            } else {
                updateSequeces();
            }
        }
    }

    public final synchronized CachedBluetoothDevice findDevice(BluetoothDevice bluetoothDevice) {
        for (CachedBluetoothDevice cachedBluetoothDevice : this.mCachedDevices) {
            if (cachedBluetoothDevice.mDevice.equals(bluetoothDevice)) {
                return cachedBluetoothDevice;
            }
            Set<CachedBluetoothDevice> set = cachedBluetoothDevice.mMemberDevices;
            if (!set.isEmpty()) {
                for (CachedBluetoothDevice cachedBluetoothDevice2 : set) {
                    if (cachedBluetoothDevice2.mDevice.equals(bluetoothDevice)) {
                        return cachedBluetoothDevice2;
                    }
                }
            }
            CachedBluetoothDevice cachedBluetoothDevice3 = cachedBluetoothDevice.mSubDevice;
            if (cachedBluetoothDevice3 != null && cachedBluetoothDevice3.mDevice.equals(bluetoothDevice)) {
                return cachedBluetoothDevice3;
            }
        }
        return null;
    }

    public final synchronized Collection getCachedDevicesCopy() {
        return new ArrayList(this.mFilteredCachedDevices);
    }

    public final int getStubVersion(String str) {
        HashMap hashMap = (HashMap) this.stubInfoMap;
        if (hashMap.get(str) != null) {
            return ((Integer) hashMap.get(str)).intValue();
        }
        return -1;
    }

    public final synchronized void initCsipDeviceIfNeeded(CachedBluetoothDevice cachedBluetoothDevice) {
        this.mCsipDeviceManager.initCsipDeviceIfNeeded(cachedBluetoothDevice);
    }

    public final synchronized boolean isSubDevice(BluetoothDevice bluetoothDevice) {
        for (CachedBluetoothDevice cachedBluetoothDevice : this.mCachedDevices) {
            if (!cachedBluetoothDevice.mDevice.equals(bluetoothDevice)) {
                Set set = cachedBluetoothDevice.mMemberDevices;
                if (!set.isEmpty()) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        if (((CachedBluetoothDevice) it.next()).mDevice.equals(bluetoothDevice)) {
                            return true;
                        }
                    }
                } else {
                    CachedBluetoothDevice cachedBluetoothDevice2 = cachedBluetoothDevice.mSubDevice;
                    if (cachedBluetoothDevice2 != null && cachedBluetoothDevice2.mDevice.equals(bluetoothDevice)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isValidStub(String str) {
        Log.d("CachedBluetoothDeviceManager", "isValidStub: packageName = ".concat(str));
        boolean equals = "com.samsung.android.app.watchmanagerstub".equals(str);
        Map map = this.stubInfoMap;
        if (equals) {
            HashMap hashMap = (HashMap) map;
            if (hashMap.get(str) != null && ((Integer) hashMap.get(str)).intValue() > 100) {
                return true;
            }
            return false;
        }
        if ("com.sec.android.app.applinker".equals(str)) {
            HashMap hashMap2 = (HashMap) map;
            if (hashMap2.get(str) != null && ((Integer) hashMap2.get(str)).intValue() > 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r0.getMajorDeviceClass() == 7936) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean needListFiltering(com.android.settingslib.bluetooth.CachedBluetoothDevice r15) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CachedBluetoothDeviceManager.needListFiltering(com.android.settingslib.bluetooth.CachedBluetoothDevice):boolean");
    }

    public final synchronized void onDeviceUnpaired(CachedBluetoothDevice cachedBluetoothDevice) {
        int i = cachedBluetoothDevice.mGroupId;
        cachedBluetoothDevice.setGroupId(-1);
        CachedBluetoothDevice findMainDevice = this.mCsipDeviceManager.findMainDevice(cachedBluetoothDevice);
        HashSet<CachedBluetoothDevice> hashSet = (HashSet) cachedBluetoothDevice.mMemberDevices;
        if (!hashSet.isEmpty()) {
            for (CachedBluetoothDevice cachedBluetoothDevice2 : hashSet) {
                cachedBluetoothDevice2.unpair();
                cachedBluetoothDevice2.setGroupId(-1);
                ((HashSet) cachedBluetoothDevice.mMemberDevices).remove(cachedBluetoothDevice2);
                cachedBluetoothDevice2.mLeadDevice = null;
            }
        } else if (findMainDevice != null) {
            findMainDevice.unpair();
        }
        BluetoothDevice bluetoothDevice = this.mOngoingSetMemberPair;
        if (bluetoothDevice != null && this.mOngoingSetMemberGroupId == i) {
            if (bluetoothDevice.getBondState() == 11) {
                BluetoothDump.BtLog("CachedBluetoothDeviceManager -- onDeviceUnpaired: cancelBondProcess()");
                this.mOngoingSetMemberPair.cancelBondProcess();
            } else if (this.mOngoingSetMemberPair.getBondState() == 12) {
                BluetoothDump.BtLog("CachedBluetoothDeviceManager -- onDeviceUnpaired: removeBond()");
                this.mOngoingSetMemberPair.removeBond();
            }
        }
        CachedBluetoothDevice findMainDevice2 = this.mHearingAidDeviceManager.findMainDevice(cachedBluetoothDevice);
        CachedBluetoothDevice cachedBluetoothDevice3 = cachedBluetoothDevice.mSubDevice;
        if (cachedBluetoothDevice3 != null) {
            if (cachedBluetoothDevice3.mIsRestored) {
                removeRestoredDevice(cachedBluetoothDevice3);
            } else {
                cachedBluetoothDevice3.unpairLegacy();
            }
            cachedBluetoothDevice.mSubDevice = null;
        } else if (findMainDevice2 != null) {
            if (findMainDevice2.mIsRestored) {
                removeRestoredDevice(findMainDevice2);
            } else {
                findMainDevice2.unpairLegacy();
            }
            findMainDevice2.mSubDevice = null;
        }
    }

    public final synchronized void removeDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        this.mCachedDevices.remove(cachedBluetoothDevice);
        ((ArrayList) this.mFilteredCachedDevices).remove(cachedBluetoothDevice);
    }

    public final synchronized void removeRestoredDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        BluetoothDevice bluetoothDevice = cachedBluetoothDevice.mDevice;
        Intent intent = new Intent();
        intent.setAction("com.samsung.android.intent.action.NOTIFY_REMOVED_SYNC_DEVICE_BLUETOOTH");
        intent.putExtra("android.bluetooth.device.extra.DEVICE", bluetoothDevice);
        intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
        intent.setPackage("com.android.bluetooth");
        this.mContext.sendBroadcast(intent);
        removeDevice(cachedBluetoothDevice);
    }

    public final void setStubInfo(String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
                if (applicationInfo.packageName.equals(str) && applicationInfo.enabled) {
                    int i = packageManager.getPackageInfo(str, 0).versionCode;
                    this.stubInfoMap.put(str, Integer.valueOf(i));
                    Log.d("CachedBluetoothDeviceManager", "setStubInfo: INSTALLER_STUB is exist. Package : " + str + ", Version : " + i);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public final synchronized void updateSequeces() {
        for (int size = this.mCachedDevices.size() - 1; size >= 0; size--) {
            this.mCachedDevices.get(size).mSequence = size;
        }
    }

    public final synchronized boolean addDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        boolean z;
        this.mCachedDevices.add(cachedBluetoothDevice);
        if (needListFiltering(cachedBluetoothDevice)) {
            z = true;
        } else {
            ((ArrayList) this.mFilteredCachedDevices).add(cachedBluetoothDevice);
            z = false;
        }
        return z;
    }

    public final CachedBluetoothDevice addDevice(BluetoothDevice bluetoothDevice) {
        LocalBluetoothManager localBluetoothManager = this.mBtManager;
        LocalBluetoothAdapter localBluetoothAdapter = localBluetoothManager.mLocalAdapter;
        LocalBluetoothProfileManager localBluetoothProfileManager = localBluetoothManager.mProfileManager;
        synchronized (this) {
            CachedBluetoothDevice findDevice = findDevice(bluetoothDevice);
            if (findDevice == null) {
                findDevice = new CachedBluetoothDevice(this.mContext, localBluetoothProfileManager, bluetoothDevice);
                if (localBluetoothAdapter.mAdapter.isCustomDeviceAddress(findDevice.getAddress())) {
                    return null;
                }
                this.mCsipDeviceManager.initCsipDeviceIfNeeded(findDevice);
                this.mHearingAidDeviceManager.initHearingAidDeviceIfNeeded(findDevice);
                this.mCsipDeviceManager.setMemberDeviceIfNeeded(findDevice);
                if (!this.mHearingAidDeviceManager.setSubDeviceIfNeeded(findDevice)) {
                    if (this.mCachedDevices.contains(findDevice)) {
                        Log.d("CachedBluetoothDeviceManager", "addDevice :: newDevice is added already");
                        return findDevice(bluetoothDevice);
                    }
                    boolean addDevice = addDevice(findDevice);
                    findDevice.mSequence = this.mCachedDevices.indexOf(findDevice);
                    if (!addDevice) {
                        this.mBtManager.mEventManager.dispatchDeviceAdded(findDevice);
                    }
                }
            }
            return findDevice;
        }
    }
}
