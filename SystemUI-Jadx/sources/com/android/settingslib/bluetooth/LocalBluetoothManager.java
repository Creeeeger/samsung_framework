package com.android.settingslib.bluetooth;

import android.content.Context;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.samsung.android.bluetooth.SemBluetoothCastAdapter;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.BluetoothCastEventManager;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDeviceManager;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.LocalBluetoothCastAdapter;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.LocalBluetoothCastProfileManager;
import com.samsung.android.settingslib.bluetooth.detector.BluetoothRetryDetector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LocalBluetoothManager {
    public static boolean mSystemUiInstance = false;
    public static LocalBluetoothManager sInstance;
    public final CachedBluetoothCastDeviceManager mCachedCastDeviceManager;
    public final CachedBluetoothDeviceManager mCachedDeviceManager;
    public final BluetoothCastEventManager mCastEventManager;
    public final Context mContext;
    public final BluetoothEventManager mEventManager;
    public final LocalBluetoothAdapter mLocalAdapter;
    public final LocalBluetoothCastAdapter mLocalCastAdapter;
    public final LocalBluetoothCastProfileManager mLocalCastProfileManager;
    public final LocalBluetoothProfileManager mProfileManager;
    public final BluetoothRetryDetector mRestoredRetryDetector;

    private LocalBluetoothManager(LocalBluetoothAdapter localBluetoothAdapter, Context context, Handler handler, UserHandle userHandle) {
        LocalBluetoothCastAdapter localBluetoothCastAdapter;
        Log.d("LocalBluetoothManager", "LocalBluetoothManager :: constructor");
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mLocalAdapter = localBluetoothAdapter;
        CachedBluetoothDeviceManager cachedBluetoothDeviceManager = new CachedBluetoothDeviceManager(applicationContext, this);
        this.mCachedDeviceManager = cachedBluetoothDeviceManager;
        BluetoothEventManager bluetoothEventManager = new BluetoothEventManager(localBluetoothAdapter, cachedBluetoothDeviceManager, applicationContext, handler, userHandle);
        this.mEventManager = bluetoothEventManager;
        LocalBluetoothProfileManager localBluetoothProfileManager = new LocalBluetoothProfileManager(applicationContext, localBluetoothAdapter, cachedBluetoothDeviceManager, bluetoothEventManager);
        this.mProfileManager = localBluetoothProfileManager;
        if ("com.android.systemui".equals(context.getPackageName().toLowerCase())) {
            mSystemUiInstance = true;
        }
        this.mRestoredRetryDetector = new BluetoothRetryDetector(true);
        localBluetoothProfileManager.updateLocalProfiles();
        bluetoothEventManager.readPairedDevices();
        if (SemBluetoothCastAdapter.isBluetoothCastSupported()) {
            synchronized (LocalBluetoothCastAdapter.class) {
                if (LocalBluetoothCastAdapter.sInstance == null) {
                    LocalBluetoothCastAdapter.sInstance = new LocalBluetoothCastAdapter(applicationContext);
                }
                localBluetoothCastAdapter = LocalBluetoothCastAdapter.sInstance;
            }
            this.mLocalCastAdapter = localBluetoothCastAdapter;
            CachedBluetoothCastDeviceManager cachedBluetoothCastDeviceManager = new CachedBluetoothCastDeviceManager(applicationContext, this);
            this.mCachedCastDeviceManager = cachedBluetoothCastDeviceManager;
            BluetoothCastEventManager bluetoothCastEventManager = new BluetoothCastEventManager(localBluetoothCastAdapter, cachedBluetoothCastDeviceManager, applicationContext);
            this.mCastEventManager = bluetoothCastEventManager;
            this.mLocalCastProfileManager = new LocalBluetoothCastProfileManager(applicationContext, localBluetoothCastAdapter, cachedBluetoothCastDeviceManager, bluetoothCastEventManager);
        }
    }

    public static LocalBluetoothManager create(Context context, Handler handler, UserHandle userHandle) {
        if (sInstance == null) {
            LocalBluetoothAdapter localBluetoothAdapter = LocalBluetoothAdapter.getInstance();
            if (localBluetoothAdapter == null) {
                return null;
            }
            sInstance = new LocalBluetoothManager(localBluetoothAdapter, context, handler, userHandle);
        }
        return sInstance;
    }

    public static synchronized LocalBluetoothManager getInstance(Context context, BluetoothUtils.AnonymousClass2 anonymousClass2) {
        synchronized (LocalBluetoothManager.class) {
            if (sInstance == null) {
                Log.d("LocalBluetoothManager", "LocalBluetoothManager :: sInstance == null");
                LocalBluetoothAdapter localBluetoothAdapter = LocalBluetoothAdapter.getInstance();
                if (localBluetoothAdapter == null) {
                    Log.d("LocalBluetoothManager", "LocalBluetoothManager :: adapter == null");
                    return null;
                }
                sInstance = new LocalBluetoothManager(localBluetoothAdapter, context, null, null);
                if (anonymousClass2 != null) {
                    Log.d("LocalBluetoothManager", "LocalBluetoothManager :: onInitCallback != null");
                    context.getApplicationContext();
                }
            }
            return sInstance;
        }
    }

    public final boolean isTetheredSettings() {
        String string = Settings.Secure.getString(this.mContext.getContentResolver(), "bluetooth_tethering_settings_foreground");
        Log.d("LocalBluetoothManager", "isTetheredSettings : " + string);
        return "true".equals(string);
    }

    public final boolean semIsForegroundActivity() {
        if (Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "bluetooth_settings_foreground", 0, -2) == 0) {
            return false;
        }
        return true;
    }
}
