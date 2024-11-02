package com.android.systemui.statusbar.policy;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.settingslib.bluetooth.BluetoothCallback;
import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import com.android.settingslib.bluetooth.LocalBluetoothAdapter;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.settingslib.bluetooth.LocalBluetoothProfile;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import com.android.systemui.bluetooth.BluetoothLogger;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.BluetoothController;
import com.android.systemui.statusbar.policy.bluetooth.BluetoothRepository;
import com.android.systemui.statusbar.policy.bluetooth.ConnectionStatusModel;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothControllerImpl implements BluetoothController, BluetoothCallback, CachedBluetoothDevice.Callback, LocalBluetoothProfileManager.ServiceListener {
    public boolean mAudioProfileOnly;
    public final List mConnectedDevices = new ArrayList();
    public int mConnectionState = 0;
    public boolean mEnabled;
    public final FeatureFlags mFeatureFlags;
    public final H mHandler;
    public boolean mIsActive;
    public final LocalBluetoothManager mLocalBluetoothManager;
    public final BluetoothLogger mLogger;
    public int mState;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public final ArrayList mCallbacks;

        public H(Looper looper) {
            super(looper);
            this.mCallbacks = new ArrayList();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            this.mCallbacks.remove((BluetoothController.Callback) message.obj);
                            return;
                        }
                        return;
                    }
                    this.mCallbacks.add((BluetoothController.Callback) message.obj);
                    return;
                }
                Iterator it = this.mCallbacks.iterator();
                while (it.hasNext()) {
                    ((BluetoothController.Callback) it.next()).onBluetoothStateChange(BluetoothControllerImpl.this.mEnabled);
                }
                return;
            }
            Iterator it2 = this.mCallbacks.iterator();
            while (it2.hasNext()) {
                ((BluetoothController.Callback) it2.next()).onBluetoothDevicesChanged();
            }
        }
    }

    public BluetoothControllerImpl(Context context, FeatureFlags featureFlags, UserTracker userTracker, DumpManager dumpManager, BluetoothLogger bluetoothLogger, BluetoothRepository bluetoothRepository, Looper looper, LocalBluetoothManager localBluetoothManager, BluetoothAdapter bluetoothAdapter) {
        int i;
        this.mFeatureFlags = featureFlags;
        this.mLogger = bluetoothLogger;
        this.mLocalBluetoothManager = localBluetoothManager;
        this.mHandler = new H(looper);
        if (localBluetoothManager != null) {
            ((CopyOnWriteArrayList) localBluetoothManager.mEventManager.mCallbacks).add(this);
            ((CopyOnWriteArrayList) localBluetoothManager.mProfileManager.mServiceListeners).add(this);
            LocalBluetoothAdapter localBluetoothAdapter = localBluetoothManager.mLocalAdapter;
            synchronized (localBluetoothAdapter) {
                BluetoothAdapter bluetoothAdapter2 = localBluetoothAdapter.mAdapter;
                if (bluetoothAdapter2.getState() != localBluetoothAdapter.mState) {
                    localBluetoothAdapter.setBluetoothStateInt(bluetoothAdapter2.getState());
                }
                i = localBluetoothAdapter.mState;
            }
            onBluetoothStateChanged(i);
        }
        ((UserTrackerImpl) userTracker).getUserId();
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "BluetoothController", this);
    }

    public static String connectionStateToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("UNKNOWN(", i, ")");
                    }
                    return "DISCONNECTING";
                }
                return "CONNECTED";
            }
            return "CONNECTING";
        }
        return "DISCONNECTED";
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        H h = this.mHandler;
        h.obtainMessage(3, (BluetoothController.Callback) obj).sendToTarget();
        h.sendEmptyMessage(2);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        ArrayList arrayList;
        printWriter.println("BluetoothController state:");
        printWriter.print("  mLocalBluetoothManager=");
        printWriter.println(this.mLocalBluetoothManager);
        if (this.mLocalBluetoothManager == null) {
            return;
        }
        printWriter.print("  mEnabled=");
        printWriter.println(this.mEnabled);
        printWriter.print("  mConnectionState=");
        printWriter.println(connectionStateToString(this.mConnectionState));
        printWriter.print("  mAudioProfileOnly=");
        printWriter.println(this.mAudioProfileOnly);
        printWriter.print("  mIsActive=");
        printWriter.println(this.mIsActive);
        printWriter.print("  mConnectedDevices=");
        synchronized (this.mConnectedDevices) {
            arrayList = new ArrayList(this.mConnectedDevices);
        }
        printWriter.println(arrayList);
        printWriter.print("  mCallbacks.size=");
        printWriter.println(this.mHandler.mCallbacks.size());
        printWriter.println("  Bluetooth Devices:");
        for (CachedBluetoothDevice cachedBluetoothDevice : getDevices()) {
            StringBuilder sb = new StringBuilder("    ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cachedBluetoothDevice.getName());
            sb2.append(" profiles=");
            ArrayList arrayList2 = new ArrayList();
            Iterator it = cachedBluetoothDevice.getProfiles().iterator();
            while (it.hasNext()) {
                arrayList2.add(String.valueOf(((LocalBluetoothProfile) it.next()).getProfileId()));
            }
            sb2.append("[" + String.join(",", arrayList2) + "]");
            sb2.append(" connected=");
            sb2.append(cachedBluetoothDevice.isConnected());
            sb2.append(" active[A2DP]=");
            sb2.append(cachedBluetoothDevice.isActiveDevice(2));
            sb2.append(" active[HEADSET]=");
            sb2.append(cachedBluetoothDevice.isActiveDevice(1));
            sb2.append(" active[HEARING_AID]=");
            sb2.append(cachedBluetoothDevice.isActiveDevice(21));
            sb2.append(" active[LE_AUDIO]=");
            sb2.append(cachedBluetoothDevice.isActiveDevice(22));
            sb.append(sb2.toString());
            printWriter.println(sb.toString());
        }
    }

    @Override // com.android.systemui.statusbar.policy.BluetoothController
    public final int getBluetoothState() {
        return this.mState;
    }

    public final Collection getDevices() {
        LocalBluetoothManager localBluetoothManager = this.mLocalBluetoothManager;
        if (localBluetoothManager != null) {
            return localBluetoothManager.mCachedDeviceManager.getCachedDevicesCopy();
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.policy.BluetoothController
    public final boolean isBluetoothEnabled() {
        return this.mEnabled;
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onAclConnectionStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        this.mLogger.logAclConnectionStateChanged(cachedBluetoothDevice.getAddress(), connectionStateToString(i));
        updateConnected();
        this.mHandler.sendEmptyMessage(2);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onActiveDeviceChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        String address;
        if (cachedBluetoothDevice == null) {
            address = null;
        } else {
            address = cachedBluetoothDevice.getAddress();
        }
        this.mLogger.logActiveDeviceChanged(i, address);
        boolean z = false;
        for (CachedBluetoothDevice cachedBluetoothDevice2 : getDevices()) {
            boolean z2 = true;
            if (!cachedBluetoothDevice2.isActiveDevice(1) && !cachedBluetoothDevice2.isActiveDevice(2) && !cachedBluetoothDevice2.isActiveDevice(21) && !cachedBluetoothDevice2.isActiveDevice(22)) {
                z2 = false;
            }
            z |= z2;
        }
        boolean z3 = this.mIsActive;
        H h = this.mHandler;
        if (z3 != z) {
            this.mIsActive = z;
            h.sendEmptyMessage(2);
        }
        h.sendEmptyMessage(2);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onBluetoothStateChanged(int i) {
        boolean z;
        this.mLogger.logStateChange(BluetoothAdapter.nameForState(i));
        if (i != 12 && i != 11) {
            z = false;
        } else {
            z = true;
        }
        this.mEnabled = z;
        this.mState = i;
        updateConnected();
        this.mHandler.sendEmptyMessage(2);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onConnectionStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        String address;
        if (cachedBluetoothDevice == null) {
            address = null;
        } else {
            address = cachedBluetoothDevice.getAddress();
        }
        this.mLogger.logDeviceConnectionStateChanged(address, connectionStateToString(i));
        updateConnected();
        this.mHandler.sendEmptyMessage(2);
    }

    public final void onConnectionStatusFetched(ConnectionStatusModel connectionStatusModel) {
        boolean z;
        List list = connectionStatusModel.connectedDevices;
        int i = connectionStatusModel.maxConnectionState;
        synchronized (this.mConnectedDevices) {
            ((ArrayList) this.mConnectedDevices).clear();
            ((ArrayList) this.mConnectedDevices).addAll(list);
        }
        if (i != this.mConnectionState) {
            this.mConnectionState = i;
            this.mHandler.sendEmptyMessage(2);
        }
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (CachedBluetoothDevice cachedBluetoothDevice : getDevices()) {
            for (LocalBluetoothProfile localBluetoothProfile : cachedBluetoothDevice.getProfiles()) {
                int profileId = localBluetoothProfile.getProfileId();
                if (cachedBluetoothDevice.getProfileConnectionState(localBluetoothProfile) == 2) {
                    z = true;
                } else {
                    z = false;
                }
                if (profileId != 1 && profileId != 2 && profileId != 21 && profileId != 22) {
                    z4 |= z;
                } else {
                    z3 |= z;
                }
            }
        }
        if (z3 && !z4) {
            z2 = true;
        }
        if (z2 != this.mAudioProfileOnly) {
            this.mAudioProfileOnly = z2;
            this.mHandler.sendEmptyMessage(2);
        }
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onDeviceAdded(CachedBluetoothDevice cachedBluetoothDevice) {
        this.mLogger.logDeviceAdded(cachedBluetoothDevice.getAddress());
        synchronized (cachedBluetoothDevice.mCallbacks) {
            if (((CopyOnWriteArrayList) cachedBluetoothDevice.mCallbacks).contains(this)) {
                ((CopyOnWriteArrayList) cachedBluetoothDevice.mCallbacks).remove(this);
            }
            ((CopyOnWriteArrayList) cachedBluetoothDevice.mCallbacks).add(this);
        }
        updateConnected();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.settingslib.bluetooth.CachedBluetoothDevice.Callback
    public final void onDeviceAttributesChanged() {
        this.mLogger.logDeviceAttributesChanged();
        updateConnected();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onDeviceBondStateChanged(int i, CachedBluetoothDevice cachedBluetoothDevice) {
        this.mLogger.logBondStateChange(i, cachedBluetoothDevice.getAddress());
        updateConnected();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onDeviceDeleted(CachedBluetoothDevice cachedBluetoothDevice) {
        this.mLogger.logDeviceDeleted(cachedBluetoothDevice.getAddress());
        updateConnected();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.settingslib.bluetooth.BluetoothCallback
    public final void onProfileConnectionStateChanged(CachedBluetoothDevice cachedBluetoothDevice, int i, int i2) {
        this.mLogger.logProfileConnectionStateChanged(i2, cachedBluetoothDevice.getAddress(), connectionStateToString(i));
        updateConnected();
        this.mHandler.sendEmptyMessage(2);
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfileManager.ServiceListener
    public final void onServiceConnected() {
        updateConnected();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.mHandler.obtainMessage(4, (BluetoothController.Callback) obj).sendToTarget();
    }

    @Override // com.android.systemui.statusbar.policy.BluetoothController
    public final void setBluetoothEnabled(boolean z) {
        LocalBluetoothManager localBluetoothManager = this.mLocalBluetoothManager;
        if (localBluetoothManager != null) {
            localBluetoothManager.mLocalAdapter.setBluetoothEnabled(z);
        }
    }

    public final void updateConnected() {
        Flags flags = Flags.INSTANCE;
        this.mFeatureFlags.getClass();
        int connectionState = this.mLocalBluetoothManager.mLocalAdapter.mAdapter.getConnectionState();
        ArrayList arrayList = new ArrayList();
        for (CachedBluetoothDevice cachedBluetoothDevice : getDevices()) {
            int maxConnectionState = cachedBluetoothDevice.getMaxConnectionState();
            if (maxConnectionState > connectionState) {
                connectionState = maxConnectionState;
            }
            if (cachedBluetoothDevice.isConnected()) {
                arrayList.add(cachedBluetoothDevice);
            }
        }
        if (arrayList.isEmpty() && connectionState == 2) {
            connectionState = 0;
        }
        onConnectionStatusFetched(new ConnectionStatusModel(connectionState, arrayList));
    }

    @Override // com.android.settingslib.bluetooth.LocalBluetoothProfileManager.ServiceListener
    public final void onServiceDisconnected() {
    }
}
