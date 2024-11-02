package com.samsung.android.settingslib.bluetooth.bluetoothcast;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.samsung.android.bluetooth.SemBluetoothAudioCast;
import com.samsung.android.bluetooth.SemBluetoothCastAdapter;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import com.samsung.android.settingslib.bluetooth.ManufacturerData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CachedBluetoothCastDevice implements Comparable {
    public final String TAG = "CachedBluetoothCastDevice";
    public final Collection mCallbacks;
    public SemBluetoothCastDevice mCastDevice;
    public final HashMap mCastProfileConnectionState;
    public final LinkedHashSet mCastProfiles;
    public final Context mContext;
    public String mErrorMsg;
    public String mName;
    public int mSequence;
    public final Handler toastHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ToastRunnable implements Runnable {
        public final int mLength;
        public final String mText;

        public ToastRunnable(String str, int i) {
            this.mText = str;
            this.mLength = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toast.makeText(CachedBluetoothCastDevice.this.mContext, this.mText, this.mLength).show();
        }
    }

    public CachedBluetoothCastDevice(Context context, LocalBluetoothCastProfileManager localBluetoothCastProfileManager, SemBluetoothCastDevice semBluetoothCastDevice) {
        AudioCastProfile audioCastProfile;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.mCastProfiles = linkedHashSet;
        this.mCallbacks = new ArrayList();
        this.mContext = context;
        this.mCastDevice = semBluetoothCastDevice;
        this.mCastProfileConnectionState = new HashMap();
        this.toastHandler = new Handler();
        this.mName = this.mCastDevice.getDeviceName();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.mCastDevice.getBluetoothCastType()));
        synchronized (localBluetoothCastProfileManager) {
            linkedHashSet.clear();
            if (arrayList.contains(1) && ((audioCastProfile = localBluetoothCastProfileManager.mAudioCastProfile) != null || !linkedHashSet.contains(audioCastProfile))) {
                Log.d(localBluetoothCastProfileManager.TAG, "Audio Cast Profile added");
                linkedHashSet.add(localBluetoothCastProfileManager.mAudioCastProfile);
            }
        }
        Log.d("CachedBluetoothCastDevice", "updateCastProfiles : " + String.valueOf(linkedHashSet.size()));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int i;
        int i2;
        int i3;
        CachedBluetoothCastDevice cachedBluetoothCastDevice = (CachedBluetoothCastDevice) obj;
        int maxConnectionState = cachedBluetoothCastDevice.getMaxConnectionState();
        int maxConnectionState2 = getMaxConnectionState();
        int i4 = 0;
        if (maxConnectionState == 2) {
            i = 1;
        } else {
            i = 0;
        }
        if (maxConnectionState2 == 2) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i5 = i - i2;
        if (i5 != 0) {
            return i5;
        }
        if (maxConnectionState != 1 && maxConnectionState != 3) {
            i3 = 0;
        } else {
            i3 = 1;
        }
        if (maxConnectionState2 == 1 || maxConnectionState2 == 3) {
            i4 = 1;
        }
        int i6 = i3 - i4;
        if (i6 != 0) {
            return i6;
        }
        long connectionTimeStamp = getConnectionTimeStamp() - cachedBluetoothCastDevice.getConnectionTimeStamp();
        if (connectionTimeStamp > 0) {
            return 1;
        }
        if (connectionTimeStamp < 0) {
            return -1;
        }
        int i7 = this.mSequence - cachedBluetoothCastDevice.mSequence;
        if (i7 == 0) {
            return this.mName.compareTo(cachedBluetoothCastDevice.mName);
        }
        return i7;
    }

    public final void disconnect() {
        Iterator it = this.mCastProfiles.iterator();
        while (it.hasNext()) {
            LocalBluetoothCastProfile localBluetoothCastProfile = (LocalBluetoothCastProfile) it.next();
            SemBluetoothCastDevice semBluetoothCastDevice = this.mCastDevice;
            AudioCastProfile audioCastProfile = (AudioCastProfile) localBluetoothCastProfile;
            Log.d(audioCastProfile.TAG, "disconnect");
            SemBluetoothAudioCast semBluetoothAudioCast = audioCastProfile.mService;
            if (semBluetoothAudioCast != null) {
                semBluetoothAudioCast.disconnect(semBluetoothCastDevice);
            }
        }
    }

    public final void dispatchAttributesChanged() {
        try {
            synchronized (this.mCallbacks) {
                Iterator it = ((ArrayList) this.mCallbacks).iterator();
                if (it.hasNext()) {
                    ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
                    throw null;
                }
            }
        } catch (ConcurrentModificationException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fa, code lost:
    
        if (r4 == 0) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getBtCastDrawable() {
        /*
            Method dump skipped, instructions count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice.getBtCastDrawable():android.graphics.drawable.Drawable");
    }

    public final int getCastProfileConnectionState(LocalBluetoothCastProfile localBluetoothCastProfile) {
        if (this.mCastProfileConnectionState.get(localBluetoothCastProfile) == null) {
            this.mCastProfileConnectionState.put(localBluetoothCastProfile, 0);
        }
        return ((Integer) this.mCastProfileConnectionState.get(localBluetoothCastProfile)).intValue();
    }

    public final long getConnectionTimeStamp() {
        LocalBluetoothManager localBluetoothManager = LocalBluetoothManager.getInstance(this.mContext, null);
        if (localBluetoothManager == null) {
            return 0L;
        }
        SemBluetoothCastDevice semBluetoothCastDevice = this.mCastDevice;
        LocalBluetoothCastAdapter localBluetoothCastAdapter = localBluetoothManager.mLocalCastAdapter;
        SemBluetoothCastAdapter semBluetoothCastAdapter = localBluetoothCastAdapter.mCastAdapter;
        String str = localBluetoothCastAdapter.TAG;
        if (semBluetoothCastAdapter == null) {
            Log.d(str, "Cannot getLastConnectedTime");
            return 0L;
        }
        Log.d(str, "cancelDiscovery");
        return localBluetoothCastAdapter.mCastAdapter.getLastConnectedTime(semBluetoothCastDevice);
    }

    public final int getMaxConnectionState() {
        boolean z;
        int castProfileConnectionState;
        ArrayList arrayList = new ArrayList();
        synchronized (this.mCastProfiles) {
            arrayList.addAll(this.mCastProfiles);
        }
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        Log.d(this.TAG, "getMaxConnectionState size : " + String.valueOf(unmodifiableList.size()));
        int i = 0;
        for (int i2 = 0; i2 < unmodifiableList.size(); i2++) {
            LocalBluetoothCastProfile localBluetoothCastProfile = (LocalBluetoothCastProfile) unmodifiableList.get(i2);
            String str = this.TAG;
            StringBuilder sb = new StringBuilder("getMaxConnectionState profile != null : ");
            if (localBluetoothCastProfile != null) {
                z = true;
            } else {
                z = false;
            }
            sb.append(String.valueOf(z));
            Log.d(str, sb.toString());
            if (localBluetoothCastProfile != null && (castProfileConnectionState = getCastProfileConnectionState(localBluetoothCastProfile)) > i) {
                i = castProfileConnectionState;
            }
        }
        Log.d(this.TAG, "getMaxConnectionState : " + String.valueOf(i));
        return i;
    }

    public final String getName() {
        String str = this.mName;
        if (str != null) {
            return str;
        }
        if (this.mCastDevice.getDeviceName() != null) {
            return this.mCastDevice.getDeviceName();
        }
        return this.mCastDevice.getAddress();
    }

    public final boolean isConnected() {
        Iterator it = this.mCastProfiles.iterator();
        while (it.hasNext()) {
            if (getCastProfileConnectionState((LocalBluetoothCastProfile) it.next()) == 2) {
                return true;
            }
        }
        return false;
    }

    public final boolean isGearIconX() {
        byte[] manufacturerData = this.mCastDevice.getManufacturerData();
        BluetoothClass bluetoothClass = this.mCastDevice.getBluetoothClass();
        ManufacturerData manufacturerData2 = new ManufacturerData(manufacturerData);
        if (manufacturerData == null || bluetoothClass == null || manufacturerData.length < 9) {
            return false;
        }
        byte[] bArr = manufacturerData2.mData.mDeviceId;
        byte b = bArr[0];
        if ((b != 0 && b != 1) || bArr[1] != 1 || bluetoothClass.getDeviceClass() != 1028) {
            return false;
        }
        return true;
    }

    public final void onCastProfileStateChanged(LocalBluetoothCastProfile localBluetoothCastProfile, int i) {
        Log.d(this.TAG, "onCastProfileStateChanged : " + String.valueOf(i));
        this.mCastProfileConnectionState.put(localBluetoothCastProfile, Integer.valueOf(i));
        this.mCastDevice.setConnectionState(i);
        if (i == 2 && !this.mCastProfiles.contains(localBluetoothCastProfile)) {
            this.mCastProfiles.add(localBluetoothCastProfile);
        }
        dispatchAttributesChanged();
    }
}
