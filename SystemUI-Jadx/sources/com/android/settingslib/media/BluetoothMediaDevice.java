package com.android.settingslib.media;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2Manager;
import android.media.RouteListingPreference;
import android.util.Log;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BluetoothMediaDevice extends MediaDevice {
    public final AudioManager mAudioManager;
    public final CachedBluetoothDevice mCachedDevice;

    public BluetoothMediaDevice(Context context, CachedBluetoothDevice cachedBluetoothDevice, MediaRouter2Manager mediaRouter2Manager, MediaRoute2Info mediaRoute2Info, String str) {
        this(context, cachedBluetoothDevice, mediaRouter2Manager, mediaRoute2Info, str, null);
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getAddress() {
        CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevice;
        if (cachedBluetoothDevice != null) {
            return cachedBluetoothDevice.getAddress();
        }
        return "";
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final int getCurrentVolume() {
        return this.mAudioManager.semGetFineVolume(this.mCachedDevice.mDevice, 3);
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final int getDevice() {
        return 128;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final Drawable getIcon() {
        int color;
        Context context = this.mContext;
        CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevice;
        boolean z = BluetoothUtils.DEBUG;
        if ("com.android.systemui".equals(context.getPackageName().toLowerCase())) {
            color = context.getResources().getColor(R.color.qs_detail_item_device_bt_icon_tint_color);
        } else {
            color = context.getResources().getColor(R.color.bt_device_icon_tint_color);
        }
        if (cachedBluetoothDevice != null) {
            Drawable iconDrawable = cachedBluetoothDevice.getIconDrawable();
            if (BluetoothUtils.isBtCastConnectedAsHost(context, cachedBluetoothDevice.getAddress())) {
                return BluetoothUtils.getOverlayIconTintableDrawable(iconDrawable, context, R.drawable.sharing_ic_overlay, R.drawable.sharing_ic_tintable);
            }
            iconDrawable.setTint(color);
            return iconDrawable;
        }
        Log.d("BluetoothUtils", "getHostOverlayIconDrawable - cachedBluetoothDevice is null");
        Drawable drawable = context.getResources().getDrawable(R.drawable.list_ic_sound_accessory_default);
        drawable.setTint(color);
        return drawable;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    @Override // com.android.settingslib.media.MediaDevice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getIconWithoutBackground() {
        /*
            r6 = this;
            com.android.settingslib.bluetooth.CachedBluetoothDevice r0 = r6.mCachedDevice
            android.bluetooth.BluetoothDevice r0 = r0.mDevice
            boolean r1 = com.android.settingslib.bluetooth.BluetoothUtils.DEBUG
            java.lang.String r1 = "settings_ui"
            java.lang.String r2 = "bt_advanced_header_enabled"
            r3 = 1
            boolean r1 = android.provider.DeviceConfig.getBoolean(r1, r2, r3)
            r2 = 0
            java.lang.String r4 = "BluetoothUtils"
            if (r1 != 0) goto L1c
            java.lang.String r1 = "isAdvancedDetailsHeader: advancedEnabled is false"
            android.util.Log.d(r4, r1)
            r1 = r2
            goto L1d
        L1c:
            r1 = r3
        L1d:
            if (r1 != 0) goto L20
            goto L56
        L20:
            if (r0 != 0) goto L23
            goto L2a
        L23:
            r1 = 6
            byte[] r1 = r0.getMetadata(r1)
            if (r1 != 0) goto L2c
        L2a:
            r1 = r2
            goto L35
        L2c:
            java.lang.String r5 = new java.lang.String
            r5.<init>(r1)
            boolean r1 = java.lang.Boolean.parseBoolean(r5)
        L35:
            if (r1 == 0) goto L3e
            java.lang.String r1 = "isAdvancedDetailsHeader: untetheredHeadset is true"
            android.util.Log.d(r4, r1)
            r1 = r3
            goto L3f
        L3e:
            r1 = r2
        L3f:
            if (r1 == 0) goto L42
            goto L57
        L42:
            r1 = 17
            java.lang.String r0 = com.android.settingslib.bluetooth.BluetoothUtils.getStringMetaData(r0, r1)
            java.lang.String r1 = "Untethered Headset"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L56
            java.lang.String r0 = "isAdvancedUntetheredDevice: is untethered device "
            android.util.Log.d(r4, r0)
            goto L57
        L56:
            r3 = r2
        L57:
            if (r3 == 0) goto L63
            android.content.Context r6 = r6.mContext
            r0 = 2131233008(0x7f0808f0, float:1.8082141E38)
            android.graphics.drawable.Drawable r6 = r6.getDrawable(r0)
            goto L6f
        L63:
            android.content.Context r0 = r6.mContext
            com.android.settingslib.bluetooth.CachedBluetoothDevice r6 = r6.mCachedDevice
            android.util.Pair r6 = com.android.settingslib.bluetooth.BluetoothUtils.getBtClassDrawableWithDescription(r0, r6)
            java.lang.Object r6 = r6.first
            android.graphics.drawable.Drawable r6 = (android.graphics.drawable.Drawable) r6
        L6f:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.media.BluetoothMediaDevice.getIconWithoutBackground():android.graphics.drawable.Drawable");
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getId() {
        boolean z;
        CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevice;
        if (cachedBluetoothDevice.mHearingAidInfo != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && cachedBluetoothDevice.getHiSyncId() != 0) {
            return Long.toString(cachedBluetoothDevice.getHiSyncId());
        }
        return cachedBluetoothDevice.getAddress();
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getName() {
        return this.mCachedDevice.getName();
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final int getSelectionBehavior() {
        return 1;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final boolean isCarKitDevice() {
        BluetoothClass bluetoothClass = this.mCachedDevice.mDevice.getBluetoothClass();
        if (bluetoothClass != null) {
            int deviceClass = bluetoothClass.getDeviceClass();
            if (deviceClass == 1032 || deviceClass == 1056) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final boolean isConnected() {
        CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevice;
        if (cachedBluetoothDevice.mBondState == 12 && cachedBluetoothDevice.isConnected()) {
            return true;
        }
        return false;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final boolean isFastPairDevice() {
        byte[] metadata;
        boolean parseBoolean;
        CachedBluetoothDevice cachedBluetoothDevice = this.mCachedDevice;
        if (cachedBluetoothDevice == null) {
            return false;
        }
        BluetoothDevice bluetoothDevice = cachedBluetoothDevice.mDevice;
        boolean z = BluetoothUtils.DEBUG;
        if (bluetoothDevice == null || (metadata = bluetoothDevice.getMetadata(6)) == null) {
            parseBoolean = false;
        } else {
            parseBoolean = Boolean.parseBoolean(new String(metadata));
        }
        if (!parseBoolean) {
            return false;
        }
        return true;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final boolean isMutingExpectedDevice() {
        if (this.mAudioManager.getMutingExpectedDevice() != null && this.mCachedDevice.getAddress().equals(this.mAudioManager.getMutingExpectedDevice().getAddress())) {
            return true;
        }
        return false;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final void requestSetVolume(int i) {
        this.mAudioManager.semSetFineVolume(this.mCachedDevice.mDevice, 3, i, 0);
    }

    public BluetoothMediaDevice(Context context, CachedBluetoothDevice cachedBluetoothDevice, MediaRouter2Manager mediaRouter2Manager, MediaRoute2Info mediaRoute2Info, String str, RouteListingPreference.Item item) {
        super(context, mediaRouter2Manager, mediaRoute2Info, str, item);
        this.mCachedDevice = cachedBluetoothDevice;
        this.mAudioManager = (AudioManager) context.getSystemService(AudioManager.class);
        initDeviceRecord();
    }
}
