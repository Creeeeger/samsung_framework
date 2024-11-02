package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.core.content.ContextCompat;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteDynamicControllerDialog extends AppCompatDialog {
    public static final boolean DEBUG = Log.isLoggable("MediaRouteCtrlDialog", 3);
    public RecyclerAdapter mAdapter;
    public int mArtIconBackgroundColor;
    public Bitmap mArtIconBitmap;
    public boolean mArtIconIsLoaded;
    public Bitmap mArtIconLoadedBitmap;
    public Uri mArtIconUri;
    public ImageView mArtView;
    public boolean mAttachedToWindow;
    public final MediaRouterCallback mCallback;
    public ImageButton mCloseButton;
    public final Context mContext;
    public final MediaControllerCallback mControllerCallback;
    public boolean mCreated;
    public MediaDescriptionCompat mDescription;
    public final boolean mEnableGroupVolumeUX;
    public FetchArtTask mFetchArtTask;
    public final List mGroupableRoutes;
    public final AnonymousClass1 mHandler;
    public boolean mIsAnimatingVolumeSliderLayout;
    public long mLastUpdateTime;
    public MediaControllerCompat mMediaController;
    public final List mMemberRoutes;
    public ImageView mMetadataBackground;
    public View mMetadataBlackScrim;
    public RecyclerView mRecyclerView;
    public MediaRouter.RouteInfo mRouteForVolumeUpdatingByUser;
    public final MediaRouter mRouter;
    public MediaRouter.RouteInfo mSelectedRoute;
    public MediaRouteSelector mSelector;
    public Button mStopCastingButton;
    public TextView mSubtitleView;
    public String mTitlePlaceholder;
    public TextView mTitleView;
    public final List mTransferableRoutes;
    public final List mUngroupableRoutes;
    public Map mUnmutedVolumeMap;
    public boolean mUpdateMetadataViewsDeferred;
    public boolean mUpdateRoutesViewDeferred;
    public VolumeChangeListener mVolumeChangeListener;
    public Map mVolumeSliderHolderMap;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FetchArtTask extends AsyncTask {
        public int mBackgroundColor;
        public final Bitmap mIconBitmap;
        public final Uri mIconUri;

        public FetchArtTask() {
            Bitmap bitmap;
            boolean z;
            MediaDescriptionCompat mediaDescriptionCompat = MediaRouteDynamicControllerDialog.this.mDescription;
            if (mediaDescriptionCompat == null) {
                bitmap = null;
            } else {
                bitmap = mediaDescriptionCompat.mIcon;
            }
            if (bitmap != null && bitmap.isRecycled()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
                bitmap = null;
            }
            this.mIconBitmap = bitmap;
            MediaDescriptionCompat mediaDescriptionCompat2 = MediaRouteDynamicControllerDialog.this.mDescription;
            this.mIconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.mIconUri : null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00de  */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object doInBackground(java.lang.Object[] r9) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.FetchArtTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            Bitmap bitmap = (Bitmap) obj;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.mFetchArtTask = null;
            if (!Objects.equals(mediaRouteDynamicControllerDialog.mArtIconBitmap, this.mIconBitmap) || !Objects.equals(MediaRouteDynamicControllerDialog.this.mArtIconUri, this.mIconUri)) {
                MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog2 = MediaRouteDynamicControllerDialog.this;
                mediaRouteDynamicControllerDialog2.mArtIconBitmap = this.mIconBitmap;
                mediaRouteDynamicControllerDialog2.mArtIconLoadedBitmap = bitmap;
                mediaRouteDynamicControllerDialog2.mArtIconUri = this.mIconUri;
                mediaRouteDynamicControllerDialog2.mArtIconBackgroundColor = this.mBackgroundColor;
                mediaRouteDynamicControllerDialog2.mArtIconIsLoaded = true;
                mediaRouteDynamicControllerDialog2.updateMetadataViews();
            }
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.mArtIconIsLoaded = false;
            mediaRouteDynamicControllerDialog.mArtIconLoadedBitmap = null;
            mediaRouteDynamicControllerDialog.mArtIconBackgroundColor = 0;
        }

        public final InputStream openInputStreamByScheme(Uri uri) {
            InputStream openInputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if (!"android.resource".equals(lowerCase) && !"content".equals(lowerCase) && !"file".equals(lowerCase)) {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                openConnection.setConnectTimeout(30000);
                openConnection.setReadTimeout(30000);
                openInputStream = openConnection.getInputStream();
            } else {
                openInputStream = MediaRouteDynamicControllerDialog.this.mContext.getContentResolver().openInputStream(uri);
            }
            if (openInputStream == null) {
                return null;
            }
            return new BufferedInputStream(openInputStream);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaControllerCallback extends MediaControllerCompat.Callback {
        public MediaControllerCallback() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            MediaDescriptionCompat description;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (mediaMetadataCompat == null) {
                description = null;
            } else {
                description = mediaMetadataCompat.getDescription();
            }
            mediaRouteDynamicControllerDialog.mDescription = description;
            MediaRouteDynamicControllerDialog.this.reloadIconIfNeeded();
            MediaRouteDynamicControllerDialog.this.updateMetadataViews();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onSessionDestroyed() {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            MediaControllerCompat mediaControllerCompat = mediaRouteDynamicControllerDialog.mMediaController;
            if (mediaControllerCompat != null) {
                mediaControllerCompat.unregisterCallback(mediaRouteDynamicControllerDialog.mControllerCallback);
                MediaRouteDynamicControllerDialog.this.mMediaController = null;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class MediaRouteVolumeSliderHolder extends RecyclerView.ViewHolder {
        public final ImageButton mMuteButton;
        public MediaRouter.RouteInfo mRoute;
        public final MediaRouteVolumeSlider mVolumeSlider;

        public MediaRouteVolumeSliderHolder(View view, ImageButton imageButton, MediaRouteVolumeSlider mediaRouteVolumeSlider) {
            super(view);
            int color;
            int color2;
            this.mMuteButton = imageButton;
            this.mVolumeSlider = mediaRouteVolumeSlider;
            Context context = MediaRouteDynamicControllerDialog.this.mContext;
            Drawable drawable = AppCompatResources.getDrawable(R.drawable.mr_cast_mute_button, context);
            if (MediaRouterThemeHelper.isLightTheme(context)) {
                Object obj = ContextCompat.sLock;
                drawable.setTint(context.getColor(R.color.mr_dynamic_dialog_icon_light));
            }
            imageButton.setImageDrawable(drawable);
            Context context2 = MediaRouteDynamicControllerDialog.this.mContext;
            if (MediaRouterThemeHelper.isLightTheme(context2)) {
                Object obj2 = ContextCompat.sLock;
                color = context2.getColor(R.color.mr_cast_progressbar_progress_and_thumb_light);
                color2 = context2.getColor(R.color.mr_cast_progressbar_background_light);
            } else {
                Object obj3 = ContextCompat.sLock;
                color = context2.getColor(R.color.mr_cast_progressbar_progress_and_thumb_dark);
                color2 = context2.getColor(R.color.mr_cast_progressbar_background_dark);
            }
            mediaRouteVolumeSlider.setColor(color, color2);
        }

        public final void bindRouteVolumeSliderHolder(MediaRouter.RouteInfo routeInfo) {
            boolean z;
            this.mRoute = routeInfo;
            int i = routeInfo.mVolume;
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            ImageButton imageButton = this.mMuteButton;
            imageButton.setActivated(z);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.MediaRouteVolumeSliderHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                    if (mediaRouteDynamicControllerDialog.mRouteForVolumeUpdatingByUser != null) {
                        mediaRouteDynamicControllerDialog.mHandler.removeMessages(2);
                    }
                    MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder = MediaRouteVolumeSliderHolder.this;
                    MediaRouteDynamicControllerDialog.this.mRouteForVolumeUpdatingByUser = mediaRouteVolumeSliderHolder.mRoute;
                    int i2 = 1;
                    boolean z2 = !view.isActivated();
                    if (z2) {
                        i2 = 0;
                    } else {
                        MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder2 = MediaRouteVolumeSliderHolder.this;
                        Integer num = (Integer) ((HashMap) MediaRouteDynamicControllerDialog.this.mUnmutedVolumeMap).get(mediaRouteVolumeSliderHolder2.mRoute.mUniqueId);
                        if (num != null) {
                            i2 = Math.max(1, num.intValue());
                        }
                    }
                    MediaRouteVolumeSliderHolder.this.setMute(z2);
                    MediaRouteVolumeSliderHolder.this.mVolumeSlider.setProgress(i2);
                    MediaRouteVolumeSliderHolder.this.mRoute.requestSetVolume(i2);
                    sendEmptyMessageDelayed(2, 500L);
                }
            });
            MediaRouter.RouteInfo routeInfo2 = this.mRoute;
            MediaRouteVolumeSlider mediaRouteVolumeSlider = this.mVolumeSlider;
            mediaRouteVolumeSlider.setTag(routeInfo2);
            mediaRouteVolumeSlider.setMax(routeInfo.mVolumeMax);
            mediaRouteVolumeSlider.setProgress(i);
            mediaRouteVolumeSlider.setOnSeekBarChangeListener(MediaRouteDynamicControllerDialog.this.mVolumeChangeListener);
        }

        public final void setMute(boolean z) {
            ImageButton imageButton = this.mMuteButton;
            if (imageButton.isActivated() == z) {
                return;
            }
            imageButton.setActivated(z);
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (z) {
                ((HashMap) mediaRouteDynamicControllerDialog.mUnmutedVolumeMap).put(this.mRoute.mUniqueId, Integer.valueOf(this.mVolumeSlider.getProgress()));
            } else {
                ((HashMap) mediaRouteDynamicControllerDialog.mUnmutedVolumeMap).remove(this.mRoute.mUniqueId);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteAdded(MediaRouter mediaRouter) {
            MediaRouteDynamicControllerDialog.this.updateRoutesView();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState;
            boolean z;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            boolean z2 = false;
            if (routeInfo == mediaRouteDynamicControllerDialog.mSelectedRoute && MediaRouter.RouteInfo.getDynamicGroupController() != null) {
                MediaRouter.ProviderInfo providerInfo = routeInfo.mProvider;
                providerInfo.getClass();
                MediaRouter.checkCallingThread();
                Iterator it = Collections.unmodifiableList(providerInfo.mRoutes).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) it.next();
                    if (!mediaRouteDynamicControllerDialog.mSelectedRoute.getMemberRoutes().contains(routeInfo2) && (dynamicGroupState = mediaRouteDynamicControllerDialog.mSelectedRoute.getDynamicGroupState(routeInfo2)) != null) {
                        MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = dynamicGroupState.mDynamicDescriptor;
                        if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.mIsGroupable) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z && !((ArrayList) mediaRouteDynamicControllerDialog.mGroupableRoutes).contains(routeInfo2)) {
                            z2 = true;
                            break;
                        }
                    }
                }
            }
            if (z2) {
                mediaRouteDynamicControllerDialog.updateViewsIfNeeded();
                mediaRouteDynamicControllerDialog.updateRoutes();
            } else {
                mediaRouteDynamicControllerDialog.updateRoutesView();
            }
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteRemoved(MediaRouter mediaRouter) {
            MediaRouteDynamicControllerDialog.this.updateRoutesView();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteSelected(MediaRouter.RouteInfo routeInfo) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            mediaRouteDynamicControllerDialog.mSelectedRoute = routeInfo;
            mediaRouteDynamicControllerDialog.updateViewsIfNeeded();
            mediaRouteDynamicControllerDialog.updateRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteUnselected() {
            MediaRouteDynamicControllerDialog.this.updateRoutesView();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteVolumeChanged(MediaRouter.RouteInfo routeInfo) {
            MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder;
            boolean z;
            int i = routeInfo.mVolume;
            if (MediaRouteDynamicControllerDialog.DEBUG) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("onRouteVolumeChanged(), route.getVolume:", i, "MediaRouteCtrlDialog");
            }
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (mediaRouteDynamicControllerDialog.mRouteForVolumeUpdatingByUser != routeInfo && (mediaRouteVolumeSliderHolder = (MediaRouteVolumeSliderHolder) ((HashMap) mediaRouteDynamicControllerDialog.mVolumeSliderHolderMap).get(routeInfo.mUniqueId)) != null) {
                int i2 = mediaRouteVolumeSliderHolder.mRoute.mVolume;
                if (i2 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                mediaRouteVolumeSliderHolder.setMute(z);
                mediaRouteVolumeSliderHolder.mVolumeSlider.setProgress(i2);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RecyclerAdapter extends RecyclerView.Adapter {
        public final Drawable mDefaultIcon;
        public Item mGroupVolumeItem;
        public final LayoutInflater mInflater;
        public final int mLayoutAnimationDurationMs;
        public final Drawable mSpeakerGroupIcon;
        public final Drawable mSpeakerIcon;
        public final Drawable mTvIcon;
        public final ArrayList mItems = new ArrayList();
        public final Interpolator mAccelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class GroupViewHolder extends RecyclerView.ViewHolder {
            public final float mDisabledAlpha;
            public final ImageView mImageView;
            public final View mItemView;
            public final ProgressBar mProgressBar;
            public MediaRouter.RouteInfo mRoute;
            public final TextView mTextView;

            public GroupViewHolder(View view) {
                super(view);
                this.mItemView = view;
                this.mImageView = (ImageView) view.findViewById(R.id.mr_cast_group_icon);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_group_progress_bar);
                this.mProgressBar = progressBar;
                this.mTextView = (TextView) view.findViewById(R.id.mr_cast_group_name);
                this.mDisabledAlpha = MediaRouterThemeHelper.getDisabledAlpha(MediaRouteDynamicControllerDialog.this.mContext);
                MediaRouterThemeHelper.setIndeterminateProgressBarColor(MediaRouteDynamicControllerDialog.this.mContext, progressBar);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class GroupVolumeViewHolder extends MediaRouteVolumeSliderHolder {
            public final int mExpandedHeight;
            public final TextView mTextView;

            public GroupVolumeViewHolder(View view) {
                super(view, (ImageButton) view.findViewById(R.id.mr_cast_mute_button), (MediaRouteVolumeSlider) view.findViewById(R.id.mr_cast_volume_slider));
                this.mTextView = (TextView) view.findViewById(R.id.mr_group_volume_route_name);
                Resources resources = MediaRouteDynamicControllerDialog.this.mContext.getResources();
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                TypedValue typedValue = new TypedValue();
                resources.getValue(R.dimen.mr_dynamic_volume_group_list_item_height, typedValue, true);
                this.mExpandedHeight = (int) typedValue.getDimension(displayMetrics);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class HeaderViewHolder extends RecyclerView.ViewHolder {
            public final TextView mTextView;

            public HeaderViewHolder(RecyclerAdapter recyclerAdapter, View view) {
                super(view);
                this.mTextView = (TextView) view.findViewById(R.id.mr_cast_header_name);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Item {
            public final Object mData;
            public final int mType;

            public Item(RecyclerAdapter recyclerAdapter, Object obj, int i) {
                this.mData = obj;
                this.mType = i;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class RouteViewHolder extends MediaRouteVolumeSliderHolder {
            public final CheckBox mCheckBox;
            public final float mDisabledAlpha;
            public final int mExpandedLayoutHeight;
            public final ImageView mImageView;
            public final View mItemView;
            public final ProgressBar mProgressBar;
            public final TextView mTextView;
            public final AnonymousClass1 mViewClickListener;
            public final RelativeLayout mVolumeSliderLayout;

            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.mediarouter.app.MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder$1] */
            public RouteViewHolder(View view) {
                super(view, (ImageButton) view.findViewById(R.id.mr_cast_mute_button), (MediaRouteVolumeSlider) view.findViewById(R.id.mr_cast_volume_slider));
                this.mViewClickListener = new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.RouteViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        boolean z;
                        boolean z2;
                        int i;
                        boolean z3;
                        RouteViewHolder routeViewHolder = RouteViewHolder.this;
                        boolean z4 = true;
                        boolean z5 = !routeViewHolder.isSelected(routeViewHolder.mRoute);
                        boolean isGroup = RouteViewHolder.this.mRoute.isGroup();
                        int i2 = 0;
                        if (z5) {
                            RouteViewHolder routeViewHolder2 = RouteViewHolder.this;
                            MediaRouter mediaRouter = MediaRouteDynamicControllerDialog.this.mRouter;
                            MediaRouter.RouteInfo routeInfo = routeViewHolder2.mRoute;
                            mediaRouter.getClass();
                            if (routeInfo != null) {
                                MediaRouter.checkCallingThread();
                                MediaRouter.GlobalMediaRouter globalRouter = MediaRouter.getGlobalRouter();
                                if (globalRouter.mSelectedRouteController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                                    MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = globalRouter.mSelectedRoute.getDynamicGroupState(routeInfo);
                                    if (!globalRouter.mSelectedRoute.getMemberRoutes().contains(routeInfo) && dynamicGroupState != null) {
                                        MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = dynamicGroupState.mDynamicDescriptor;
                                        if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.mIsGroupable) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (z3) {
                                            ((MediaRouteProvider.DynamicGroupRouteController) globalRouter.mSelectedRouteController).onAddMemberRoute(routeInfo.mDescriptorId);
                                        }
                                    }
                                    Log.w("MediaRouter", "Ignoring attempt to add a non-groupable route to dynamic group : " + routeInfo);
                                } else {
                                    throw new IllegalStateException("There is no currently selected dynamic group route.");
                                }
                            } else {
                                throw new NullPointerException("route must not be null");
                            }
                        } else {
                            RouteViewHolder routeViewHolder3 = RouteViewHolder.this;
                            MediaRouter mediaRouter2 = MediaRouteDynamicControllerDialog.this.mRouter;
                            MediaRouter.RouteInfo routeInfo2 = routeViewHolder3.mRoute;
                            mediaRouter2.getClass();
                            if (routeInfo2 != null) {
                                MediaRouter.checkCallingThread();
                                MediaRouter.GlobalMediaRouter globalRouter2 = MediaRouter.getGlobalRouter();
                                if (globalRouter2.mSelectedRouteController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                                    MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState2 = globalRouter2.mSelectedRoute.getDynamicGroupState(routeInfo2);
                                    if (globalRouter2.mSelectedRoute.getMemberRoutes().contains(routeInfo2) && dynamicGroupState2 != null) {
                                        MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor2 = dynamicGroupState2.mDynamicDescriptor;
                                        if (dynamicRouteDescriptor2 != null && !dynamicRouteDescriptor2.mIsUnselectable) {
                                            z = false;
                                        } else {
                                            z = true;
                                        }
                                        if (z) {
                                            if (globalRouter2.mSelectedRoute.getMemberRoutes().size() <= 1) {
                                                Log.w("MediaRouter", "Ignoring attempt to remove the last member route.");
                                            } else {
                                                ((MediaRouteProvider.DynamicGroupRouteController) globalRouter2.mSelectedRouteController).onRemoveMemberRoute(routeInfo2.mDescriptorId);
                                            }
                                        }
                                    }
                                    Log.w("MediaRouter", "Ignoring attempt to remove a non-unselectable member route : " + routeInfo2);
                                } else {
                                    throw new IllegalStateException("There is no currently selected dynamic group route.");
                                }
                            } else {
                                throw new NullPointerException("route must not be null");
                            }
                        }
                        RouteViewHolder.this.showSelectingProgress(z5, !isGroup);
                        if (isGroup) {
                            List memberRoutes = MediaRouteDynamicControllerDialog.this.mSelectedRoute.getMemberRoutes();
                            for (MediaRouter.RouteInfo routeInfo3 : RouteViewHolder.this.mRoute.getMemberRoutes()) {
                                if (memberRoutes.contains(routeInfo3) != z5) {
                                    MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder = (MediaRouteVolumeSliderHolder) ((HashMap) MediaRouteDynamicControllerDialog.this.mVolumeSliderHolderMap).get(routeInfo3.mUniqueId);
                                    if (mediaRouteVolumeSliderHolder instanceof RouteViewHolder) {
                                        ((RouteViewHolder) mediaRouteVolumeSliderHolder).showSelectingProgress(z5, true);
                                    }
                                }
                            }
                        }
                        RouteViewHolder routeViewHolder4 = RouteViewHolder.this;
                        RecyclerAdapter recyclerAdapter = RecyclerAdapter.this;
                        MediaRouter.RouteInfo routeInfo4 = routeViewHolder4.mRoute;
                        MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                        List memberRoutes2 = mediaRouteDynamicControllerDialog.mSelectedRoute.getMemberRoutes();
                        int max = Math.max(1, memberRoutes2.size());
                        int i3 = -1;
                        if (routeInfo4.isGroup()) {
                            Iterator it = routeInfo4.getMemberRoutes().iterator();
                            while (it.hasNext()) {
                                if (memberRoutes2.contains((MediaRouter.RouteInfo) it.next()) != z5) {
                                    if (z5) {
                                        i = 1;
                                    } else {
                                        i = -1;
                                    }
                                    max += i;
                                }
                            }
                        } else {
                            if (z5) {
                                i3 = 1;
                            }
                            max += i3;
                        }
                        MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog2 = MediaRouteDynamicControllerDialog.this;
                        if (mediaRouteDynamicControllerDialog2.mEnableGroupVolumeUX && mediaRouteDynamicControllerDialog2.mSelectedRoute.getMemberRoutes().size() > 1) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!mediaRouteDynamicControllerDialog.mEnableGroupVolumeUX || max < 2) {
                            z4 = false;
                        }
                        if (z2 != z4) {
                            RecyclerView.ViewHolder findViewHolderForAdapterPosition = mediaRouteDynamicControllerDialog.mRecyclerView.findViewHolderForAdapterPosition(0);
                            if (findViewHolderForAdapterPosition instanceof GroupVolumeViewHolder) {
                                GroupVolumeViewHolder groupVolumeViewHolder = (GroupVolumeViewHolder) findViewHolderForAdapterPosition;
                                View view3 = groupVolumeViewHolder.itemView;
                                if (z4) {
                                    i2 = groupVolumeViewHolder.mExpandedHeight;
                                }
                                recyclerAdapter.animateLayoutHeight(view3, i2);
                            }
                        }
                    }
                };
                this.mItemView = view;
                this.mImageView = (ImageView) view.findViewById(R.id.mr_cast_route_icon);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_route_progress_bar);
                this.mProgressBar = progressBar;
                this.mTextView = (TextView) view.findViewById(R.id.mr_cast_route_name);
                this.mVolumeSliderLayout = (RelativeLayout) view.findViewById(R.id.mr_cast_volume_layout);
                CheckBox checkBox = (CheckBox) view.findViewById(R.id.mr_cast_checkbox);
                this.mCheckBox = checkBox;
                MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                Context context = mediaRouteDynamicControllerDialog.mContext;
                Drawable drawable = AppCompatResources.getDrawable(R.drawable.mr_cast_checkbox, context);
                if (MediaRouterThemeHelper.isLightTheme(context)) {
                    Object obj = ContextCompat.sLock;
                    drawable.setTint(context.getColor(R.color.mr_dynamic_dialog_icon_light));
                }
                checkBox.setButtonDrawable(drawable);
                MediaRouterThemeHelper.setIndeterminateProgressBarColor(mediaRouteDynamicControllerDialog.mContext, progressBar);
                this.mDisabledAlpha = MediaRouterThemeHelper.getDisabledAlpha(mediaRouteDynamicControllerDialog.mContext);
                Resources resources = mediaRouteDynamicControllerDialog.mContext.getResources();
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                TypedValue typedValue = new TypedValue();
                resources.getValue(R.dimen.mr_dynamic_dialog_row_height, typedValue, true);
                this.mExpandedLayoutHeight = (int) typedValue.getDimension(displayMetrics);
            }

            public final boolean isSelected(MediaRouter.RouteInfo routeInfo) {
                int i;
                if (routeInfo.isSelected()) {
                    return true;
                }
                MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = MediaRouteDynamicControllerDialog.this.mSelectedRoute.getDynamicGroupState(routeInfo);
                if (dynamicGroupState != null) {
                    MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = dynamicGroupState.mDynamicDescriptor;
                    if (dynamicRouteDescriptor != null) {
                        i = dynamicRouteDescriptor.mSelectionState;
                    } else {
                        i = 1;
                    }
                    if (i == 3) {
                        return true;
                    }
                }
                return false;
            }

            public final void showSelectingProgress(boolean z, boolean z2) {
                CheckBox checkBox = this.mCheckBox;
                int i = 0;
                checkBox.setEnabled(false);
                this.mItemView.setEnabled(false);
                checkBox.setChecked(z);
                if (z) {
                    this.mImageView.setVisibility(4);
                    this.mProgressBar.setVisibility(0);
                }
                if (z2) {
                    if (z) {
                        i = this.mExpandedLayoutHeight;
                    }
                    RecyclerAdapter.this.animateLayoutHeight(this.mVolumeSliderLayout, i);
                }
            }
        }

        public RecyclerAdapter() {
            this.mInflater = LayoutInflater.from(MediaRouteDynamicControllerDialog.this.mContext);
            this.mDefaultIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteDefaultIconDrawable, MediaRouteDynamicControllerDialog.this.mContext);
            this.mTvIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteTvIconDrawable, MediaRouteDynamicControllerDialog.this.mContext);
            this.mSpeakerIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteSpeakerIconDrawable, MediaRouteDynamicControllerDialog.this.mContext);
            this.mSpeakerGroupIcon = MediaRouterThemeHelper.getIconByAttrId(R.attr.mediaRouteSpeakerGroupIconDrawable, MediaRouteDynamicControllerDialog.this.mContext);
            this.mLayoutAnimationDurationMs = MediaRouteDynamicControllerDialog.this.mContext.getResources().getInteger(R.integer.mr_cast_volume_slider_layout_animation_duration_ms);
            updateItems();
        }

        public final void animateLayoutHeight(final View view, final int i) {
            final int i2 = view.getLayoutParams().height;
            Animation animation = new Animation(this) { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.1
                @Override // android.view.animation.Animation
                public final void applyTransformation(float f, Transformation transformation) {
                    int i3 = i;
                    int i4 = i2;
                    View view2 = view;
                    int i5 = i4 + ((int) ((i3 - i4) * f));
                    boolean z = MediaRouteDynamicControllerDialog.DEBUG;
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    layoutParams.height = i5;
                    view2.setLayoutParams(layoutParams);
                }
            };
            animation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.2
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation2) {
                    MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
                    mediaRouteDynamicControllerDialog.mIsAnimatingVolumeSliderLayout = false;
                    mediaRouteDynamicControllerDialog.updateViewsIfNeeded();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation2) {
                    MediaRouteDynamicControllerDialog.this.mIsAnimatingVolumeSliderLayout = true;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation2) {
                }
            });
            animation.setDuration(this.mLayoutAnimationDurationMs);
            animation.setInterpolator(this.mAccelerateDecelerateInterpolator);
            view.startAnimation(animation);
        }

        public final Drawable getIconDrawable(MediaRouter.RouteInfo routeInfo) {
            Uri uri = routeInfo.mIconUri;
            if (uri != null) {
                try {
                    Drawable createFromStream = Drawable.createFromStream(MediaRouteDynamicControllerDialog.this.mContext.getContentResolver().openInputStream(uri), null);
                    if (createFromStream != null) {
                        return createFromStream;
                    }
                } catch (IOException e) {
                    Log.w("MediaRouteCtrlDialog", "Failed to load " + uri, e);
                }
            }
            int i = routeInfo.mDeviceType;
            if (i != 1) {
                if (i != 2) {
                    if (routeInfo.isGroup()) {
                        return this.mSpeakerGroupIcon;
                    }
                    return this.mDefaultIcon;
                }
                return this.mSpeakerIcon;
            }
            return this.mTvIcon;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.mItems.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            Item item;
            if (i == 0) {
                item = this.mGroupVolumeItem;
            } else {
                item = (Item) this.mItems.get(i - 1);
            }
            return item.mType;
        }

        public final void notifyAdapterDataSetChanged() {
            boolean z;
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            ((ArrayList) mediaRouteDynamicControllerDialog.mUngroupableRoutes).clear();
            List list = mediaRouteDynamicControllerDialog.mUngroupableRoutes;
            List list2 = mediaRouteDynamicControllerDialog.mGroupableRoutes;
            ArrayList arrayList = new ArrayList();
            MediaRouter.ProviderInfo providerInfo = mediaRouteDynamicControllerDialog.mSelectedRoute.mProvider;
            providerInfo.getClass();
            MediaRouter.checkCallingThread();
            for (MediaRouter.RouteInfo routeInfo : Collections.unmodifiableList(providerInfo.mRoutes)) {
                MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = mediaRouteDynamicControllerDialog.mSelectedRoute.getDynamicGroupState(routeInfo);
                if (dynamicGroupState != null) {
                    MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = dynamicGroupState.mDynamicDescriptor;
                    if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.mIsGroupable) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        arrayList.add(routeInfo);
                    }
                }
            }
            HashSet hashSet = new HashSet(list2);
            hashSet.removeAll(arrayList);
            ((ArrayList) list).addAll(hashSet);
            notifyDataSetChanged();
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x0113, code lost:
        
            if (r9 != false) goto L55;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r10, int r11) {
            /*
                Method dump skipped, instructions count: 462
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.RecyclerAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
            LayoutInflater layoutInflater = this.mInflater;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            Log.w("MediaRouteCtrlDialog", "Cannot create ViewHolder because of wrong view type");
                            return null;
                        }
                        return new GroupViewHolder(layoutInflater.inflate(R.layout.mr_cast_group_item, (ViewGroup) recyclerView, false));
                    }
                    return new RouteViewHolder(layoutInflater.inflate(R.layout.mr_cast_route_item, (ViewGroup) recyclerView, false));
                }
                return new HeaderViewHolder(this, layoutInflater.inflate(R.layout.mr_cast_header_item, (ViewGroup) recyclerView, false));
            }
            return new GroupVolumeViewHolder(layoutInflater.inflate(R.layout.mr_cast_group_volume_item, (ViewGroup) recyclerView, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            MediaRouteDynamicControllerDialog.this.mVolumeSliderHolderMap.values().remove(viewHolder);
        }

        public final void updateItems() {
            String str;
            String str2;
            ArrayList arrayList = this.mItems;
            arrayList.clear();
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            this.mGroupVolumeItem = new Item(this, mediaRouteDynamicControllerDialog.mSelectedRoute, 1);
            if (!((ArrayList) mediaRouteDynamicControllerDialog.mMemberRoutes).isEmpty()) {
                Iterator it = ((ArrayList) mediaRouteDynamicControllerDialog.mMemberRoutes).iterator();
                while (it.hasNext()) {
                    arrayList.add(new Item(this, (MediaRouter.RouteInfo) it.next(), 3));
                }
            } else {
                arrayList.add(new Item(this, mediaRouteDynamicControllerDialog.mSelectedRoute, 3));
            }
            boolean z = false;
            if (!((ArrayList) mediaRouteDynamicControllerDialog.mGroupableRoutes).isEmpty()) {
                Iterator it2 = ((ArrayList) mediaRouteDynamicControllerDialog.mGroupableRoutes).iterator();
                boolean z2 = false;
                while (it2.hasNext()) {
                    MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) it2.next();
                    if (!((ArrayList) mediaRouteDynamicControllerDialog.mMemberRoutes).contains(routeInfo)) {
                        if (!z2) {
                            mediaRouteDynamicControllerDialog.mSelectedRoute.getClass();
                            MediaRouteProvider.DynamicGroupRouteController dynamicGroupController = MediaRouter.RouteInfo.getDynamicGroupController();
                            if (dynamicGroupController != null) {
                                str2 = dynamicGroupController.getGroupableSelectionTitle();
                            } else {
                                str2 = null;
                            }
                            if (TextUtils.isEmpty(str2)) {
                                str2 = mediaRouteDynamicControllerDialog.mContext.getString(R.string.mr_dialog_groupable_header);
                            }
                            arrayList.add(new Item(this, str2, 2));
                            z2 = true;
                        }
                        arrayList.add(new Item(this, routeInfo, 3));
                    }
                }
            }
            if (!((ArrayList) mediaRouteDynamicControllerDialog.mTransferableRoutes).isEmpty()) {
                Iterator it3 = ((ArrayList) mediaRouteDynamicControllerDialog.mTransferableRoutes).iterator();
                while (it3.hasNext()) {
                    MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) it3.next();
                    MediaRouter.RouteInfo routeInfo3 = mediaRouteDynamicControllerDialog.mSelectedRoute;
                    if (routeInfo3 != routeInfo2) {
                        if (!z) {
                            routeInfo3.getClass();
                            MediaRouteProvider.DynamicGroupRouteController dynamicGroupController2 = MediaRouter.RouteInfo.getDynamicGroupController();
                            if (dynamicGroupController2 != null) {
                                str = dynamicGroupController2.getTransferableSectionTitle();
                            } else {
                                str = null;
                            }
                            if (TextUtils.isEmpty(str)) {
                                str = mediaRouteDynamicControllerDialog.mContext.getString(R.string.mr_dialog_transferable_header);
                            }
                            arrayList.add(new Item(this, str, 2));
                            z = true;
                        }
                        arrayList.add(new Item(this, routeInfo2, 4));
                    }
                }
            }
            notifyAdapterDataSetChanged();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RouteComparator implements Comparator {
        public static final RouteComparator sInstance = new RouteComparator();

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((MediaRouter.RouteInfo) obj).mName.compareToIgnoreCase(((MediaRouter.RouteInfo) obj2).mName);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class VolumeChangeListener implements SeekBar.OnSeekBarChangeListener {
        public VolumeChangeListener() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            boolean z2;
            if (z) {
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) seekBar.getTag();
                MediaRouteVolumeSliderHolder mediaRouteVolumeSliderHolder = (MediaRouteVolumeSliderHolder) ((HashMap) MediaRouteDynamicControllerDialog.this.mVolumeSliderHolderMap).get(routeInfo.mUniqueId);
                if (mediaRouteVolumeSliderHolder != null) {
                    if (i == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    mediaRouteVolumeSliderHolder.setMute(z2);
                }
                routeInfo.requestSetVolume(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MediaRouteDynamicControllerDialog mediaRouteDynamicControllerDialog = MediaRouteDynamicControllerDialog.this;
            if (mediaRouteDynamicControllerDialog.mRouteForVolumeUpdatingByUser != null) {
                mediaRouteDynamicControllerDialog.mHandler.removeMessages(2);
            }
            MediaRouteDynamicControllerDialog.this.mRouteForVolumeUpdatingByUser = (MediaRouter.RouteInfo) seekBar.getTag();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            sendEmptyMessageDelayed(2, 500L);
        }
    }

    public MediaRouteDynamicControllerDialog(Context context) {
        this(context, 0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(this.mSelector, this.mCallback, 1);
        updateRoutes();
        this.mRouter.getClass();
        boolean z = MediaRouter.DEBUG;
        setMediaSession();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_cast_dialog);
        MediaRouterThemeHelper.setDialogBackgroundColor(this.mContext, this);
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_cast_close_button);
        this.mCloseButton = imageButton;
        imageButton.setColorFilter(-1);
        this.mCloseButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteDynamicControllerDialog.this.dismiss();
            }
        });
        Button button = (Button) findViewById(R.id.mr_cast_stop_button);
        this.mStopCastingButton = button;
        button.setTextColor(-1);
        this.mStopCastingButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaRouteDynamicControllerDialog.this.mSelectedRoute.isSelected()) {
                    MediaRouteDynamicControllerDialog.this.mRouter.getClass();
                    MediaRouter.unselect(2);
                }
                MediaRouteDynamicControllerDialog.this.dismiss();
            }
        });
        this.mAdapter = new RecyclerAdapter();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mr_cast_list);
        this.mRecyclerView = recyclerView;
        recyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        this.mVolumeChangeListener = new VolumeChangeListener();
        this.mVolumeSliderHolderMap = new HashMap();
        this.mUnmutedVolumeMap = new HashMap();
        this.mMetadataBackground = (ImageView) findViewById(R.id.mr_cast_meta_background);
        this.mMetadataBlackScrim = findViewById(R.id.mr_cast_meta_black_scrim);
        this.mArtView = (ImageView) findViewById(R.id.mr_cast_meta_art);
        TextView textView = (TextView) findViewById(R.id.mr_cast_meta_title);
        this.mTitleView = textView;
        textView.setTextColor(-1);
        TextView textView2 = (TextView) findViewById(R.id.mr_cast_meta_subtitle);
        this.mSubtitleView = textView2;
        textView2.setTextColor(-1);
        this.mTitlePlaceholder = this.mContext.getResources().getString(R.string.mr_cast_dialog_title_view_placeholder);
        this.mCreated = true;
        updateLayout();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttachedToWindow = false;
        this.mRouter.removeCallback(this.mCallback);
        removeCallbacksAndMessages(null);
        setMediaSession();
    }

    public final void onFilterRoutes(List list) {
        boolean z;
        for (int size = list.size() - 1; size >= 0; size--) {
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) list.get(size);
            if (!routeInfo.isDefaultOrBluetooth() && routeInfo.mEnabled && routeInfo.matchesSelector(this.mSelector) && this.mSelectedRoute != routeInfo) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                list.remove(size);
            }
        }
    }

    public final void reloadIconIfNeeded() {
        Bitmap bitmap;
        Bitmap bitmap2;
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        Uri uri2 = null;
        if (mediaDescriptionCompat == null) {
            bitmap = null;
        } else {
            bitmap = mediaDescriptionCompat.mIcon;
        }
        if (mediaDescriptionCompat != null) {
            uri2 = mediaDescriptionCompat.mIconUri;
        }
        FetchArtTask fetchArtTask = this.mFetchArtTask;
        if (fetchArtTask == null) {
            bitmap2 = this.mArtIconBitmap;
        } else {
            bitmap2 = fetchArtTask.mIconBitmap;
        }
        if (fetchArtTask == null) {
            uri = this.mArtIconUri;
        } else {
            uri = fetchArtTask.mIconUri;
        }
        if (bitmap2 == bitmap && (bitmap2 != null || Objects.equals(uri, uri2))) {
            return;
        }
        FetchArtTask fetchArtTask2 = this.mFetchArtTask;
        if (fetchArtTask2 != null) {
            fetchArtTask2.cancel(true);
        }
        FetchArtTask fetchArtTask3 = new FetchArtTask();
        this.mFetchArtTask = fetchArtTask3;
        fetchArtTask3.execute(new Void[0]);
    }

    public final void setMediaSession() {
        MediaControllerCompat mediaControllerCompat = this.mMediaController;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(this.mControllerCallback);
            this.mMediaController = null;
        }
    }

    public final void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.mSelector.equals(mediaRouteSelector)) {
                this.mSelector = mediaRouteSelector;
                if (this.mAttachedToWindow) {
                    this.mRouter.removeCallback(this.mCallback);
                    this.mRouter.addCallback(mediaRouteSelector, this.mCallback, 1);
                    updateRoutes();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void updateLayout() {
        int dialogWidth;
        Context context = this.mContext;
        int i = -1;
        if (!context.getResources().getBoolean(R.bool.is_tablet)) {
            dialogWidth = -1;
        } else {
            dialogWidth = MediaRouteDialogHelper.getDialogWidth(context);
        }
        if (this.mContext.getResources().getBoolean(R.bool.is_tablet)) {
            i = -2;
        }
        getWindow().setLayout(dialogWidth, i);
        this.mArtIconBitmap = null;
        this.mArtIconUri = null;
        reloadIconIfNeeded();
        updateMetadataViews();
        updateRoutesView();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateMetadataViews() {
        /*
            Method dump skipped, instructions count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.updateMetadataViews():void");
    }

    public final void updateRoutes() {
        boolean z;
        ((ArrayList) this.mMemberRoutes).clear();
        ((ArrayList) this.mGroupableRoutes).clear();
        ((ArrayList) this.mTransferableRoutes).clear();
        ((ArrayList) this.mMemberRoutes).addAll(this.mSelectedRoute.getMemberRoutes());
        MediaRouter.ProviderInfo providerInfo = this.mSelectedRoute.mProvider;
        providerInfo.getClass();
        MediaRouter.checkCallingThread();
        for (MediaRouter.RouteInfo routeInfo : Collections.unmodifiableList(providerInfo.mRoutes)) {
            MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = this.mSelectedRoute.getDynamicGroupState(routeInfo);
            if (dynamicGroupState != null) {
                boolean z2 = true;
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = dynamicGroupState.mDynamicDescriptor;
                if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.mIsGroupable) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    ((ArrayList) this.mGroupableRoutes).add(routeInfo);
                }
                if (dynamicRouteDescriptor == null || !dynamicRouteDescriptor.mIsTransferable) {
                    z2 = false;
                }
                if (z2) {
                    ((ArrayList) this.mTransferableRoutes).add(routeInfo);
                }
            }
        }
        onFilterRoutes(this.mGroupableRoutes);
        onFilterRoutes(this.mTransferableRoutes);
        List list = this.mMemberRoutes;
        RouteComparator routeComparator = RouteComparator.sInstance;
        Collections.sort(list, routeComparator);
        Collections.sort(this.mGroupableRoutes, routeComparator);
        Collections.sort(this.mTransferableRoutes, routeComparator);
        this.mAdapter.updateItems();
    }

    public final void updateRoutesView() {
        boolean z;
        if (this.mAttachedToWindow) {
            if (SystemClock.uptimeMillis() - this.mLastUpdateTime >= 300) {
                if (this.mRouteForVolumeUpdatingByUser == null && !this.mIsAnimatingVolumeSliderLayout) {
                    z = !this.mCreated;
                } else {
                    z = true;
                }
                if (z) {
                    this.mUpdateRoutesViewDeferred = true;
                    return;
                }
                this.mUpdateRoutesViewDeferred = false;
                if (!this.mSelectedRoute.isSelected() || this.mSelectedRoute.isDefaultOrBluetooth()) {
                    dismiss();
                }
                this.mLastUpdateTime = SystemClock.uptimeMillis();
                this.mAdapter.notifyAdapterDataSetChanged();
                return;
            }
            removeMessages(1);
            sendEmptyMessageAtTime(1, this.mLastUpdateTime + 300);
        }
    }

    public final void updateViewsIfNeeded() {
        if (this.mUpdateRoutesViewDeferred) {
            updateRoutesView();
        }
        if (this.mUpdateMetadataViewsDeferred) {
            updateMetadataViews();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.mediarouter.app.MediaRouteDynamicControllerDialog$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MediaRouteDynamicControllerDialog(android.content.Context r2, int r3) {
        /*
            r1 = this;
            r0 = 0
            android.content.Context r2 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogContext(r2, r3, r0)
            int r3 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogStyle(r2)
            r1.<init>(r2, r3)
            androidx.mediarouter.media.MediaRouteSelector r2 = androidx.mediarouter.media.MediaRouteSelector.EMPTY
            r1.mSelector = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.mMemberRoutes = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.mGroupableRoutes = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.mTransferableRoutes = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.mUngroupableRoutes = r2
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$1 r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$1
            r2.<init>()
            r1.mHandler = r2
            android.content.Context r2 = r1.getContext()
            r1.mContext = r2
            androidx.mediarouter.media.MediaRouter r2 = androidx.mediarouter.media.MediaRouter.getInstance(r2)
            r1.mRouter = r2
            androidx.mediarouter.media.MediaRouter$GlobalMediaRouter r2 = androidx.mediarouter.media.MediaRouter.sGlobal
            if (r2 != 0) goto L44
            goto L4c
        L44:
            androidx.mediarouter.media.MediaRouter$GlobalMediaRouter r2 = androidx.mediarouter.media.MediaRouter.getGlobalRouter()
            r2.getClass()
            r0 = 1
        L4c:
            r1.mEnableGroupVolumeUX = r0
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaRouterCallback r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaRouterCallback
            r2.<init>()
            r1.mCallback = r2
            androidx.mediarouter.media.MediaRouter$RouteInfo r2 = androidx.mediarouter.media.MediaRouter.getSelectedRoute()
            r1.mSelectedRoute = r2
            androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaControllerCallback r2 = new androidx.mediarouter.app.MediaRouteDynamicControllerDialog$MediaControllerCallback
            r2.<init>()
            r1.mControllerCallback = r2
            r1.setMediaSession()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteDynamicControllerDialog.<init>(android.content.Context, int):void");
    }
}
