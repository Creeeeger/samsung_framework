package com.android.systemui.bixby2.controller.mediacontrol;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.util.Log;
import android.view.KeyEvent;
import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.bixby2.util.AudioManagerWrapper;
import com.android.systemui.bixby2.util.MediaModeInfoBixby;
import java.util.List;
import java.util.function.Predicate;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MediaCommandType {
    private static final String AUDIO_MIRRORING_PACKAGE_NAME = "com.samsung.android.audiomirroring";
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "MediaCommand";
    public static Context context;
    public static MediaController mediaController;
    public static MediaModeInfoBixby mediaInfo;
    public static MediaSessionManager mediaSessionManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaCommandType create(Context context, int i, MediaModeInfoBixby mediaModeInfoBixby, AudioManagerWrapper audioManagerWrapper, MediaSessionManager mediaSessionManager) {
            setContext(context);
            setMediaInfo(mediaModeInfoBixby);
            setMediaSessionManager(mediaSessionManager);
            if (audioManagerWrapper.isInCall()) {
                return new InCallCaseController();
            }
            MediaController activeSession = getActiveSession();
            if (activeSession == null) {
                return new PlayLastSongController(i);
            }
            setMediaController(activeSession);
            switch (i) {
                case 0:
                    return new PlayController();
                case 1:
                case 2:
                    return new StopController();
                case 3:
                    return new ReplayController();
                case 4:
                    return new SkipController();
                case 5:
                    return new PreviousController();
                case 6:
                    return new FastForwardController();
                case 7:
                    return new RewindController();
                case 8:
                    return new MoveFromCurrentPositionController();
                case 9:
                    return new SeekToController();
                default:
                    return new InvalidActionController();
            }
        }

        public final MediaController getActiveSession() {
            List<MediaController> activeSessions = getMediaSessionManager().getActiveSessions(null);
            if (!(!activeSessions.isEmpty())) {
                return null;
            }
            if (Intrinsics.areEqual(MediaCommandType.AUDIO_MIRRORING_PACKAGE_NAME, activeSessions.get(0).getPackageName()) && activeSessions.size() >= 2) {
                return activeSessions.get(1);
            }
            return activeSessions.get(0);
        }

        public final Context getContext() {
            Context context = MediaCommandType.context;
            if (context != null) {
                return context;
            }
            return null;
        }

        public final MediaController getMediaController() {
            MediaController mediaController = MediaCommandType.mediaController;
            if (mediaController != null) {
                return mediaController;
            }
            return null;
        }

        public final MediaModeInfoBixby getMediaInfo() {
            MediaModeInfoBixby mediaModeInfoBixby = MediaCommandType.mediaInfo;
            if (mediaModeInfoBixby != null) {
                return mediaModeInfoBixby;
            }
            return null;
        }

        public final MediaSessionManager getMediaSessionManager() {
            MediaSessionManager mediaSessionManager = MediaCommandType.mediaSessionManager;
            if (mediaSessionManager != null) {
                return mediaSessionManager;
            }
            return null;
        }

        public final boolean isMediaControlActive(boolean z) {
            if (!z && !getMediaSessionManager().getActiveSessions(null).stream().anyMatch(new Predicate() { // from class: com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType$Companion$isMediaControlActive$1
                @Override // java.util.function.Predicate
                public final boolean test(MediaController mediaController) {
                    PlaybackState playbackState;
                    if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null) {
                        return false;
                    }
                    return playbackState.isActive();
                }
            })) {
                return false;
            }
            return true;
        }

        public final void setContext(Context context) {
            MediaCommandType.context = context;
        }

        public final void setMediaController(MediaController mediaController) {
            MediaCommandType.mediaController = mediaController;
        }

        public final void setMediaInfo(MediaModeInfoBixby mediaModeInfoBixby) {
            MediaCommandType.mediaInfo = mediaModeInfoBixby;
        }

        public final void setMediaSessionManager(MediaSessionManager mediaSessionManager) {
            MediaCommandType.mediaSessionManager = mediaSessionManager;
        }
    }

    private final boolean isPausedState(int i) {
        if (i == 1 || i == 2) {
            return true;
        }
        return false;
    }

    private final boolean isValidState() {
        Companion companion = Companion;
        PlaybackState playbackState = companion.getMediaController().getPlaybackState();
        if (playbackState == null || !isPausedState(playbackState.getState()) || !Intrinsics.areEqual(companion.getMediaController().getPackageName(), companion.getMediaInfo().focusedApp)) {
            return false;
        }
        return true;
    }

    public abstract CommandActionResponse action();

    public boolean isMusicAvailable() {
        boolean z;
        Companion companion = Companion;
        List<MediaSession.QueueItem> queue = companion.getMediaController().getQueue();
        if (queue != null && !queue.isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        if (z && companion.getMediaController().getMetadata() == null) {
            return false;
        }
        return true;
    }

    public boolean isPlayingOrFocused() {
        Companion companion = Companion;
        if (!companion.isMediaControlActive(companion.getMediaInfo().isMediaActive) && !isValidState()) {
            return false;
        }
        return true;
    }

    public boolean isValidAction(long j) {
        Companion companion = Companion;
        PlaybackState playbackState = companion.getMediaController().getPlaybackState();
        if (playbackState != null && (j & playbackState.getActions()) != 0) {
            return true;
        }
        Log.e(TAG, companion.getMediaController().getPackageName() + " do not support action!");
        return false;
    }

    public CommandActionResponse seekTo(long j) {
        if (isValidAction(256L)) {
            MediaController.TransportControls transportControls = Companion.getMediaController().getTransportControls();
            if (j < 0) {
                j = 0;
            }
            transportControls.seekTo(j);
            return new CommandActionResponse(1, "success");
        }
        return new CommandActionResponse(2, ActionResults.RESULT_NO_SUPPORT_FEATURE);
    }

    public void sendMediaKeyEvent(int i) {
        Companion companion = Companion;
        companion.getMediaController().getPackageName();
        companion.getMediaController().dispatchMediaButtonEvent(new KeyEvent(0, i));
        companion.getMediaController().dispatchMediaButtonEvent(new KeyEvent(1, i));
    }
}
