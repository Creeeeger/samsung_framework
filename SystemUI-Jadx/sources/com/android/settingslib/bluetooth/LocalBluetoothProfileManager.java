package com.android.settingslib.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothUuid;
import android.content.Context;
import android.content.Intent;
import android.os.ParcelUuid;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.settingslib.bluetooth.BluetoothEventManager;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.samsung.android.settingslib.bluetooth.SppProfile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LocalBluetoothProfileManager {
    public static final boolean DEBUG = BluetoothUtils.DEBUG;
    public A2dpProfile mA2dpProfile;
    public final Context mContext;
    public CsipSetCoordinatorProfile mCsipSetCoordinatorProfile;
    public final CachedBluetoothDeviceManager mDeviceManager;
    public final BluetoothEventManager mEventManager;
    public HapClientProfile mHapClientProfile;
    public HeadsetProfile mHeadsetProfile;
    public HearingAidProfile mHearingAidProfile;
    public HidProfile mHidProfile;
    public LocalBluetoothLeBroadcast mLeAudioBroadcast;
    public LocalBluetoothLeBroadcastAssistant mLeAudioBroadcastAssistant;
    public LeAudioProfile mLeAudioProfile;
    public final LocalBluetoothAdapter mLocalAdapter;
    public MapClientProfile mMapClientProfile;
    public MapProfile mMapProfile;
    public OppProfile mOppProfile;
    public final PanProfile mPanProfile;
    public PbapServerProfile mPbapProfile;
    public final Map mProfileNameMap;
    public SapProfile mSapProfile;
    public final Collection mServiceListeners;
    public SppProfile mSppProfile;
    public VolumeControlProfile mVolumeControlProfile;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PanStateChangedHandler extends StateChangedHandler {
        public PanStateChangedHandler(LocalBluetoothProfileManager localBluetoothProfileManager, LocalBluetoothProfile localBluetoothProfile) {
            super(localBluetoothProfile);
        }

        @Override // com.android.settingslib.bluetooth.LocalBluetoothProfileManager.StateChangedHandler, com.android.settingslib.bluetooth.BluetoothEventManager.Handler
        public final void onReceive(Context context, Intent intent, BluetoothDevice bluetoothDevice) {
            PanProfile panProfile = (PanProfile) this.mProfile;
            int intExtra = intent.getIntExtra("android.bluetooth.pan.extra.LOCAL_ROLE", 0);
            HashMap hashMap = panProfile.mDeviceRoleMap;
            if (hashMap != null) {
                if (panProfile.getConnectionStatus(bluetoothDevice) == 0) {
                    hashMap.remove(bluetoothDevice);
                } else {
                    hashMap.put(bluetoothDevice, Integer.valueOf(intExtra));
                }
            }
            super.onReceive(context, intent, bluetoothDevice);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ServiceListener {
        void onServiceConnected();

        void onServiceDisconnected();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class StateChangedHandler implements BluetoothEventManager.Handler {
        public final LocalBluetoothProfile mProfile;

        public StateChangedHandler(LocalBluetoothProfile localBluetoothProfile) {
            this.mProfile = localBluetoothProfile;
        }

        /* JADX WARN: Removed duplicated region for block: B:82:0x01af  */
        @Override // com.android.settingslib.bluetooth.BluetoothEventManager.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onReceive(android.content.Context r18, android.content.Intent r19, android.bluetooth.BluetoothDevice r20) {
            /*
                Method dump skipped, instructions count: 1218
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.LocalBluetoothProfileManager.StateChangedHandler.onReceive(android.content.Context, android.content.Intent, android.bluetooth.BluetoothDevice):void");
        }
    }

    public LocalBluetoothProfileManager(Context context, LocalBluetoothAdapter localBluetoothAdapter, CachedBluetoothDeviceManager cachedBluetoothDeviceManager, BluetoothEventManager bluetoothEventManager) {
        HashMap hashMap = new HashMap();
        this.mProfileNameMap = hashMap;
        this.mServiceListeners = new CopyOnWriteArrayList();
        this.mContext = context;
        this.mDeviceManager = cachedBluetoothDeviceManager;
        this.mEventManager = bluetoothEventManager;
        localBluetoothAdapter.mProfileManager = this;
        bluetoothEventManager.mProfileManager = this;
        this.mLocalAdapter = localBluetoothAdapter;
        if (this.mPanProfile == null) {
            PanProfile panProfile = new PanProfile(context, cachedBluetoothDeviceManager, this);
            this.mPanProfile = panProfile;
            bluetoothEventManager.addProfileHandler("android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED", new PanStateChangedHandler(this, panProfile));
            hashMap.put("PAN", panProfile);
        } else {
            Log.w("LocalBluetoothProfileManager", "Warning: PAN profile was previously added.");
        }
        if (this.mSapProfile == null) {
            SapProfile sapProfile = new SapProfile(context, cachedBluetoothDeviceManager, this);
            this.mSapProfile = sapProfile;
            addProfile(sapProfile, "SAP", "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED");
        } else {
            Log.w("LocalBluetoothProfileManager", "Warning: SAP profile was previously added.");
        }
        if (DEBUG) {
            Log.d("LocalBluetoothProfileManager", "LocalBluetoothProfileManager construction complete");
        }
    }

    public final void addProfile(LocalBluetoothProfile localBluetoothProfile, String str, String str2) {
        this.mEventManager.addProfileHandler(str2, new StateChangedHandler(localBluetoothProfile));
        ((HashMap) this.mProfileNameMap).put(str, localBluetoothProfile);
    }

    public final void callServiceConnectedListeners() {
        Iterator it = new ArrayList(this.mServiceListeners).iterator();
        while (it.hasNext()) {
            ((ServiceListener) it.next()).onServiceConnected();
        }
    }

    public final void callServiceDisconnectedListeners() {
        Iterator it = new ArrayList(this.mServiceListeners).iterator();
        while (it.hasNext()) {
            ((ServiceListener) it.next()).onServiceDisconnected();
        }
    }

    public HidDeviceProfile getHidDeviceProfile() {
        return null;
    }

    public HidProfile getHidProfile() {
        return this.mHidProfile;
    }

    public final void updateLocalProfiles() {
        boolean z;
        Log.d("LocalBluetoothProfileManager", "updateLocalProfiles :: ");
        List supportedProfiles = BluetoothAdapter.getDefaultAdapter().getSupportedProfiles();
        boolean isEmpty = CollectionUtils.isEmpty(supportedProfiles);
        boolean z2 = DEBUG;
        if (isEmpty) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "supportedList is null");
                return;
            }
            return;
        }
        A2dpProfile a2dpProfile = this.mA2dpProfile;
        boolean z3 = true;
        CachedBluetoothDeviceManager cachedBluetoothDeviceManager = this.mDeviceManager;
        Context context = this.mContext;
        if (a2dpProfile == null && supportedProfiles.contains(2)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local A2DP profile");
            }
            A2dpProfile a2dpProfile2 = new A2dpProfile(context, cachedBluetoothDeviceManager, this);
            this.mA2dpProfile = a2dpProfile2;
            addProfile(a2dpProfile2, "A2DP", "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        } else {
            z = false;
        }
        if (this.mHeadsetProfile == null && supportedProfiles.contains(1)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local HEADSET profile");
            }
            HeadsetProfile headsetProfile = new HeadsetProfile(context, cachedBluetoothDeviceManager, this);
            this.mHeadsetProfile = headsetProfile;
            addProfile(headsetProfile, "HEADSET", "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mMapClientProfile == null && supportedProfiles.contains(18)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local MAP CLIENT profile");
            }
            MapClientProfile mapClientProfile = new MapClientProfile(context, cachedBluetoothDeviceManager, this);
            this.mMapClientProfile = mapClientProfile;
            addProfile(mapClientProfile, "MAP Client", "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mMapProfile == null && supportedProfiles.contains(9)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local MAP profile");
            }
            MapProfile mapProfile = new MapProfile(context, cachedBluetoothDeviceManager, this);
            this.mMapProfile = mapProfile;
            addProfile(mapProfile, "MAP", "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED");
        }
        OppProfile oppProfile = this.mOppProfile;
        Map map = this.mProfileNameMap;
        if (oppProfile == null && supportedProfiles.contains(20)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local OPP profile");
            }
            OppProfile oppProfile2 = new OppProfile();
            this.mOppProfile = oppProfile2;
            ((HashMap) map).put("OPP", oppProfile2);
        }
        if (this.mHearingAidProfile == null && supportedProfiles.contains(21)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local Hearing Aid profile");
            }
            HearingAidProfile hearingAidProfile = new HearingAidProfile(context, cachedBluetoothDeviceManager, this);
            this.mHearingAidProfile = hearingAidProfile;
            addProfile(hearingAidProfile, "HearingAid", "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mHapClientProfile == null && supportedProfiles.contains(28)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local HAP_CLIENT profile");
            }
            HapClientProfile hapClientProfile = new HapClientProfile(context, cachedBluetoothDeviceManager, this);
            this.mHapClientProfile = hapClientProfile;
            addProfile(hapClientProfile, "HapClient", "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED");
        }
        if (this.mHidProfile == null && supportedProfiles.contains(4)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local HID_HOST profile");
            }
            HidProfile hidProfile = new HidProfile(context, cachedBluetoothDeviceManager, this);
            this.mHidProfile = hidProfile;
            addProfile(hidProfile, PeripheralConstants.ConnectionProfile.HID, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mPbapProfile == null && supportedProfiles.contains(6)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local PBAP profile");
            }
            PbapServerProfile pbapServerProfile = new PbapServerProfile(context);
            this.mPbapProfile = pbapServerProfile;
            addProfile(pbapServerProfile, PbapServerProfile.NAME, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mSapProfile == null && supportedProfiles.contains(10)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local SAP profile");
            }
            SapProfile sapProfile = new SapProfile(context, cachedBluetoothDeviceManager, this);
            this.mSapProfile = sapProfile;
            addProfile(sapProfile, "SAP", "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED");
            z = true;
        }
        if (this.mSppProfile == null) {
            Log.d("LocalBluetoothProfileManager", "Adding local Spp profile");
            SppProfile sppProfile = new SppProfile(context, this.mLocalAdapter, cachedBluetoothDeviceManager, this);
            this.mSppProfile = sppProfile;
            addProfile(sppProfile, PeripheralConstants.ConnectionProfile.SPP, "com.samsung.bluetooth.action.GEAR_CONNECTION_STATE_CHANGED");
        } else {
            Log.w("LocalBluetoothProfileManager", "updateLocalProfiles :: Spp profile was created already ");
            z3 = z;
        }
        if (this.mVolumeControlProfile == null && supportedProfiles.contains(23)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local Volume Control profile");
            }
            VolumeControlProfile volumeControlProfile = new VolumeControlProfile(context, cachedBluetoothDeviceManager, this);
            this.mVolumeControlProfile = volumeControlProfile;
            addProfile(volumeControlProfile, "VCP", "android.bluetooth.volume-control.profile.action.CONNECTION_STATE_CHANGED");
        }
        if (this.mLeAudioProfile == null && supportedProfiles.contains(22)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local LE_AUDIO profile");
            }
            LeAudioProfile leAudioProfile = new LeAudioProfile(context, cachedBluetoothDeviceManager, this);
            this.mLeAudioProfile = leAudioProfile;
            addProfile(leAudioProfile, "LE_AUDIO", "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED");
        }
        if (this.mLeAudioBroadcast == null && supportedProfiles.contains(26)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local LE_AUDIO_BROADCAST profile");
            }
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = new LocalBluetoothLeBroadcast(context, this);
            this.mLeAudioBroadcast = localBluetoothLeBroadcast;
            ((HashMap) map).put("LE_AUDIO_BROADCAST", localBluetoothLeBroadcast);
        }
        if (this.mLeAudioBroadcastAssistant == null && supportedProfiles.contains(29)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local LE_AUDIO_BROADCAST_ASSISTANT profile");
            }
            LocalBluetoothLeBroadcastAssistant localBluetoothLeBroadcastAssistant = new LocalBluetoothLeBroadcastAssistant(context, cachedBluetoothDeviceManager, this);
            this.mLeAudioBroadcastAssistant = localBluetoothLeBroadcastAssistant;
            addProfile(localBluetoothLeBroadcastAssistant, "LE_AUDIO_BROADCAST", "android.bluetooth.action.CONNECTION_STATE_CHANGED");
        }
        if (this.mCsipSetCoordinatorProfile == null && supportedProfiles.contains(25)) {
            if (z2) {
                Log.d("LocalBluetoothProfileManager", "Adding local CSIP set coordinator profile");
            }
            CsipSetCoordinatorProfile csipSetCoordinatorProfile = new CsipSetCoordinatorProfile(context, cachedBluetoothDeviceManager, this);
            this.mCsipSetCoordinatorProfile = csipSetCoordinatorProfile;
            addProfile(csipSetCoordinatorProfile, "CSIP Set Coordinator", "android.bluetooth.action.CSIS_CONNECTION_STATE_CHANGED");
        }
        if (z3) {
            this.mEventManager.registerProfileIntentReceiver();
        }
    }

    public final synchronized void updateProfiles(ParcelUuid[] parcelUuidArr, ParcelUuid[] parcelUuidArr2, Collection collection, Collection collection2, CachedBluetoothDevice cachedBluetoothDevice) {
        HidProfile hidProfile;
        SppProfile sppProfile;
        HearingAidProfile hearingAidProfile;
        PanProfile panProfile;
        OppProfile oppProfile;
        A2dpProfile a2dpProfile;
        LeAudioProfile leAudioProfile;
        collection2.clear();
        collection2.addAll(collection);
        boolean z = DEBUG;
        if (z) {
            Log.d("LocalBluetoothProfileManager", "Current Profiles" + collection.toString());
        }
        collection.clear();
        if (ArrayUtils.contains(parcelUuidArr, BluetoothUuid.LE_AUDIO) && (leAudioProfile = this.mLeAudioProfile) != null) {
            collection.add(leAudioProfile);
            collection2.remove(this.mLeAudioProfile);
        }
        if (this.mHeadsetProfile != null && ((ArrayUtils.contains(parcelUuidArr2, BluetoothUuid.HSP_AG) && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HSP)) || (ArrayUtils.contains(parcelUuidArr2, BluetoothUuid.HFP_AG) && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HFP)))) {
            collection.add(this.mHeadsetProfile);
            collection2.remove(this.mHeadsetProfile);
        }
        if (BluetoothUuid.containsAnyUuid(parcelUuidArr, A2dpProfile.SINK_UUIDS) && (a2dpProfile = this.mA2dpProfile) != null) {
            collection.add(a2dpProfile);
            collection2.remove(this.mA2dpProfile);
        }
        BluetoothUuid.containsAnyUuid(parcelUuidArr, A2dpSinkProfile.SRC_UUIDS);
        if (ArrayUtils.contains(parcelUuidArr, BluetoothUuid.OBEX_OBJECT_PUSH) && (oppProfile = this.mOppProfile) != null) {
            collection.add(oppProfile);
            collection2.remove(this.mOppProfile);
        }
        if ((ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HID) || ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HOGP)) && (hidProfile = this.mHidProfile) != null) {
            collection.add(hidProfile);
            collection2.remove(this.mHidProfile);
        }
        if (ArrayUtils.contains(parcelUuidArr, BluetoothUuid.NAP) && (panProfile = this.mPanProfile) != null) {
            collection.add(panProfile);
            collection2.remove(this.mPanProfile);
        }
        if (ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HEARING_AID) && (hearingAidProfile = this.mHearingAidProfile) != null) {
            collection.add(hearingAidProfile);
            collection2.remove(this.mHearingAidProfile);
        }
        if (this.mHapClientProfile != null && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HAS)) {
            collection.add(this.mHapClientProfile);
            collection2.remove(this.mHapClientProfile);
        }
        if (this.mVolumeControlProfile != null && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.VOLUME_CONTROL)) {
            collection.add(this.mVolumeControlProfile);
            collection2.remove(this.mVolumeControlProfile);
        }
        if (this.mCsipSetCoordinatorProfile != null && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.COORDINATED_SET)) {
            collection.add(this.mCsipSetCoordinatorProfile);
            collection2.remove(this.mCsipSetCoordinatorProfile);
        }
        if (this.mLeAudioBroadcastAssistant != null && ArrayUtils.contains(parcelUuidArr, BluetoothUuid.BASS)) {
            collection.add(this.mLeAudioBroadcastAssistant);
            collection2.remove(this.mLeAudioBroadcastAssistant);
        }
        if (cachedBluetoothDevice != null && cachedBluetoothDevice.getDeviceType() != 0 && (sppProfile = this.mSppProfile) != null) {
            collection.add(sppProfile);
            collection2.remove(this.mSppProfile);
        }
        if (collection2.contains(this.mSapProfile) && this.mSapProfile != null) {
            Log.d("LocalBluetoothProfileManager", "Adding back SAP profile");
            collection.add(this.mSapProfile);
            collection2.remove(this.mSapProfile);
        }
        if (collection2.contains(this.mMapProfile) && this.mMapProfile != null) {
            Log.d("LocalBluetoothProfileManager", "Adding back MAP profile");
            collection.add(this.mMapProfile);
            collection2.remove(this.mMapProfile);
        }
        if (collection2.contains(this.mPbapProfile) && this.mPbapProfile != null) {
            Log.d("LocalBluetoothProfileManager", "Adding back PBAP profile");
            collection.add(this.mPbapProfile);
            collection2.remove(this.mPbapProfile);
        }
        if (z) {
            Log.d("LocalBluetoothProfileManager", "New Profiles" + collection.toString());
        }
    }
}
