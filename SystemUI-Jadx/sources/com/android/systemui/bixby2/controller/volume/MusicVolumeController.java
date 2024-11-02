package com.android.systemui.bixby2.controller.volume;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MusicVolumeController extends VolumeType {
    private final Lazy mediaSessionManager$delegate;
    private MediaController.PlaybackInfo playbackInfo;
    private MediaController remoteController;
    private final String streamTypeToString = "Media";

    public MusicVolumeController(final Context context) {
        this.mediaSessionManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.bixby2.controller.volume.MusicVolumeController$mediaSessionManager$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MediaSessionManager invoke() {
                return (MediaSessionManager) context.getSystemService("media_session");
            }
        });
    }

    private final List<MediaController> getActiveSessions() {
        return getMediaSessionManager().getActiveSessions(null);
    }

    private final MediaSessionManager getMediaSessionManager() {
        return (MediaSessionManager) this.mediaSessionManager$delegate.getValue();
    }

    private final boolean isRemotePlayerActive() {
        Object obj;
        boolean z;
        Iterator<T> it = getActiveSessions().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                MediaController.PlaybackInfo playbackInfo = ((MediaController) obj).getPlaybackInfo();
                if (playbackInfo != null && playbackInfo.getPlaybackType() == 2) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        MediaController mediaController = (MediaController) obj;
        if (mediaController == null) {
            return false;
        }
        this.remoteController = mediaController;
        this.playbackInfo = mediaController.getPlaybackInfo();
        mediaController.getPackageName();
        return true;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getMaxVolume() {
        if (isRemotePlayerActive()) {
            MediaController.PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo != null) {
                return playbackInfo.getMaxVolume();
            }
            return -1;
        }
        return super.getMaxVolume();
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getMinVolume() {
        if (isRemotePlayerActive()) {
            return 0;
        }
        return super.getMinVolume();
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getStreamType() {
        return 3;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public String getStreamTypeToString() {
        return this.streamTypeToString;
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public int getVolume() {
        if (isRemotePlayerActive()) {
            MediaController.PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo != null) {
                return playbackInfo.getCurrentVolume();
            }
            return -1;
        }
        return super.getVolume();
    }

    @Override // com.android.systemui.bixby2.controller.volume.VolumeType
    public void setStreamVolume(int i, int i2) {
        MediaController mediaController;
        if (isRemotePlayerActive() && (mediaController = this.remoteController) != null) {
            mediaController.getPackageName();
            mediaController.setVolumeTo(i, i2);
        } else {
            super.setStreamVolume(i, i2);
        }
    }
}
