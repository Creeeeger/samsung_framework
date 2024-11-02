package com.android.wm.shell.pip;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Icon;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.util.Log;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipMediaController {
    public final ArrayList mActionListeners;
    public final Context mContext;
    public final HandlerExecutor mHandlerExecutor;
    public Locale mLastLocale;
    public final Handler mMainHandler;
    public final AnonymousClass1 mMediaActionReceiver;
    public MediaController mMediaController;
    public final MediaSessionManager mMediaSessionManager;
    public final ArrayList mMetadataListeners;
    public RemoteAction mNextAction;
    public RemoteAction mPauseAction;
    public RemoteAction mPlayAction;
    public final AnonymousClass2 mPlaybackChangedListener;
    public RemoteAction mPrevAction;
    public final PipMediaController$$ExternalSyntheticLambda0 mSessionsChangedListener;
    public final ArrayList mTokenListeners;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ActionListener {
        void onMediaActionsChanged(List list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.pip.PipMediaController$2] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.wm.shell.pip.PipMediaController$1, android.content.BroadcastReceiver] */
    public PipMediaController(Context context, Handler handler) {
        ?? r1 = new BroadcastReceiver() { // from class: com.android.wm.shell.pip.PipMediaController.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                MediaController mediaController = PipMediaController.this.mMediaController;
                if (mediaController != null && mediaController.getTransportControls() != null) {
                    String action = intent.getAction();
                    action.getClass();
                    char c = 65535;
                    switch (action.hashCode()) {
                        case 40376596:
                            if (action.equals("com.android.wm.shell.pip.NEXT")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 40442197:
                            if (action.equals("com.android.wm.shell.pip.PLAY")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 40448084:
                            if (action.equals("com.android.wm.shell.pip.PREV")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1253399509:
                            if (action.equals("com.android.wm.shell.pip.PAUSE")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            PipMediaController.this.mMediaController.getTransportControls().skipToNext();
                            return;
                        case 1:
                            PipMediaController.this.mMediaController.getTransportControls().play();
                            return;
                        case 2:
                            PipMediaController.this.mMediaController.getTransportControls().skipToPrevious();
                            return;
                        case 3:
                            PipMediaController.this.mMediaController.getTransportControls().pause();
                            return;
                        default:
                            return;
                    }
                }
            }
        };
        this.mMediaActionReceiver = r1;
        this.mPlaybackChangedListener = new MediaController.Callback() { // from class: com.android.wm.shell.pip.PipMediaController.2
            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                ArrayList arrayList = PipMediaController.this.mMetadataListeners;
                if (!arrayList.isEmpty()) {
                    arrayList.forEach(new PipMediaController$$ExternalSyntheticLambda1(mediaMetadata, 0));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                PipMediaController pipMediaController = PipMediaController.this;
                ArrayList arrayList = pipMediaController.mActionListeners;
                if (!arrayList.isEmpty()) {
                    arrayList.forEach(new PipMediaController$$ExternalSyntheticLambda1(pipMediaController.getMediaActions(), 2));
                }
            }
        };
        this.mSessionsChangedListener = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0
            @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
            public final void onActiveSessionsChanged(List list) {
                PipMediaController.this.resolveActiveMediaController(list);
            }
        };
        this.mActionListeners = new ArrayList();
        this.mMetadataListeners = new ArrayList();
        this.mTokenListeners = new ArrayList();
        this.mContext = context;
        this.mMainHandler = handler;
        this.mHandlerExecutor = new HandlerExecutor(handler);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.android.wm.shell.pip.PLAY");
        intentFilter.addAction("com.android.wm.shell.pip.PAUSE");
        intentFilter.addAction("com.android.wm.shell.pip.NEXT");
        intentFilter.addAction("com.android.wm.shell.pip.PREV");
        context.registerReceiverForAllUsers(r1, intentFilter, "com.android.systemui.permission.SELF", handler, 2);
        this.mPauseAction = getDefaultRemoteAction(R.string.pip_pause, R.drawable.pip_ic_pause_white, "com.android.wm.shell.pip.PAUSE");
        this.mPlayAction = getDefaultRemoteAction(R.string.pip_play, R.drawable.pip_ic_play_arrow_white, "com.android.wm.shell.pip.PLAY");
        this.mNextAction = getDefaultRemoteAction(R.string.pip_skip_to_next, R.drawable.pip_ic_skip_next_white, "com.android.wm.shell.pip.NEXT");
        this.mPrevAction = getDefaultRemoteAction(R.string.pip_skip_to_prev, R.drawable.pip_ic_skip_previous_white, "com.android.wm.shell.pip.PREV");
        this.mLastLocale = Locale.getDefault();
        this.mMediaSessionManager = (MediaSessionManager) context.getSystemService(MediaSessionManager.class);
    }

    public final RemoteAction getDefaultRemoteAction(int i, int i2, String str) {
        Context context = this.mContext;
        String string = context.getString(i);
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        return new RemoteAction(Icon.createWithResource(context, i2), string, string, PendingIntent.getBroadcast(context, 0, intent, 201326592));
    }

    public final List getMediaActions() {
        PlaybackState playbackState;
        boolean z;
        MediaController mediaController = this.mMediaController;
        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null) {
            ArrayList arrayList = new ArrayList();
            boolean isActive = playbackState.isActive();
            long actions = playbackState.getActions();
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m("[PipMediaController] getMediaActions , isPlaying=", isActive, " actions=");
            m.append(Long.toHexString(actions));
            Log.d("PipTaskOrganizer", m.toString());
            Locale locale = Locale.getDefault();
            if (!locale.equals(this.mLastLocale)) {
                Log.d("PipTaskOrganizer", "[PipMediaController] recreate default actions last=" + this.mLastLocale + " cur=" + locale);
                this.mLastLocale = locale;
                this.mPauseAction = getDefaultRemoteAction(R.string.pip_pause, R.drawable.pip_ic_pause_white, "com.android.wm.shell.pip.PAUSE");
                this.mPlayAction = getDefaultRemoteAction(R.string.pip_play, R.drawable.pip_ic_play_arrow_white, "com.android.wm.shell.pip.PLAY");
                this.mNextAction = getDefaultRemoteAction(R.string.pip_skip_to_next, R.drawable.pip_ic_skip_next_white, "com.android.wm.shell.pip.NEXT");
                this.mPrevAction = getDefaultRemoteAction(R.string.pip_skip_to_prev, R.drawable.pip_ic_skip_previous_white, "com.android.wm.shell.pip.PREV");
            }
            RemoteAction remoteAction = this.mPrevAction;
            boolean z2 = true;
            if ((16 & actions) != 0) {
                z = true;
            } else {
                z = false;
            }
            remoteAction.setEnabled(z);
            arrayList.add(this.mPrevAction);
            if (!isActive && (4 & actions) != 0) {
                arrayList.add(this.mPlayAction);
            } else if (isActive && (2 & actions) != 0) {
                arrayList.add(this.mPauseAction);
            }
            RemoteAction remoteAction2 = this.mNextAction;
            if ((actions & 32) == 0) {
                z2 = false;
            }
            remoteAction2.setEnabled(z2);
            arrayList.add(this.mNextAction);
            return arrayList;
        }
        Log.d("PipTaskOrganizer", "[PipMediaController] getMediaActions : emptyList, mMediaController=" + this.mMediaController + " PlaybackState=null caller=" + Debug.getCallers(7));
        return Collections.emptyList();
    }

    public final void resolveActiveMediaController(List list) {
        ComponentName componentName;
        if (list != null && (componentName = (ComponentName) PipUtils.getTopPipActivity(this.mContext).first) != null) {
            for (int i = 0; i < list.size(); i++) {
                MediaController mediaController = (MediaController) list.get(i);
                if (mediaController.getPackageName().equals(componentName.getPackageName())) {
                    setActiveMediaController(mediaController);
                    return;
                }
            }
        }
        setActiveMediaController(null);
    }

    public final void setActiveMediaController(MediaController mediaController) {
        MediaMetadata mediaMetadata;
        MediaController mediaController2 = this.mMediaController;
        if (mediaController != mediaController2) {
            AnonymousClass2 anonymousClass2 = this.mPlaybackChangedListener;
            if (mediaController2 != null) {
                mediaController2.unregisterCallback(anonymousClass2);
            }
            this.mMediaController = mediaController;
            if (mediaController != null) {
                mediaController.registerCallback(anonymousClass2, this.mMainHandler);
            }
            ArrayList arrayList = this.mActionListeners;
            if (!arrayList.isEmpty()) {
                arrayList.forEach(new PipMediaController$$ExternalSyntheticLambda1(getMediaActions(), 2));
            }
            MediaController mediaController3 = this.mMediaController;
            MediaSession.Token token = null;
            if (mediaController3 != null) {
                mediaMetadata = mediaController3.getMetadata();
            } else {
                mediaMetadata = null;
            }
            ArrayList arrayList2 = this.mMetadataListeners;
            if (!arrayList2.isEmpty()) {
                arrayList2.forEach(new PipMediaController$$ExternalSyntheticLambda1(mediaMetadata, 0));
            }
            MediaController mediaController4 = this.mMediaController;
            if (mediaController4 != null) {
                token = mediaController4.getSessionToken();
            }
            ArrayList arrayList3 = this.mTokenListeners;
            if (!arrayList3.isEmpty()) {
                arrayList3.forEach(new PipMediaController$$ExternalSyntheticLambda1(token, 1));
            }
        }
    }
}
