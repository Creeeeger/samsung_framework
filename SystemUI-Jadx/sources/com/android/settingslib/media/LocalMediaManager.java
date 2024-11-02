package com.android.settingslib.media;

import android.app.Notification;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2Manager;
import android.media.RouteListingPreference;
import android.media.RoutingSessionInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.bluetooth.A2dpProfile;
import com.android.settingslib.bluetooth.BluetoothCallback;
import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import com.android.settingslib.bluetooth.HearingAidProfile;
import com.android.settingslib.bluetooth.LeAudioProfile;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LocalMediaManager implements BluetoothCallback {
    AudioManager mAudioManager;
    BluetoothAdapter mBluetoothAdapter;
    public final Collection mCallbacks;
    public final Context mContext;
    MediaDevice mCurrentConnectedDevice;
    DeviceAttributeChangeCallback mDeviceAttributeChangeCallback;
    List<MediaDevice> mDisconnectedMediaDevices;
    public final InfoMediaManager mInfoMediaManager;
    public final LocalBluetoothManager mLocalBluetoothManager;
    final MediaDeviceCallback mMediaDeviceCallback;
    List<MediaDevice> mMediaDevices;
    public final Object mMediaDevicesLock;
    public MediaDevice mOnTransferBluetoothDevice;
    public final String mPackageName;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    class DeviceAttributeChangeCallback implements CachedBluetoothDevice.Callback {
        public DeviceAttributeChangeCallback() {
        }

        @Override // com.android.settingslib.bluetooth.CachedBluetoothDevice.Callback
        public final void onDeviceAttributesChanged() {
            LocalMediaManager localMediaManager = LocalMediaManager.this;
            MediaDevice mediaDevice = localMediaManager.mOnTransferBluetoothDevice;
            if (mediaDevice != null && !((BluetoothMediaDevice) mediaDevice).mCachedDevice.isBusy() && !localMediaManager.mOnTransferBluetoothDevice.isConnected()) {
                localMediaManager.mOnTransferBluetoothDevice.mState = 3;
                localMediaManager.mOnTransferBluetoothDevice = null;
                Iterator it = ((CopyOnWriteArrayList) localMediaManager.getCallbacks()).iterator();
                while (it.hasNext()) {
                    ((DeviceCallback) it.next()).onRequestFailed(0);
                }
            }
            Iterator it2 = ((CopyOnWriteArrayList) localMediaManager.getCallbacks()).iterator();
            while (it2.hasNext()) {
                ((DeviceCallback) it2.next()).onDeviceAttributesChanged();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaDeviceCallback {
        public MediaDeviceCallback() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        
            if (r4 != false) goto L30;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final com.android.settingslib.media.BluetoothMediaDevice getMutingExpectedDevice() {
            /*
                r10 = this;
                com.android.settingslib.media.LocalMediaManager r10 = com.android.settingslib.media.LocalMediaManager.this
                android.bluetooth.BluetoothAdapter r0 = r10.mBluetoothAdapter
                r1 = 0
                if (r0 == 0) goto L91
                android.media.AudioManager r0 = r10.mAudioManager
                android.media.AudioDeviceAttributes r0 = r0.getMutingExpectedDevice()
                if (r0 != 0) goto L11
                goto L91
            L11:
                android.bluetooth.BluetoothAdapter r0 = r10.mBluetoothAdapter
                java.util.List r0 = r0.getMostRecentlyConnectedDevices()
                com.android.settingslib.bluetooth.LocalBluetoothManager r2 = r10.mLocalBluetoothManager
                com.android.settingslib.bluetooth.CachedBluetoothDeviceManager r2 = r2.mCachedDeviceManager
                java.util.Iterator r0 = r0.iterator()
            L1f:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L90
                java.lang.Object r3 = r0.next()
                android.bluetooth.BluetoothDevice r3 = (android.bluetooth.BluetoothDevice) r3
                com.android.settingslib.bluetooth.CachedBluetoothDevice r6 = r2.findDevice(r3)
                r3 = 0
                if (r6 == 0) goto L67
                int r4 = r6.mBondState
                r5 = 12
                if (r4 != r5) goto L67
                boolean r4 = r6.isConnected()
                if (r4 != 0) goto L67
                java.util.List r4 = r6.getConnectableProfiles()
                java.util.ArrayList r4 = (java.util.ArrayList) r4
                java.util.Iterator r4 = r4.iterator()
            L48:
                boolean r5 = r4.hasNext()
                r7 = 1
                if (r5 == 0) goto L63
                java.lang.Object r5 = r4.next()
                com.android.settingslib.bluetooth.LocalBluetoothProfile r5 = (com.android.settingslib.bluetooth.LocalBluetoothProfile) r5
                boolean r8 = r5 instanceof com.android.settingslib.bluetooth.A2dpProfile
                if (r8 != 0) goto L61
                boolean r8 = r5 instanceof com.android.settingslib.bluetooth.HearingAidProfile
                if (r8 != 0) goto L61
                boolean r5 = r5 instanceof com.android.settingslib.bluetooth.LeAudioProfile
                if (r5 == 0) goto L48
            L61:
                r4 = r7
                goto L64
            L63:
                r4 = r3
            L64:
                if (r4 == 0) goto L67
                goto L68
            L67:
                r7 = r3
            L68:
                if (r7 == 0) goto L1f
                android.media.AudioManager r4 = r10.mAudioManager
                android.media.AudioDeviceAttributes r4 = r4.getMutingExpectedDevice()
                if (r4 == 0) goto L81
                if (r6 != 0) goto L75
                goto L81
            L75:
                java.lang.String r3 = r6.getAddress()
                java.lang.String r4 = r4.getAddress()
                boolean r3 = r3.equals(r4)
            L81:
                if (r3 == 0) goto L1f
                com.android.settingslib.media.BluetoothMediaDevice r0 = new com.android.settingslib.media.BluetoothMediaDevice
                android.content.Context r5 = r10.mContext
                r7 = 0
                r8 = 0
                java.lang.String r9 = r10.mPackageName
                r4 = r0
                r4.<init>(r5, r6, r7, r8, r9)
                return r0
            L90:
                return r1
            L91:
                java.lang.String r10 = "LocalMediaManager"
                java.lang.String r0 = "BluetoothAdapter is null or muting expected device not exist"
                android.util.Log.w(r10, r0)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.media.LocalMediaManager.MediaDeviceCallback.getMutingExpectedDevice():com.android.settingslib.media.BluetoothMediaDevice");
        }
    }

    public LocalMediaManager(Context context, String str, Notification notification2) {
        this.mCallbacks = new CopyOnWriteArrayList();
        this.mMediaDevicesLock = new Object();
        this.mMediaDeviceCallback = new MediaDeviceCallback();
        this.mMediaDevices = new CopyOnWriteArrayList();
        this.mDisconnectedMediaDevices = new CopyOnWriteArrayList();
        this.mDeviceAttributeChangeCallback = new DeviceAttributeChangeCallback();
        this.mContext = context;
        this.mPackageName = str;
        LocalBluetoothManager localBluetoothManager = LocalBluetoothManager.getInstance(context, null);
        this.mLocalBluetoothManager = localBluetoothManager;
        this.mAudioManager = (AudioManager) context.getSystemService(AudioManager.class);
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (localBluetoothManager == null) {
            Log.e("LocalMediaManager", "Bluetooth is not supported on this device");
        } else {
            this.mInfoMediaManager = new InfoMediaManager(context, str, notification2, localBluetoothManager);
        }
    }

    public final boolean addDeviceToPlayMedia(MediaDevice mediaDevice) {
        mediaDevice.mState = 5;
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.w("InfoMediaManager", "addDeviceToPlayMedia() package name is null or empty!");
            return false;
        }
        RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
        if (routingSessionInfo != null && routingSessionInfo.getSelectableRoutes().contains(mediaDevice.mRouteInfo.getId())) {
            infoMediaManager.mRouterManager.selectRoute(routingSessionInfo, mediaDevice.mRouteInfo);
            return true;
        }
        Log.w("InfoMediaManager", "addDeviceToPlayMedia() Ignoring selecting a non-selectable device : " + mediaDevice.getName());
        return false;
    }

    public final void connectDevice(MediaDevice mediaDevice) {
        MediaDevice mediaDeviceById = getMediaDeviceById(mediaDevice.getId());
        if (mediaDeviceById == null) {
            Log.w("LocalMediaManager", "connectDevice() connectDevice not in the list!");
            return;
        }
        if (mediaDeviceById instanceof BluetoothMediaDevice) {
            CachedBluetoothDevice cachedBluetoothDevice = ((BluetoothMediaDevice) mediaDeviceById).mCachedDevice;
            if (!cachedBluetoothDevice.isConnected() && !cachedBluetoothDevice.isBusy()) {
                this.mOnTransferBluetoothDevice = mediaDevice;
                mediaDeviceById.mState = 1;
                cachedBluetoothDevice.connect$1();
                return;
            } else if (cachedBluetoothDevice.isConnected()) {
                mediaDeviceById.mState = 0;
                mediaDeviceById.mAudioManager.setDeviceToForceByUser(mediaDeviceById.getDevice(), mediaDeviceById.getAddress(), false);
                this.mCurrentConnectedDevice = mediaDeviceById;
                dispatchSelectedDeviceStateChanged(mediaDeviceById);
                return;
            }
        }
        if (mediaDeviceById.equals(this.mCurrentConnectedDevice)) {
            Log.d("LocalMediaManager", "connectDevice() this device is already connected! : " + mediaDeviceById.getName());
            return;
        }
        mediaDeviceById.mState = 1;
        if (mediaDeviceById instanceof PhoneMediaDevice) {
            mediaDeviceById.mAudioManager.setDeviceToForceByUser(mediaDeviceById.getDevice(), mediaDeviceById.getAddress(), false);
            mediaDeviceById.mState = 0;
            this.mCurrentConnectedDevice = mediaDeviceById;
            dispatchSelectedDeviceStateChanged(mediaDeviceById);
            return;
        }
        if (TextUtils.isEmpty(this.mPackageName)) {
            InfoMediaManager infoMediaManager = this.mInfoMediaManager;
            RoutingSessionInfo systemRoutingSession = infoMediaManager.mRouterManager.getSystemRoutingSession((String) null);
            if (systemRoutingSession != null) {
                infoMediaManager.mRouterManager.transfer(systemRoutingSession, mediaDeviceById.mRouteInfo);
                return;
            }
            return;
        }
        if (mediaDeviceById.mRouteInfo == null) {
            Log.w("MediaDevice", "Unable to connect. RouteInfo is empty");
            return;
        }
        mediaDeviceById.mConnectedRecord++;
        ConnectionRecordManager connectionRecordManager = ConnectionRecordManager.getInstance();
        Context context = mediaDeviceById.mContext;
        String id = mediaDeviceById.getId();
        int i = mediaDeviceById.mConnectedRecord;
        synchronized (connectionRecordManager) {
            SharedPreferences.Editor edit = context.getSharedPreferences("seamless_transfer_record", 0).edit();
            connectionRecordManager.mLastSelectedDevice = id;
            edit.putInt(id, i);
            edit.putString("last_selected_device", connectionRecordManager.mLastSelectedDevice);
            edit.apply();
        }
        mediaDeviceById.mRouterManager.transfer(mediaDeviceById.mPackageName, mediaDeviceById.mRouteInfo);
    }

    public final void dispatchSelectedDeviceStateChanged(MediaDevice mediaDevice) {
        Iterator it = ((CopyOnWriteArrayList) getCallbacks()).iterator();
        while (it.hasNext()) {
            ((DeviceCallback) it.next()).onSelectedDeviceStateChanged(mediaDevice);
        }
    }

    public final Collection getCallbacks() {
        return new CopyOnWriteArrayList(this.mCallbacks);
    }

    public final MediaDevice getCurrentConnectedDevice() {
        return this.mCurrentConnectedDevice;
    }

    public final List getDeselectableMediaDevice() {
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        infoMediaManager.getClass();
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.d("InfoMediaManager", "getDeselectableMediaDevice() package name is null or empty!");
        } else {
            RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
            if (routingSessionInfo != null) {
                for (MediaRoute2Info mediaRoute2Info : infoMediaManager.mRouterManager.getDeselectableRoutes(routingSessionInfo)) {
                    arrayList.add(new InfoMediaDevice(infoMediaManager.mContext, infoMediaManager.mRouterManager, mediaRoute2Info, infoMediaManager.mPackageName, (RouteListingPreference.Item) ((ConcurrentHashMap) infoMediaManager.mPreferenceItemMap).get(mediaRoute2Info.getId())));
                    StringBuilder sb = new StringBuilder();
                    sb.append((Object) mediaRoute2Info.getName());
                    sb.append(" is deselectable for ");
                    ExifInterface$$ExternalSyntheticOutline0.m(sb, infoMediaManager.mPackageName, "InfoMediaManager");
                }
            } else {
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("getDeselectableMediaDevice() cannot found deselectable MediaDevice from : "), infoMediaManager.mPackageName, "InfoMediaManager");
            }
        }
        return arrayList;
    }

    public final ComponentName getLinkedItemComponentName() {
        RouteListingPreference routeListingPreference;
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        MediaRouter2Manager mediaRouter2Manager = infoMediaManager.mRouterManager;
        String str = infoMediaManager.mPackageName;
        if (TextUtils.isEmpty(str) || (routeListingPreference = mediaRouter2Manager.getRouteListingPreference(str)) == null) {
            return null;
        }
        return routeListingPreference.getLinkedItemComponentName();
    }

    public final MediaDevice getMediaDeviceById(String str) {
        synchronized (this.mMediaDevicesLock) {
            for (MediaDevice mediaDevice : this.mMediaDevices) {
                if (TextUtils.equals(mediaDevice.getId(), str)) {
                    return mediaDevice;
                }
            }
            KeyguardPluginControllerImpl$$ExternalSyntheticOutline0.m("getMediaDeviceById() failed to find device with id: ", str, "LocalMediaManager");
            return null;
        }
    }

    public final List getSelectableMediaDevice() {
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        infoMediaManager.getClass();
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.w("InfoMediaManager", "getSelectableMediaDevice() package name is null or empty!");
        } else {
            RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
            if (routingSessionInfo != null) {
                for (MediaRoute2Info mediaRoute2Info : infoMediaManager.mRouterManager.getSelectableRoutes(routingSessionInfo)) {
                    arrayList.add(new InfoMediaDevice(infoMediaManager.mContext, infoMediaManager.mRouterManager, mediaRoute2Info, infoMediaManager.mPackageName, (RouteListingPreference.Item) ((ConcurrentHashMap) infoMediaManager.mPreferenceItemMap).get(mediaRoute2Info.getId())));
                }
            } else {
                Log.w("InfoMediaManager", "getSelectableMediaDevice() cannot found selectable MediaDevice from : " + infoMediaManager.mPackageName);
            }
        }
        return arrayList;
    }

    public final List getSelectedMediaDevice() {
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        infoMediaManager.getClass();
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.w("InfoMediaManager", "getSelectedMediaDevice() package name is null or empty!");
        } else {
            RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
            if (routingSessionInfo != null) {
                for (MediaRoute2Info mediaRoute2Info : infoMediaManager.mRouterManager.getSelectedRoutes(routingSessionInfo)) {
                    arrayList.add(new InfoMediaDevice(infoMediaManager.mContext, infoMediaManager.mRouterManager, mediaRoute2Info, infoMediaManager.mPackageName, (RouteListingPreference.Item) ((ConcurrentHashMap) infoMediaManager.mPreferenceItemMap).get(mediaRoute2Info.getId())));
                }
            } else {
                Log.w("InfoMediaManager", "getSelectedMediaDevice() cannot found selectable MediaDevice from : " + infoMediaManager.mPackageName);
            }
        }
        return arrayList;
    }

    public final boolean isActiveDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        boolean z;
        boolean z2;
        boolean z3;
        LeAudioProfile leAudioProfile;
        HearingAidProfile hearingAidProfile;
        List activeDevices;
        LocalBluetoothManager localBluetoothManager = this.mLocalBluetoothManager;
        A2dpProfile a2dpProfile = localBluetoothManager.mProfileManager.mA2dpProfile;
        if (a2dpProfile != null) {
            z = cachedBluetoothDevice.mDevice.equals(a2dpProfile.getActiveDevice());
        } else {
            z = false;
        }
        LocalBluetoothProfileManager localBluetoothProfileManager = localBluetoothManager.mProfileManager;
        if (!z && (hearingAidProfile = localBluetoothProfileManager.mHearingAidProfile) != null) {
            BluetoothAdapter bluetoothAdapter = hearingAidProfile.mBluetoothAdapter;
            if (bluetoothAdapter == null) {
                activeDevices = new ArrayList();
            } else {
                activeDevices = bluetoothAdapter.getActiveDevices(21);
            }
            z2 = activeDevices.contains(cachedBluetoothDevice.mDevice);
        } else {
            z2 = false;
        }
        if (!z && !z2 && (leAudioProfile = localBluetoothProfileManager.mLeAudioProfile) != null) {
            z3 = leAudioProfile.getActiveDevices().contains(cachedBluetoothDevice.mDevice);
        } else {
            z3 = false;
        }
        if (!z && !z2 && !z3) {
            return false;
        }
        return true;
    }

    public final boolean isPreferenceRouteListingExist() {
        RouteListingPreference routeListingPreference;
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        MediaRouter2Manager mediaRouter2Manager = infoMediaManager.mRouterManager;
        String str = infoMediaManager.mPackageName;
        if (!TextUtils.isEmpty(str) && (routeListingPreference = mediaRouter2Manager.getRouteListingPreference(str)) != null && !routeListingPreference.getUseSystemOrdering()) {
            return true;
        }
        return false;
    }

    public final void releaseSession() {
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.w("InfoMediaManager", "releaseSession() package name is null or empty!");
            return;
        }
        RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
        if (routingSessionInfo != null) {
            infoMediaManager.mRouterManager.releaseSession(routingSessionInfo);
            return;
        }
        Log.w("InfoMediaManager", "releaseSession() Ignoring release session : " + infoMediaManager.mPackageName);
    }

    public final boolean removeDeviceFromPlayMedia(MediaDevice mediaDevice) {
        mediaDevice.mState = 5;
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
            Log.w("InfoMediaManager", "removeDeviceFromMedia() package name is null or empty!");
            return false;
        }
        RoutingSessionInfo routingSessionInfo = infoMediaManager.getRoutingSessionInfo();
        if (routingSessionInfo != null && routingSessionInfo.getSelectedRoutes().contains(mediaDevice.mRouteInfo.getId())) {
            infoMediaManager.mRouterManager.deselectRoute(routingSessionInfo, mediaDevice.mRouteInfo);
            return true;
        }
        Log.w("InfoMediaManager", "removeDeviceFromMedia() Ignoring deselecting a non-deselectable device : " + mediaDevice.getName());
        return false;
    }

    public final void startScan() {
        synchronized (this.mMediaDevicesLock) {
            this.mMediaDevices.clear();
        }
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        MediaDeviceCallback mediaDeviceCallback = this.mMediaDeviceCallback;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) infoMediaManager.mCallbacks;
        if (!copyOnWriteArrayList.contains(mediaDeviceCallback)) {
            copyOnWriteArrayList.add(mediaDeviceCallback);
        }
        InfoMediaManager infoMediaManager2 = this.mInfoMediaManager;
        if (!infoMediaManager2.mIsScanning) {
            ((CopyOnWriteArrayList) infoMediaManager2.mMediaDevices).clear();
            infoMediaManager2.mRouterManager.registerCallback(infoMediaManager2.mExecutor, infoMediaManager2.mMediaRouterCallback);
            infoMediaManager2.mRouterManager.registerScanRequest();
            infoMediaManager2.mIsScanning = true;
            if (!TextUtils.isEmpty(infoMediaManager2.mPackageName)) {
                RouteListingPreference routeListingPreference = infoMediaManager2.mRouterManager.getRouteListingPreference(infoMediaManager2.mPackageName);
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) infoMediaManager2.mPreferenceItemMap;
                concurrentHashMap.clear();
                if (routeListingPreference != null) {
                    routeListingPreference.getItems().forEach(new InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0(concurrentHashMap));
                }
            }
            infoMediaManager2.refreshDevices();
        }
    }

    public final void stopScan() {
        InfoMediaManager infoMediaManager = this.mInfoMediaManager;
        MediaDeviceCallback mediaDeviceCallback = this.mMediaDeviceCallback;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) infoMediaManager.mCallbacks;
        if (copyOnWriteArrayList.contains(mediaDeviceCallback)) {
            copyOnWriteArrayList.remove(mediaDeviceCallback);
        }
        InfoMediaManager infoMediaManager2 = this.mInfoMediaManager;
        if (infoMediaManager2.mIsScanning) {
            infoMediaManager2.mRouterManager.unregisterCallback(infoMediaManager2.mMediaRouterCallback);
            infoMediaManager2.mRouterManager.unregisterScanRequest();
            infoMediaManager2.mIsScanning = false;
        }
        Iterator<MediaDevice> it = this.mDisconnectedMediaDevices.iterator();
        while (it.hasNext()) {
            CachedBluetoothDevice cachedBluetoothDevice = ((BluetoothMediaDevice) it.next()).mCachedDevice;
            DeviceAttributeChangeCallback deviceAttributeChangeCallback = this.mDeviceAttributeChangeCallback;
            synchronized (cachedBluetoothDevice.mCallbacks) {
                if (cachedBluetoothDevice.mCallbacks.contains(deviceAttributeChangeCallback)) {
                    cachedBluetoothDevice.mCallbacks.remove(deviceAttributeChangeCallback);
                }
                cachedBluetoothDevice.mCallbacks.remove(deviceAttributeChangeCallback);
            }
        }
    }

    public MediaDevice updateCurrentConnectedDevice() {
        LeAudioProfile leAudioProfile;
        List<BluetoothDevice> activeDevices;
        BluetoothDevice activeDevice;
        MediaRoute2Info mediaRoute2Info;
        synchronized (this.mMediaDevicesLock) {
            int semGetCurrentDeviceType = this.mAudioManager.semGetCurrentDeviceType();
            Log.i("LocalMediaManager", "updateCurrentConnectedDevice curDeviceType = " + semGetCurrentDeviceType);
            Iterator<MediaDevice> it = this.mMediaDevices.iterator();
            String str = null;
            MediaDevice mediaDevice = null;
            while (true) {
                boolean z = false;
                if (it.hasNext()) {
                    MediaDevice next = it.next();
                    Log.i("LocalMediaManager", "updateCurrentConnectedDevice device type = " + next.mType + " name = " + next.getName());
                    if (next instanceof BluetoothMediaDevice) {
                        if (semGetCurrentDeviceType != 8 && semGetCurrentDeviceType != 23) {
                            if (semGetCurrentDeviceType == 26 || semGetCurrentDeviceType == 27 || semGetCurrentDeviceType == 30) {
                                z = true;
                            }
                            if (z) {
                            }
                        }
                        if (isActiveDevice(((BluetoothMediaDevice) next).mCachedDevice) && next.isConnected() && (mediaRoute2Info = next.mRouteInfo) != null && mediaRoute2Info.getType() == semGetCurrentDeviceType) {
                            Log.i("LocalMediaManager", "updateCurrentConnectedDevice device name = " + next.getName() + " device type = " + next.mType);
                            return next;
                        }
                    }
                    if ((next instanceof PhoneMediaDevice) && AudioDeviceInfo.convertDeviceTypeToInternalDevice(semGetCurrentDeviceType) == next.getDevice()) {
                        Log.i("LocalMediaManager", "updateCurrentConnectedDevice device name = " + next.getName() + " device type = " + next.mType);
                        mediaDevice = next;
                    }
                } else {
                    if (mediaDevice == null) {
                        if (semGetCurrentDeviceType == 8) {
                            A2dpProfile a2dpProfile = this.mLocalBluetoothManager.mProfileManager.mA2dpProfile;
                            if (a2dpProfile != null && (activeDevice = a2dpProfile.getActiveDevice()) != null) {
                                str = activeDevice.getAddress();
                            }
                            if (str != null) {
                                for (MediaDevice mediaDevice2 : this.mMediaDevices) {
                                    if ((mediaDevice2 instanceof BluetoothMediaDevice) && mediaDevice2.isConnected() && mediaDevice2.getAddress().equals(str)) {
                                        Log.i("LocalMediaManager", "updateCurrentConnectedDevice a2dp active devicename = " + mediaDevice2.getName() + "device type = " + mediaDevice2.mType);
                                        return mediaDevice2;
                                    }
                                }
                            }
                        } else {
                            if (semGetCurrentDeviceType == 26 || semGetCurrentDeviceType == 27 || semGetCurrentDeviceType == 30) {
                                z = true;
                            }
                            if (z && (leAudioProfile = this.mLocalBluetoothManager.mProfileManager.mLeAudioProfile) != null && (activeDevices = leAudioProfile.getActiveDevices()) != null) {
                                Log.i("LocalMediaManager", "bleDeviceList size = " + activeDevices.size());
                                for (BluetoothDevice bluetoothDevice : activeDevices) {
                                    if (bluetoothDevice != null) {
                                        String address = bluetoothDevice.getAddress();
                                        Log.i("LocalMediaManager", "activeBleAddress = " + address + " bleDeviceName = " + bluetoothDevice.getName());
                                        if (address != null) {
                                            for (MediaDevice mediaDevice3 : this.mMediaDevices) {
                                                if ((mediaDevice3 instanceof BluetoothMediaDevice) && mediaDevice3.isConnected() && mediaDevice3.getAddress().equals(address)) {
                                                    Log.i("LocalMediaManager", "updateCurrentConnectedDevice ble active devicename = " + mediaDevice3.getName() + "device type = " + mediaDevice3.mType);
                                                    return mediaDevice3;
                                                }
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return mediaDevice;
                }
            }
        }
    }

    public LocalMediaManager(Context context, LocalBluetoothManager localBluetoothManager, InfoMediaManager infoMediaManager, String str) {
        this.mCallbacks = new CopyOnWriteArrayList();
        this.mMediaDevicesLock = new Object();
        this.mMediaDeviceCallback = new MediaDeviceCallback();
        this.mMediaDevices = new CopyOnWriteArrayList();
        this.mDisconnectedMediaDevices = new CopyOnWriteArrayList();
        this.mDeviceAttributeChangeCallback = new DeviceAttributeChangeCallback();
        this.mContext = context;
        this.mLocalBluetoothManager = localBluetoothManager;
        this.mInfoMediaManager = infoMediaManager;
        this.mPackageName = str;
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAudioManager = (AudioManager) context.getSystemService(AudioManager.class);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface DeviceCallback {
        void onDeviceListUpdate(List list);

        void onSelectedDeviceStateChanged(MediaDevice mediaDevice);

        default void onRequestFailed(int i) {
        }

        default void onAboutToConnectDeviceRemoved() {
        }

        default void onDeviceAttributesChanged() {
        }

        default void onAboutToConnectDeviceAdded(String str, Drawable drawable, String str2) {
        }
    }
}
