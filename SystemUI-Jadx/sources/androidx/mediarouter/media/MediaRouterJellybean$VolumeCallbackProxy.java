package androidx.mediarouter.media;

import android.media.MediaRouter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouterJellybean$VolumeCallbackProxy extends MediaRouter.VolumeCallback {
    public final MediaRouterJellybean$VolumeCallback mCallback;

    public MediaRouterJellybean$VolumeCallbackProxy(MediaRouterJellybean$VolumeCallback mediaRouterJellybean$VolumeCallback) {
        this.mCallback = mediaRouterJellybean$VolumeCallback;
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i) {
        this.mCallback.onVolumeSetRequest(i, routeInfo);
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i) {
        this.mCallback.onVolumeUpdateRequest(i, routeInfo);
    }
}
