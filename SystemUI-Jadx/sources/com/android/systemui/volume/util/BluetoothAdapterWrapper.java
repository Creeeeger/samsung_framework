package com.android.systemui.volume.util;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothHearingAid;
import android.bluetooth.BluetoothLeAudio;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothAdapterWrapper {
    public BluetoothA2dp a2dp;
    public final BluetoothAdapterWrapper$bluetoothProfileServiceListener$1 bluetoothProfileServiceListener;
    public BluetoothHearingAid hearingAid;
    public BluetoothHeadset hfp;
    public BluetoothLeAudio leAudio;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.volume.util.BluetoothAdapterWrapper$bluetoothProfileServiceListener$1, android.bluetooth.BluetoothProfile$ServiceListener] */
    public BluetoothAdapterWrapper(Context context) {
        ?? r0 = new BluetoothProfile.ServiceListener() { // from class: com.android.systemui.volume.util.BluetoothAdapterWrapper$bluetoothProfileServiceListener$1
            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public final void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 21) {
                            if (i == 22) {
                                BluetoothAdapterWrapper.this.leAudio = (BluetoothLeAudio) bluetoothProfile;
                                return;
                            }
                            return;
                        }
                        BluetoothAdapterWrapper.this.hearingAid = (BluetoothHearingAid) bluetoothProfile;
                        return;
                    }
                    BluetoothAdapterWrapper.this.a2dp = (BluetoothA2dp) bluetoothProfile;
                    return;
                }
                BluetoothAdapterWrapper.this.hfp = (BluetoothHeadset) bluetoothProfile;
            }

            @Override // android.bluetooth.BluetoothProfile.ServiceListener
            public final void onServiceDisconnected(int i) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 21) {
                            if (i == 22) {
                                BluetoothAdapterWrapper.this.leAudio = null;
                                return;
                            }
                            return;
                        }
                        BluetoothAdapterWrapper.this.hearingAid = null;
                        return;
                    }
                    BluetoothAdapterWrapper.this.a2dp = null;
                    return;
                }
                BluetoothAdapterWrapper.this.hfp = null;
            }
        };
        this.bluetoothProfileServiceListener = r0;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != 0) {
            defaultAdapter.getProfileProxy(context, r0, 2);
            defaultAdapter.getProfileProxy(context, r0, 1);
            defaultAdapter.getProfileProxy(context, r0, 22);
            defaultAdapter.getProfileProxy(context, r0, 21);
        }
    }

    public final String getActiveBTDeviceName() {
        BluetoothA2dp bluetoothA2dp = this.a2dp;
        String str = null;
        if (bluetoothA2dp != null) {
            BluetoothA2dpUtil.INSTANCE.getClass();
            BluetoothDevice activeDevice = bluetoothA2dp.getActiveDevice();
            if (activeDevice != null) {
                str = activeDevice.semGetAliasName();
            }
            if (str == null) {
                return "";
            }
        } else {
            BluetoothLeAudio bluetoothLeAudio = this.leAudio;
            if (bluetoothLeAudio != null) {
                BluetoothLeAudioUtil.INSTANCE.getClass();
                BluetoothCommonUtil.INSTANCE.getClass();
                BluetoothDevice bluetoothDevice = (BluetoothDevice) CollectionsKt___CollectionsKt.firstOrNull(BluetoothCommonUtil.connectedDevices(bluetoothLeAudio));
                if (bluetoothDevice != null) {
                    str = bluetoothDevice.semGetAliasName();
                }
                if (str == null) {
                    return "";
                }
            } else {
                BluetoothHearingAid bluetoothHearingAid = this.hearingAid;
                if (bluetoothHearingAid != null) {
                    BluetoothCommonUtil.INSTANCE.getClass();
                    List mapNames = BluetoothCommonUtil.mapNames(BluetoothCommonUtil.connectedDevices(bluetoothHearingAid));
                    if (!(!((ArrayList) mapNames).isEmpty())) {
                        mapNames = null;
                    }
                    if (mapNames != null) {
                        str = (String) mapNames.get(0);
                    }
                }
                if (str == null) {
                    return "";
                }
            }
        }
        return str;
    }

    public final String getBtCallDeviceName() {
        Object obj;
        BluetoothHeadset bluetoothHeadset = this.hfp;
        String str = null;
        if (bluetoothHeadset != null) {
            BluetoothHeadsetUtil.INSTANCE.getClass();
            BluetoothCommonUtil.INSTANCE.getClass();
            Iterator it = BluetoothCommonUtil.connectedDevices(bluetoothHeadset).iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (bluetoothHeadset.isAudioConnected((BluetoothDevice) obj)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
            if (bluetoothDevice != null) {
                str = bluetoothDevice.semGetAliasName();
            }
            if (str == null) {
                return "";
            }
        } else {
            BluetoothLeAudio bluetoothLeAudio = this.leAudio;
            if (bluetoothLeAudio == null) {
                return "";
            }
            BluetoothLeAudioUtil.INSTANCE.getClass();
            BluetoothCommonUtil.INSTANCE.getClass();
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) CollectionsKt___CollectionsKt.firstOrNull(BluetoothCommonUtil.connectedDevices(bluetoothLeAudio));
            if (bluetoothDevice2 != null) {
                str = bluetoothDevice2.semGetAliasName();
            }
            if (str == null) {
                return "";
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r0 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List getConnectedDevices() {
        /*
            r3 = this;
            android.bluetooth.BluetoothA2dp r0 = r3.a2dp
            r1 = 0
            if (r0 == 0) goto L1c
            com.android.systemui.volume.util.BluetoothA2dpUtil r2 = com.android.systemui.volume.util.BluetoothA2dpUtil.INSTANCE
            r2.getClass()
            java.util.List r0 = com.android.systemui.volume.util.BluetoothA2dpUtil.getOrderConnectedDevices(r0)
            if (r0 == 0) goto L1c
            boolean r2 = r0.isEmpty()
            r2 = r2 ^ 1
            if (r2 == 0) goto L19
            goto L1a
        L19:
            r0 = r1
        L1a:
            if (r0 != 0) goto L59
        L1c:
            android.bluetooth.BluetoothLeAudio r0 = r3.leAudio
            if (r0 == 0) goto L2b
            com.android.systemui.volume.util.BluetoothCommonUtil r2 = com.android.systemui.volume.util.BluetoothCommonUtil.INSTANCE
            r2.getClass()
            java.util.List r0 = com.android.systemui.volume.util.BluetoothCommonUtil.connectedDevices(r0)
            if (r0 != 0) goto L2d
        L2b:
            kotlin.collections.EmptyList r0 = kotlin.collections.EmptyList.INSTANCE
        L2d:
            boolean r2 = r0.isEmpty()
            r2 = r2 ^ 1
            if (r2 == 0) goto L36
            goto L37
        L36:
            r0 = r1
        L37:
            if (r0 != 0) goto L59
            android.bluetooth.BluetoothHearingAid r3 = r3.hearingAid
            if (r3 == 0) goto L56
            com.android.systemui.volume.util.BluetoothCommonUtil r0 = com.android.systemui.volume.util.BluetoothCommonUtil.INSTANCE
            r0.getClass()
            java.util.List r3 = com.android.systemui.volume.util.BluetoothCommonUtil.connectedDevices(r3)
            if (r3 == 0) goto L56
            boolean r0 = r3.isEmpty()
            r0 = r0 ^ 1
            if (r0 == 0) goto L51
            r1 = r3
        L51:
            if (r1 != 0) goto L54
            goto L56
        L54:
            r0 = r1
            goto L59
        L56:
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
            r0 = r3
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.util.BluetoothAdapterWrapper.getConnectedDevices():java.util.List");
    }
}
