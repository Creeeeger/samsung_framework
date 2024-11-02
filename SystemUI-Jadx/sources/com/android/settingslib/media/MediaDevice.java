package com.android.settingslib.media;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2Manager;
import android.media.NearbyDevice;
import android.media.RouteListingPreference;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.R;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import com.sec.ims.presence.ServiceTuple;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MediaDevice implements Comparable {
    public final AudioManager mAudioManager;
    public int mConnectedRecord;
    public final Context mContext;
    public final RouteListingPreference.Item mItem;
    public final String mPackageName;
    public int mRangeZone = 0;
    public final MediaRoute2Info mRouteInfo;
    public final MediaRouter2Manager mRouterManager;
    public int mState;
    int mType;

    public MediaDevice(Context context, MediaRouter2Manager mediaRouter2Manager, MediaRoute2Info mediaRoute2Info, String str, RouteListingPreference.Item item) {
        this.mContext = context;
        this.mRouteInfo = mediaRoute2Info;
        this.mRouterManager = mediaRouter2Manager;
        this.mPackageName = str;
        this.mAudioManager = (AudioManager) context.getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
        this.mItem = item;
        if (mediaRoute2Info == null) {
            this.mType = 5;
            return;
        }
        int type = mediaRoute2Info.getType();
        if (type != 2) {
            if (type != 3 && type != 4) {
                if (type != 8) {
                    if (type != 9 && type != 22) {
                        if (type != 23 && type != 26) {
                            if (type != 2000) {
                                switch (type) {
                                    case 11:
                                    case 12:
                                    case 13:
                                        break;
                                    default:
                                        this.mType = 6;
                                        return;
                                }
                            } else {
                                this.mType = 7;
                                return;
                            }
                        }
                    }
                    this.mType = 2;
                    return;
                }
                this.mType = 5;
                return;
            }
            this.mType = 3;
            return;
        }
        this.mType = 1;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        String str;
        MediaDevice mediaDevice = (MediaDevice) obj;
        if (mediaDevice == null) {
            return -1;
        }
        if (isConnected() ^ mediaDevice.isConnected()) {
            if (isConnected()) {
                return -1;
            }
        } else {
            if (this.mState == 4) {
                return -1;
            }
            if (mediaDevice.mState != 4) {
                int i = this.mType;
                int i2 = mediaDevice.mType;
                if (i == i2) {
                    if (isMutingExpectedDevice()) {
                        return -1;
                    }
                    if (!mediaDevice.isMutingExpectedDevice()) {
                        if (isFastPairDevice()) {
                            return -1;
                        }
                        if (!mediaDevice.isFastPairDevice()) {
                            if (isCarKitDevice()) {
                                return -1;
                            }
                            if (!mediaDevice.isCarKitDevice()) {
                                if (NearbyDevice.compareRangeZones(this.mRangeZone, mediaDevice.mRangeZone) != 0) {
                                    return NearbyDevice.compareRangeZones(this.mRangeZone, mediaDevice.mRangeZone);
                                }
                                ConnectionRecordManager connectionRecordManager = ConnectionRecordManager.getInstance();
                                synchronized (connectionRecordManager) {
                                    str = connectionRecordManager.mLastSelectedDevice;
                                }
                                if (TextUtils.equals(str, getId())) {
                                    return -1;
                                }
                                if (!TextUtils.equals(str, mediaDevice.getId())) {
                                    int i3 = this.mConnectedRecord;
                                    int i4 = mediaDevice.mConnectedRecord;
                                    if (i3 != i4 && (i4 > 0 || i3 > 0)) {
                                        return i4 - i3;
                                    }
                                    return getName().compareToIgnoreCase(mediaDevice.getName());
                                }
                            }
                        }
                    }
                } else if (i < i2) {
                    return -1;
                }
            }
        }
        return 1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MediaDevice)) {
            return false;
        }
        return ((MediaDevice) obj).getId().equals(getId());
    }

    public String getAddress() {
        return "";
    }

    public int getCurrentVolume() {
        if (this.mRouteInfo == null) {
            Log.w("MediaDevice", "Unable to get current volume. RouteInfo is empty");
            return 0;
        }
        return this.mAudioManager.semGetFineVolume(3);
    }

    public int getDevice() {
        return VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS;
    }

    public final int getDeviceType() {
        return this.mType;
    }

    public abstract Drawable getIcon();

    public abstract Drawable getIconWithoutBackground();

    public abstract String getId();

    public abstract String getName();

    public int getSelectionBehavior() {
        RouteListingPreference.Item item = this.mItem;
        if (item != null) {
            return item.getSelectionBehavior();
        }
        return 1;
    }

    public final String getSubtextString() {
        RouteListingPreference.Item item = this.mItem;
        if (item != null) {
            Context context = this.mContext;
            int subText = item.getSubText();
            if (subText != 10000) {
                switch (subText) {
                    case 1:
                        return context.getString(R.string.media_output_status_unknown_error);
                    case 2:
                        return context.getString(R.string.media_output_status_require_premium);
                    case 3:
                        return context.getString(R.string.media_output_status_not_support_downloads);
                    case 4:
                        return context.getString(R.string.media_output_status_try_after_ad);
                    case 5:
                        return context.getString(R.string.media_output_status_device_in_low_power_mode);
                    case 6:
                        return context.getString(R.string.media_output_status_unauthorized);
                    case 7:
                        return context.getString(R.string.media_output_status_track_unsupported);
                    default:
                        return "";
                }
            }
            return (String) item.getCustomSubtextMessage();
        }
        return null;
    }

    public final boolean hasOngoingSession() {
        boolean z;
        RouteListingPreference.Item item = this.mItem;
        if (item != null && (item.getFlags() & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return false;
    }

    public final void initDeviceRecord() {
        int i;
        ConnectionRecordManager connectionRecordManager = ConnectionRecordManager.getInstance();
        Context context = this.mContext;
        synchronized (connectionRecordManager) {
            connectionRecordManager.mLastSelectedDevice = context.getSharedPreferences("seamless_transfer_record", 0).getString("last_selected_device", null);
        }
        ConnectionRecordManager connectionRecordManager2 = ConnectionRecordManager.getInstance();
        Context context2 = this.mContext;
        String id = getId();
        synchronized (connectionRecordManager2) {
            i = context2.getSharedPreferences("seamless_transfer_record", 0).getInt(id, 0);
        }
        this.mConnectedRecord = i;
    }

    public final boolean isBLEDevice() {
        if (this.mRouteInfo.getType() == 26) {
            return true;
        }
        return false;
    }

    public boolean isCarKitDevice() {
        return false;
    }

    public abstract boolean isConnected();

    public boolean isFastPairDevice() {
        return false;
    }

    public final boolean isHostForOngoingSession() {
        int i;
        boolean z;
        RouteListingPreference.Item item = this.mItem;
        if (item != null) {
            i = item.getFlags();
        } else {
            i = 0;
        }
        if ((i & 1) != 0 && (i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public boolean isMutingExpectedDevice() {
        return false;
    }

    public void requestSetVolume(int i) {
        if (this.mRouteInfo == null) {
            Log.w("MediaDevice", "Unable to set volume. RouteInfo is empty");
        } else {
            this.mAudioManager.semSetFineVolume(3, i, 0);
        }
    }
}
