package com.android.settingslib.bluetooth;

import android.content.ContentResolver;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceAttributes;
import android.media.AudioManager;
import android.media.audiopolicy.AudioProductStrategy;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HearingAidDeviceManager {
    public static final boolean DEBUG = BluetoothUtils.DEBUG;
    public final LocalBluetoothManager mBtManager;
    public final List mCachedDevices;
    public final ContentResolver mContentResolver;
    public final List mFilteredCachedDevices;
    public final HearingAidAudioRoutingHelper mRoutingHelper;

    public HearingAidDeviceManager(Context context, LocalBluetoothManager localBluetoothManager, List<CachedBluetoothDevice> list, List<CachedBluetoothDevice> list2) {
        this.mFilteredCachedDevices = list2;
        this.mContentResolver = context.getContentResolver();
        this.mBtManager = localBluetoothManager;
        this.mCachedDevices = list;
        this.mRoutingHelper = new HearingAidAudioRoutingHelper(context);
    }

    public final CachedBluetoothDevice findMainDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        boolean z;
        CachedBluetoothDevice cachedBluetoothDevice2;
        for (CachedBluetoothDevice cachedBluetoothDevice3 : this.mCachedDevices) {
            if (cachedBluetoothDevice3.getHiSyncId() != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z && (cachedBluetoothDevice2 = cachedBluetoothDevice3.mSubDevice) != null && cachedBluetoothDevice2.equals(cachedBluetoothDevice)) {
                return cachedBluetoothDevice3;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initHearingAidDeviceIfNeeded(com.android.settingslib.bluetooth.CachedBluetoothDevice r10) {
        /*
            r9 = this;
            android.bluetooth.BluetoothDevice r0 = r10.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothManager r9 = r9.mBtManager
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r1 = r9.mProfileManager
            r2 = 0
            if (r1 != 0) goto Lb
            goto L1c
        Lb:
            com.android.settingslib.bluetooth.HearingAidProfile r1 = r1.mHearingAidProfile
            if (r1 != 0) goto L10
            goto L1c
        L10:
            android.bluetooth.BluetoothHearingAid r1 = r1.mService
            if (r1 == 0) goto L1c
            if (r0 != 0) goto L17
            goto L1c
        L17:
            long r0 = r1.getHiSyncId(r0)
            goto L1d
        L1c:
            r0 = r2
        L1d:
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L23
            r2 = 1
            goto L24
        L23:
            r2 = 0
        L24:
            if (r2 == 0) goto L86
            com.android.settingslib.bluetooth.HearingAidInfo$Builder r2 = new com.android.settingslib.bluetooth.HearingAidInfo$Builder
            r2.<init>()
            android.bluetooth.BluetoothDevice r3 = r10.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r4 = r9.mProfileManager
            java.lang.String r5 = "Proxy not attached to HearingAidService"
            java.lang.String r6 = "HearingAidProfile"
            java.lang.String r7 = "HearingAidDeviceManager"
            r8 = -1
            if (r4 != 0) goto L39
            goto L4a
        L39:
            com.android.settingslib.bluetooth.HearingAidProfile r4 = r4.mHearingAidProfile
            if (r4 != 0) goto L43
            java.lang.String r3 = "HearingAidProfile is not supported and not ready to fetch device side"
            android.util.Log.w(r7, r3)
            goto L4a
        L43:
            android.bluetooth.BluetoothHearingAid r4 = r4.mService
            if (r4 != 0) goto L4c
            android.util.Log.w(r6, r5)
        L4a:
            r3 = r8
            goto L50
        L4c:
            int r3 = r4.getDeviceSide(r3)
        L50:
            android.util.SparseIntArray r4 = com.android.settingslib.bluetooth.HearingAidInfo.ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING
            int r3 = r4.get(r3, r8)
            r2.mSide = r3
            android.bluetooth.BluetoothDevice r3 = r10.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r9 = r9.mProfileManager
            if (r9 != 0) goto L5f
            goto L70
        L5f:
            com.android.settingslib.bluetooth.HearingAidProfile r9 = r9.mHearingAidProfile
            if (r9 != 0) goto L69
            java.lang.String r9 = "HearingAidProfile is not supported and not ready to fetch device mode"
            android.util.Log.w(r7, r9)
            goto L70
        L69:
            android.bluetooth.BluetoothHearingAid r9 = r9.mService
            if (r9 != 0) goto L72
            android.util.Log.w(r6, r5)
        L70:
            r9 = r8
            goto L76
        L72:
            int r9 = r9.getDeviceMode(r3)
        L76:
            android.util.SparseIntArray r3 = com.android.settingslib.bluetooth.HearingAidInfo.ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING
            int r9 = r3.get(r9, r8)
            r2.mMode = r9
            r2.mHiSyncId = r0
            com.android.settingslib.bluetooth.HearingAidInfo r9 = r2.build()
            r10.mHearingAidInfo = r9
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.HearingAidDeviceManager.initHearingAidDeviceIfNeeded(com.android.settingslib.bluetooth.CachedBluetoothDevice):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0097 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onActiveDeviceChanged(com.android.settingslib.bluetooth.CachedBluetoothDevice r12) {
        /*
            r11 = this;
            r0 = 21
            boolean r0 = r12.isActiveDevice(r0)
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L29
            r0 = 22
            boolean r0 = r12.isActiveDevice(r0)
            if (r0 == 0) goto L13
            goto L29
        L13:
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.CALL_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r2, r1, r12)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.MEDIA_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r2, r1, r12)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.RINGTONE_ROUTING_ATTRIBUTE
            r11.setPreferredDeviceRoutingStrategies(r2, r1, r12)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.SYSTEM_SOUNDS_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r2, r1, r12)
            goto Le4
        L29:
            com.android.settingslib.bluetooth.HearingAidAudioRoutingHelper r0 = r11.mRoutingHelper
            r0.getClass()
            com.android.settingslib.bluetooth.HearingAidInfo r3 = r12.mHearingAidInfo
            r4 = 1
            if (r3 == 0) goto L35
            r3 = r4
            goto L36
        L35:
            r3 = r2
        L36:
            if (r3 != 0) goto L39
            goto L9a
        L39:
            android.media.AudioManager r0 = r0.mAudioManager
            r3 = 2
            android.media.AudioDeviceInfo[] r0 = r0.getDevices(r3)
            int r3 = r0.length
            r5 = r2
        L42:
            if (r5 >= r3) goto L9a
            r6 = r0[r5]
            int r7 = r6.getType()
            r8 = 23
            if (r7 == r8) goto L56
            int r7 = r6.getType()
            r8 = 26
            if (r7 != r8) goto L97
        L56:
            java.lang.String r7 = r6.getAddress()
            com.android.settingslib.bluetooth.CachedBluetoothDevice r8 = r12.mSubDevice
            java.util.Set r9 = r12.mMemberDevices
            java.lang.String r10 = r12.getAddress()
            boolean r10 = r10.equals(r7)
            if (r10 != 0) goto L8e
            if (r8 == 0) goto L74
            java.lang.String r8 = r8.getAddress()
            boolean r8 = r8.equals(r7)
            if (r8 != 0) goto L8e
        L74:
            java.util.HashSet r9 = (java.util.HashSet) r9
            boolean r8 = r9.isEmpty()
            if (r8 != 0) goto L8c
            java.util.stream.Stream r8 = r9.stream()
            com.android.settingslib.bluetooth.HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0 r9 = new com.android.settingslib.bluetooth.HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0
            r9.<init>()
            boolean r7 = r8.anyMatch(r9)
            if (r7 == 0) goto L8c
            goto L8e
        L8c:
            r7 = r2
            goto L8f
        L8e:
            r7 = r4
        L8f:
            if (r7 == 0) goto L97
            android.media.AudioDeviceAttributes r1 = new android.media.AudioDeviceAttributes
            r1.<init>(r6)
            goto L9a
        L97:
            int r5 = r5 + 1
            goto L42
        L9a:
            if (r1 != 0) goto Lb6
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r0 = "Can not find expected AudioDeviceAttributes for hearing device: "
            r11.<init>(r0)
            android.bluetooth.BluetoothDevice r12 = r12.mDevice
            java.lang.String r12 = r12.getAnonymizedAddress()
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            java.lang.String r12 = "HearingAidDeviceManager"
            android.util.Log.w(r12, r11)
            goto Le4
        Lb6:
            java.lang.String r12 = "hearing_aid_call_routing"
            android.content.ContentResolver r0 = r11.mContentResolver
            int r12 = android.provider.Settings.Secure.getInt(r0, r12, r2)
            java.lang.String r3 = "hearing_aid_media_routing"
            int r3 = android.provider.Settings.Secure.getInt(r0, r3, r2)
            java.lang.String r4 = "hearing_aid_ringtone_routing"
            int r4 = android.provider.Settings.Secure.getInt(r0, r4, r2)
            java.lang.String r5 = "hearing_aid_system_sounds_routing"
            int r0 = android.provider.Settings.Secure.getInt(r0, r5, r2)
            int[] r2 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.CALL_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r12, r1, r2)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.MEDIA_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r3, r1, r12)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.RINGTONE_ROUTING_ATTRIBUTE
            r11.setPreferredDeviceRoutingStrategies(r4, r1, r12)
            int[] r12 = com.android.settingslib.bluetooth.HearingAidAudioRoutingConstants.SYSTEM_SOUNDS_ROUTING_ATTRIBUTES
            r11.setPreferredDeviceRoutingStrategies(r0, r1, r12)
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.HearingAidDeviceManager.onActiveDeviceChanged(com.android.settingslib.bluetooth.CachedBluetoothDevice):void");
    }

    public void onHiSyncIdChanged(long j) {
        CachedBluetoothDevice cachedBluetoothDevice;
        List list = this.mCachedDevices;
        int size = list.size() - 1;
        int i = -1;
        while (size >= 0) {
            CachedBluetoothDevice cachedBluetoothDevice2 = (CachedBluetoothDevice) list.get(size);
            if (cachedBluetoothDevice2.getHiSyncId() == j && !cachedBluetoothDevice2.getProfiles().stream().anyMatch(new HearingAidDeviceManager$$ExternalSyntheticLambda0())) {
                if (i == -1) {
                    i = size;
                } else {
                    if (cachedBluetoothDevice2.isConnected()) {
                        cachedBluetoothDevice = (CachedBluetoothDevice) list.get(i);
                        size = i;
                    } else {
                        cachedBluetoothDevice2 = (CachedBluetoothDevice) list.get(i);
                        cachedBluetoothDevice = cachedBluetoothDevice2;
                    }
                    cachedBluetoothDevice2.mSubDevice = cachedBluetoothDevice;
                    List list2 = this.mFilteredCachedDevices;
                    if (list2 != null) {
                        list2.remove(list.get(size));
                    }
                    list.remove(size);
                    String str = "onHiSyncIdChanged: removed from UI device =" + cachedBluetoothDevice + ", with hiSyncId=" + j;
                    if (DEBUG) {
                        Log.d("HearingAidDeviceManager", str);
                    }
                    this.mBtManager.mEventManager.dispatchDeviceRemoved(cachedBluetoothDevice);
                    return;
                }
            }
            size--;
        }
    }

    public final boolean onProfileConnectionStateChangedIfProcessed(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        LocalBluetoothManager localBluetoothManager = this.mBtManager;
        if (i != 0) {
            if (i == 2) {
                onHiSyncIdChanged(cachedBluetoothDevice.getHiSyncId());
                CachedBluetoothDevice findMainDevice = findMainDevice(cachedBluetoothDevice);
                if (findMainDevice != null) {
                    if (!findMainDevice.isConnected()) {
                        localBluetoothManager.mEventManager.dispatchDeviceRemoved(findMainDevice);
                        findMainDevice.switchSubDeviceContent();
                        localBluetoothManager.mEventManager.dispatchDeviceAdded(findMainDevice);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        CachedBluetoothDevice findMainDevice2 = findMainDevice(cachedBluetoothDevice);
        if (cachedBluetoothDevice.mUnpairing || findMainDevice2 != null) {
            return true;
        }
        CachedBluetoothDevice cachedBluetoothDevice2 = cachedBluetoothDevice.mSubDevice;
        if (cachedBluetoothDevice2 != null && cachedBluetoothDevice2.isConnected()) {
            localBluetoothManager.mEventManager.dispatchDeviceRemoved(cachedBluetoothDevice);
            cachedBluetoothDevice.switchSubDeviceContent();
            localBluetoothManager.mEventManager.dispatchDeviceAdded(cachedBluetoothDevice);
            return true;
        }
        return false;
    }

    public final void setPreferredDeviceRoutingStrategies(int i, AudioDeviceAttributes audioDeviceAttributes, int[] iArr) {
        boolean removePreferredDeviceForStrategies;
        boolean removePreferredDeviceForStrategies2;
        HearingAidAudioRoutingHelper hearingAidAudioRoutingHelper = this.mRoutingHelper;
        hearingAidAudioRoutingHelper.getClass();
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(new AudioAttributes.Builder().setUsage(i2).build());
        }
        List<AudioProductStrategy> audioProductStrategies = hearingAidAudioRoutingHelper.getAudioProductStrategies();
        ArrayList arrayList2 = new ArrayList();
        for (AudioProductStrategy audioProductStrategy : audioProductStrategies) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (audioProductStrategy.supportsAudioAttributes((AudioAttributes) it.next())) {
                    arrayList2.add(audioProductStrategy);
                }
            }
        }
        List list = (List) arrayList2.stream().distinct().collect(Collectors.toList());
        if (i != 0) {
            boolean z = true;
            AudioManager audioManager = hearingAidAudioRoutingHelper.mAudioManager;
            if (i != 1) {
                if (i == 2) {
                    removePreferredDeviceForStrategies2 = hearingAidAudioRoutingHelper.removePreferredDeviceForStrategies(list);
                    AudioDeviceAttributes audioDeviceAttributes2 = HearingAidAudioRoutingConstants.DEVICE_SPEAKER_OUT;
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        z &= audioManager.setPreferredDeviceForStrategy((AudioProductStrategy) it2.next(), audioDeviceAttributes2);
                    }
                } else {
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unexpected routingValue: ", i));
                }
            } else {
                removePreferredDeviceForStrategies2 = hearingAidAudioRoutingHelper.removePreferredDeviceForStrategies(list);
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    z &= audioManager.setPreferredDeviceForStrategy((AudioProductStrategy) it3.next(), audioDeviceAttributes);
                }
            }
            removePreferredDeviceForStrategies = removePreferredDeviceForStrategies2 & z;
        } else {
            removePreferredDeviceForStrategies = hearingAidAudioRoutingHelper.removePreferredDeviceForStrategies(list);
        }
        if (!removePreferredDeviceForStrategies) {
            Log.w("HearingAidDeviceManager", "routingStrategies: " + list.toString() + "routingValue: " + i + " fail to configure AudioProductStrategy");
        }
    }

    public final boolean setSubDeviceIfNeeded(CachedBluetoothDevice cachedBluetoothDevice) {
        boolean z;
        CachedBluetoothDevice cachedBluetoothDevice2;
        long hiSyncId = cachedBluetoothDevice.getHiSyncId();
        if (hiSyncId != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            List list = this.mCachedDevices;
            int size = list.size();
            while (true) {
                size--;
                if (size >= 0) {
                    cachedBluetoothDevice2 = (CachedBluetoothDevice) list.get(size);
                    if (cachedBluetoothDevice2.getHiSyncId() == hiSyncId) {
                        break;
                    }
                } else {
                    cachedBluetoothDevice2 = null;
                    break;
                }
            }
            if (cachedBluetoothDevice2 != null) {
                cachedBluetoothDevice2.mSubDevice = cachedBluetoothDevice;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateHearingAidsDevices() {
        /*
            r13 = this;
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            java.util.List r1 = r13.mCachedDevices
            java.util.Iterator r1 = r1.iterator()
        Lb:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto Lb4
            java.lang.Object r2 = r1.next()
            com.android.settingslib.bluetooth.CachedBluetoothDevice r2 = (com.android.settingslib.bluetooth.CachedBluetoothDevice) r2
            long r3 = r2.getHiSyncId()
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            r4 = 1
            r7 = 0
            if (r3 == 0) goto L25
            r3 = r4
            goto L26
        L25:
            r3 = r7
        L26:
            if (r3 != 0) goto Lb
            android.bluetooth.BluetoothDevice r3 = r2.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothManager r8 = r13.mBtManager
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r9 = r8.mProfileManager
            if (r9 != 0) goto L31
            goto L42
        L31:
            com.android.settingslib.bluetooth.HearingAidProfile r9 = r9.mHearingAidProfile
            if (r9 != 0) goto L36
            goto L42
        L36:
            android.bluetooth.BluetoothHearingAid r9 = r9.mService
            if (r9 == 0) goto L42
            if (r3 != 0) goto L3d
            goto L42
        L3d:
            long r9 = r9.getHiSyncId(r3)
            goto L43
        L42:
            r9 = r5
        L43:
            int r3 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r3 == 0) goto L48
            goto L49
        L48:
            r4 = r7
        L49:
            if (r4 == 0) goto Lb
            com.android.settingslib.bluetooth.HearingAidInfo$Builder r3 = new com.android.settingslib.bluetooth.HearingAidInfo$Builder
            r3.<init>()
            android.bluetooth.BluetoothDevice r4 = r2.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r5 = r8.mProfileManager
            java.lang.String r6 = "Proxy not attached to HearingAidService"
            java.lang.String r7 = "HearingAidProfile"
            java.lang.String r11 = "HearingAidDeviceManager"
            r12 = -1
            if (r5 != 0) goto L5e
            goto L6f
        L5e:
            com.android.settingslib.bluetooth.HearingAidProfile r5 = r5.mHearingAidProfile
            if (r5 != 0) goto L68
            java.lang.String r4 = "HearingAidProfile is not supported and not ready to fetch device side"
            android.util.Log.w(r11, r4)
            goto L6f
        L68:
            android.bluetooth.BluetoothHearingAid r5 = r5.mService
            if (r5 != 0) goto L71
            android.util.Log.w(r7, r6)
        L6f:
            r4 = r12
            goto L75
        L71:
            int r4 = r5.getDeviceSide(r4)
        L75:
            android.util.SparseIntArray r5 = com.android.settingslib.bluetooth.HearingAidInfo.ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING
            int r4 = r5.get(r4, r12)
            r3.mSide = r4
            android.bluetooth.BluetoothDevice r4 = r2.mDevice
            com.android.settingslib.bluetooth.LocalBluetoothProfileManager r5 = r8.mProfileManager
            if (r5 != 0) goto L84
            goto L95
        L84:
            com.android.settingslib.bluetooth.HearingAidProfile r5 = r5.mHearingAidProfile
            if (r5 != 0) goto L8e
            java.lang.String r4 = "HearingAidProfile is not supported and not ready to fetch device mode"
            android.util.Log.w(r11, r4)
            goto L95
        L8e:
            android.bluetooth.BluetoothHearingAid r5 = r5.mService
            if (r5 != 0) goto L97
            android.util.Log.w(r7, r6)
        L95:
            r4 = r12
            goto L9b
        L97:
            int r4 = r5.getDeviceMode(r4)
        L9b:
            android.util.SparseIntArray r5 = com.android.settingslib.bluetooth.HearingAidInfo.ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING
            int r4 = r5.get(r4, r12)
            r3.mMode = r4
            r3.mHiSyncId = r9
            com.android.settingslib.bluetooth.HearingAidInfo r3 = r3.build()
            r2.mHearingAidInfo = r3
            java.lang.Long r2 = java.lang.Long.valueOf(r9)
            r0.add(r2)
            goto Lb
        Lb4:
            java.util.Iterator r0 = r0.iterator()
        Lb8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lcc
            java.lang.Object r1 = r0.next()
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            r13.onHiSyncIdChanged(r1)
            goto Lb8
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.HearingAidDeviceManager.updateHearingAidsDevices():void");
    }

    public HearingAidDeviceManager(Context context, LocalBluetoothManager localBluetoothManager, List<CachedBluetoothDevice> list, HearingAidAudioRoutingHelper hearingAidAudioRoutingHelper) {
        this.mContentResolver = context.getContentResolver();
        this.mBtManager = localBluetoothManager;
        this.mCachedDevices = list;
        this.mRoutingHelper = hearingAidAudioRoutingHelper;
        this.mFilteredCachedDevices = localBluetoothManager.mCachedDeviceManager.mFilteredCachedDevices;
    }
}
