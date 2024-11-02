package com.android.settingslib.bluetooth;

import android.app.StatusBarManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothDump;
import android.bluetooth.BluetoothUuid;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.ParcelUuid;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.sec.enterprise.auditlog.AuditLog;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.util.ArrayUtils;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import com.samsung.android.bluetooth.SmepTag;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.samsung.android.settingslib.bluetooth.BluetoothRestoredDevice;
import com.samsung.android.settingslib.bluetooth.ManufacturerData;
import com.samsung.android.settingslib.bluetooth.SppProfile;
import com.samsung.android.settingslib.bluetooth.detector.BluetoothRetryDetector;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CachedBluetoothDevice implements Comparable {
    public final String mAddress;
    public short mAppearance;
    public String mBluetoothCastMsg;
    public int mBondState;
    public long mBondTimeStamp;
    public BluetoothRetryDetector mBondingDetector;
    public BluetoothClass mBtClass;
    public final Collection mCallbacks;
    public long mConnectAttempted;
    public final Context mContext;
    public BluetoothDevice mDevice;
    public String mDeviceName;
    LruCache<String, BitmapDrawable> mDrawableCache;
    public String mErrorMsg;
    public int mGroupId;
    public HearingAidInfo mHearingAidInfo;
    public boolean mIsActiveDeviceA2dp;
    public boolean mIsActiveDeviceHeadset;
    public boolean mIsActiveDeviceHearingAid;
    public boolean mIsActiveDeviceLeAudio;
    public boolean mIsAddrSwitched;
    public boolean mIsBondingByCached;
    public boolean mIsHearingAidDeviceByUUID;
    public boolean mIsRestored;
    public boolean mIsSynced;
    public boolean mIsTablet;
    public boolean mJustDiscovered;
    public CachedBluetoothDevice mLeadDevice;
    public final BluetoothAdapter mLocalAdapter;
    public boolean mLocalNapRoleConnected;
    public ManufacturerData mManufacturerData;
    public final Set mMemberDevices;
    public String mName;
    public final ArrayList mOnlyPANUDevices;
    public String mPrefixName;
    public HashMap mProfileConnectionState;
    public final Object mProfileLock;
    public final LocalBluetoothProfileManager mProfileManager;
    public final LinkedHashSet mProfiles;
    public final LinkedHashSet mRemovedProfiles;
    public final BluetoothRestoredDevice mRestoredDevice;
    public short mRssi;
    public int mRssiGroup;
    public final Collection mSemCallbacks;
    public int mSequence;
    public CachedBluetoothDevice mSubDevice;
    public int mType;
    public boolean mUnpairing;
    public int mVersion;
    public boolean mVisible;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.settingslib.bluetooth.CachedBluetoothDevice$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$samsung$android$bluetooth$SmepTag;

        static {
            int[] iArr = new int[SmepTag.values().length];
            $SwitchMap$com$samsung$android$bluetooth$SmepTag = iArr;
            try {
                iArr[SmepTag.FEATURE_AURACAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
        void onDeviceAttributesChanged();
    }

    public CachedBluetoothDevice(Context context, LocalBluetoothProfileManager localBluetoothProfileManager, BluetoothDevice bluetoothDevice) {
        this.mVersion = 0;
        this.mType = 0;
        this.mOnlyPANUDevices = new ArrayList();
        this.mVisible = true;
        this.mIsBondingByCached = false;
        this.mSemCallbacks = new ArrayList();
        this.mProfileLock = new Object();
        this.mProfiles = new LinkedHashSet();
        this.mRemovedProfiles = new LinkedHashSet();
        this.mCallbacks = new CopyOnWriteArrayList();
        this.mIsActiveDeviceA2dp = false;
        this.mIsActiveDeviceHeadset = false;
        this.mIsActiveDeviceHearingAid = false;
        this.mIsActiveDeviceLeAudio = false;
        this.mMemberDevices = new HashSet();
        this.mLeadDevice = null;
        this.mIsRestored = false;
        this.mIsSynced = false;
        this.mIsAddrSwitched = false;
        this.mContext = context;
        this.mLocalAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mProfileConnectionState = new HashMap();
        this.mProfileManager = localBluetoothProfileManager;
        this.mDevice = bluetoothDevice;
        this.mAddress = bluetoothDevice.getAddress();
        fillData();
        this.mGroupId = -1;
        initDrawableCache();
        this.mUnpairing = false;
    }

    public static String deviceTypeToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return "UNKNOWN";
                        }
                        return "WEARABLE";
                    }
                    return "WEARABLE_CONNECT";
                }
                return "GEAR";
            }
            return "GEAR1";
        }
        return "GENERIC";
    }

    public final void addMemberDevice(CachedBluetoothDevice cachedBluetoothDevice) {
        Log.d("CachedBluetoothDevice", this + " addMemberDevice = " + cachedBluetoothDevice.mDevice.getAddressForLogging());
        BluetoothDump.BtLog("CachedBtDev -- addMemberDevice: main = " + this.mDevice.getAddressForLogging() + ", member = " + cachedBluetoothDevice.mDevice.getAddressForLogging());
        if (this.mMemberDevices.contains(cachedBluetoothDevice)) {
            BluetoothDump.BtLog("CachedBtDev -- addMemberDevice: contains already");
            return;
        }
        this.mMemberDevices.add(cachedBluetoothDevice);
        this.mLeadDevice = null;
        cachedBluetoothDevice.mLeadDevice = this;
    }

    public final boolean checkHearingAidByUuid() {
        if (ArrayUtils.contains(this.mDevice.getUuids(), BluetoothUuid.HEARING_AID) || ArrayUtils.contains(this.mDevice.getLeService16BitsUuidData(), BluetoothUuid.HEARING_AID) || ArrayUtils.contains(this.mDevice.getLeComplete128BitsUuidData(), ParcelUuid.fromString("7d74f4bd-c74a-4431-862c-cce884371592"))) {
            return true;
        }
        return false;
    }

    public final void checkLEConnectionGuide(boolean z) {
        LocalBluetoothManager localBluetoothManager = LocalBluetoothManager.getInstance(this.mContext, null);
        if (localBluetoothManager == null) {
            return;
        }
        if (!localBluetoothManager.semIsForegroundActivity()) {
            Log.d("CachedBluetoothDevice", "notForeground - skip checking LE");
            return;
        }
        if (this.mType != 2) {
            return;
        }
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
        if (localBluetoothProfileManager != null && hasProfile(localBluetoothProfileManager.mLeAudioProfile)) {
            return;
        }
        if (this.mIsRestored) {
            ParcelUuid[] parcelUuidArr = this.mRestoredDevice.mUuids;
            if (ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HEARING_AID) || ArrayUtils.contains(parcelUuidArr, BluetoothUuid.HOGP)) {
                return;
            }
        }
        if (z) {
            ParcelUuid[] uuids = this.mDevice.getUuids();
            if (ArrayUtils.contains(uuids, BluetoothUuid.HEARING_AID)) {
                return;
            }
            if (ArrayUtils.contains(uuids, BluetoothUuid.HOGP)) {
                this.mBondingDetector.setFailCase(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE_HOGP);
                return;
            }
        } else {
            ParcelUuid[] leService16BitsUuidData = this.mDevice.getLeService16BitsUuidData();
            if (ArrayUtils.contains(leService16BitsUuidData, BluetoothUuid.HEARING_AID) || ArrayUtils.contains(leService16BitsUuidData, BluetoothUuid.LE_AUDIO) || ArrayUtils.contains(this.mDevice.getLeComplete16BitsUuidData(), BluetoothUuid.HOGP) || ArrayUtils.contains(this.mDevice.getLeComplete128BitsUuidData(), ParcelUuid.fromString("7d74f4bd-c74a-4431-862c-cce884371592"))) {
                return;
            }
        }
        this.mBondingDetector.setFailCase(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE_LE);
        Context context = this.mContext;
        BluetoothUtils.showToast(context, context.getString(R.string.bluetooth_le_connection_guide));
    }

    public final void clearProfileConnectionState() {
        Log.d("CachedBluetoothDevice", " Clearing all connection state for dev:" + getNameForLog());
        Iterator it = getProfiles().iterator();
        while (it.hasNext()) {
            this.mProfileConnectionState.put((LocalBluetoothProfile) it.next(), 0);
        }
        this.mBluetoothCastMsg = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0086, code lost:
    
        if (r0 < 0) goto L16;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int compareTo(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CachedBluetoothDevice.compareTo(java.lang.Object):int");
    }

    public final void connect$1() {
        if (!shouldLaunchGM(this.mContext.getPackageName(), false)) {
            secConnect();
        }
    }

    public final void connectDevice() {
        synchronized (this.mProfileLock) {
            if (getProfiles().isEmpty()) {
                Log.d("CachedBluetoothDevice", "No profiles. Maybe we will connect later for device " + this.mDevice);
                return;
            }
            LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
            if (localBluetoothProfileManager != null && hasProfile(localBluetoothProfileManager.mLeAudioProfile)) {
                this.mConnectAttempted = 0L;
            }
            Log.d("CachedBluetoothDevice", "connect " + this);
            this.mDevice.connect();
            if (this.mGroupId != -1) {
                for (CachedBluetoothDevice cachedBluetoothDevice : this.mMemberDevices) {
                    if (cachedBluetoothDevice.mBondState == 12) {
                        Log.d("CachedBluetoothDevice", "connect the member(" + cachedBluetoothDevice.getAddress() + ")");
                        cachedBluetoothDevice.mDevice.connect();
                    }
                }
            }
        }
    }

    public final String describe(LocalBluetoothProfile localBluetoothProfile) {
        StringBuilder sb = new StringBuilder();
        if (BluetoothUtils.DEBUG) {
            sb.append("Address:");
            sb.append(this.mDevice);
        }
        if (localBluetoothProfile != null) {
            sb.append(" Profile:");
            sb.append(localBluetoothProfile);
        }
        return sb.toString();
    }

    public final String describeDetail() {
        StringBuilder sb = new StringBuilder();
        String identityAddress = this.mDevice.getIdentityAddress();
        if (TextUtils.isEmpty(identityAddress)) {
            identityAddress = getAddress();
        }
        if (!TextUtils.isEmpty(identityAddress) && identityAddress.equals(this.mAddress)) {
            sb.append("[" + this.mDevice.getAddressForLogging() + "]");
        } else {
            StringBuilder sb2 = new StringBuilder("[");
            sb2.append(this.mDevice.getAddressForLogging());
            sb2.append(" => ");
            String identityAddress2 = this.mDevice.getIdentityAddress();
            if (!BluetoothUtils.DEBUG) {
                if (identityAddress2 != null) {
                    String replaceAll = identityAddress2.replaceAll(":", "");
                    identityAddress2 = replaceAll.substring(0, 6) + "_" + replaceAll.substring(11);
                } else {
                    identityAddress2 = "null";
                }
            }
            sb2.append(identityAddress2);
            sb2.append("]");
            sb.append(sb2.toString());
        }
        sb.append(", [" + this.mBondState + "]");
        sb.append(", [" + this.mIsRestored + "]");
        if (this.mBtClass != null) {
            sb.append(", [" + this.mBtClass + "]");
        } else {
            sb.append(", [null]");
        }
        sb.append(", [" + ((int) this.mAppearance) + "]");
        sb.append(", [" + this.mType + "]");
        if (getManufacturerRawData() != null) {
            sb.append(", [" + this.mManufacturerData.mManufacturerType + "]");
            sb.append(", [");
            for (byte b : getManufacturerRawData()) {
                sb.append(String.format("%02X ", Byte.valueOf(b)));
            }
            sb.append("]");
        }
        if (this.mGroupId != -1) {
            sb.append(", [" + this.mGroupId + "]");
        }
        return sb.toString();
    }

    public final void disconnect() {
        boolean z;
        boolean z2;
        boolean z3;
        PbapServerProfile pbapServerProfile;
        boolean z4;
        BluetoothDevice bluetoothDevice = this.mDevice;
        boolean z5 = true;
        if (bluetoothDevice.semGetAutoSwitchMode() != -1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Intent intent = new Intent("com.samsung.android.mcfds.autoswitch.BUDS_DISCONNECTED_BY_SETTINGS");
            intent.putExtra("android.bluetooth.device.extra.DEVICE", bluetoothDevice);
            this.mContext.sendBroadcast(intent, "android.permission.BLUETOOTH_PRIVILEGED");
        }
        synchronized (this.mProfileLock) {
            Iterator it = this.mProfiles.iterator();
            z2 = false;
            z3 = false;
            while (it.hasNext()) {
                LocalBluetoothProfile localBluetoothProfile = (LocalBluetoothProfile) it.next();
                if (getProfileConnectionState(localBluetoothProfile) == 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    if (localBluetoothProfile instanceof SppProfile) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                }
            }
        }
        if (z2 && !z3) {
            Log.d("CachedBluetoothDevice", "disconnect :: Connected SPP only. It will launch GM");
            LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
            if (localBluetoothProfileManager != null) {
                localBluetoothProfileManager.mSppProfile.setEnabled(this.mDevice);
                return;
            }
            return;
        }
        String name = getName();
        if (BluetoothUtils.isRTL(this.mContext)) {
            name = PathParser$$ExternalSyntheticOutline0.m("\u200e", name, "\u200e");
        }
        BluetoothUtils.showToast(this.mContext, this.mContext.getString(R.string.bluetooth_disconnect_message, name));
        synchronized (this.mProfileLock) {
            if (this.mGroupId != -1) {
                Iterator it2 = ((HashSet) this.mMemberDevices).iterator();
                while (it2.hasNext()) {
                    CachedBluetoothDevice cachedBluetoothDevice = (CachedBluetoothDevice) it2.next();
                    Log.d("CachedBluetoothDevice", "Disconnect the member:" + cachedBluetoothDevice);
                    cachedBluetoothDevice.disconnect();
                }
            }
            Log.d("CachedBluetoothDevice", "Disconnect " + this);
            this.mDevice.disconnect();
        }
        LocalBluetoothProfileManager localBluetoothProfileManager2 = this.mProfileManager;
        if (localBluetoothProfileManager2 != null && (pbapServerProfile = localBluetoothProfileManager2.mPbapProfile) != null) {
            if (getProfileConnectionState(pbapServerProfile) != 2) {
                z5 = false;
            }
            if (z5) {
                pbapServerProfile.setEnabled(this.mDevice);
            }
        }
    }

    public final void dispatchAttributesChanged() {
        Iterator it = ((CopyOnWriteArrayList) this.mCallbacks).iterator();
        while (it.hasNext()) {
            ((Callback) it.next()).onDeviceAttributesChanged();
        }
        synchronized (this.mSemCallbacks) {
            Iterator it2 = ((ArrayList) this.mSemCallbacks).iterator();
            if (it2.hasNext()) {
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it2.next());
                throw null;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof CachedBluetoothDevice)) {
            return this.mDevice.equals(((CachedBluetoothDevice) obj).mDevice);
        }
        return false;
    }

    public final void fetchActiveDevices() {
        List activeDevices;
        BluetoothDevice bluetoothDevice;
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
        if (localBluetoothProfileManager != null) {
            A2dpProfile a2dpProfile = localBluetoothProfileManager.mA2dpProfile;
            if (a2dpProfile != null) {
                this.mIsActiveDeviceA2dp = this.mDevice.equals(a2dpProfile.getActiveDevice());
            }
            HeadsetProfile headsetProfile = this.mProfileManager.mHeadsetProfile;
            if (headsetProfile != null) {
                BluetoothDevice bluetoothDevice2 = this.mDevice;
                BluetoothAdapter bluetoothAdapter = headsetProfile.mBluetoothAdapter;
                if (bluetoothAdapter != null) {
                    List activeDevices2 = bluetoothAdapter.getActiveDevices(1);
                    if (activeDevices2.size() > 0) {
                        bluetoothDevice = (BluetoothDevice) activeDevices2.get(0);
                        this.mIsActiveDeviceHeadset = bluetoothDevice2.equals(bluetoothDevice);
                    }
                }
                bluetoothDevice = null;
                this.mIsActiveDeviceHeadset = bluetoothDevice2.equals(bluetoothDevice);
            }
            HearingAidProfile hearingAidProfile = this.mProfileManager.mHearingAidProfile;
            if (hearingAidProfile != null) {
                BluetoothAdapter bluetoothAdapter2 = hearingAidProfile.mBluetoothAdapter;
                if (bluetoothAdapter2 == null) {
                    activeDevices = new ArrayList();
                } else {
                    activeDevices = bluetoothAdapter2.getActiveDevices(21);
                }
                this.mIsActiveDeviceHearingAid = activeDevices.contains(this.mDevice);
            }
            LeAudioProfile leAudioProfile = this.mProfileManager.mLeAudioProfile;
            if (leAudioProfile != null) {
                this.mIsActiveDeviceLeAudio = leAudioProfile.getActiveDevices().contains(this.mDevice);
            }
        }
    }

    public final void fetchManufacturerData(byte[] bArr) {
        setManufacturerData(bArr);
        if (BluetoothUtils.DEBUG) {
            Log.d("CachedBluetoothDevice", "fetchManufacturerData : " + Arrays.toString(getManufacturerRawData()));
        }
    }

    public final void fetchName$1() {
        String name = this.mDevice.getName();
        String alias = this.mDevice.getAlias();
        if (!TextUtils.isEmpty(name)) {
            this.mDeviceName = name;
        } else {
            this.mDeviceName = this.mDevice.getAddress();
            if (BluetoothUtils.DEBUG) {
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Device has no Device name (yet), use address: "), this.mDeviceName, "CachedBluetoothDevice");
            }
        }
        if (!TextUtils.isEmpty(alias)) {
            this.mName = alias;
            return;
        }
        this.mName = this.mDevice.getAddress();
        if (BluetoothUtils.DEBUG) {
            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Device has no name (yet), use address: "), this.mName, "CachedBluetoothDevice");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void fillData() {
        /*
            Method dump skipped, instructions count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CachedBluetoothDevice.fillData():void");
    }

    public final void fillRestoredData() {
        BluetoothRetryDetector bluetoothRetryDetector;
        if (TextUtils.isEmpty(this.mRestoredDevice.mName)) {
            fetchName$1();
        } else {
            String str = this.mRestoredDevice.mName;
            this.mName = str;
            this.mDeviceName = str;
        }
        Log.d("CachedBluetoothDevice", "fillRestoredData() :: Device - " + getNameForLog() + ", Class - " + this.mRestoredDevice.mCod);
        setBtClass(new BluetoothClass(this.mRestoredDevice.mCod));
        BluetoothClass bluetoothClass = this.mBtClass;
        if (bluetoothClass != null && !bluetoothClass.equals(this.mDevice.getBluetoothClass())) {
            this.mDevice.setBluetoothClass(this.mRestoredDevice.mCod);
        }
        BluetoothRestoredDevice bluetoothRestoredDevice = this.mRestoredDevice;
        this.mAppearance = (short) bluetoothRestoredDevice.mAppearance;
        setManufacturerData(bluetoothRestoredDevice.mManufacturerData);
        BluetoothRestoredDevice bluetoothRestoredDevice2 = this.mRestoredDevice;
        this.mBondTimeStamp = bluetoothRestoredDevice2.mTimeStamp;
        this.mType = bluetoothRestoredDevice2.mLinkType;
        if (bluetoothRestoredDevice2.mManufacturerData != null && !Arrays.equals(this.mDevice.semGetManufacturerData(), this.mRestoredDevice.mManufacturerData)) {
            this.mDevice.semSetManufacturerData(this.mRestoredDevice.mManufacturerData);
        }
        this.mIsRestored = true;
        this.mIsBondingByCached = false;
        if (this.mRestoredDevice.mBondState == 4) {
            this.mIsAddrSwitched = true;
        }
        this.mBondState = 10;
        updateProfiles(null);
        if (BluetoothUtils.isGalaxyWatchDevice(this.mDeviceName, this.mBtClass, getManufacturerRawData(), this.mRestoredDevice.mUuids)) {
            bluetoothRetryDetector = new BluetoothRetryDetector(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE_WATCH, false);
        } else {
            bluetoothRetryDetector = new BluetoothRetryDetector(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE, false);
        }
        this.mBondingDetector = bluetoothRetryDetector;
    }

    public final String getAddress() {
        return this.mDevice.getAddress();
    }

    public final int getAppearanceDrawable(int i) {
        if (i != 64) {
            if (i != 128) {
                if (i != 512) {
                    if (i != 192 && i != 193) {
                        switch (i) {
                            case 960:
                            case 961:
                                return R.drawable.list_ic_keyboard;
                            case 962:
                                return R.drawable.list_ic_mouse;
                            case 963:
                            case 964:
                                return R.drawable.list_ic_game_device;
                            default:
                                return 0;
                        }
                    }
                    String upperCase = this.mDeviceName.toUpperCase();
                    if (!upperCase.startsWith("GEAR FIT") && !upperCase.startsWith("GALAXY FIT")) {
                        return R.drawable.list_ic_wearable;
                    }
                    return R.drawable.list_ic_band;
                }
                return R.drawable.list_ic_dongle;
            }
            return R.drawable.list_ic_laptop;
        }
        if (getName().startsWith("GALAXY Gear (")) {
            return R.drawable.list_ic_wearable;
        }
        return R.drawable.list_ic_mobile;
    }

    public final int getBtClassDrawable() {
        String str;
        int i;
        int deviceIcon;
        String str2 = this.mDeviceName;
        if (str2 != null) {
            str = str2.toUpperCase();
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder("getBtClassDrawable :: ");
        sb.append(getNameForLog());
        sb.append(", BluetoothClass = ");
        sb.append(this.mBtClass);
        sb.append(", Appearance = ");
        RecyclerView$$ExternalSyntheticOutline0.m(sb, this.mAppearance, "CachedBluetoothDevice");
        ManufacturerData manufacturerData = this.mManufacturerData;
        if (manufacturerData != null && (deviceIcon = manufacturerData.getDeviceIcon()) != 0) {
            return deviceIcon;
        }
        BluetoothClass bluetoothClass = this.mBtClass;
        if (bluetoothClass != null) {
            int majorDeviceClass = bluetoothClass.getMajorDeviceClass();
            if (majorDeviceClass != 256) {
                if (majorDeviceClass != 512) {
                    if (majorDeviceClass != 1024) {
                        if (majorDeviceClass != 1280) {
                            if (majorDeviceClass != 1536) {
                                if (majorDeviceClass == 1792 && this.mBtClass.getDeviceClass() == 1796) {
                                    if (str != null) {
                                        if (str.startsWith("GEAR FIT") || str.startsWith("GALAXY FIT")) {
                                            return R.drawable.list_ic_band;
                                        }
                                        return R.drawable.list_ic_wearable;
                                    }
                                    return R.drawable.list_ic_wearable;
                                }
                            } else {
                                if (this.mBtClass.getDeviceClass() != 1664 && this.mBtClass.getDeviceClass() != 1600) {
                                    return R.drawable.list_ic_camera;
                                }
                                return R.drawable.list_ic_printer;
                            }
                        } else {
                            return HidProfile.getHidClassDrawable(this.mBtClass);
                        }
                    } else {
                        if (str != null) {
                            if (str.startsWith("SAMSUNG LEVEL")) {
                                if (str.contains("BOX")) {
                                    i = R.drawable.list_ic_dlna_audio;
                                } else {
                                    i = R.drawable.list_ic_headset;
                                }
                            } else if (str.startsWith("GEAR CIRCLE") && isGearIconX()) {
                                i = R.drawable.list_ic_gear_circle;
                            } else {
                                i = 0;
                            }
                            if (i != 0) {
                                return i;
                            }
                        }
                        if (isGearIconX()) {
                            return R.drawable.list_ic_true_wireless_earbuds;
                        }
                        if (this.mBtClass.getDeviceClass() == 1084) {
                            return R.drawable.list_ic_tv;
                        }
                        if (this.mBtClass.getDeviceClass() == 1076) {
                            return R.drawable.list_ic_camcoder;
                        }
                        LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
                        if (localBluetoothProfileManager != null && hasProfile(localBluetoothProfileManager.mA2dpProfile) && hasProfile(this.mProfileManager.mHeadsetProfile)) {
                            return R.drawable.list_ic_sound_accessory_default;
                        }
                    }
                    int appearanceDrawable = getAppearanceDrawable(this.mAppearance);
                    if (appearanceDrawable != 0) {
                        return appearanceDrawable;
                    }
                    if (this.mBtClass.doesClassMatch(1)) {
                        return R.drawable.list_ic_sound_accessory_default;
                    }
                    if (this.mBtClass.doesClassMatch(0)) {
                        return R.drawable.list_ic_mono_headset;
                    }
                } else {
                    if (this.mIsTablet) {
                        return R.drawable.list_ic_tablet;
                    }
                    return R.drawable.list_ic_mobile;
                }
            } else {
                if (this.mBtClass.getDeviceClass() == 284) {
                    return R.drawable.list_ic_tablet;
                }
                return R.drawable.list_ic_laptop;
            }
        } else {
            short s = this.mAppearance;
            if (s != 0) {
                int appearanceDrawable2 = getAppearanceDrawable(s);
                if (appearanceDrawable2 != 0) {
                    return appearanceDrawable2;
                }
            } else {
                Log.w("CachedBluetoothDevice", "mBtClass is null");
            }
        }
        LocalBluetoothProfileManager localBluetoothProfileManager2 = this.mProfileManager;
        if (localBluetoothProfileManager2 != null && hasProfile(localBluetoothProfileManager2.mA2dpProfile) && hasProfile(this.mProfileManager.mHeadsetProfile)) {
            Integer num = 1056;
            setBtClass(new BluetoothClass(num.intValue()));
            return R.drawable.list_ic_sound_accessory_default;
        }
        List<LocalBluetoothProfile> profiles = getProfiles();
        for (LocalBluetoothProfile localBluetoothProfile : profiles) {
            for (int i2 = 0; i2 < profiles.size(); i2++) {
                if (profiles.get(i2) instanceof A2dpProfile) {
                    Integer num2 = 1048;
                    setBtClass(new BluetoothClass(num2.intValue()));
                    return R.drawable.list_ic_sound_accessory_default;
                }
            }
            int drawableResource = localBluetoothProfile.getDrawableResource(this.mBtClass);
            if (drawableResource != 0) {
                return drawableResource;
            }
        }
        return R.drawable.list_ic_general_device;
    }

    public final List getConnectableProfiles() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mProfileLock) {
            Iterator it = this.mProfiles.iterator();
            while (it.hasNext()) {
                LocalBluetoothProfile localBluetoothProfile = (LocalBluetoothProfile) it.next();
                if (localBluetoothProfile.accessProfileEnabled()) {
                    arrayList.add(localBluetoothProfile);
                }
            }
        }
        return arrayList;
    }

    public final int getDeviceType() {
        boolean isEmergencyMode;
        boolean z;
        ManufacturerData manufacturerData;
        int i;
        String str;
        Context context = this.mContext;
        boolean z2 = BluetoothUtils.DEBUG;
        if ((!SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING") && !SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING")) || SemEmergencyManager.getInstance(context) == null) {
            isEmergencyMode = false;
        } else {
            isEmergencyMode = SemEmergencyManager.isEmergencyMode(context);
        }
        if (isEmergencyMode) {
            Log.d("CachedBluetoothDevice", "getDeviceType: EmergencyMode enabled");
            return 0;
        }
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
        if (localBluetoothProfileManager == null) {
            Log.d("CachedBluetoothDevice", "getDeviceType: LocalBluetoothProfileManager is null");
            return 0;
        }
        CachedBluetoothDeviceManager cachedBluetoothDeviceManager = localBluetoothProfileManager.mDeviceManager;
        if (cachedBluetoothDeviceManager == null) {
            Log.d("CachedBluetoothDevice", "getDeviceType: CachedBluetoothDeviceManager is null");
            return 0;
        }
        if (getBtClassDrawable() == R.drawable.list_ic_wearable && (str = this.mDeviceName) != null && str.startsWith("GALAXY Gear (")) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mVersion = cachedBluetoothDeviceManager.getStubVersion("com.samsung.android.app.watchmanagerstub");
            if (cachedBluetoothDeviceManager.isValidStub("com.samsung.android.app.watchmanagerstub")) {
                return 1;
            }
        } else {
            if (getManufacturerRawData() == null || ((i = (manufacturerData = this.mManufacturerData).mManufacturerType) != 1 && i != 2 && i != 3)) {
                return 0;
            }
            byte[] bArr = manufacturerData.mData.mDeviceId;
            byte b = bArr[0];
            if (b == 0) {
                int i2 = bArr[1] & 255;
                if (i2 >= 144 && i2 <= 255) {
                    this.mVersion = cachedBluetoothDeviceManager.getStubVersion("com.sec.android.app.applinker");
                    if (cachedBluetoothDeviceManager.isValidStub("com.sec.android.app.applinker")) {
                        if (this.mManufacturerData.mData.mBluetoothType == 1) {
                            return 3;
                        }
                        return 4;
                    }
                } else if (i2 >= 1) {
                    this.mVersion = cachedBluetoothDeviceManager.getStubVersion("com.samsung.android.app.watchmanagerstub");
                    if (cachedBluetoothDeviceManager.isValidStub("com.samsung.android.app.watchmanagerstub")) {
                        return 2;
                    }
                }
            } else if (b == 1 || b == 2 || b == 3) {
                this.mVersion = cachedBluetoothDeviceManager.getStubVersion("com.samsung.android.app.watchmanagerstub");
                if (cachedBluetoothDeviceManager.isValidStub("com.samsung.android.app.watchmanagerstub")) {
                    return 2;
                }
            }
        }
        return 0;
    }

    public final long getHiSyncId() {
        HearingAidInfo hearingAidInfo = this.mHearingAidInfo;
        if (hearingAidInfo != null) {
            return hearingAidInfo.mHiSyncId;
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getIconDrawable() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CachedBluetoothDevice.getIconDrawable():android.graphics.drawable.Drawable");
    }

    public final byte[] getManufacturerRawData() {
        ManufacturerData manufacturerData = this.mManufacturerData;
        if (manufacturerData == null) {
            return null;
        }
        return manufacturerData.mManufacturerRawData;
    }

    public final int getMaxConnectionState() {
        int i;
        int profileConnectionState;
        synchronized (this.mProfileLock) {
            i = 0;
            for (LocalBluetoothProfile localBluetoothProfile : getProfiles()) {
                if (localBluetoothProfile != null && !(localBluetoothProfile instanceof CsipSetCoordinatorProfile) && (profileConnectionState = getProfileConnectionState(localBluetoothProfile)) > i) {
                    i = profileConnectionState;
                }
            }
        }
        return i;
    }

    public final String getName() {
        if (!TextUtils.isEmpty(this.mName) && !this.mName.equals(this.mDeviceName)) {
            return this.mName;
        }
        String str = this.mDeviceName;
        if (str != null) {
            return str;
        }
        return this.mAddress;
    }

    public final String getNameForLog() {
        StringBuilder sb = new StringBuilder();
        String str = this.mName;
        if (str != null && !str.equals(this.mDeviceName)) {
            sb.append("(A) ");
        } else {
            String str2 = this.mDeviceName;
            if (str2 != null && !str2.equals(this.mDevice.getAddress())) {
                sb.append("(N) ");
            }
        }
        String name = getName();
        if (name.equals(this.mDevice.getAddress()) && !BluetoothUtils.DEBUG) {
            return name.substring(0, 14) + ":XX";
        }
        sb.append(name);
        return sb.toString();
    }

    public final int getProfileConnectionState(LocalBluetoothProfile localBluetoothProfile) {
        if (localBluetoothProfile == null) {
            Log.e("CachedBluetoothDevice", "getProfileConnectionState :: profile is null");
            return 0;
        }
        if (this.mProfileConnectionState == null) {
            this.mProfileConnectionState = new HashMap();
        }
        synchronized (this.mProfileLock) {
            if (!this.mProfiles.contains(localBluetoothProfile)) {
                Log.e("CachedBluetoothDevice", "getProfileConnectionState :: not support profile = " + localBluetoothProfile);
                return 0;
            }
            if (this.mProfileConnectionState.get(localBluetoothProfile) == null) {
                int connectionStatus = localBluetoothProfile.getConnectionStatus(this.mDevice);
                Log.d("CachedBluetoothDevice", "getProfileConnectionState :: " + localBluetoothProfile + ", state : " + connectionStatus);
                this.mProfileConnectionState.put(localBluetoothProfile, Integer.valueOf(connectionStatus));
                return connectionStatus;
            }
            return ((Integer) this.mProfileConnectionState.get(localBluetoothProfile)).intValue();
        }
    }

    public final List getProfiles() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mProfileLock) {
            arrayList.addAll(this.mProfiles);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final boolean hasProfile(LocalBluetoothProfile localBluetoothProfile) {
        if (localBluetoothProfile == null) {
            Log.e("CachedBluetoothDevice", "hasProfile :: target profile is null, return false.");
            return false;
        }
        List profiles = getProfiles();
        for (int i = 0; i < profiles.size(); i++) {
            LocalBluetoothProfile localBluetoothProfile2 = (LocalBluetoothProfile) profiles.get(i);
            if (localBluetoothProfile2 != null && localBluetoothProfile2.equals(localBluetoothProfile)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.mDevice.getAddress().hashCode();
    }

    public final void initDrawableCache() {
        this.mDrawableCache = new LruCache(this, ((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8) { // from class: com.android.settingslib.bluetooth.CachedBluetoothDevice.1
            @Override // android.util.LruCache
            public final int sizeOf(Object obj, Object obj2) {
                return ((BitmapDrawable) obj2).getBitmap().getByteCount() / 1024;
            }
        };
    }

    public boolean isActiveDevice(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 21) {
                    if (i != 22) {
                        IconCompat$$ExternalSyntheticOutline0.m("getActiveDevice: unknown profile ", i, "CachedBluetoothDevice");
                        return false;
                    }
                    return this.mIsActiveDeviceLeAudio;
                }
                return this.mIsActiveDeviceHearingAid;
            }
            return this.mIsActiveDeviceA2dp;
        }
        return this.mIsActiveDeviceHeadset;
    }

    public final boolean isBusy() {
        int profileConnectionState;
        for (LocalBluetoothProfile localBluetoothProfile : getProfiles()) {
            if (localBluetoothProfile != null && ((profileConnectionState = getProfileConnectionState(localBluetoothProfile)) == 1 || profileConnectionState == 3)) {
                return true;
            }
        }
        if (this.mBondState == 11) {
            return true;
        }
        return false;
    }

    public final boolean isConnected() {
        synchronized (this.mProfileLock) {
            Iterator it = this.mProfiles.iterator();
            while (it.hasNext()) {
                if (getProfileConnectionState((LocalBluetoothProfile) it.next()) == 2) {
                    return true;
                }
            }
            return false;
        }
    }

    public final boolean isGearIconX() {
        BluetoothClass bluetoothClass;
        byte[] manufacturerRawData = getManufacturerRawData();
        if (manufacturerRawData == null || (bluetoothClass = this.mBtClass) == null || manufacturerRawData.length < 9) {
            return false;
        }
        byte[] bArr = this.mManufacturerData.mData.mDeviceId;
        byte b = bArr[0];
        if ((b != 0 && b != 1) || bArr[1] != 1 || bluetoothClass.getDeviceClass() != 1028) {
            return false;
        }
        return true;
    }

    public final boolean isHearableUsingWearableManager() {
        BluetoothClass bluetoothClass;
        byte b;
        byte[] manufacturerRawData = getManufacturerRawData();
        if (manufacturerRawData == null || (bluetoothClass = this.mBtClass) == null || manufacturerRawData.length < 9) {
            return false;
        }
        byte[] bArr = this.mManufacturerData.mData.mDeviceId;
        int i = bArr[1] & 255;
        if (bluetoothClass.getDeviceClass() != 1028 || (((b = bArr[0]) != 0 || i < 1 || i >= 144) && b != 1 && b != 2 && b != 3)) {
            return false;
        }
        return true;
    }

    public final void onCastProfileStateChanged(SemBluetoothCastDevice semBluetoothCastDevice, int i) {
        if (i == 2) {
            this.mBluetoothCastMsg = this.mContext.getString(R.string.bluetooth_cast_shared_with, semBluetoothCastDevice.getPeerName());
        } else {
            this.mBluetoothCastMsg = null;
        }
        refresh();
    }

    public final void onProfileStateChanged(LocalBluetoothProfile localBluetoothProfile, int i) {
        BluetoothRetryDetector bluetoothRetryDetector;
        String str;
        boolean z = BluetoothUtils.DEBUG;
        if (z) {
            Log.d("CachedBluetoothDevice", "onProfileStateChanged: profile " + localBluetoothProfile + ", device=" + this.mDevice + ", newProfileState " + i);
        }
        if (this.mLocalAdapter.getState() == 13) {
            if (z) {
                Log.d("CachedBluetoothDevice", " BT Turninig Off...Profile conn state change ignored...");
                return;
            }
            return;
        }
        if (this.mDevice != null && (i == 2 || i == 0)) {
            int myPid = Process.myPid();
            if (i == 2) {
                str = "Bluetooth profile %s on bluetooth device %s has connected.";
            } else {
                str = "Bluetooth profile %s on bluetooth device %s has disconnected.";
            }
            AuditLog.log(5, 1, true, myPid, "CachedBluetoothDevice", String.format(str, localBluetoothProfile, this.mDevice.getAddress()), "");
        }
        this.mProfileConnectionState.put(localBluetoothProfile, Integer.valueOf(i));
        synchronized (this.mProfileLock) {
            boolean z2 = false;
            if (i == 2) {
                if (!this.mProfiles.contains(localBluetoothProfile)) {
                    this.mRemovedProfiles.remove(localBluetoothProfile);
                    this.mProfiles.add(localBluetoothProfile);
                    if (localBluetoothProfile instanceof PanProfile) {
                        BluetoothDevice bluetoothDevice = this.mDevice;
                        HashMap hashMap = ((PanProfile) localBluetoothProfile).mDeviceRoleMap;
                        if (hashMap.containsKey(bluetoothDevice) && ((Integer) hashMap.get(bluetoothDevice)).intValue() == 1) {
                            z2 = true;
                        }
                        if (z2) {
                            this.mLocalNapRoleConnected = true;
                            this.mOnlyPANUDevices.add(this.mDevice);
                        }
                    }
                }
                CachedBluetoothDevice cachedBluetoothDevice = this.mLeadDevice;
                if (cachedBluetoothDevice != null && !(localBluetoothProfile instanceof CsipSetCoordinatorProfile) && !(localBluetoothProfile instanceof VolumeControlProfile) && (bluetoothRetryDetector = cachedBluetoothDevice.mBondingDetector) != null && bluetoothRetryDetector.mIsForRestored) {
                    bluetoothRetryDetector.mRestoredDeviceList.clear();
                }
            } else if (this.mLocalNapRoleConnected && (localBluetoothProfile instanceof PanProfile) && this.mOnlyPANUDevices.contains(this.mDevice) && i == 0) {
                Log.d("CachedBluetoothDevice", "Removing PanProfile from device after NAP disconnect");
                this.mProfiles.remove(localBluetoothProfile);
                this.mRemovedProfiles.add(localBluetoothProfile);
                this.mOnlyPANUDevices.remove(this.mDevice);
                if (this.mOnlyPANUDevices.size() == 0) {
                    this.mLocalNapRoleConnected = false;
                }
            }
        }
    }

    public final void refresh() {
        ThreadUtils.postOnBackgroundThread(new CachedBluetoothDevice$$ExternalSyntheticLambda0(this, 0));
    }

    public final void refreshName() {
        fetchName$1();
        if (BluetoothUtils.DEBUG) {
            Log.d("CachedBluetoothDevice", "Device name: " + getName());
        }
        dispatchAttributesChanged();
    }

    public final void secConnect() {
        boolean z;
        if (this.mBondState == 10) {
            startPairing();
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return;
        }
        checkLEConnectionGuide(true);
        this.mConnectAttempted = SystemClock.elapsedRealtime();
        connectDevice();
    }

    public final void setBtClass(BluetoothClass bluetoothClass) {
        if (this.mBtClass != bluetoothClass) {
            boolean z = BluetoothUtils.DEBUG;
            if (z) {
                Log.d("CachedBluetoothDevice", "setBtClass :: " + bluetoothClass);
            }
            if (this.mBtClass != null && bluetoothClass.getMajorDeviceClass() == 7936) {
                if (z) {
                    Log.d("CachedBluetoothDevice", "setBtClass :: btClass is " + bluetoothClass + ", not set uncategorized");
                    return;
                }
                return;
            }
            this.mBtClass = bluetoothClass;
            dispatchAttributesChanged();
        }
    }

    public final void setGroupId(int i) {
        LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
        if (localBluetoothProfileManager != null && hasProfile(localBluetoothProfileManager.mLeAudioProfile)) {
            BluetoothDump.BtLog("CachedBtDev -- setGroupId: " + this.mDevice.getAddressForLogging() + ", groupId = " + i);
        }
        this.mGroupId = i;
    }

    public final void setJustDiscovered(boolean z) {
        if (this.mJustDiscovered != z) {
            this.mJustDiscovered = z;
            dispatchAttributesChanged();
        }
    }

    public final void setManufacturerData(byte[] bArr) {
        if (BluetoothUtils.DEBUG) {
            Log.d("CachedBluetoothDevice", "setManufacturerData to " + Arrays.toString(bArr));
        }
        if (bArr == null) {
            Log.i("CachedBluetoothDevice", "MF is NULL");
            return;
        }
        if (this.mManufacturerData == null) {
            ManufacturerData manufacturerData = new ManufacturerData(bArr);
            this.mManufacturerData = manufacturerData;
            this.mPrefixName = manufacturerData.mData.mDeviceCategoryPrefix;
            dispatchAttributesChanged();
            return;
        }
        if (!Arrays.equals(getManufacturerRawData(), bArr)) {
            this.mManufacturerData.updateDeviceInfo(bArr);
            this.mPrefixName = this.mManufacturerData.mData.mDeviceCategoryPrefix;
            dispatchAttributesChanged();
        }
    }

    public final void setName(String str) {
        byte b;
        byte[] bArr;
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, getName())) {
            BluetoothDevice bluetoothDevice = this.mDevice;
            int tag = SmepTag.FEATURE_CHANGE_DEVICE_NAME.getTag();
            byte[] semGetMetadata = bluetoothDevice.semGetMetadata(new byte[]{(byte) tag, (byte) (tag >> 8)});
            if (semGetMetadata != null && semGetMetadata.length != 0) {
                Log.d("CachedBluetoothDevice", "FEATURE_CHANGE_DEVICE_NAME = " + Arrays.toString(semGetMetadata));
            } else {
                Log.d("CachedBluetoothDevice", "FEATURE_CHANGE_DEVICE_NAME = null");
            }
            if (semGetMetadata != null && semGetMetadata.length > 3 && (b = semGetMetadata[3]) > 0 && b != -1) {
                int tag2 = SmepTag.CMD_PERSONALIZED_NAME_VALUE.getTag();
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                if (SmepTag.isValidConstantKey(tag2) && bytes != null && bytes.length != 0) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byteArrayOutputStream.write(new byte[]{(byte) tag2, (byte) (tag2 >> 8)});
                        byteArrayOutputStream.write((byte) bytes.length);
                        byteArrayOutputStream.write(bytes);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    bArr = byteArrayOutputStream.toByteArray();
                } else {
                    bArr = null;
                }
                this.mDevice.semSetMetadata(bArr);
            } else {
                this.mDevice.setAlias(str);
            }
            dispatchAttributesChanged();
            Iterator it = ((HashSet) this.mMemberDevices).iterator();
            while (it.hasNext()) {
                ((CachedBluetoothDevice) it.next()).setName(str);
            }
        }
    }

    public final void setRssi(short s) {
        int i;
        int i2 = this.mRssiGroup;
        if (s >= -56) {
            i = 3;
        } else if (s >= -68) {
            i = 2;
        } else {
            i = 1;
        }
        if (i2 != i) {
            if (s >= -56) {
                if (i2 != 3) {
                    this.mRssiGroup = 3;
                    dispatchAttributesChanged();
                }
            } else if (s >= -68) {
                if (i2 != 2) {
                    this.mRssiGroup = 2;
                    dispatchAttributesChanged();
                }
            } else if (s < -68 && i2 != 1) {
                this.mRssiGroup = 1;
                dispatchAttributesChanged();
            }
            this.mRssi = s;
        }
    }

    public final boolean shouldLaunchGM(String str, boolean z) {
        Intent intent;
        Intent intent2;
        String address = this.mDevice.getAddress();
        int deviceType = getDeviceType();
        String str2 = null;
        boolean z2 = true;
        if (deviceType != 1) {
            if (deviceType != 2) {
                if (deviceType != 3) {
                    if (deviceType != 4) {
                        return false;
                    }
                    if (this.mVersion >= 200) {
                        intent = new Intent("com.samsung.android.action.BLUETOOTH_DEVICE");
                        intent.putExtra("DATA", getManufacturerRawData());
                        intent.setPackage("com.sec.android.app.applinker");
                        Log.d("CachedBluetoothDevice", "shouldLaunchGM :: Send Bradcast to AppLinker, type : ".concat(deviceTypeToString(deviceType)));
                    } else {
                        Log.d("CachedBluetoothDevice", "shouldLaunchGM :: AppLinker version is not satisfy");
                        intent = null;
                    }
                } else {
                    if (this.mVersion >= 200) {
                        intent = new Intent("com.samsung.android.action.BLUETOOTH_DEVICE");
                        intent.putExtra("DATA", getManufacturerRawData());
                        intent.setPackage("com.sec.android.app.applinker");
                        Log.d("CachedBluetoothDevice", "shouldLaunchGM :: Send Bradcast to AppLinker, type : ".concat(deviceTypeToString(deviceType)));
                    } else {
                        Log.d("CachedBluetoothDevice", "shouldLaunchGM :: AppLinker version is not satisfy");
                        intent = null;
                    }
                    z2 = false;
                }
            } else {
                int i = this.mVersion;
                if (i < 200) {
                    byte[] manufacturerRawData = getManufacturerRawData();
                    if (manufacturerRawData != null && manufacturerRawData.length > 10) {
                        StringBuilder sb = new StringBuilder(manufacturerRawData[10]);
                        for (int i2 = 0; i2 < manufacturerRawData[10]; i2++) {
                            sb.append((char) manufacturerRawData[i2 + 11]);
                        }
                        String sb2 = sb.toString();
                        Intent intent3 = new Intent("com.samsung.android.sconnect.action.CONNECT_WEARABLE");
                        intent3.putExtra("WM_MANAGER", sb2);
                        intent2 = intent3;
                    } else {
                        intent2 = null;
                    }
                } else if (i < 300) {
                    intent2 = new Intent("com.samsung.android.wmanger.action.CONNECT_WEARABLE");
                    intent2.putExtra("DATA", getManufacturerRawData());
                } else {
                    intent2 = new Intent("com.samsung.android.action.BLUETOOTH_DEVICE");
                    intent2.putExtra("DATA", getManufacturerRawData());
                }
                if (intent2 != null) {
                    intent2.setPackage("com.samsung.android.app.watchmanagerstub");
                    Log.d("CachedBluetoothDevice", "shouldLaunchGM :: Send Bradcast to WatchManagerStub, type : ".concat(deviceTypeToString(deviceType)));
                }
                z2 = true ^ isHearableUsingWearableManager();
                intent = intent2;
            }
        } else {
            Intent intent4 = new Intent("com.samsung.android.sconnect.action.CONNECT_WEARABLE");
            intent4.putExtra("WM_MANAGER", "watchmanager");
            intent4.setPackage("com.samsung.android.app.watchmanagerstub");
            Log.d("CachedBluetoothDevice", "shouldLaunchGM :: Send Bradcast to WatchManagerStub, type : ".concat(deviceTypeToString(deviceType)));
            intent = intent4;
        }
        if (intent != null) {
            if (str != null) {
                intent.putExtra("request_app_package_name", str);
            }
            intent.putExtra("MAC", address);
            String str3 = this.mDeviceName;
            if ((str3 != null && !str3.equals(this.mAddress)) || TextUtils.isEmpty(null)) {
                str2 = this.mDeviceName;
            }
            intent.putExtra(PeripheralConstants.Internal.BtPairingExtraDataType.DEVICE_NAME, str2);
            intent.putExtra("IS_START_ACTIVITY", z);
            intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
            intent.addFlags(32);
            intent.addFlags(16777216);
            this.mContext.sendBroadcast(intent, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE");
        }
        StatusBarManager statusBarManager = (StatusBarManager) this.mContext.getSystemService("statusbar");
        if (statusBarManager != null) {
            statusBarManager.collapsePanels();
        }
        return z2;
    }

    public final void startPairing() {
        if (this.mLocalAdapter.isDiscovering()) {
            this.mLocalAdapter.cancelDiscovery();
        }
        int i = 0;
        checkLEConnectionGuide(false);
        if (this.mIsRestored && this.mType == 2) {
            i = 2;
        }
        if (!this.mDevice.createBond(i)) {
            return;
        }
        this.mIsBondingByCached = true;
    }

    public final void switchSubDeviceContent() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        short s = this.mRssi;
        boolean z = this.mJustDiscovered;
        HearingAidInfo hearingAidInfo = this.mHearingAidInfo;
        HashMap hashMap = this.mProfileConnectionState;
        String str = this.mName;
        CachedBluetoothDevice cachedBluetoothDevice = this.mSubDevice;
        this.mDevice = cachedBluetoothDevice.mDevice;
        this.mRssi = cachedBluetoothDevice.mRssi;
        this.mJustDiscovered = cachedBluetoothDevice.mJustDiscovered;
        this.mProfileConnectionState = cachedBluetoothDevice.mProfileConnectionState;
        this.mName = cachedBluetoothDevice.mName;
        this.mHearingAidInfo = cachedBluetoothDevice.mHearingAidInfo;
        cachedBluetoothDevice.mDevice = bluetoothDevice;
        cachedBluetoothDevice.mRssi = s;
        cachedBluetoothDevice.mJustDiscovered = z;
        cachedBluetoothDevice.mProfileConnectionState = hashMap;
        cachedBluetoothDevice.mName = str;
        cachedBluetoothDevice.mHearingAidInfo = hearingAidInfo;
        fetchActiveDevices();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CachedBluetoothDevice{anonymizedAddress=");
        sb.append(this.mDevice.getAnonymizedAddress());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", groupId=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.mGroupId, "}");
    }

    public final void unpair() {
        if (this.mIsRestored) {
            LocalBluetoothManager localBluetoothManager = LocalBluetoothManager.getInstance(this.mContext, null);
            if (localBluetoothManager != null) {
                localBluetoothManager.mCachedDeviceManager.removeRestoredDevice(this);
            }
        } else {
            unpairLegacy();
        }
        BluetoothRetryDetector bluetoothRetryDetector = this.mBondingDetector;
        if (bluetoothRetryDetector != null) {
            if (bluetoothRetryDetector.mIsForRestored) {
                bluetoothRetryDetector.mRestoredDeviceList.clear();
            }
            if (BluetoothUtils.isGalaxyWatchDevice(this.mDeviceName, this.mBtClass, getManufacturerRawData(), this.mDevice.getUuids())) {
                this.mBondingDetector.setFailCase(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE_WATCH);
            } else {
                this.mBondingDetector.setFailCase(BluetoothRetryDetector.FailCase.PAIRING_FAILURE);
            }
        }
    }

    public final void unpairLegacy() {
        boolean z;
        PbapServerProfile pbapServerProfile;
        int i = this.mBondState;
        if (i != 10) {
            synchronized (this.mProfileLock) {
                Iterator it = this.mProfiles.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    LocalBluetoothProfile localBluetoothProfile = (LocalBluetoothProfile) it.next();
                    if ((localBluetoothProfile instanceof SppProfile) || (localBluetoothProfile instanceof HidProfile)) {
                        z = true;
                    }
                    if (z) {
                        Log.d("CachedBluetoothDevice", "disconnectLegacy :: skip disconnect " + localBluetoothProfile.toString());
                    } else {
                        Log.d("CachedBluetoothDevice", "disconnectLegacy :: profile : " + localBluetoothProfile);
                        if (localBluetoothProfile.setEnabled(this.mDevice) && BluetoothUtils.DEBUG) {
                            Log.d("CachedBluetoothDevice", "Command sent successfully:DISCONNECT " + describe(localBluetoothProfile));
                        }
                    }
                }
            }
            LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
            if (localBluetoothProfileManager != null && (pbapServerProfile = localBluetoothProfileManager.mPbapProfile) != null) {
                if (getProfileConnectionState(pbapServerProfile) == 2) {
                    z = true;
                }
                if (z) {
                    pbapServerProfile.setEnabled(this.mDevice);
                }
            }
            if (i == 11) {
                this.mDevice.cancelBondProcess();
            }
            BluetoothDevice bluetoothDevice = this.mDevice;
            if (bluetoothDevice != null) {
                this.mUnpairing = true;
                BluetoothDump.BtLog("CachedBluetoothDevice -- unpairLegacy: decribe = " + describeDetail());
                if (this.mGroupId != -1) {
                    StringBuilder sb = new StringBuilder();
                    Iterator it2 = ((HashSet) this.mMemberDevices).iterator();
                    while (it2.hasNext()) {
                        CachedBluetoothDevice cachedBluetoothDevice = (CachedBluetoothDevice) it2.next();
                        if (sb.length() != 0) {
                            sb.append(" : ");
                        }
                        sb.append(cachedBluetoothDevice.getName() + "(" + cachedBluetoothDevice.getAddress() + ")");
                    }
                    BluetoothDump.BtLog("CachedBluetoothDevice -- unpairLegacy: member = " + sb.toString());
                }
                if (bluetoothDevice.removeBond()) {
                    this.mDrawableCache.evictAll();
                    if (BluetoothUtils.DEBUG) {
                        Log.d("CachedBluetoothDevice", "Command sent successfully:REMOVE_BOND " + describe(null));
                    }
                }
            }
        }
    }

    public final boolean updateProfiles(ParcelUuid[] parcelUuidArr) {
        if (parcelUuidArr == null) {
            Log.e("CachedBluetoothDevice", "updateProfiles :: uuids is null");
            if (this.mIsRestored) {
                parcelUuidArr = this.mRestoredDevice.mUuids;
            }
            this.mIsHearingAidDeviceByUUID = checkHearingAidByUuid();
            if (parcelUuidArr == null) {
                return false;
            }
        }
        List uuidsList = this.mLocalAdapter.getUuidsList();
        ParcelUuid[] parcelUuidArr2 = new ParcelUuid[uuidsList.size()];
        uuidsList.toArray(parcelUuidArr2);
        synchronized (this.mProfileLock) {
            LocalBluetoothProfileManager localBluetoothProfileManager = this.mProfileManager;
            if (localBluetoothProfileManager != null) {
                localBluetoothProfileManager.updateProfiles(parcelUuidArr, parcelUuidArr2, this.mProfiles, this.mRemovedProfiles, this);
            }
        }
        if (this.mLocalNapRoleConnected) {
            Iterator it = this.mRemovedProfiles.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LocalBluetoothProfile localBluetoothProfile = (LocalBluetoothProfile) it.next();
                if (localBluetoothProfile instanceof PanProfile) {
                    Log.d("CachedBluetoothDevice", "PAN connection exists. Restore PAN profile.");
                    this.mRemovedProfiles.remove(localBluetoothProfile);
                    synchronized (this.mProfileLock) {
                        this.mProfiles.add(localBluetoothProfile);
                    }
                    break;
                }
            }
        }
        this.mIsHearingAidDeviceByUUID = checkHearingAidByUuid();
        if (BluetoothUtils.DEBUG) {
            Log.e("CachedBluetoothDevice", "updating profiles for " + this.mDevice.getAlias() + ", " + this.mDevice);
            BluetoothClass bluetoothClass = this.mDevice.getBluetoothClass();
            if (bluetoothClass != null) {
                bluetoothClass.toString();
            }
            for (ParcelUuid parcelUuid : parcelUuidArr) {
                Objects.toString(parcelUuid);
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public CachedBluetoothDevice(android.content.Context r5, com.android.settingslib.bluetooth.LocalBluetoothProfileManager r6, android.bluetooth.BluetoothDevice r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.bluetooth.CachedBluetoothDevice.<init>(android.content.Context, com.android.settingslib.bluetooth.LocalBluetoothProfileManager, android.bluetooth.BluetoothDevice, android.content.Intent):void");
    }

    public CachedBluetoothDevice(Context context, LocalBluetoothProfileManager localBluetoothProfileManager, BluetoothRestoredDevice bluetoothRestoredDevice) {
        this.mVersion = 0;
        this.mType = 0;
        this.mOnlyPANUDevices = new ArrayList();
        this.mVisible = true;
        this.mIsBondingByCached = false;
        this.mSemCallbacks = new ArrayList();
        this.mProfileLock = new Object();
        this.mProfiles = new LinkedHashSet();
        this.mRemovedProfiles = new LinkedHashSet();
        this.mCallbacks = new CopyOnWriteArrayList();
        this.mIsActiveDeviceA2dp = false;
        this.mIsActiveDeviceHeadset = false;
        this.mIsActiveDeviceHearingAid = false;
        this.mIsActiveDeviceLeAudio = false;
        this.mMemberDevices = new HashSet();
        this.mLeadDevice = null;
        this.mIsRestored = false;
        this.mIsSynced = false;
        this.mIsAddrSwitched = false;
        this.mContext = context;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mLocalAdapter = defaultAdapter;
        this.mProfileManager = localBluetoothProfileManager;
        this.mRestoredDevice = bluetoothRestoredDevice;
        String str = bluetoothRestoredDevice.mAddress;
        this.mAddress = str;
        if (defaultAdapter != null) {
            this.mDevice = defaultAdapter.getRemoteDevice(str);
        }
        this.mProfileConnectionState = new HashMap();
        fillRestoredData();
        this.mGroupId = -1;
        initDrawableCache();
    }

    public CachedBluetoothDevice(Context context, LocalBluetoothProfileManager localBluetoothProfileManager, BluetoothRestoredDevice bluetoothRestoredDevice, boolean z) {
        BluetoothRetryDetector bluetoothRetryDetector;
        this.mVersion = 0;
        this.mType = 0;
        this.mOnlyPANUDevices = new ArrayList();
        this.mVisible = true;
        this.mIsBondingByCached = false;
        this.mSemCallbacks = new ArrayList();
        this.mProfileLock = new Object();
        this.mProfiles = new LinkedHashSet();
        this.mRemovedProfiles = new LinkedHashSet();
        this.mCallbacks = new CopyOnWriteArrayList();
        this.mIsActiveDeviceA2dp = false;
        this.mIsActiveDeviceHeadset = false;
        this.mIsActiveDeviceHearingAid = false;
        this.mIsActiveDeviceLeAudio = false;
        this.mMemberDevices = new HashSet();
        this.mLeadDevice = null;
        this.mIsRestored = false;
        this.mIsSynced = false;
        this.mIsAddrSwitched = false;
        this.mContext = context;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mLocalAdapter = defaultAdapter;
        this.mProfileManager = localBluetoothProfileManager;
        this.mRestoredDevice = bluetoothRestoredDevice;
        String str = bluetoothRestoredDevice.mAddress;
        this.mAddress = str;
        if (defaultAdapter != null) {
            this.mDevice = defaultAdapter.getRemoteDevice(str);
        }
        this.mProfileConnectionState = new HashMap();
        if (z) {
            String str2 = bluetoothRestoredDevice.mName;
            if (str2 == null) {
                fetchName$1();
            } else {
                this.mName = str2;
                this.mDeviceName = str2;
            }
            Log.d("CachedBluetoothDevice", "fillSyncedData() :: Device - " + getNameForLog() + ", Class - " + bluetoothRestoredDevice.mCod);
            setBtClass(new BluetoothClass(bluetoothRestoredDevice.mCod));
            BluetoothClass bluetoothClass = this.mBtClass;
            if (bluetoothClass != null && !bluetoothClass.equals(this.mDevice.getBluetoothClass())) {
                this.mDevice.setBluetoothClass(bluetoothRestoredDevice.mCod);
            }
            this.mAppearance = (short) bluetoothRestoredDevice.mAppearance;
            setManufacturerData(bluetoothRestoredDevice.mManufacturerData);
            this.mBondTimeStamp = bluetoothRestoredDevice.mTimeStamp;
            this.mType = bluetoothRestoredDevice.mLinkType;
            if (bluetoothRestoredDevice.mManufacturerData != null && !Arrays.equals(this.mDevice.semGetManufacturerData(), bluetoothRestoredDevice.mManufacturerData)) {
                this.mDevice.semSetManufacturerData(bluetoothRestoredDevice.mManufacturerData);
            }
            if (ArrayUtils.contains(bluetoothRestoredDevice.mUuids, ParcelUuid.fromString("f8620674-a1ed-41ab-a8b9-de9ad655729d")) && this.mDevice.semGetAutoSwitchMode() == -1) {
                if (Settings.System.semGetIntForUser(context.getContentResolver(), "mcf_permission_denied", 0, UserHandle.semGetMyUserId()) != 1) {
                    this.mDevice.semSetAutoSwitchMode(1);
                    Log.i("CachedBluetoothDevice", "fillSyncedData :: call semSetAutoSwitchMode to enabled");
                } else {
                    this.mDevice.semSetAutoSwitchMode(0);
                    Log.i("CachedBluetoothDevice", "fillSyncedData :: mcf permission denied");
                    BluetoothDump.BtLog("CachedBluetoothDevice -- fillSyncedData :: mcf permission denied");
                }
            }
            this.mIsSynced = true;
            this.mIsRestored = true;
            this.mBondState = 10;
            this.mIsBondingByCached = false;
            updateProfiles(null);
            if (BluetoothUtils.isGalaxyWatchDevice(this.mDeviceName, this.mBtClass, getManufacturerRawData(), bluetoothRestoredDevice.mUuids)) {
                bluetoothRetryDetector = new BluetoothRetryDetector(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE_WATCH, false);
            } else {
                bluetoothRetryDetector = new BluetoothRetryDetector(BluetoothRetryDetector.FailCase.CONNECTION_FAILURE, false);
            }
            this.mBondingDetector = bluetoothRetryDetector;
            dispatchAttributesChanged();
        } else {
            fillRestoredData();
        }
        this.mGroupId = -1;
        initDrawableCache();
    }
}
