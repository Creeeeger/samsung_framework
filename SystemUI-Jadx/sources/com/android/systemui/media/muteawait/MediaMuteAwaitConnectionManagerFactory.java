package com.android.systemui.media.muteawait;

import android.content.Context;
import com.android.settingslib.media.DeviceIconUtil;
import com.android.systemui.media.controls.util.MediaFlags;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaMuteAwaitConnectionManagerFactory {
    public final Context context;
    public final DeviceIconUtil deviceIconUtil = new DeviceIconUtil();
    public final MediaMuteAwaitLogger logger;
    public final Executor mainExecutor;
    public final MediaFlags mediaFlags;

    public MediaMuteAwaitConnectionManagerFactory(MediaFlags mediaFlags, Context context, MediaMuteAwaitLogger mediaMuteAwaitLogger, Executor executor) {
        this.mediaFlags = mediaFlags;
        this.context = context;
        this.logger = mediaMuteAwaitLogger;
        this.mainExecutor = executor;
    }
}
