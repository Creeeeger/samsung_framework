package androidx.mediarouter.media;

import android.content.Context;
import android.media.MediaRouter;
import android.media.RemoteControlClient;
import androidx.mediarouter.media.MediaRouter;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class RemoteControlClientCompat {
    public final Object mRcc;
    public MediaRouter.GlobalMediaRouter.RemoteControlClientRecord mVolumeCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class JellybeanImpl extends RemoteControlClientCompat {
        public boolean mRegistered;
        public final Object mRouterObj;
        public final Object mUserRouteCategoryObj;
        public final Object mUserRouteObj;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class VolumeCallbackWrapper implements MediaRouterJellybean$VolumeCallback {
            public final WeakReference mImplWeak;

            public VolumeCallbackWrapper(JellybeanImpl jellybeanImpl) {
                this.mImplWeak = new WeakReference(jellybeanImpl);
            }

            @Override // androidx.mediarouter.media.MediaRouterJellybean$VolumeCallback
            public final void onVolumeSetRequest(int i, Object obj) {
                MediaRouter.GlobalMediaRouter.RemoteControlClientRecord remoteControlClientRecord;
                MediaRouter.RouteInfo routeInfo;
                JellybeanImpl jellybeanImpl = (JellybeanImpl) this.mImplWeak.get();
                if (jellybeanImpl != null && (remoteControlClientRecord = jellybeanImpl.mVolumeCallback) != null && (routeInfo = MediaRouter.GlobalMediaRouter.this.mSelectedRoute) != null) {
                    routeInfo.requestSetVolume(i);
                }
            }

            @Override // androidx.mediarouter.media.MediaRouterJellybean$VolumeCallback
            public final void onVolumeUpdateRequest(int i, Object obj) {
                MediaRouter.GlobalMediaRouter.RemoteControlClientRecord remoteControlClientRecord;
                MediaRouter.RouteInfo routeInfo;
                JellybeanImpl jellybeanImpl = (JellybeanImpl) this.mImplWeak.get();
                if (jellybeanImpl != null && (remoteControlClientRecord = jellybeanImpl.mVolumeCallback) != null && (routeInfo = MediaRouter.GlobalMediaRouter.this.mSelectedRoute) != null) {
                    routeInfo.requestUpdateVolume(i);
                }
            }
        }

        public JellybeanImpl(Context context, Object obj) {
            super(context, obj);
            Object systemService = context.getSystemService("media_router");
            this.mRouterObj = systemService;
            android.media.MediaRouter mediaRouter = (android.media.MediaRouter) systemService;
            MediaRouter.RouteCategory createRouteCategory = mediaRouter.createRouteCategory((CharSequence) "", false);
            this.mUserRouteCategoryObj = createRouteCategory;
            this.mUserRouteObj = mediaRouter.createUserRoute(createRouteCategory);
        }

        public final void setPlaybackInfo(PlaybackInfo playbackInfo) {
            MediaRouter.UserRouteInfo userRouteInfo = (MediaRouter.UserRouteInfo) this.mUserRouteObj;
            userRouteInfo.setVolume(playbackInfo.volume);
            userRouteInfo.setVolumeMax(playbackInfo.volumeMax);
            userRouteInfo.setVolumeHandling(playbackInfo.volumeHandling);
            userRouteInfo.setPlaybackStream(playbackInfo.playbackStream);
            userRouteInfo.setPlaybackType(playbackInfo.playbackType);
            if (!this.mRegistered) {
                this.mRegistered = true;
                userRouteInfo.setVolumeCallback(new MediaRouterJellybean$VolumeCallbackProxy(new VolumeCallbackWrapper(this)));
                userRouteInfo.setRemoteControlClient((RemoteControlClient) this.mRcc);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PlaybackInfo {
        public int volume;
        public int volumeMax;
        public int volumeHandling = 0;
        public int playbackStream = 3;
        public int playbackType = 1;
    }

    public RemoteControlClientCompat(Context context, Object obj) {
        this.mRcc = obj;
    }
}
