package com.android.systemui.media.dialog;

import com.android.settingslib.media.MediaDevice;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaItem {
    public final Optional mMediaDeviceOptional;
    public final int mMediaItemType;
    public final String mTitle;

    public MediaItem() {
        this.mMediaDeviceOptional = Optional.empty();
        this.mTitle = null;
        this.mMediaItemType = 2;
    }

    public MediaItem(String str, int i) {
        this.mMediaDeviceOptional = Optional.empty();
        this.mTitle = str;
        this.mMediaItemType = i;
    }

    public MediaItem(MediaDevice mediaDevice) {
        this.mMediaDeviceOptional = Optional.of(mediaDevice);
        this.mTitle = mediaDevice.getName();
        this.mMediaItemType = 0;
    }
}
