package com.android.settingslib.media;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.hardware.display.SemWifiDisplay;
import android.media.AudioDeviceInfo;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2Manager;
import android.media.RouteListingPreference;
import com.android.systemui.R;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice;
import com.sec.ims.configuration.DATA;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PhoneMediaDevice extends MediaDevice {
    public final CachedBluetoothCastDevice mCachedBluetoothCastDevice;
    public final String mDisplayDeviceName;

    public PhoneMediaDevice(Context context, MediaRouter2Manager mediaRouter2Manager, MediaRoute2Info mediaRoute2Info, String str) {
        this(context, mediaRouter2Manager, mediaRoute2Info, str, null);
        SemWifiDisplay activeDisplay;
        this.mCachedBluetoothCastDevice = getCachedBluetoothCastDevice();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null || displayManager.semGetWifiDisplayStatus() == null || (activeDisplay = displayManager.semGetWifiDisplayStatus().getActiveDisplay()) == null) {
            return;
        }
        this.mDisplayDeviceName = activeDisplay.getFriendlyDisplayName();
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getAddress() {
        int device = getDevice();
        if (device == 32768) {
            return DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        for (AudioDeviceInfo audioDeviceInfo : this.mAudioManager.getDevices(2)) {
            if (audioDeviceInfo.getDeviceId() == device) {
                return audioDeviceInfo.getAddress();
            }
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice getCachedBluetoothCastDevice() {
        /*
            r7 = this;
            android.content.Context r0 = r7.mContext
            com.android.settingslib.bluetooth.BluetoothUtils$2 r1 = com.android.settingslib.bluetooth.BluetoothUtils.mOnInitCallback
            com.android.settingslib.bluetooth.LocalBluetoothManager r0 = com.android.settingslib.bluetooth.LocalBluetoothManager.getInstance(r0, r1)
            boolean r1 = com.samsung.android.bluetooth.SemBluetoothCastAdapter.isBluetoothCastSupported()
            if (r1 == 0) goto La4
            if (r0 == 0) goto La4
            com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDeviceManager r0 = r0.mCachedCastDeviceManager
            monitor-enter(r0)
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La1
            java.util.List r2 = r0.mCachedCastDevices     // Catch: java.lang.Throwable -> La1
            r1.<init>(r2)     // Catch: java.lang.Throwable -> La1
            monitor-exit(r0)
            int r0 = r1.size()
            if (r0 <= 0) goto La4
            java.util.Iterator r0 = r1.iterator()
        L25:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto La4
            java.lang.Object r1 = r0.next()
            com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice r1 = (com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice) r1
            android.content.Context r2 = r7.mContext
            com.samsung.android.bluetooth.SemBluetoothCastDevice r3 = r1.mCastDevice
            java.lang.String r3 = r3.getAddress()
            boolean r4 = com.samsung.android.bluetooth.SemBluetoothCastAdapter.isBluetoothCastSupported()
            r5 = 0
            if (r4 != 0) goto L41
            goto L9e
        L41:
            com.android.settingslib.bluetooth.BluetoothUtils$2 r4 = com.android.settingslib.bluetooth.BluetoothUtils.mOnInitCallback
            com.android.settingslib.bluetooth.LocalBluetoothManager r2 = com.android.settingslib.bluetooth.LocalBluetoothManager.getInstance(r2, r4)
            if (r2 == 0) goto L9e
            com.samsung.android.settingslib.bluetooth.bluetoothcast.LocalBluetoothCastProfileManager r2 = r2.mLocalCastProfileManager
            com.samsung.android.settingslib.bluetooth.bluetoothcast.AudioCastProfile r2 = r2.mAudioCastProfile
            if (r2 != 0) goto L50
            goto L9e
        L50:
            com.samsung.android.bluetooth.SemBluetoothAudioCast r4 = r2.mService
            if (r4 != 0) goto L5a
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            goto L5e
        L5a:
            java.util.List r4 = r4.getConnectedDevices()
        L5e:
            java.util.stream.Stream r4 = r4.stream()
            com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda0 r6 = new com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda0
            r6.<init>(r5)
            java.util.stream.Stream r4 = r4.filter(r6)
            com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda1 r6 = new com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda1
            r6.<init>(r2, r5)
            java.util.stream.Stream r2 = r4.filter(r6)
            com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda0 r4 = new com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda0
            r6 = 1
            r4.<init>(r6)
            java.util.stream.Stream r2 = r2.filter(r4)
            com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda2 r4 = new com.android.settingslib.bluetooth.BluetoothUtils$$ExternalSyntheticLambda2
            r4.<init>(r5)
            java.util.stream.Stream r2 = r2.map(r4)
            java.util.stream.Collector r4 = java.util.stream.Collectors.toList()
            java.lang.Object r2 = r2.collect(r4)
            java.util.List r2 = (java.util.List) r2
            boolean r4 = r2.isEmpty()
            if (r4 != 0) goto L9e
            boolean r2 = r2.contains(r3)
            if (r2 == 0) goto L9e
            r5 = r6
        L9e:
            if (r5 == 0) goto L25
            return r1
        La1:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        La4:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.media.PhoneMediaDevice.getCachedBluetoothCastDevice():com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice");
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final int getDevice() {
        int type = this.mRouteInfo.getType();
        if (type == 3) {
            return 4;
        }
        if (type != 4) {
            if (type != 9) {
                if (type != 22) {
                    if (type != 25) {
                        switch (type) {
                            case 11:
                            case 12:
                                break;
                            case 13:
                                break;
                            default:
                                return 2;
                        }
                    } else {
                        return 32768;
                    }
                }
                return QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY;
            }
            return 1024;
        }
        return 8;
    }

    public int getDrawableResId() {
        int type = this.mRouteInfo.getType();
        if (type != 3 && type != 4 && type != 9 && type != 22) {
            if (type != 25) {
                switch (type) {
                    case 11:
                    case 12:
                    case 13:
                        break;
                    default:
                        return R.drawable.list_ic_mobile;
                }
            } else {
                String str = this.mDisplayDeviceName;
                if (str != null && str.contains("DeX")) {
                    return R.drawable.list_ic_laptop;
                }
                return R.drawable.list_ic_tv;
            }
        }
        return R.drawable.list_ic_headset;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final Drawable getIcon() {
        boolean z;
        Drawable iconWithoutBackground = getIconWithoutBackground();
        if (this.mRouteInfo.getType() == 25) {
            CachedBluetoothCastDevice cachedBluetoothCastDevice = this.mCachedBluetoothCastDevice;
            if (cachedBluetoothCastDevice != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return cachedBluetoothCastDevice.getBtCastDrawable();
            }
        }
        iconWithoutBackground.setTint(this.mContext.getResources().getColor(R.color.bt_device_icon_tint_color));
        return iconWithoutBackground;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final Drawable getIconWithoutBackground() {
        return this.mContext.getDrawable(getDrawableResId());
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getId() {
        int type = this.mRouteInfo.getType();
        if (type != 2) {
            if (type != 3 && type != 4) {
                if (type != 9 && type != 22) {
                    if (type != 25) {
                        switch (type) {
                            case 11:
                            case 12:
                            case 13:
                                break;
                            default:
                                return "phone_media_device_id";
                        }
                    }
                }
                return "usb_headset_media_device_id";
            }
            return "wired_headset_media_device_id";
        }
        return "remote_submix_media_device_id";
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final String getName() {
        CharSequence string;
        boolean z;
        int type = this.mRouteInfo.getType();
        if (type != 2) {
            if (type != 3 && type != 4) {
                if (type != 9) {
                    if (type != 22) {
                        if (type != 25) {
                            switch (type) {
                                case 11:
                                case 12:
                                    break;
                                case 13:
                                    string = this.mRouteInfo.getName();
                                    break;
                                default:
                                    string = this.mContext.getString(R.string.sec_media_output_device);
                                    break;
                            }
                        } else {
                            CharSequence name = this.mRouteInfo.getName();
                            CachedBluetoothCastDevice cachedBluetoothCastDevice = this.mCachedBluetoothCastDevice;
                            if (cachedBluetoothCastDevice != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                name = cachedBluetoothCastDevice.getName();
                            }
                            String str = this.mDisplayDeviceName;
                            if (str != null) {
                                if (str.contains("DeX")) {
                                    string = "PC";
                                } else {
                                    string = this.mDisplayDeviceName;
                                }
                            } else {
                                string = name;
                            }
                        }
                    }
                } else {
                    string = this.mRouteInfo.getName();
                }
            }
            string = this.mContext.getString(R.string.media_transfer_wired_usb_device_name);
        } else {
            string = this.mContext.getString(R.string.sec_media_output_device);
        }
        return string.toString();
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final int getSelectionBehavior() {
        return 1;
    }

    @Override // com.android.settingslib.media.MediaDevice
    public final boolean isConnected() {
        return true;
    }

    public PhoneMediaDevice(Context context, MediaRouter2Manager mediaRouter2Manager, MediaRoute2Info mediaRoute2Info, String str, RouteListingPreference.Item item) {
        super(context, mediaRouter2Manager, mediaRoute2Info, str, item);
        SemWifiDisplay activeDisplay;
        this.mCachedBluetoothCastDevice = null;
        this.mDisplayDeviceName = null;
        new DeviceIconUtil();
        this.mCachedBluetoothCastDevice = getCachedBluetoothCastDevice();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null && displayManager.semGetWifiDisplayStatus() != null && (activeDisplay = displayManager.semGetWifiDisplayStatus().getActiveDisplay()) != null) {
            this.mDisplayDeviceName = activeDisplay.getFriendlyDisplayName();
        }
        initDeviceRecord();
    }
}
