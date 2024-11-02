package com.android.systemui.media.dialog;

import android.content.Context;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.settingslib.media.MediaDevice;
import com.samsung.android.knox.net.firewall.FirewallRule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputMetricLogger {
    public static final boolean DEBUG = Log.isLoggable("MediaOutputMetricLogger", 3);
    public int mConnectedBluetoothDeviceCount;
    public final Context mContext;
    public final String mPackageName;
    public int mRemoteDeviceCount;
    public MediaDevice mSourceDevice;
    public MediaDevice mTargetDevice;
    public int mWiredDeviceCount;

    public MediaOutputMetricLogger(Context context, String str) {
        this.mContext = context;
        this.mPackageName = str;
    }

    public static int getInteractionDeviceType(MediaDevice mediaDevice) {
        if (mediaDevice == null) {
            return 0;
        }
        int deviceType = mediaDevice.getDeviceType();
        if (deviceType == 1) {
            return 1;
        }
        if (deviceType != 2) {
            if (deviceType != 3) {
                if (deviceType != 5) {
                    if (deviceType != 6) {
                        if (deviceType != 7) {
                            return 0;
                        }
                        return 500;
                    }
                    return 400;
                }
                return 300;
            }
            return 100;
        }
        return 200;
    }

    public static int getLoggingDeviceType(MediaDevice mediaDevice) {
        if (mediaDevice == null) {
            return 0;
        }
        int deviceType = mediaDevice.getDeviceType();
        if (deviceType == 1) {
            return 1;
        }
        if (deviceType != 2) {
            if (deviceType != 3) {
                if (deviceType != 5) {
                    if (deviceType != 6) {
                        if (deviceType != 7) {
                            return 0;
                        }
                        return 500;
                    }
                    return 400;
                }
                return 300;
            }
            return 100;
        }
        return 200;
    }

    public final String getLoggingPackageName() {
        String str = this.mPackageName;
        if (str != null && !str.isEmpty()) {
            try {
                int i = this.mContext.getPackageManager().getApplicationInfo(str, 0).flags;
                if ((i & 1) != 0 || (i & 128) != 0) {
                    return str;
                }
                return "";
            } catch (Exception unused) {
                Log.e("MediaOutputMetricLogger", str + FirewallRule.IS_INVALID);
                return "";
            }
        }
        return "";
    }

    public final void updateLoggingMediaItemCount(List list) {
        this.mRemoteDeviceCount = 0;
        this.mConnectedBluetoothDeviceCount = 0;
        this.mWiredDeviceCount = 0;
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            if (mediaItem.mMediaDeviceOptional.isPresent()) {
                Optional optional = mediaItem.mMediaDeviceOptional;
                if (((MediaDevice) optional.get()).isConnected()) {
                    int deviceType = ((MediaDevice) optional.get()).getDeviceType();
                    if (deviceType != 2 && deviceType != 3) {
                        if (deviceType != 5) {
                            if (deviceType == 6 || deviceType == 7) {
                                this.mRemoteDeviceCount++;
                            }
                        } else {
                            this.mConnectedBluetoothDeviceCount++;
                        }
                    } else {
                        this.mWiredDeviceCount++;
                    }
                }
            }
        }
        if (DEBUG) {
            StringBuilder sb = new StringBuilder("connected devices: wired: ");
            sb.append(this.mWiredDeviceCount);
            sb.append(" bluetooth: ");
            sb.append(this.mConnectedBluetoothDeviceCount);
            sb.append(" remote: ");
            RecyclerView$$ExternalSyntheticOutline0.m(sb, this.mRemoteDeviceCount, "MediaOutputMetricLogger");
        }
    }
}
