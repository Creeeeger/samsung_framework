package com.android.settingslib.volume;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.MediaMetadata;
import android.media.MediaRoute2Info;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.Slog;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.VolumeDialogController;
import com.android.systemui.volume.VolumeDialogControllerImpl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaSessions {
    public static final String TAG;
    public final Callbacks mCallbacks;
    public final Context mContext;
    public final H mHandler;
    public final HandlerExecutor mHandlerExecutor;
    public boolean mInit;
    public final MediaSessionManager mMgr;
    public final Map mRecords = new HashMap();
    public final AnonymousClass1 mSessionsListener = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: com.android.settingslib.volume.MediaSessions.1
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            MediaSessions.this.onActiveSessionsUpdatedH(list);
        }
    };
    public final AnonymousClass2 mRemoteSessionCallback = new MediaSessionManager.RemoteSessionCallback() { // from class: com.android.settingslib.volume.MediaSessions.2
        public final void onDefaultRemoteSessionChanged(MediaSession.Token token) {
            MediaSessions.this.mHandler.obtainMessage(3, token).sendToTarget();
        }

        public final void onVolumeChanged(MediaSession.Token token, int i) {
            MediaSessions.this.mHandler.obtainMessage(2, i, 0, token).sendToTarget();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callbacks {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class H extends Handler {
        public /* synthetic */ H(MediaSessions mediaSessions, Looper looper, int i) {
            this(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int intValue;
            MediaController mediaController;
            int i = message.what;
            String str = null;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        MediaSessions mediaSessions = MediaSessions.this;
                        MediaSession.Token token = (MediaSession.Token) message.obj;
                        String str2 = MediaSessions.TAG;
                        mediaSessions.getClass();
                        if (token != null) {
                            mediaController = new MediaController(mediaSessions.mContext, token);
                        } else {
                            mediaController = null;
                        }
                        if (mediaController != null) {
                            str = mediaController.getPackageName();
                        }
                        if (D.BUG) {
                            Log.d(MediaSessions.TAG, KeyAttributes$$ExternalSyntheticOutline0.m("onUpdateRemoteSessionListH ", str));
                        }
                        if (mediaSessions.mInit) {
                            mediaSessions.mHandler.sendEmptyMessage(1);
                            return;
                        }
                        return;
                    }
                    return;
                }
                MediaSessions mediaSessions2 = MediaSessions.this;
                MediaSession.Token token2 = (MediaSession.Token) message.obj;
                int i2 = message.arg1;
                String str3 = MediaSessions.TAG;
                mediaSessions2.getClass();
                MediaController mediaController2 = new MediaController(mediaSessions2.mContext, token2);
                if (D.BUG) {
                    String str4 = MediaSessions.TAG;
                    StringBuilder sb = new StringBuilder("remoteVolumeChangedH ");
                    sb.append(mediaController2.getPackageName());
                    sb.append(" ");
                    ExifInterface$$ExternalSyntheticOutline0.m(sb, Util.bitFieldToString(i2, Util.AUDIO_MANAGER_FLAG_NAMES, Util.AUDIO_MANAGER_FLAGS), str4);
                }
                MediaSession.Token sessionToken = mediaController2.getSessionToken();
                VolumeDialogControllerImpl.MediaSessionsCallbacks mediaSessionsCallbacks = (VolumeDialogControllerImpl.MediaSessionsCallbacks) mediaSessions2.mCallbacks;
                if (mediaSessionsCallbacks.showForSession(sessionToken)) {
                    mediaSessionsCallbacks.addStream(sessionToken, "onRemoteVolumeChanged");
                    synchronized (mediaSessionsCallbacks.mRemoteStreams) {
                        intValue = ((Integer) mediaSessionsCallbacks.mRemoteStreams.get(sessionToken)).intValue();
                    }
                    VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                    String str5 = VolumeDialogControllerImpl.TAG;
                    boolean shouldShowUI = volumeDialogControllerImpl.shouldShowUI(i2);
                    String str6 = VolumeDialogControllerImpl.TAG;
                    Slog.d(str6, "onRemoteVolumeChanged: stream: " + intValue + " showui? " + shouldShowUI);
                    if (sessionToken != null && sessionToken.getBinder() != null) {
                        VolumeDialogControllerImpl.m2440$$Nest$mupdateRemoteFixedVolumeSession(VolumeDialogControllerImpl.this, intValue, new MediaController(VolumeDialogControllerImpl.this.mContext, sessionToken).getPlaybackInfo());
                    }
                    boolean updateActiveStreamW = VolumeDialogControllerImpl.this.updateActiveStreamW(intValue);
                    if (shouldShowUI) {
                        updateActiveStreamW |= VolumeDialogControllerImpl.this.checkRoutedToBluetoothW(3);
                    }
                    if (updateActiveStreamW) {
                        Slog.d(str6, "onRemoteChanged: updatingState");
                        VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
                        volumeDialogControllerImpl2.mCallbacks.onStateChanged(volumeDialogControllerImpl2.mState);
                    }
                    if (shouldShowUI) {
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = VolumeDialogControllerImpl.this;
                        volumeDialogControllerImpl3.mCallbacks.onShowRequested(2, volumeDialogControllerImpl3.mKeyguardManager.isKeyguardLocked(), volumeDialogControllerImpl3.mActivityManager.getLockTaskModeState());
                        return;
                    }
                    return;
                }
                return;
            }
            MediaSessions mediaSessions3 = MediaSessions.this;
            mediaSessions3.onActiveSessionsUpdatedH(mediaSessions3.mMgr.getActiveSessions(null));
        }

        private H(Looper looper) {
            super(looper);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaControllerRecord extends MediaController.Callback {
        public final MediaController controller;
        public String name;
        public boolean sentRemote;

        public /* synthetic */ MediaControllerRecord(MediaSessions mediaSessions, MediaController mediaController, int i) {
            this(mediaController);
        }

        public final String cb(String str) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, " ");
            m.append(this.controller.getPackageName());
            m.append(" ");
            return m.toString();
        }

        @Override // android.media.session.MediaController.Callback
        public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            boolean z;
            if (D.BUG) {
                String str = MediaSessions.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append(cb("onAudioInfoChanged"));
                sb.append(Util.playbackInfoToString(playbackInfo));
                sb.append(" sentRemote=");
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.sentRemote, str);
            }
            String str2 = MediaSessions.TAG;
            if (playbackInfo != null && playbackInfo.getPlaybackType() == 2) {
                z = true;
            } else {
                z = false;
            }
            if (!z && this.sentRemote) {
                ((VolumeDialogControllerImpl.MediaSessionsCallbacks) MediaSessions.this.mCallbacks).onRemoteRemoved(this.controller.getSessionToken());
                this.sentRemote = false;
                return;
            }
            if (z) {
                MediaSessions.this.updateRemoteH(this.controller.getSessionToken(), this.name, playbackInfo);
                this.sentRemote = true;
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onExtrasChanged(Bundle bundle) {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onExtrasChanged") + bundle);
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onMetadataChanged(MediaMetadata mediaMetadata) {
            String mediaDescription;
            if (D.BUG) {
                String str = MediaSessions.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append(cb("onMetadataChanged"));
                if (mediaMetadata == null) {
                    mediaDescription = null;
                } else {
                    mediaDescription = mediaMetadata.getDescription().toString();
                }
                ExifInterface$$ExternalSyntheticOutline0.m(sb, mediaDescription, str);
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onPlaybackStateChanged(PlaybackState playbackState) {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onPlaybackStateChanged") + Util.playbackStateToString(playbackState));
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onQueueChanged(List list) {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onQueueChanged") + list);
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onQueueTitleChanged(CharSequence charSequence) {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onQueueTitleChanged") + ((Object) charSequence));
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionDestroyed() {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onSessionDestroyed"));
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionEvent(String str, Bundle bundle) {
            if (D.BUG) {
                Log.d(MediaSessions.TAG, cb("onSessionEvent") + "event=" + str + " extras=" + bundle);
            }
        }

        private MediaControllerRecord(MediaController mediaController) {
            this.controller = mediaController;
        }
    }

    static {
        String concat = "vol.".concat("MediaSessions");
        if (concat.length() >= 23) {
            concat = concat.substring(0, 23);
        }
        TAG = concat;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.settingslib.volume.MediaSessions$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.settingslib.volume.MediaSessions$2] */
    public MediaSessions(Context context, Looper looper, Callbacks callbacks) {
        this.mContext = context;
        H h = new H(this, looper, 0);
        this.mHandler = h;
        this.mHandlerExecutor = new HandlerExecutor(h);
        this.mMgr = (MediaSessionManager) context.getSystemService("media_session");
        this.mCallbacks = callbacks;
    }

    public final void onActiveSessionsUpdatedH(List list) {
        boolean z = D.BUG;
        String str = TAG;
        if (z) {
            Log.d(str, "onActiveSessionsUpdatedH n=" + list.size());
        }
        HashMap hashMap = (HashMap) this.mRecords;
        HashSet hashSet = new HashSet(hashMap.keySet());
        Iterator it = list.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            MediaController mediaController = (MediaController) it.next();
            MediaSession.Token sessionToken = mediaController.getSessionToken();
            MediaController.PlaybackInfo playbackInfo = mediaController.getPlaybackInfo();
            hashSet.remove(sessionToken);
            if (!hashMap.containsKey(sessionToken)) {
                MediaControllerRecord mediaControllerRecord = new MediaControllerRecord(this, mediaController, i);
                PackageManager packageManager = this.mContext.getPackageManager();
                String packageName = mediaController.getPackageName();
                try {
                    String trim = Objects.toString(packageManager.getApplicationInfo(packageName, 0).loadLabel(packageManager), "").trim();
                    if (trim.length() > 0) {
                        packageName = trim;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
                mediaControllerRecord.name = packageName;
                hashMap.put(sessionToken, mediaControllerRecord);
                mediaController.registerCallback(mediaControllerRecord, this.mHandler);
            }
            MediaControllerRecord mediaControllerRecord2 = (MediaControllerRecord) hashMap.get(sessionToken);
            if (playbackInfo != null && playbackInfo.getPlaybackType() == 2) {
                i = 1;
            }
            if (i != 0) {
                updateRemoteH(sessionToken, mediaControllerRecord2.name, playbackInfo);
                mediaControllerRecord2.sentRemote = true;
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            MediaSession.Token token = (MediaSession.Token) it2.next();
            MediaControllerRecord mediaControllerRecord3 = (MediaControllerRecord) hashMap.get(token);
            mediaControllerRecord3.controller.unregisterCallback(mediaControllerRecord3);
            hashMap.remove(token);
            if (D.BUG) {
                StringBuilder sb = new StringBuilder("Removing ");
                sb.append(mediaControllerRecord3.name);
                sb.append(" sentRemote=");
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, mediaControllerRecord3.sentRemote, str);
            }
            if (mediaControllerRecord3.sentRemote) {
                ((VolumeDialogControllerImpl.MediaSessionsCallbacks) this.mCallbacks).onRemoteRemoved(token);
                mediaControllerRecord3.sentRemote = false;
            }
        }
    }

    public final void updateRemoteH(MediaSession.Token token, String str, MediaController.PlaybackInfo playbackInfo) {
        int intValue;
        boolean z;
        MediaRoute2Info mediaRoute2Info;
        Callbacks callbacks = this.mCallbacks;
        if (callbacks != null) {
            VolumeDialogControllerImpl.MediaSessionsCallbacks mediaSessionsCallbacks = (VolumeDialogControllerImpl.MediaSessionsCallbacks) callbacks;
            if (mediaSessionsCallbacks.showForSession(token)) {
                mediaSessionsCallbacks.addStream(token, "onRemoteUpdate");
                synchronized (mediaSessionsCallbacks.mRemoteStreams) {
                    intValue = ((Integer) mediaSessionsCallbacks.mRemoteStreams.get(token)).intValue();
                }
                String str2 = VolumeDialogControllerImpl.TAG;
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onRemoteUpdate: stream: ", intValue, " volume: ");
                m.append(playbackInfo.getCurrentVolume());
                Slog.d(str2, m.toString());
                VolumeDialogControllerImpl.m2440$$Nest$mupdateRemoteFixedVolumeSession(VolumeDialogControllerImpl.this, intValue, playbackInfo);
                boolean z2 = true;
                if (VolumeDialogControllerImpl.this.mState.states.indexOfKey(intValue) < 0) {
                    z = true;
                } else {
                    z = false;
                }
                VolumeDialogController.StreamState streamStateW = VolumeDialogControllerImpl.this.streamStateW(intValue);
                Iterator it = VolumeDialogControllerImpl.this.mRouter2Manager.getAllRoutes().iterator();
                while (true) {
                    if (it.hasNext()) {
                        mediaRoute2Info = (MediaRoute2Info) it.next();
                        if (mediaRoute2Info.getConnectionState() == 2 && !mediaRoute2Info.getFeatures().contains("android.media.route.feature.LOCAL_PLAYBACK")) {
                            break;
                        }
                    } else {
                        mediaRoute2Info = null;
                        break;
                    }
                }
                if (mediaRoute2Info != null) {
                    List<String> features = mediaRoute2Info.getFeatures();
                    if (features.contains("android.media.route.feature.REMOTE_PLAYBACK") || features.contains("android.media.route.feature.REMOTE_AUDIO_PLAYBACK")) {
                        VolumeDialogController.StreamState streamStateW2 = VolumeDialogControllerImpl.this.streamStateW(intValue);
                        if (!streamStateW2.remoteSpeaker) {
                            streamStateW2.remoteSpeaker = true;
                            if (com.android.systemui.volume.D.BUG) {
                                Log.d(VolumeDialogControllerImpl.TAG, LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("updateStreamRoutedToRemoteSpeaker stream=", intValue, " remoteSpeaker=true"));
                            }
                        }
                    }
                }
                streamStateW.dynamic = true;
                streamStateW.levelMin = 0;
                streamStateW.levelMax = playbackInfo.getMaxVolume();
                if (streamStateW.level != playbackInfo.getCurrentVolume()) {
                    streamStateW.level = playbackInfo.getCurrentVolume();
                    z = true;
                }
                if (!Objects.equals(streamStateW.remoteLabel, str)) {
                    streamStateW.name = -1;
                    streamStateW.remoteLabel = str;
                } else {
                    z2 = z;
                }
                if (z2) {
                    String str3 = VolumeDialogControllerImpl.TAG;
                    StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m("onRemoteUpdate: ", str, ": ");
                    m2.append(streamStateW.level);
                    m2.append(" of ");
                    RecyclerView$$ExternalSyntheticOutline0.m(m2, streamStateW.levelMax, str3);
                    VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                    volumeDialogControllerImpl.mCallbacks.onStateChanged(volumeDialogControllerImpl.mState);
                }
            }
        }
    }
}
