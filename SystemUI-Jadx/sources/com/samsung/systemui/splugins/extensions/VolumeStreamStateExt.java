package com.samsung.systemui.splugins.extensions;

import com.samsung.systemui.splugins.volume.VolumeStreamState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class VolumeStreamStateExt {
    private static final int DYNAMIC_STREAM_START_INDEX = 100;
    public static final VolumeStreamStateExt INSTANCE = new VolumeStreamStateExt();

    private VolumeStreamStateExt() {
    }

    public final boolean isRemoteStream(VolumeStreamState volumeStreamState) {
        if (volumeStreamState.getStreamType() >= 100) {
            return true;
        }
        return false;
    }
}
