package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothCsipSetCoordinator;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothDump;
import android.bluetooth.BluetoothUuid;
import android.os.ParcelUuid;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CsipDeviceManager {
    public final LocalBluetoothManager mBtManager;
    public final List mCachedDevices;
    public final List mFilteredCachedDevices;

    public CsipDeviceManager(LocalBluetoothManager localBluetoothManager, List<CachedBluetoothDevice> list, List<CachedBluetoothDevice> list2) {
        this.mBtManager = localBluetoothManager;
        this.mCachedDevices = list;
        this.mFilteredCachedDevices = list2;
    }

    public static boolean isValidGroupId(int i) {
        if (i != -1) {
            return true;
        }
        return false;
    }

    public static void log(String str) {
        Log.d("CsipDeviceManager", str);
    }

    public boolean addMemberDevicesIntoMainDevice(final int i, CachedBluetoothDevice cachedBluetoothDevice) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (cachedBluetoothDevice == null) {
            log("addMemberDevicesIntoMainDevice: No main device. Do nothing.");
            return false;
        }
        BluetoothDevice bluetoothDevice = cachedBluetoothDevice.mDevice;
        CachedBluetoothDevice findMainDevice = findMainDevice(cachedBluetoothDevice);
        if (findMainDevice == null) {
            z = true;
        } else {
            z = false;
        }
        LocalBluetoothManager localBluetoothManager = this.mBtManager;
        if (!z) {
            log("addMemberDevicesIntoMainDevice: The PreferredMainDevice have the mainDevice. Do switch relationship between the mainDeviceOfPreferredMainDevice and PreferredMainDevice");
            localBluetoothManager.mEventManager.dispatchDeviceRemoved(findMainDevice);
            ((HashSet) findMainDevice.mMemberDevices).remove(cachedBluetoothDevice);
            cachedBluetoothDevice.mLeadDevice = null;
            BluetoothDevice bluetoothDevice2 = findMainDevice.mDevice;
            short s = findMainDevice.mRssi;
            boolean z4 = findMainDevice.mJustDiscovered;
            findMainDevice.mDevice = cachedBluetoothDevice.mDevice;
            findMainDevice.mRssi = cachedBluetoothDevice.mRssi;
            findMainDevice.mJustDiscovered = cachedBluetoothDevice.mJustDiscovered;
            findMainDevice.fillData();
            cachedBluetoothDevice.mDevice = bluetoothDevice2;
            cachedBluetoothDevice.mRssi = s;
            cachedBluetoothDevice.mJustDiscovered = z4;
            cachedBluetoothDevice.fillData();
            findMainDevice.addMemberDevice(cachedBluetoothDevice);
            findMainDevice.refresh();
            localBluetoothManager.mEventManager.dispatchDeviceAdded(findMainDevice);
            z2 = true;
        } else {
            z2 = false;
        }
        List list = this.mCachedDevices;
        List<CachedBluetoothDevice> list2 = (List) list.stream().filter(new Predicate() { // from class: com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                if (((CachedBluetoothDevice) obj).mGroupId == i) {
                    return true;
                }
                return false;
            }
        }).collect(Collectors.toList());
        if (list2.size() > 1) {
            z3 = true;
        }
        CachedBluetoothDevice findDevice = localBluetoothManager.mCachedDeviceManager.findDevice(bluetoothDevice);
        if (z3) {
            for (CachedBluetoothDevice cachedBluetoothDevice2 : list2) {
                BluetoothDevice bluetoothDevice3 = cachedBluetoothDevice2.mDevice;
                if (bluetoothDevice3 != null && !bluetoothDevice3.equals(bluetoothDevice)) {
                    HashSet hashSet = (HashSet) cachedBluetoothDevice2.mMemberDevices;
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        CachedBluetoothDevice cachedBluetoothDevice3 = (CachedBluetoothDevice) it.next();
                        if (!cachedBluetoothDevice3.equals(findDevice)) {
                            findDevice.addMemberDevice(cachedBluetoothDevice3);
                        }
                    }
                    hashSet.clear();
                    findDevice.addMemberDevice(cachedBluetoothDevice2);
                    list.remove(cachedBluetoothDevice2);
                    localBluetoothManager.mEventManager.dispatchDeviceRemoved(cachedBluetoothDevice2);
                    z2 = true;
                }
            }
        }
        if (z2) {
            log("addMemberDevicesIntoMainDevice: After changed, CachedBluetoothDevice list: " + list);
        }
        return z2;
    }

    public final CachedBluetoothDevice findMainDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        List<CachedBluetoothDevice> list;
        if (cachedBluetoothDevice != null && (list = this.mCachedDevices) != null) {
            for (CachedBluetoothDevice cachedBluetoothDevice2 : list) {
                if (isValidGroupId(cachedBluetoothDevice2.mGroupId)) {
                    HashSet<CachedBluetoothDevice> hashSet = (HashSet) cachedBluetoothDevice2.mMemberDevices;
                    if (hashSet.isEmpty()) {
                        continue;
                    } else {
                        for (CachedBluetoothDevice cachedBluetoothDevice3 : hashSet) {
                            if (cachedBluetoothDevice3 != null && cachedBluetoothDevice3.equals(cachedBluetoothDevice)) {
                                return cachedBluetoothDevice2;
                            }
                        }
                    }
                }
            }
            return null;
        }
        return null;
    }

    public final int getBaseGroupId(BluetoothDevice bluetoothDevice) {
        CsipSetCoordinatorProfile csipSetCoordinatorProfile;
        Map map;
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mBtManager.mProfileManager;
        if (localBluetoothProfileManager != null && (csipSetCoordinatorProfile = localBluetoothProfileManager.mCsipSetCoordinatorProfile) != null) {
            BluetoothCsipSetCoordinator bluetoothCsipSetCoordinator = csipSetCoordinatorProfile.mService;
            if (bluetoothCsipSetCoordinator != null && bluetoothDevice != null) {
                map = bluetoothCsipSetCoordinator.getGroupUuidMapByDevice(bluetoothDevice);
            } else {
                map = null;
            }
            if (map == null) {
                return -1;
            }
            for (Map.Entry entry : map.entrySet()) {
                if (((ParcelUuid) entry.getValue()).equals(BluetoothUuid.CAP)) {
                    log(" entry.getKey() = " + entry.getKey());
                    return ((Integer) entry.getKey()).intValue();
                }
            }
        }
        return -1;
    }

    public List<CachedBluetoothDevice> getGroupDevicesFromAllOfDevicesList(int i) {
        ArrayList arrayList = new ArrayList();
        if (!isValidGroupId(i)) {
            return arrayList;
        }
        for (CachedBluetoothDevice cachedBluetoothDevice : this.mCachedDevices) {
            if (i == cachedBluetoothDevice.mGroupId) {
                arrayList.add(cachedBluetoothDevice);
                arrayList.addAll(cachedBluetoothDevice.mMemberDevices);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.settingslib.bluetooth.CachedBluetoothDevice getPreferredMainDevice(int r7, java.util.List<com.android.settingslib.bluetooth.CachedBluetoothDevice> r8) {
        /*
            r6 = this;
            r0 = 0
            if (r8 == 0) goto Lc9
            boolean r1 = r8.isEmpty()
            if (r1 == 0) goto Lb
            goto Lc9
        Lb:
            java.util.stream.Stream r1 = r8.stream()
            com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1 r2 = new com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1
            r3 = 0
            r2.<init>(r3)
            java.util.stream.Stream r1 = r1.filter(r2)
            com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1 r2 = new com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1
            r4 = 1
            r2.<init>(r4)
            java.util.stream.Stream r1 = r1.filter(r2)
            java.util.Optional r1 = r1.findFirst()
            java.lang.Object r1 = r1.orElse(r0)
            com.android.settingslib.bluetooth.CachedBluetoothDevice r1 = (com.android.settingslib.bluetooth.CachedBluetoothDevice) r1
            if (r1 == 0) goto L3b
            boolean r2 = r1.isConnected()
            if (r2 == 0) goto L3b
            java.lang.String r6 = "getPreferredMainDevice: The connected DUAL mode device"
            log(r6)
            return r1
        L3b:
            com.android.settingslib.bluetooth.LocalBluetoothManager r6 = r6.mBtManager
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r2 = r6.mProfileManager
            com.android.settingslib.bluetooth.LeAudioProfile r2 = r2.mLeAudioProfile
            if (r2 == 0) goto L59
            java.lang.String r4 = "getConnectedGroupLeadDevice"
            java.lang.String r5 = "LeAudioProfile"
            android.util.Log.d(r5, r4)
            android.bluetooth.BluetoothLeAudio r2 = r2.mService
            if (r2 != 0) goto L54
            java.lang.String r7 = "No service."
            android.util.Log.e(r5, r7)
            goto L59
        L54:
            android.bluetooth.BluetoothDevice r7 = r2.getConnectedGroupLeadDevice(r7)
            goto L5a
        L59:
            r7 = r0
        L5a:
            if (r7 == 0) goto L71
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r4 = "getPreferredMainDevice: The LeadDevice from LE profile is "
            r2.<init>(r4)
            java.lang.String r4 = r7.getAnonymizedAddress()
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            log(r2)
        L71:
            if (r7 == 0) goto L7a
            com.android.settingslib.bluetooth.CachedBluetoothDeviceManager r6 = r6.mCachedDeviceManager
            com.android.settingslib.bluetooth.CachedBluetoothDevice r6 = r6.findDevice(r7)
            goto L7b
        L7a:
            r6 = r0
        L7b:
            if (r6 != 0) goto L83
            java.lang.String r6 = "getPreferredMainDevice: The LeadDevice is not in the all of devices list"
            log(r6)
            goto L8f
        L83:
            boolean r7 = r6.isConnected()
            if (r7 == 0) goto L8f
            java.lang.String r7 = "getPreferredMainDevice: The connected LeadDevice from LE profile"
            log(r7)
            return r6
        L8f:
            java.util.stream.Stream r6 = r8.stream()
            com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1 r7 = new com.android.settingslib.bluetooth.CsipDeviceManager$$ExternalSyntheticLambda1
            r2 = 2
            r7.<init>(r2)
            java.util.stream.Stream r6 = r6.filter(r7)
            java.util.Optional r6 = r6.findFirst()
            java.lang.Object r6 = r6.orElse(r0)
            com.android.settingslib.bluetooth.CachedBluetoothDevice r6 = (com.android.settingslib.bluetooth.CachedBluetoothDevice) r6
            if (r6 == 0) goto Laf
            java.lang.String r7 = "getPreferredMainDevice: One of the connected devices."
            log(r7)
            return r6
        Laf:
            if (r1 == 0) goto Lb7
            java.lang.String r6 = "getPreferredMainDevice: The DUAL mode device."
            log(r6)
            return r1
        Lb7:
            boolean r6 = r8.isEmpty()
            if (r6 != 0) goto Lc9
            java.lang.String r6 = "getPreferredMainDevice: One of the group devices."
            log(r6)
            java.lang.Object r6 = r8.get(r3)
            com.android.settingslib.bluetooth.CachedBluetoothDevice r6 = (com.android.settingslib.bluetooth.CachedBluetoothDevice) r6
            return r6
        Lc9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CsipDeviceManager.getPreferredMainDevice(int, java.util.List):com.android.settingslib.bluetooth.CachedBluetoothDevice");
    }

    public final void initCsipDeviceIfNeeded(CachedBluetoothDevice cachedBluetoothDevice) {
        if (cachedBluetoothDevice.mBondState == 12) {
            int baseGroupId = getBaseGroupId(cachedBluetoothDevice.mDevice);
            if (isValidGroupId(baseGroupId)) {
                log("initCsipDeviceIfNeeded: " + cachedBluetoothDevice + " (group: " + baseGroupId + ")");
                cachedBluetoothDevice.setGroupId(baseGroupId);
                return;
            }
            return;
        }
        cachedBluetoothDevice.setGroupId(-1);
    }

    public final boolean isMainHearableDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mBtManager.mProfileManager;
        if (cachedBluetoothDevice.isHearableUsingWearableManager()) {
            int i = cachedBluetoothDevice.mType;
            if ((i == 1 || i == 3) && localBluetoothProfileManager != null && cachedBluetoothDevice.hasProfile(localBluetoothProfileManager.mA2dpProfile)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public void onGroupIdChanged(int i) {
        if (!isValidGroupId(i)) {
            log("onGroupIdChanged: groupId is invalid");
            return;
        }
        ArrayList arrayList = new ArrayList();
        List list = this.mCachedDevices;
        for (int size = list.size() - 1; size >= 0; size--) {
            CachedBluetoothDevice cachedBluetoothDevice = (CachedBluetoothDevice) list.get(size);
            if (cachedBluetoothDevice.mGroupId == i) {
                if (isMainHearableDevice(cachedBluetoothDevice)) {
                    arrayList.add(0, cachedBluetoothDevice);
                } else {
                    arrayList.add(cachedBluetoothDevice);
                }
                if (arrayList.size() == 2) {
                    break;
                }
            }
        }
        if (arrayList.size() == 2) {
            CachedBluetoothDevice cachedBluetoothDevice2 = (CachedBluetoothDevice) arrayList.get(0);
            CachedBluetoothDevice cachedBluetoothDevice3 = (CachedBluetoothDevice) arrayList.get(1);
            cachedBluetoothDevice2.addMemberDevice(cachedBluetoothDevice3);
            cachedBluetoothDevice3.mVisible = false;
            this.mFilteredCachedDevices.remove(cachedBluetoothDevice3);
            this.mBtManager.mEventManager.dispatchDeviceRemoved(cachedBluetoothDevice3);
        }
    }

    public final boolean onProfileConnectionStateChangedIfProcessed(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        log("onProfileConnectionStateChangedIfProcessed: " + cachedBluetoothDevice + ", state: " + i + ", groupId = " + cachedBluetoothDevice.mGroupId);
        if (i != 0) {
            if (i == 2) {
                if (!isValidGroupId(cachedBluetoothDevice.mGroupId)) {
                    initCsipDeviceIfNeeded(cachedBluetoothDevice);
                }
                onGroupIdChanged(cachedBluetoothDevice.mGroupId);
                CachedBluetoothDevice findMainDevice = findMainDevice(cachedBluetoothDevice);
                if (findMainDevice != null) {
                    if (findMainDevice.isConnected()) {
                        findMainDevice.refresh();
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        CachedBluetoothDevice findMainDevice2 = findMainDevice(cachedBluetoothDevice);
        if (findMainDevice2 != null) {
            findMainDevice2.refresh();
            return true;
        }
        HashSet hashSet = (HashSet) cachedBluetoothDevice.mMemberDevices;
        if (!hashSet.isEmpty()) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                if (((CachedBluetoothDevice) it.next()).isConnected()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final void setMemberDeviceIfNeeded(CachedBluetoothDevice cachedBluetoothDevice) {
        String str;
        String str2;
        int i = cachedBluetoothDevice.mGroupId;
        if (isValidGroupId(i)) {
            List list = this.mCachedDevices;
            int size = list.size() - 1;
            CachedBluetoothDevice cachedBluetoothDevice2 = null;
            while (true) {
                if (size < 0) {
                    break;
                }
                CachedBluetoothDevice cachedBluetoothDevice3 = (CachedBluetoothDevice) list.get(size);
                if (cachedBluetoothDevice3.mGroupId == i) {
                    if (((HashSet) cachedBluetoothDevice3.mMemberDevices).size() > 0) {
                        cachedBluetoothDevice2 = cachedBluetoothDevice3;
                        break;
                    }
                    cachedBluetoothDevice2 = cachedBluetoothDevice3;
                }
                size--;
            }
            if (cachedBluetoothDevice2 != null) {
                if (isMainHearableDevice(cachedBluetoothDevice)) {
                    cachedBluetoothDevice.addMemberDevice(cachedBluetoothDevice2);
                    Iterator it = ((HashSet) cachedBluetoothDevice2.mMemberDevices).iterator();
                    while (it.hasNext()) {
                        cachedBluetoothDevice.addMemberDevice((CachedBluetoothDevice) it.next());
                    }
                    Iterator it2 = ((HashSet) cachedBluetoothDevice2.mMemberDevices).iterator();
                    while (it2.hasNext()) {
                        ((CachedBluetoothDevice) it2.next()).mLeadDevice = null;
                        it2.remove();
                    }
                    cachedBluetoothDevice2.setName(cachedBluetoothDevice.getName());
                    cachedBluetoothDevice2.mVisible = false;
                    str = cachedBluetoothDevice.mDevice.getAddressForLogging();
                    str2 = cachedBluetoothDevice2.mDevice.getAddressForLogging();
                    this.mFilteredCachedDevices.remove(cachedBluetoothDevice2);
                } else {
                    cachedBluetoothDevice2.addMemberDevice(cachedBluetoothDevice);
                    cachedBluetoothDevice.setName(cachedBluetoothDevice2.getName());
                    cachedBluetoothDevice.mVisible = false;
                    String addressForLogging = cachedBluetoothDevice2.mDevice.getAddressForLogging();
                    str2 = cachedBluetoothDevice.mDevice.getAddressForLogging();
                    str = addressForLogging;
                }
            } else {
                str = "";
                str2 = "";
            }
            log("setMemberDeviceIfNeeded, main: " + str + ", member: " + str2);
            BluetoothDump.BtLog("CsipDeviceManager -- setMemberDeviceIfNeeded, main: " + str + ", member: " + str2);
        }
    }

    public final void updateCsipDevices() {
        HashSet hashSet = new HashSet();
        for (CachedBluetoothDevice cachedBluetoothDevice : this.mCachedDevices) {
            log("updateCsipDevices: cachedDevice = " + cachedBluetoothDevice.mDevice.getAddressForLogging() + ", groupId = " + cachedBluetoothDevice.mGroupId);
            if (!isValidGroupId(cachedBluetoothDevice.mGroupId)) {
                int baseGroupId = getBaseGroupId(cachedBluetoothDevice.mDevice);
                if (isValidGroupId(baseGroupId)) {
                    cachedBluetoothDevice.setGroupId(baseGroupId);
                    hashSet.add(Integer.valueOf(baseGroupId));
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            onGroupIdChanged(((Integer) it.next()).intValue());
        }
    }

    public boolean updateRelationshipOfGroupDevices(int i) {
        if (!isValidGroupId(i)) {
            log("The device is not group.");
            return false;
        }
        log("updateRelationshipOfGroupDevices: mCachedDevices list =" + this.mCachedDevices.toString());
        List<CachedBluetoothDevice> groupDevicesFromAllOfDevicesList = getGroupDevicesFromAllOfDevicesList(i);
        CachedBluetoothDevice preferredMainDevice = getPreferredMainDevice(i, groupDevicesFromAllOfDevicesList);
        log("The preferredMainDevice= " + preferredMainDevice + " and the groupDevicesList of groupId= " + i + " =" + groupDevicesFromAllOfDevicesList);
        return addMemberDevicesIntoMainDevice(i, preferredMainDevice);
    }
}
