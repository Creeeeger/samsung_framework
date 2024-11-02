package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.media.AudioAttributesCompat;
import androidx.media.AudioAttributesImplApi26;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaControllerCompat {
    public final MediaControllerImplApi21 mImpl;
    public final ConcurrentHashMap mRegisteredCallbacks = new ConcurrentHashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class MediaControllerImplApi21 {
        public final MediaController mControllerFwk;
        public final MediaSessionCompat.Token mSessionToken;
        public final Object mLock = new Object();
        public final List mPendingCallbacks = new ArrayList();
        public final HashMap mCallbackMap = new HashMap();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        class ExtraBinderRequestResultReceiver extends ResultReceiver {
            public final WeakReference mMediaControllerImpl;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference(mediaControllerImplApi21);
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // android.os.ResultReceiver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onReceiveResult(int r4, android.os.Bundle r5) {
                /*
                    r3 = this;
                    java.lang.ref.WeakReference r3 = r3.mMediaControllerImpl
                    java.lang.Object r3 = r3.get()
                    android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 r3 = (android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21) r3
                    if (r3 == 0) goto L64
                    if (r5 != 0) goto Ld
                    goto L64
                Ld:
                    java.lang.Object r4 = r3.mLock
                    monitor-enter(r4)
                    android.support.v4.media.session.MediaSessionCompat$Token r0 = r3.mSessionToken     // Catch: java.lang.Throwable -> L61
                    java.lang.String r1 = "android.support.v4.media.session.EXTRA_BINDER"
                    android.os.IBinder r1 = r5.getBinder(r1)     // Catch: java.lang.Throwable -> L61
                    android.support.v4.media.session.IMediaSession r1 = android.support.v4.media.session.IMediaSession.Stub.asInterface(r1)     // Catch: java.lang.Throwable -> L61
                    java.lang.Object r2 = r0.mLock     // Catch: java.lang.Throwable -> L61
                    monitor-enter(r2)     // Catch: java.lang.Throwable -> L61
                    r0.mExtraBinder = r1     // Catch: java.lang.Throwable -> L5e
                    monitor-exit(r2)     // Catch: java.lang.Throwable -> L5e
                    android.support.v4.media.session.MediaSessionCompat$Token r0 = r3.mSessionToken     // Catch: java.lang.Throwable -> L61
                    java.lang.String r1 = "android.support.v4.media.session.SESSION_TOKEN2"
                    android.os.Parcelable r5 = r5.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    android.os.Bundle r5 = (android.os.Bundle) r5     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    if (r5 != 0) goto L2f
                    goto L4f
                L2f:
                    java.lang.Class<androidx.versionedparcelable.ParcelUtils> r1 = androidx.versionedparcelable.ParcelUtils.class
                    java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    r5.setClassLoader(r1)     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    java.lang.String r1 = "a"
                    android.os.Parcelable r5 = r5.getParcelable(r1)     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    boolean r1 = r5 instanceof androidx.versionedparcelable.ParcelImpl     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    if (r1 == 0) goto L47
                    androidx.versionedparcelable.ParcelImpl r5 = (androidx.versionedparcelable.ParcelImpl) r5     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    androidx.versionedparcelable.VersionedParcelable r5 = r5.mParcel     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    goto L50
                L47:
                    java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    java.lang.String r1 = "Invalid parcel"
                    r5.<init>(r1)     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                    throw r5     // Catch: java.lang.RuntimeException -> L4f java.lang.Throwable -> L61
                L4f:
                    r5 = 0
                L50:
                    java.lang.Object r1 = r0.mLock     // Catch: java.lang.Throwable -> L61
                    monitor-enter(r1)     // Catch: java.lang.Throwable -> L61
                    r0.mSession2Token = r5     // Catch: java.lang.Throwable -> L5b
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L5b
                    r3.processPendingCallbacksLocked()     // Catch: java.lang.Throwable -> L61
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L61
                    return
                L5b:
                    r3 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L5b
                    throw r3     // Catch: java.lang.Throwable -> L61
                L5e:
                    r3 = move-exception
                    monitor-exit(r2)     // Catch: java.lang.Throwable -> L5e
                    throw r3     // Catch: java.lang.Throwable -> L61
                L61:
                    r3 = move-exception
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L61
                    throw r3
                L64:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21.ExtraBinderRequestResultReceiver.onReceiveResult(int, android.os.Bundle):void");
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class ExtraCallback extends Callback.StubCompat {
            public ExtraCallback(Callback callback) {
                super(callback);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onExtrasChanged(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onQueueChanged(List list) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onQueueTitleChanged(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onSessionDestroyed() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public final void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.mSessionToken = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) token.mInner);
            this.mControllerFwk = mediaController;
            if (token.getExtraBinder() == null) {
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
            }
        }

        public final TransportControls getTransportControls() {
            return new TransportControlsApi29(this.mControllerFwk.getTransportControls());
        }

        public final void processPendingCallbacksLocked() {
            MediaSessionCompat.Token token = this.mSessionToken;
            if (token.getExtraBinder() == null) {
                return;
            }
            ArrayList arrayList = (ArrayList) this.mPendingCallbacks;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Callback callback = (Callback) it.next();
                ExtraCallback extraCallback = new ExtraCallback(callback);
                this.mCallbackMap.put(callback, extraCallback);
                callback.mIControllerCallback = extraCallback;
                try {
                    token.getExtraBinder().registerCallbackListener(extraCallback);
                    callback.postToHandler(13, null, null);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                }
            }
            arrayList.clear();
        }

        public final void unregisterCallback(Callback callback) {
            this.mControllerFwk.unregisterCallback(callback.mCallbackFwk);
            synchronized (this.mLock) {
                if (this.mSessionToken.getExtraBinder() != null) {
                    try {
                        ExtraCallback extraCallback = (ExtraCallback) this.mCallbackMap.remove(callback);
                        if (extraCallback != null) {
                            callback.mIControllerCallback = null;
                            this.mSessionToken.getExtraBinder().unregisterCallbackListener(extraCallback);
                        }
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                    }
                } else {
                    ((ArrayList) this.mPendingCallbacks).remove(callback);
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaControllerImplApi29 extends MediaControllerImplApi21 {
        public MediaControllerImplApi29(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class TransportControls {
        public abstract void pause();

        public abstract void play();

        public abstract void stop();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class TransportControlsApi21 extends TransportControls {
        public final MediaController.TransportControls mControlsFwk;

        public TransportControlsApi21(MediaController.TransportControls transportControls) {
            this.mControlsFwk = transportControls;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public final void pause() {
            this.mControlsFwk.pause();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public final void play() {
            this.mControlsFwk.play();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public final void stop() {
            this.mControlsFwk.stop();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class TransportControlsApi23 extends TransportControlsApi21 {
        public TransportControlsApi23(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class TransportControlsApi24 extends TransportControlsApi23 {
        public TransportControlsApi24(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class TransportControlsApi29 extends TransportControlsApi24 {
        public TransportControlsApi29(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat != null) {
            this.mImpl = new MediaControllerImplApi29(context, mediaSessionCompat.mImpl.getSessionToken());
            return;
        }
        throw new IllegalArgumentException("session must not be null");
    }

    public final void unregisterCallback(Callback callback) {
        if (callback != null) {
            if (this.mRegisteredCallbacks.remove(callback) == null) {
                Log.w("MediaControllerCompat", "the callback has never been registered");
                return;
            }
            try {
                this.mImpl.unregisterCallback(callback);
                return;
            } finally {
                callback.setHandler(null);
            }
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PlaybackInfo {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public PlaybackInfo(int r9, int r10, int r11, int r12, int r13) {
            /*
                r8 = this;
                androidx.media.AudioAttributesCompat$Builder r0 = new androidx.media.AudioAttributesCompat$Builder
                r0.<init>()
                androidx.media.AudioAttributesImplApi26$Builder r0 = r0.mBuilderImpl
                android.media.AudioAttributes$Builder r1 = r0.mFwkBuilder
                r1.setLegacyStreamType(r10)
                androidx.media.AudioAttributesCompat r4 = new androidx.media.AudioAttributesCompat
                androidx.media.AudioAttributesImpl r10 = r0.build()
                r4.<init>(r10)
                r2 = r8
                r3 = r9
                r5 = r11
                r6 = r12
                r7 = r13
                r2.<init>(r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaControllerCompat.PlaybackInfo.<init>(int, int, int, int, int):void");
        }

        public PlaybackInfo(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.mImpl = new MediaControllerImplApi21(context, token);
            return;
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Callback implements IBinder.DeathRecipient {
        public final MediaControllerCallbackApi21 mCallbackFwk = new MediaControllerCallbackApi21(this);
        public MessageHandler mHandler;
        public MediaControllerImplApi21.ExtraCallback mIControllerCallback;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class MediaControllerCallbackApi21 extends MediaController.Callback {
            public final WeakReference mCallback;

            public MediaControllerCallbackApi21(Callback callback) {
                this.mCallback = new WeakReference(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                if (((Callback) this.mCallback.get()) != null) {
                    new PlaybackInfo(playbackInfo.getPlaybackType(), new AudioAttributesCompat(new AudioAttributesImplApi26(playbackInfo.getAudioAttributes())), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null && callback.mIControllerCallback == null) {
                    callback.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(playbackState));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueChanged(List list) {
                if (((Callback) this.mCallback.get()) != null) {
                    MediaSessionCompat.QueueItem.fromQueueItemList(list);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueTitleChanged(CharSequence charSequence) {
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.onSessionDestroyed();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class MessageHandler extends Handler {
            public boolean mRegistered;

            public MessageHandler(Looper looper) {
                super(looper);
                this.mRegistered = false;
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (!this.mRegistered) {
                    return;
                }
                switch (message.what) {
                    case 1:
                        MediaSessionCompat.ensureClassLoader(message.getData());
                        Callback callback = Callback.this;
                        callback.getClass();
                        return;
                    case 2:
                        Callback.this.onPlaybackStateChanged((PlaybackStateCompat) message.obj);
                        return;
                    case 3:
                        Callback.this.onMetadataChanged((MediaMetadataCompat) message.obj);
                        return;
                    case 4:
                        Callback callback2 = Callback.this;
                        callback2.getClass();
                        return;
                    case 5:
                        Callback callback3 = Callback.this;
                        callback3.getClass();
                        return;
                    case 6:
                        Callback callback4 = Callback.this;
                        callback4.getClass();
                        return;
                    case 7:
                        MediaSessionCompat.ensureClassLoader((Bundle) message.obj);
                        Callback.this.getClass();
                        return;
                    case 8:
                        Callback.this.onSessionDestroyed();
                        return;
                    case 9:
                        Callback callback5 = Callback.this;
                        ((Integer) message.obj).intValue();
                        callback5.getClass();
                        return;
                    case 10:
                    default:
                        return;
                    case 11:
                        Callback callback6 = Callback.this;
                        ((Boolean) message.obj).booleanValue();
                        callback6.getClass();
                        return;
                    case 12:
                        Callback callback7 = Callback.this;
                        ((Integer) message.obj).intValue();
                        callback7.getClass();
                        return;
                    case 13:
                        Callback.this.getClass();
                        return;
                }
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public class StubCompat extends IMediaControllerCallback.Stub {
            public final WeakReference mCallback;

            public StubCompat(Callback callback) {
                this.mCallback = new WeakReference(callback);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle bundle) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.postToHandler(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.postToHandler(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List list) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.postToHandler(5, list, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence charSequence) {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.postToHandler(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() {
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    callback.postToHandler(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
                PlaybackInfo playbackInfo;
                Callback callback = (Callback) this.mCallback.get();
                if (callback != null) {
                    if (parcelableVolumeInfo != null) {
                        playbackInfo = new PlaybackInfo(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume);
                    } else {
                        playbackInfo = null;
                    }
                    callback.postToHandler(4, playbackInfo, null);
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            postToHandler(8, null, null);
        }

        public final void postToHandler(int i, Object obj, Bundle bundle) {
            MessageHandler messageHandler = this.mHandler;
            if (messageHandler != null) {
                Message obtainMessage = messageHandler.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        public final void setHandler(Handler handler) {
            if (handler == null) {
                MessageHandler messageHandler = this.mHandler;
                if (messageHandler != null) {
                    messageHandler.mRegistered = false;
                    messageHandler.removeCallbacksAndMessages(null);
                    this.mHandler = null;
                    return;
                }
                return;
            }
            MessageHandler messageHandler2 = new MessageHandler(handler.getLooper());
            this.mHandler = messageHandler2;
            messageHandler2.mRegistered = true;
        }

        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
        }

        public void onSessionDestroyed() {
        }
    }
}
