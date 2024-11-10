package com.android.server.media;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioRoutesInfo;
import android.media.IAudioRoutesObserver;
import android.media.IAudioService;
import android.media.MediaRoute2Info;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.media.DeviceRouteController;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class LegacyDeviceRouteController implements DeviceRouteController {
    public final AudioManager mAudioManager;
    public final AudioRoutesObserver mAudioRoutesObserver;
    public final IAudioService mAudioService;
    public final Context mContext;
    public MediaRoute2Info mDeviceRoute;
    public int mDeviceVolume;
    public final DeviceRouteController.OnDeviceRouteChangedListener mOnDeviceRouteChangedListener;

    @Override // com.android.server.media.DeviceRouteController
    public boolean selectRoute(Integer num) {
        return false;
    }

    public LegacyDeviceRouteController(Context context, AudioManager audioManager, IAudioService iAudioService, DeviceRouteController.OnDeviceRouteChangedListener onDeviceRouteChangedListener) {
        AudioRoutesInfo audioRoutesInfo = null;
        AudioRoutesObserver audioRoutesObserver = new AudioRoutesObserver();
        this.mAudioRoutesObserver = audioRoutesObserver;
        Objects.requireNonNull(context);
        Objects.requireNonNull(audioManager);
        Objects.requireNonNull(iAudioService);
        Objects.requireNonNull(onDeviceRouteChangedListener);
        this.mContext = context;
        this.mOnDeviceRouteChangedListener = onDeviceRouteChangedListener;
        this.mAudioManager = audioManager;
        this.mAudioService = iAudioService;
        try {
            audioRoutesInfo = iAudioService.startWatchingRoutes(audioRoutesObserver);
        } catch (RemoteException e) {
            Slog.w("LDeviceRouteController", "Cannot connect to audio service to start listen to routes", e);
        }
        this.mDeviceRoute = createRouteFromAudioInfo(audioRoutesInfo);
    }

    @Override // com.android.server.media.DeviceRouteController
    public synchronized MediaRoute2Info getDeviceRoute() {
        return this.mDeviceRoute;
    }

    @Override // com.android.server.media.DeviceRouteController
    public synchronized boolean updateVolume(int i) {
        if (this.mDeviceVolume == i) {
            return false;
        }
        this.mDeviceVolume = i;
        this.mDeviceRoute = new MediaRoute2Info.Builder(this.mDeviceRoute).setVolume(i).build();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.media.MediaRoute2Info createRouteFromAudioInfo(android.media.AudioRoutesInfo r7) {
        /*
            r6 = this;
            r0 = 3
            r1 = 2
            if (r7 == 0) goto L33
            int r7 = r7.mainType
            r2 = r7 & 2
            r3 = 17040408(0x1040418, float:2.4247508E-38)
            if (r2 == 0) goto Lf
            r7 = 4
            goto L37
        Lf:
            r2 = r7 & 1
            if (r2 == 0) goto L15
            r7 = r0
            goto L37
        L15:
            r2 = r7 & 4
            if (r2 == 0) goto L1f
            r7 = 13
            r3 = 17040406(0x1040416, float:2.4247503E-38)
            goto L37
        L1f:
            r2 = r7 & 8
            if (r2 == 0) goto L29
            r7 = 9
            r3 = 17040407(0x1040417, float:2.4247505E-38)
            goto L37
        L29:
            r7 = r7 & 16
            if (r7 == 0) goto L33
            r7 = 11
            r3 = 17040409(0x1040419, float:2.424751E-38)
            goto L37
        L33:
            r3 = 17040405(0x1040415, float:2.42475E-38)
            r7 = r1
        L37:
            monitor-enter(r6)
            android.media.MediaRoute2Info$Builder r2 = new android.media.MediaRoute2Info$Builder     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = "DEVICE_ROUTE"
            android.content.Context r5 = r6.mContext     // Catch: java.lang.Throwable -> L8c
            android.content.res.Resources r5 = r5.getResources()     // Catch: java.lang.Throwable -> L8c
            java.lang.CharSequence r3 = r5.getText(r3)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L8c
            r2.<init>(r4, r3)     // Catch: java.lang.Throwable -> L8c
            android.media.AudioManager r3 = r6.mAudioManager     // Catch: java.lang.Throwable -> L8c
            boolean r3 = r3.isVolumeFixed()     // Catch: java.lang.Throwable -> L8c
            if (r3 == 0) goto L57
            r3 = 0
            goto L58
        L57:
            r3 = 1
        L58:
            android.media.MediaRoute2Info$Builder r2 = r2.setVolumeHandling(r3)     // Catch: java.lang.Throwable -> L8c
            int r3 = r6.mDeviceVolume     // Catch: java.lang.Throwable -> L8c
            android.media.MediaRoute2Info$Builder r2 = r2.setVolume(r3)     // Catch: java.lang.Throwable -> L8c
            android.media.AudioManager r3 = r6.mAudioManager     // Catch: java.lang.Throwable -> L8c
            int r0 = r3.getStreamMaxVolume(r0)     // Catch: java.lang.Throwable -> L8c
            android.media.MediaRoute2Info$Builder r0 = r2.setVolumeMax(r0)     // Catch: java.lang.Throwable -> L8c
            android.media.MediaRoute2Info$Builder r7 = r0.setType(r7)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r0 = "android.media.route.feature.LIVE_AUDIO"
            android.media.MediaRoute2Info$Builder r7 = r7.addFeature(r0)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r0 = "android.media.route.feature.LIVE_VIDEO"
            android.media.MediaRoute2Info$Builder r7 = r7.addFeature(r0)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r0 = "android.media.route.feature.LOCAL_PLAYBACK"
            android.media.MediaRoute2Info$Builder r7 = r7.addFeature(r0)     // Catch: java.lang.Throwable -> L8c
            android.media.MediaRoute2Info$Builder r7 = r7.setConnectionState(r1)     // Catch: java.lang.Throwable -> L8c
            android.media.MediaRoute2Info r7 = r7.build()     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8c
            return r7
        L8c:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8c
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.media.LegacyDeviceRouteController.createRouteFromAudioInfo(android.media.AudioRoutesInfo):android.media.MediaRoute2Info");
    }

    public final void notifyDeviceRouteUpdate(MediaRoute2Info mediaRoute2Info) {
        this.mOnDeviceRouteChangedListener.onDeviceRouteChanged(mediaRoute2Info);
    }

    /* loaded from: classes2.dex */
    public class AudioRoutesObserver extends IAudioRoutesObserver.Stub {
        public AudioRoutesObserver() {
        }

        public void dispatchAudioRoutesChanged(AudioRoutesInfo audioRoutesInfo) {
            MediaRoute2Info createRouteFromAudioInfo = LegacyDeviceRouteController.this.createRouteFromAudioInfo(audioRoutesInfo);
            synchronized (LegacyDeviceRouteController.this) {
                LegacyDeviceRouteController.this.mDeviceRoute = createRouteFromAudioInfo;
            }
            LegacyDeviceRouteController.this.notifyDeviceRouteUpdate(createRouteFromAudioInfo);
        }
    }
}
