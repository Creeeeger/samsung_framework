package androidx.mediarouter.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import androidx.core.graphics.ColorUtils;
import androidx.mediarouter.app.OverlayListView;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.android.systemui.R;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteControllerDialog extends AlertDialog {
    public final AccessibilityManager mAccessibilityManager;
    public int mArtIconBackgroundColor;
    public Bitmap mArtIconBitmap;
    public boolean mArtIconIsLoaded;
    public Bitmap mArtIconLoadedBitmap;
    public Uri mArtIconUri;
    public ImageView mArtView;
    public boolean mAttachedToWindow;
    public final MediaRouterCallback mCallback;
    public final Context mContext;
    public final MediaControllerCallback mControllerCallback;
    public boolean mCreated;
    public FrameLayout mCustomControlLayout;
    public FrameLayout mDefaultControlLayout;
    public MediaDescriptionCompat mDescription;
    public LinearLayout mDialogAreaLayout;
    public int mDialogContentWidth;
    public Button mDisconnectButton;
    public View mDividerView;
    public final boolean mEnableGroupVolumeUX;
    public FrameLayout mExpandableAreaLayout;
    public final Interpolator mFastOutSlowInInterpolator;
    public FetchArtTask mFetchArtTask;
    public MediaRouteExpandCollapseButton mGroupExpandCollapseButton;
    public int mGroupListAnimationDurationMs;
    public final AnonymousClass1 mGroupListFadeInAnimation;
    public int mGroupListFadeInDurationMs;
    public int mGroupListFadeOutDurationMs;
    public List mGroupMemberRoutes;
    public Set mGroupMemberRoutesAdded;
    public Set mGroupMemberRoutesAnimatingWithBitmap;
    public Set mGroupMemberRoutesRemoved;
    public boolean mHasPendingUpdate;
    public Interpolator mInterpolator;
    public boolean mIsGroupExpanded;
    public boolean mIsGroupListAnimating;
    public boolean mIsGroupListAnimationPending;
    public final Interpolator mLinearOutSlowInInterpolator;
    public MediaControllerCompat mMediaController;
    public LinearLayout mMediaMainControlLayout;
    public boolean mPendingUpdateAnimationNeeded;
    public ImageButton mPlaybackControlButton;
    public RelativeLayout mPlaybackControlLayout;
    public final MediaRouter.RouteInfo mRoute;
    public MediaRouter.RouteInfo mRouteInVolumeSliderTouched;
    public TextView mRouteNameTextView;
    public final MediaRouter mRouter;
    public PlaybackStateCompat mState;
    public Button mStopCastingButton;
    public TextView mSubtitleView;
    public TextView mTitleView;
    public VolumeChangeListener mVolumeChangeListener;
    public final boolean mVolumeControlEnabled;
    public LinearLayout mVolumeControlLayout;
    public VolumeGroupAdapter mVolumeGroupAdapter;
    public OverlayListView mVolumeGroupList;
    public int mVolumeGroupListItemHeight;
    public int mVolumeGroupListItemIconSize;
    public int mVolumeGroupListMaxHeight;
    public final int mVolumeGroupListPaddingTop;
    public SeekBar mVolumeSlider;
    public Map mVolumeSliderMap;
    public static final boolean DEBUG = Log.isLoggable("MediaRouteCtrlDialog", 3);
    public static final int CONNECTION_TIMEOUT_MILLIS = (int) TimeUnit.SECONDS.toMillis(30);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.mediarouter.app.MediaRouteControllerDialog$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass10 {
        public final /* synthetic */ MediaRouter.RouteInfo val$route;

        public AnonymousClass10(MediaRouter.RouteInfo routeInfo) {
            this.val$route = routeInfo;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ClickListener implements View.OnClickListener {
        public ClickListener() {
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:31:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onClick(android.view.View r12) {
            /*
                Method dump skipped, instructions count: 231
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.ClickListener.onClick(android.view.View):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FetchArtTask extends AsyncTask {
        public int mBackgroundColor;
        public final Bitmap mIconBitmap;
        public final Uri mIconUri;
        public long mStartTimeMillis;

        public FetchArtTask() {
            Bitmap bitmap;
            boolean z;
            MediaDescriptionCompat mediaDescriptionCompat = MediaRouteControllerDialog.this.mDescription;
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
            MediaDescriptionCompat mediaDescriptionCompat2 = MediaRouteControllerDialog.this.mDescription;
            this.mIconUri = mediaDescriptionCompat2 != null ? mediaDescriptionCompat2.mIconUri : null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00ea  */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object doInBackground(java.lang.Object[] r11) {
            /*
                Method dump skipped, instructions count: 286
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.FetchArtTask.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Object obj) {
            Bitmap bitmap = (Bitmap) obj;
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.mFetchArtTask = null;
            if (!Objects.equals(mediaRouteControllerDialog.mArtIconBitmap, this.mIconBitmap) || !Objects.equals(MediaRouteControllerDialog.this.mArtIconUri, this.mIconUri)) {
                MediaRouteControllerDialog mediaRouteControllerDialog2 = MediaRouteControllerDialog.this;
                mediaRouteControllerDialog2.mArtIconBitmap = this.mIconBitmap;
                mediaRouteControllerDialog2.mArtIconLoadedBitmap = bitmap;
                mediaRouteControllerDialog2.mArtIconUri = this.mIconUri;
                mediaRouteControllerDialog2.mArtIconBackgroundColor = this.mBackgroundColor;
                boolean z = true;
                mediaRouteControllerDialog2.mArtIconIsLoaded = true;
                long uptimeMillis = SystemClock.uptimeMillis() - this.mStartTimeMillis;
                MediaRouteControllerDialog mediaRouteControllerDialog3 = MediaRouteControllerDialog.this;
                if (uptimeMillis <= 120) {
                    z = false;
                }
                mediaRouteControllerDialog3.update(z);
            }
        }

        @Override // android.os.AsyncTask
        public final void onPreExecute() {
            this.mStartTimeMillis = SystemClock.uptimeMillis();
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.mArtIconIsLoaded = false;
            mediaRouteControllerDialog.mArtIconLoadedBitmap = null;
            mediaRouteControllerDialog.mArtIconBackgroundColor = 0;
        }

        public final InputStream openInputStreamByScheme(Uri uri) {
            InputStream openInputStream;
            String lowerCase = uri.getScheme().toLowerCase();
            if (!"android.resource".equals(lowerCase) && !"content".equals(lowerCase) && !"file".equals(lowerCase)) {
                URLConnection openConnection = new URL(uri.toString()).openConnection();
                int i = MediaRouteControllerDialog.CONNECTION_TIMEOUT_MILLIS;
                openConnection.setConnectTimeout(i);
                openConnection.setReadTimeout(i);
                openInputStream = openConnection.getInputStream();
            } else {
                openInputStream = MediaRouteControllerDialog.this.mContext.getContentResolver().openInputStream(uri);
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
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            if (mediaMetadataCompat == null) {
                description = null;
            } else {
                description = mediaMetadataCompat.getDescription();
            }
            mediaRouteControllerDialog.mDescription = description;
            MediaRouteControllerDialog.this.updateArtIconIfNeeded();
            MediaRouteControllerDialog.this.update(false);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            mediaRouteControllerDialog.mState = playbackStateCompat;
            mediaRouteControllerDialog.update(false);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public final void onSessionDestroyed() {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            MediaControllerCompat mediaControllerCompat = mediaRouteControllerDialog.mMediaController;
            if (mediaControllerCompat != null) {
                mediaControllerCompat.unregisterCallback(mediaRouteControllerDialog.mControllerCallback);
                MediaRouteControllerDialog.this.mMediaController = null;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.update(true);
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteUnselected() {
            MediaRouteControllerDialog.this.update(false);
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void onRouteVolumeChanged(MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            SeekBar seekBar = (SeekBar) ((HashMap) mediaRouteControllerDialog.mVolumeSliderMap).get(routeInfo);
            int i = routeInfo.mVolume;
            if (MediaRouteControllerDialog.DEBUG) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("onRouteVolumeChanged(), route.getVolume:", i, "MediaRouteCtrlDialog");
            }
            if (seekBar != null && mediaRouteControllerDialog.mRouteInVolumeSliderTouched != routeInfo) {
                seekBar.setProgress(i);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class VolumeChangeListener implements SeekBar.OnSeekBarChangeListener {
        public final AnonymousClass1 mStopTrackingTouch = new Runnable() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.VolumeChangeListener.1
            @Override // java.lang.Runnable
            public final void run() {
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                if (mediaRouteControllerDialog.mRouteInVolumeSliderTouched != null) {
                    mediaRouteControllerDialog.mRouteInVolumeSliderTouched = null;
                    if (mediaRouteControllerDialog.mHasPendingUpdate) {
                        mediaRouteControllerDialog.update(mediaRouteControllerDialog.mPendingUpdateAnimationNeeded);
                    }
                }
            }
        };

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.mediarouter.app.MediaRouteControllerDialog$VolumeChangeListener$1] */
        public VolumeChangeListener() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) seekBar.getTag();
                if (MediaRouteControllerDialog.DEBUG) {
                    NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume(", i, ")", "MediaRouteCtrlDialog");
                }
                routeInfo.requestSetVolume(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
            if (mediaRouteControllerDialog.mRouteInVolumeSliderTouched != null) {
                mediaRouteControllerDialog.mVolumeSlider.removeCallbacks(this.mStopTrackingTouch);
            }
            MediaRouteControllerDialog.this.mRouteInVolumeSliderTouched = (MediaRouter.RouteInfo) seekBar.getTag();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            MediaRouteControllerDialog.this.mVolumeSlider.postDelayed(this.mStopTrackingTouch, 500L);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class VolumeGroupAdapter extends ArrayAdapter {
        public final float mDisabledAlpha;

        public VolumeGroupAdapter(Context context, List<MediaRouter.RouteInfo> list) {
            super(context, 0, list);
            this.mDisabledAlpha = MediaRouterThemeHelper.getDisabledAlpha(context);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            boolean z;
            int i3 = 0;
            if (view == null) {
                view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mr_controller_volume_item, viewGroup, false);
            } else {
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                mediaRouteControllerDialog.getClass();
                MediaRouteControllerDialog.setLayoutHeight((LinearLayout) view.findViewById(R.id.volume_item_container), mediaRouteControllerDialog.mVolumeGroupListItemHeight);
                View findViewById = view.findViewById(R.id.mr_volume_item_icon);
                ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                int i4 = mediaRouteControllerDialog.mVolumeGroupListItemIconSize;
                layoutParams.width = i4;
                layoutParams.height = i4;
                findViewById.setLayoutParams(layoutParams);
            }
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) getItem(i);
            if (routeInfo != null) {
                boolean z2 = routeInfo.mEnabled;
                TextView textView = (TextView) view.findViewById(R.id.mr_name);
                textView.setEnabled(z2);
                textView.setText(routeInfo.mName);
                MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_volume_slider);
                MediaRouterThemeHelper.setVolumeSliderColor(viewGroup.getContext(), mediaRouteVolumeSlider, MediaRouteControllerDialog.this.mVolumeGroupList);
                mediaRouteVolumeSlider.setTag(routeInfo);
                ((HashMap) MediaRouteControllerDialog.this.mVolumeSliderMap).put(routeInfo, mediaRouteVolumeSlider);
                mediaRouteVolumeSlider.setHideThumb(!z2);
                mediaRouteVolumeSlider.setEnabled(z2);
                if (z2) {
                    if (MediaRouteControllerDialog.this.mVolumeControlEnabled && routeInfo.getVolumeHandling() == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        mediaRouteVolumeSlider.setMax(routeInfo.mVolumeMax);
                        mediaRouteVolumeSlider.setProgress(routeInfo.mVolume);
                        mediaRouteVolumeSlider.setOnSeekBarChangeListener(MediaRouteControllerDialog.this.mVolumeChangeListener);
                    } else {
                        mediaRouteVolumeSlider.setMax(100);
                        mediaRouteVolumeSlider.setProgress(100);
                        mediaRouteVolumeSlider.setEnabled(false);
                    }
                }
                ImageView imageView = (ImageView) view.findViewById(R.id.mr_volume_item_icon);
                if (z2) {
                    i2 = 255;
                } else {
                    i2 = (int) (this.mDisabledAlpha * 255.0f);
                }
                imageView.setAlpha(i2);
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.volume_item_container);
                if (((HashSet) MediaRouteControllerDialog.this.mGroupMemberRoutesAnimatingWithBitmap).contains(routeInfo)) {
                    i3 = 4;
                }
                linearLayout.setVisibility(i3);
                Set set = MediaRouteControllerDialog.this.mGroupMemberRoutesAdded;
                if (set != null && ((HashSet) set).contains(routeInfo)) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                    alphaAnimation.setDuration(0L);
                    alphaAnimation.setFillEnabled(true);
                    alphaAnimation.setFillAfter(true);
                    view.clearAnimation();
                    view.startAnimation(alphaAnimation);
                }
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return false;
        }
    }

    public MediaRouteControllerDialog(Context context) {
        this(context, 0);
    }

    public static void setLayoutHeight(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    public final void animateLayoutHeight(final View view, final int i) {
        final int i2 = view.getLayoutParams().height;
        Animation animation = new Animation(this) { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                MediaRouteControllerDialog.setLayoutHeight(view, i2 - ((int) ((r3 - i) * f)));
            }
        };
        animation.setDuration(this.mGroupListAnimationDurationMs);
        animation.setInterpolator(this.mInterpolator);
        view.startAnimation(animation);
    }

    public final boolean canShowPlaybackControlLayout() {
        if (this.mDescription == null && this.mState == null) {
            return false;
        }
        return true;
    }

    public final void clearGroupListAnimation(boolean z) {
        Set set;
        int firstVisiblePosition = this.mVolumeGroupList.getFirstVisiblePosition();
        for (int i = 0; i < this.mVolumeGroupList.getChildCount(); i++) {
            View childAt = this.mVolumeGroupList.getChildAt(i);
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) this.mVolumeGroupAdapter.getItem(firstVisiblePosition + i);
            if (!z || (set = this.mGroupMemberRoutesAdded) == null || !((HashSet) set).contains(routeInfo)) {
                ((LinearLayout) childAt.findViewById(R.id.volume_item_container)).setVisibility(0);
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 1.0f);
                alphaAnimation.setDuration(0L);
                animationSet.addAnimation(alphaAnimation);
                new TranslateAnimation(0.0f, 0.0f, 0.0f, 0.0f).setDuration(0L);
                animationSet.setFillAfter(true);
                animationSet.setFillEnabled(true);
                childAt.clearAnimation();
                childAt.startAnimation(animationSet);
            }
        }
        Iterator it = ((ArrayList) this.mVolumeGroupList.mOverlayObjects).iterator();
        while (it.hasNext()) {
            OverlayListView.OverlayObject overlayObject = (OverlayListView.OverlayObject) it.next();
            overlayObject.mIsAnimationStarted = true;
            overlayObject.mIsAnimationEnded = true;
            AnonymousClass10 anonymousClass10 = overlayObject.mListener;
            if (anonymousClass10 != null) {
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                ((HashSet) mediaRouteControllerDialog.mGroupMemberRoutesAnimatingWithBitmap).remove(anonymousClass10.val$route);
                mediaRouteControllerDialog.mVolumeGroupAdapter.notifyDataSetChanged();
            }
        }
        if (!z) {
            finishAnimation(false);
        }
    }

    public final void finishAnimation(boolean z) {
        this.mGroupMemberRoutesAdded = null;
        this.mGroupMemberRoutesRemoved = null;
        this.mIsGroupListAnimating = false;
        if (this.mIsGroupListAnimationPending) {
            this.mIsGroupListAnimationPending = false;
            updateLayoutHeight(z);
        }
        this.mVolumeGroupList.setEnabled(true);
    }

    public final int getMainControllerHeight(boolean z) {
        int i;
        if (!z && this.mVolumeControlLayout.getVisibility() != 0) {
            return 0;
        }
        int paddingBottom = this.mMediaMainControlLayout.getPaddingBottom() + this.mMediaMainControlLayout.getPaddingTop() + 0;
        if (z) {
            paddingBottom += this.mPlaybackControlLayout.getMeasuredHeight();
        }
        if (this.mVolumeControlLayout.getVisibility() == 0) {
            i = this.mVolumeControlLayout.getMeasuredHeight() + paddingBottom;
        } else {
            i = paddingBottom;
        }
        if (z && this.mVolumeControlLayout.getVisibility() == 0) {
            return i + this.mDividerView.getMeasuredHeight();
        }
        return i;
    }

    public final boolean isGroup() {
        if (this.mRoute.isGroup() && this.mRoute.getMemberRoutes().size() > 1) {
            return true;
        }
        return false;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(MediaRouteSelector.EMPTY, this.mCallback, 2);
        this.mRouter.getClass();
        boolean z = MediaRouter.DEBUG;
        setMediaSession();
    }

    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        Interpolator interpolator;
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        setContentView(R.layout.mr_controller_material_dialog_b);
        findViewById(android.R.id.button3).setVisibility(8);
        ClickListener clickListener = new ClickListener();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mr_expandable_area);
        this.mExpandableAreaLayout = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaRouteControllerDialog.this.dismiss();
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mr_dialog_area);
        this.mDialogAreaLayout = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        Context context = this.mContext;
        int themeColor = MediaRouterThemeHelper.getThemeColor(0, context, R.attr.colorPrimary);
        if (ColorUtils.calculateContrast(themeColor, MediaRouterThemeHelper.getThemeColor(0, context, android.R.attr.colorBackground)) < 3.0d) {
            themeColor = MediaRouterThemeHelper.getThemeColor(0, context, R.attr.colorAccent);
        }
        Button button = (Button) findViewById(android.R.id.button2);
        this.mDisconnectButton = button;
        button.setText(R.string.mr_controller_disconnect);
        this.mDisconnectButton.setTextColor(themeColor);
        this.mDisconnectButton.setOnClickListener(clickListener);
        Button button2 = (Button) findViewById(android.R.id.button1);
        this.mStopCastingButton = button2;
        button2.setText(R.string.mr_controller_stop_casting);
        this.mStopCastingButton.setTextColor(themeColor);
        this.mStopCastingButton.setOnClickListener(clickListener);
        this.mRouteNameTextView = (TextView) findViewById(R.id.mr_name);
        ((ImageButton) findViewById(R.id.mr_close)).setOnClickListener(clickListener);
        this.mCustomControlLayout = (FrameLayout) findViewById(R.id.mr_custom_control);
        this.mDefaultControlLayout = (FrameLayout) findViewById(R.id.mr_default_control);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PendingIntent sessionActivity;
                MediaControllerCompat mediaControllerCompat = MediaRouteControllerDialog.this.mMediaController;
                if (mediaControllerCompat != null && (sessionActivity = mediaControllerCompat.mImpl.mControllerFwk.getSessionActivity()) != null) {
                    try {
                        sessionActivity.send();
                        MediaRouteControllerDialog.this.dismiss();
                    } catch (PendingIntent.CanceledException unused) {
                        Log.e("MediaRouteCtrlDialog", sessionActivity + " was not sent, it had been canceled.");
                    }
                }
            }
        };
        ImageView imageView = (ImageView) findViewById(R.id.mr_art);
        this.mArtView = imageView;
        imageView.setOnClickListener(onClickListener);
        findViewById(R.id.mr_control_title_container).setOnClickListener(onClickListener);
        this.mMediaMainControlLayout = (LinearLayout) findViewById(R.id.mr_media_main_control);
        this.mDividerView = findViewById(R.id.mr_control_divider);
        this.mPlaybackControlLayout = (RelativeLayout) findViewById(R.id.mr_playback_control);
        this.mTitleView = (TextView) findViewById(R.id.mr_control_title);
        this.mSubtitleView = (TextView) findViewById(R.id.mr_control_subtitle);
        ImageButton imageButton = (ImageButton) findViewById(R.id.mr_control_playback_ctrl);
        this.mPlaybackControlButton = imageButton;
        imageButton.setOnClickListener(clickListener);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.mr_volume_control);
        this.mVolumeControlLayout = linearLayout2;
        linearLayout2.setVisibility(8);
        SeekBar seekBar = (SeekBar) findViewById(R.id.mr_volume_slider);
        this.mVolumeSlider = seekBar;
        seekBar.setTag(this.mRoute);
        VolumeChangeListener volumeChangeListener = new VolumeChangeListener();
        this.mVolumeChangeListener = volumeChangeListener;
        this.mVolumeSlider.setOnSeekBarChangeListener(volumeChangeListener);
        this.mVolumeGroupList = (OverlayListView) findViewById(R.id.mr_volume_group_list);
        this.mGroupMemberRoutes = new ArrayList();
        VolumeGroupAdapter volumeGroupAdapter = new VolumeGroupAdapter(this.mVolumeGroupList.getContext(), this.mGroupMemberRoutes);
        this.mVolumeGroupAdapter = volumeGroupAdapter;
        this.mVolumeGroupList.setAdapter((ListAdapter) volumeGroupAdapter);
        this.mGroupMemberRoutesAnimatingWithBitmap = new HashSet();
        Context context2 = this.mContext;
        LinearLayout linearLayout3 = this.mMediaMainControlLayout;
        OverlayListView overlayListView = this.mVolumeGroupList;
        boolean isGroup = isGroup();
        int themeColor2 = MediaRouterThemeHelper.getThemeColor(0, context2, R.attr.colorPrimary);
        int themeColor3 = MediaRouterThemeHelper.getThemeColor(0, context2, R.attr.colorPrimaryDark);
        if (isGroup && MediaRouterThemeHelper.getControllerColor(0, context2) == -570425344) {
            themeColor3 = themeColor2;
            themeColor2 = -1;
        }
        linearLayout3.setBackgroundColor(themeColor2);
        overlayListView.setBackgroundColor(themeColor3);
        linearLayout3.setTag(Integer.valueOf(themeColor2));
        overlayListView.setTag(Integer.valueOf(themeColor3));
        MediaRouterThemeHelper.setVolumeSliderColor(this.mContext, (MediaRouteVolumeSlider) this.mVolumeSlider, this.mMediaMainControlLayout);
        HashMap hashMap = new HashMap();
        this.mVolumeSliderMap = hashMap;
        hashMap.put(this.mRoute, this.mVolumeSlider);
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = (MediaRouteExpandCollapseButton) findViewById(R.id.mr_group_expand_collapse);
        this.mGroupExpandCollapseButton = mediaRouteExpandCollapseButton;
        mediaRouteExpandCollapseButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Interpolator interpolator2;
                MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                boolean z = !mediaRouteControllerDialog.mIsGroupExpanded;
                mediaRouteControllerDialog.mIsGroupExpanded = z;
                if (z) {
                    mediaRouteControllerDialog.mVolumeGroupList.setVisibility(0);
                }
                MediaRouteControllerDialog mediaRouteControllerDialog2 = MediaRouteControllerDialog.this;
                if (mediaRouteControllerDialog2.mIsGroupExpanded) {
                    interpolator2 = mediaRouteControllerDialog2.mLinearOutSlowInInterpolator;
                } else {
                    interpolator2 = mediaRouteControllerDialog2.mFastOutSlowInInterpolator;
                }
                mediaRouteControllerDialog2.mInterpolator = interpolator2;
                mediaRouteControllerDialog2.updateLayoutHeight(true);
            }
        });
        if (this.mIsGroupExpanded) {
            interpolator = this.mLinearOutSlowInInterpolator;
        } else {
            interpolator = this.mFastOutSlowInInterpolator;
        }
        this.mInterpolator = interpolator;
        this.mGroupListAnimationDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_animation_duration_ms);
        this.mGroupListFadeInDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_in_duration_ms);
        this.mGroupListFadeOutDurationMs = this.mContext.getResources().getInteger(R.integer.mr_controller_volume_group_list_fade_out_duration_ms);
        this.mCreated = true;
        updateLayout();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.mRouter.removeCallback(this.mCallback);
        setMediaSession();
        this.mAttachedToWindow = false;
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2;
        if (i != 25 && i != 24) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.mEnableGroupVolumeUX || !this.mIsGroupExpanded) {
            MediaRouter.RouteInfo routeInfo = this.mRoute;
            if (i == 25) {
                i2 = -1;
            } else {
                i2 = 1;
            }
            routeInfo.requestUpdateVolume(i2);
        }
        return true;
    }

    @Override // androidx.appcompat.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 25 && i != 24) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    public final void setMediaSession() {
        MediaControllerCompat mediaControllerCompat = this.mMediaController;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(this.mControllerCallback);
            this.mMediaController = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(boolean r12) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.update(boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        if (r0 == false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateArtIconIfNeeded() {
        /*
            r6 = this;
            android.support.v4.media.MediaDescriptionCompat r0 = r6.mDescription
            r1 = 0
            if (r0 != 0) goto L7
            r2 = r1
            goto L9
        L7:
            android.graphics.Bitmap r2 = r0.mIcon
        L9:
            if (r0 != 0) goto Lc
            goto Le
        Lc:
            android.net.Uri r1 = r0.mIconUri
        Le:
            androidx.mediarouter.app.MediaRouteControllerDialog$FetchArtTask r0 = r6.mFetchArtTask
            if (r0 != 0) goto L15
            android.graphics.Bitmap r3 = r6.mArtIconBitmap
            goto L17
        L15:
            android.graphics.Bitmap r3 = r0.mIconBitmap
        L17:
            if (r0 != 0) goto L1c
            android.net.Uri r0 = r6.mArtIconUri
            goto L1e
        L1c:
            android.net.Uri r0 = r0.mIconUri
        L1e:
            r4 = 0
            r5 = 1
            if (r3 == r2) goto L23
            goto L37
        L23:
            if (r3 != 0) goto L39
            if (r0 == 0) goto L2e
            boolean r2 = r0.equals(r1)
            if (r2 == 0) goto L2e
            goto L32
        L2e:
            if (r0 != 0) goto L34
            if (r1 != 0) goto L34
        L32:
            r0 = r5
            goto L35
        L34:
            r0 = r4
        L35:
            if (r0 != 0) goto L39
        L37:
            r0 = r5
            goto L3a
        L39:
            r0 = r4
        L3a:
            if (r0 == 0) goto L5a
            boolean r0 = r6.isGroup()
            if (r0 == 0) goto L47
            boolean r0 = r6.mEnableGroupVolumeUX
            if (r0 != 0) goto L47
            goto L5a
        L47:
            androidx.mediarouter.app.MediaRouteControllerDialog$FetchArtTask r0 = r6.mFetchArtTask
            if (r0 == 0) goto L4e
            r0.cancel(r5)
        L4e:
            androidx.mediarouter.app.MediaRouteControllerDialog$FetchArtTask r0 = new androidx.mediarouter.app.MediaRouteControllerDialog$FetchArtTask
            r0.<init>()
            r6.mFetchArtTask = r0
            java.lang.Void[] r6 = new java.lang.Void[r4]
            r0.execute(r6)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.updateArtIconIfNeeded():void");
    }

    public final void updateLayout() {
        int dialogWidth = MediaRouteDialogHelper.getDialogWidth(this.mContext);
        getWindow().setLayout(dialogWidth, -2);
        View decorView = getWindow().getDecorView();
        this.mDialogContentWidth = (dialogWidth - decorView.getPaddingLeft()) - decorView.getPaddingRight();
        Resources resources = this.mContext.getResources();
        this.mVolumeGroupListItemIconSize = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_icon_size);
        this.mVolumeGroupListItemHeight = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_item_height);
        this.mVolumeGroupListMaxHeight = resources.getDimensionPixelSize(R.dimen.mr_controller_volume_group_list_max_height);
        this.mArtIconBitmap = null;
        this.mArtIconUri = null;
        updateArtIconIfNeeded();
        update(false);
    }

    public final void updateLayoutHeight(final boolean z) {
        this.mDefaultControlLayout.requestLayout();
        this.mDefaultControlLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                int i;
                int i2;
                boolean z2;
                boolean z3;
                final HashMap hashMap;
                final HashMap hashMap2;
                Bitmap bitmap;
                float f;
                float f2;
                ImageView.ScaleType scaleType;
                MediaRouteControllerDialog.this.mDefaultControlLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                final MediaRouteControllerDialog mediaRouteControllerDialog = MediaRouteControllerDialog.this;
                if (mediaRouteControllerDialog.mIsGroupListAnimating) {
                    mediaRouteControllerDialog.mIsGroupListAnimationPending = true;
                    return;
                }
                boolean z4 = z;
                int i3 = mediaRouteControllerDialog.mMediaMainControlLayout.getLayoutParams().height;
                MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mMediaMainControlLayout, -1);
                mediaRouteControllerDialog.updateMediaControlVisibility(mediaRouteControllerDialog.canShowPlaybackControlLayout());
                View decorView = mediaRouteControllerDialog.getWindow().getDecorView();
                decorView.measure(View.MeasureSpec.makeMeasureSpec(mediaRouteControllerDialog.getWindow().getAttributes().width, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), 0);
                MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mMediaMainControlLayout, i3);
                if ((mediaRouteControllerDialog.mArtView.getDrawable() instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) mediaRouteControllerDialog.mArtView.getDrawable()).getBitmap()) != null) {
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (width >= height) {
                        f = mediaRouteControllerDialog.mDialogContentWidth * height;
                        f2 = width;
                    } else {
                        f = mediaRouteControllerDialog.mDialogContentWidth * 9.0f;
                        f2 = 16.0f;
                    }
                    i = (int) ((f / f2) + 0.5f);
                    ImageView imageView = mediaRouteControllerDialog.mArtView;
                    if (bitmap.getWidth() >= bitmap.getHeight()) {
                        scaleType = ImageView.ScaleType.FIT_XY;
                    } else {
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                    }
                    imageView.setScaleType(scaleType);
                } else {
                    i = 0;
                }
                int mainControllerHeight = mediaRouteControllerDialog.getMainControllerHeight(mediaRouteControllerDialog.canShowPlaybackControlLayout());
                int size = ((ArrayList) mediaRouteControllerDialog.mGroupMemberRoutes).size();
                if (mediaRouteControllerDialog.isGroup()) {
                    i2 = mediaRouteControllerDialog.mRoute.getMemberRoutes().size() * mediaRouteControllerDialog.mVolumeGroupListItemHeight;
                } else {
                    i2 = 0;
                }
                if (size > 0) {
                    i2 += mediaRouteControllerDialog.mVolumeGroupListPaddingTop;
                }
                int min = Math.min(i2, mediaRouteControllerDialog.mVolumeGroupListMaxHeight);
                if (!mediaRouteControllerDialog.mIsGroupExpanded) {
                    min = 0;
                }
                int max = Math.max(i, min) + mainControllerHeight;
                Rect rect = new Rect();
                decorView.getWindowVisibleDisplayFrame(rect);
                int height2 = rect.height() - (mediaRouteControllerDialog.mDialogAreaLayout.getMeasuredHeight() - mediaRouteControllerDialog.mDefaultControlLayout.getMeasuredHeight());
                if (i > 0 && max <= height2) {
                    mediaRouteControllerDialog.mArtView.setVisibility(0);
                    MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mArtView, i);
                } else {
                    if (mediaRouteControllerDialog.mMediaMainControlLayout.getMeasuredHeight() + mediaRouteControllerDialog.mVolumeGroupList.getLayoutParams().height >= mediaRouteControllerDialog.mDefaultControlLayout.getMeasuredHeight()) {
                        mediaRouteControllerDialog.mArtView.setVisibility(8);
                    }
                    max = min + mainControllerHeight;
                    i = 0;
                }
                if (mediaRouteControllerDialog.canShowPlaybackControlLayout() && max <= height2) {
                    mediaRouteControllerDialog.mPlaybackControlLayout.setVisibility(0);
                } else {
                    mediaRouteControllerDialog.mPlaybackControlLayout.setVisibility(8);
                }
                if (mediaRouteControllerDialog.mPlaybackControlLayout.getVisibility() == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                mediaRouteControllerDialog.updateMediaControlVisibility(z2);
                if (mediaRouteControllerDialog.mPlaybackControlLayout.getVisibility() == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int mainControllerHeight2 = mediaRouteControllerDialog.getMainControllerHeight(z3);
                int max2 = Math.max(i, min) + mainControllerHeight2;
                if (max2 > height2) {
                    min -= max2 - height2;
                } else {
                    height2 = max2;
                }
                mediaRouteControllerDialog.mMediaMainControlLayout.clearAnimation();
                mediaRouteControllerDialog.mVolumeGroupList.clearAnimation();
                mediaRouteControllerDialog.mDefaultControlLayout.clearAnimation();
                if (z4) {
                    mediaRouteControllerDialog.animateLayoutHeight(mediaRouteControllerDialog.mMediaMainControlLayout, mainControllerHeight2);
                    mediaRouteControllerDialog.animateLayoutHeight(mediaRouteControllerDialog.mVolumeGroupList, min);
                    mediaRouteControllerDialog.animateLayoutHeight(mediaRouteControllerDialog.mDefaultControlLayout, height2);
                } else {
                    MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mMediaMainControlLayout, mainControllerHeight2);
                    MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mVolumeGroupList, min);
                    MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mDefaultControlLayout, height2);
                }
                MediaRouteControllerDialog.setLayoutHeight(mediaRouteControllerDialog.mExpandableAreaLayout, rect.height());
                List memberRoutes = mediaRouteControllerDialog.mRoute.getMemberRoutes();
                if (memberRoutes.isEmpty()) {
                    ((ArrayList) mediaRouteControllerDialog.mGroupMemberRoutes).clear();
                    mediaRouteControllerDialog.mVolumeGroupAdapter.notifyDataSetChanged();
                    return;
                }
                if (new HashSet(mediaRouteControllerDialog.mGroupMemberRoutes).equals(new HashSet(memberRoutes))) {
                    mediaRouteControllerDialog.mVolumeGroupAdapter.notifyDataSetChanged();
                    return;
                }
                if (z4) {
                    OverlayListView overlayListView = mediaRouteControllerDialog.mVolumeGroupList;
                    VolumeGroupAdapter volumeGroupAdapter = mediaRouteControllerDialog.mVolumeGroupAdapter;
                    hashMap = new HashMap();
                    int firstVisiblePosition = overlayListView.getFirstVisiblePosition();
                    for (int i4 = 0; i4 < overlayListView.getChildCount(); i4++) {
                        Object item = volumeGroupAdapter.getItem(firstVisiblePosition + i4);
                        View childAt = overlayListView.getChildAt(i4);
                        hashMap.put(item, new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()));
                    }
                } else {
                    hashMap = null;
                }
                if (z4) {
                    Context context = mediaRouteControllerDialog.mContext;
                    OverlayListView overlayListView2 = mediaRouteControllerDialog.mVolumeGroupList;
                    VolumeGroupAdapter volumeGroupAdapter2 = mediaRouteControllerDialog.mVolumeGroupAdapter;
                    hashMap2 = new HashMap();
                    int firstVisiblePosition2 = overlayListView2.getFirstVisiblePosition();
                    for (int i5 = 0; i5 < overlayListView2.getChildCount(); i5++) {
                        Object item2 = volumeGroupAdapter2.getItem(firstVisiblePosition2 + i5);
                        View childAt2 = overlayListView2.getChildAt(i5);
                        Bitmap createBitmap = Bitmap.createBitmap(childAt2.getWidth(), childAt2.getHeight(), Bitmap.Config.ARGB_8888);
                        childAt2.draw(new Canvas(createBitmap));
                        hashMap2.put(item2, new BitmapDrawable(context.getResources(), createBitmap));
                    }
                } else {
                    hashMap2 = null;
                }
                List list = mediaRouteControllerDialog.mGroupMemberRoutes;
                HashSet hashSet = new HashSet(memberRoutes);
                hashSet.removeAll(list);
                mediaRouteControllerDialog.mGroupMemberRoutesAdded = hashSet;
                HashSet hashSet2 = new HashSet(mediaRouteControllerDialog.mGroupMemberRoutes);
                hashSet2.removeAll(memberRoutes);
                mediaRouteControllerDialog.mGroupMemberRoutesRemoved = hashSet2;
                ((ArrayList) mediaRouteControllerDialog.mGroupMemberRoutes).addAll(0, mediaRouteControllerDialog.mGroupMemberRoutesAdded);
                ((ArrayList) mediaRouteControllerDialog.mGroupMemberRoutes).removeAll(mediaRouteControllerDialog.mGroupMemberRoutesRemoved);
                mediaRouteControllerDialog.mVolumeGroupAdapter.notifyDataSetChanged();
                if (z4 && mediaRouteControllerDialog.mIsGroupExpanded) {
                    if (((HashSet) mediaRouteControllerDialog.mGroupMemberRoutesRemoved).size() + ((HashSet) mediaRouteControllerDialog.mGroupMemberRoutesAdded).size() > 0) {
                        mediaRouteControllerDialog.mVolumeGroupList.setEnabled(false);
                        mediaRouteControllerDialog.mVolumeGroupList.requestLayout();
                        mediaRouteControllerDialog.mIsGroupListAnimating = true;
                        mediaRouteControllerDialog.mVolumeGroupList.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.8
                            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                            public final void onGlobalLayout() {
                                OverlayListView.OverlayObject overlayObject;
                                int i6;
                                MediaRouteControllerDialog.this.mVolumeGroupList.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                                final MediaRouteControllerDialog mediaRouteControllerDialog2 = MediaRouteControllerDialog.this;
                                Map map = hashMap;
                                Map map2 = hashMap2;
                                Set set = mediaRouteControllerDialog2.mGroupMemberRoutesAdded;
                                if (set != null && mediaRouteControllerDialog2.mGroupMemberRoutesRemoved != null) {
                                    int size2 = set.size() - mediaRouteControllerDialog2.mGroupMemberRoutesRemoved.size();
                                    Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: androidx.mediarouter.app.MediaRouteControllerDialog.9
                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationStart(Animation animation) {
                                            OverlayListView overlayListView3 = MediaRouteControllerDialog.this.mVolumeGroupList;
                                            Iterator it = ((ArrayList) overlayListView3.mOverlayObjects).iterator();
                                            while (it.hasNext()) {
                                                OverlayListView.OverlayObject overlayObject2 = (OverlayListView.OverlayObject) it.next();
                                                if (!overlayObject2.mIsAnimationStarted) {
                                                    overlayObject2.mStartTime = overlayListView3.getDrawingTime();
                                                    overlayObject2.mIsAnimationStarted = true;
                                                }
                                            }
                                            MediaRouteControllerDialog mediaRouteControllerDialog3 = MediaRouteControllerDialog.this;
                                            mediaRouteControllerDialog3.mVolumeGroupList.postDelayed(mediaRouteControllerDialog3.mGroupListFadeInAnimation, mediaRouteControllerDialog3.mGroupListAnimationDurationMs);
                                        }

                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationEnd(Animation animation) {
                                        }

                                        @Override // android.view.animation.Animation.AnimationListener
                                        public final void onAnimationRepeat(Animation animation) {
                                        }
                                    };
                                    int firstVisiblePosition3 = mediaRouteControllerDialog2.mVolumeGroupList.getFirstVisiblePosition();
                                    boolean z5 = false;
                                    for (int i7 = 0; i7 < mediaRouteControllerDialog2.mVolumeGroupList.getChildCount(); i7++) {
                                        View childAt3 = mediaRouteControllerDialog2.mVolumeGroupList.getChildAt(i7);
                                        MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) mediaRouteControllerDialog2.mVolumeGroupAdapter.getItem(firstVisiblePosition3 + i7);
                                        Rect rect2 = (Rect) map.get(routeInfo);
                                        int top = childAt3.getTop();
                                        if (rect2 != null) {
                                            i6 = rect2.top;
                                        } else {
                                            i6 = (mediaRouteControllerDialog2.mVolumeGroupListItemHeight * size2) + top;
                                        }
                                        AnimationSet animationSet = new AnimationSet(true);
                                        Set set2 = mediaRouteControllerDialog2.mGroupMemberRoutesAdded;
                                        if (set2 != null && set2.contains(routeInfo)) {
                                            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                                            alphaAnimation.setDuration(mediaRouteControllerDialog2.mGroupListFadeInDurationMs);
                                            animationSet.addAnimation(alphaAnimation);
                                            i6 = top;
                                        }
                                        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i6 - top, 0.0f);
                                        translateAnimation.setDuration(mediaRouteControllerDialog2.mGroupListAnimationDurationMs);
                                        animationSet.addAnimation(translateAnimation);
                                        animationSet.setFillAfter(true);
                                        animationSet.setFillEnabled(true);
                                        animationSet.setInterpolator(mediaRouteControllerDialog2.mInterpolator);
                                        if (!z5) {
                                            animationSet.setAnimationListener(animationListener);
                                            z5 = true;
                                        }
                                        childAt3.clearAnimation();
                                        childAt3.startAnimation(animationSet);
                                        map.remove(routeInfo);
                                        map2.remove(routeInfo);
                                    }
                                    for (Map.Entry entry : map2.entrySet()) {
                                        MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) entry.getKey();
                                        BitmapDrawable bitmapDrawable = (BitmapDrawable) entry.getValue();
                                        Rect rect3 = (Rect) map.get(routeInfo2);
                                        if (mediaRouteControllerDialog2.mGroupMemberRoutesRemoved.contains(routeInfo2)) {
                                            overlayObject = new OverlayListView.OverlayObject(bitmapDrawable, rect3);
                                            overlayObject.mStartAlpha = 1.0f;
                                            overlayObject.mEndAlpha = 0.0f;
                                            overlayObject.mDuration = mediaRouteControllerDialog2.mGroupListFadeOutDurationMs;
                                            overlayObject.mInterpolator = mediaRouteControllerDialog2.mInterpolator;
                                        } else {
                                            int i8 = mediaRouteControllerDialog2.mVolumeGroupListItemHeight * size2;
                                            OverlayListView.OverlayObject overlayObject2 = new OverlayListView.OverlayObject(bitmapDrawable, rect3);
                                            overlayObject2.mDeltaY = i8;
                                            overlayObject2.mDuration = mediaRouteControllerDialog2.mGroupListAnimationDurationMs;
                                            overlayObject2.mInterpolator = mediaRouteControllerDialog2.mInterpolator;
                                            overlayObject2.mListener = new AnonymousClass10(routeInfo2);
                                            ((HashSet) mediaRouteControllerDialog2.mGroupMemberRoutesAnimatingWithBitmap).add(routeInfo2);
                                            overlayObject = overlayObject2;
                                        }
                                        ((ArrayList) mediaRouteControllerDialog2.mVolumeGroupList.mOverlayObjects).add(overlayObject);
                                    }
                                }
                            }
                        });
                        return;
                    }
                }
                mediaRouteControllerDialog.mGroupMemberRoutesAdded = null;
                mediaRouteControllerDialog.mGroupMemberRoutesRemoved = null;
            }
        });
    }

    public final void updateMediaControlVisibility(boolean z) {
        int i;
        View view = this.mDividerView;
        int i2 = 0;
        if (this.mVolumeControlLayout.getVisibility() == 0 && z) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        LinearLayout linearLayout = this.mMediaMainControlLayout;
        if (this.mVolumeControlLayout.getVisibility() == 8 && !z) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.mediarouter.app.MediaRouteControllerDialog$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MediaRouteControllerDialog(android.content.Context r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            android.content.Context r3 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogContext(r3, r4, r0)
            int r4 = androidx.mediarouter.app.MediaRouterThemeHelper.createThemedDialogStyle(r3)
            r2.<init>(r3, r4)
            r2.mVolumeControlEnabled = r0
            androidx.mediarouter.app.MediaRouteControllerDialog$1 r4 = new androidx.mediarouter.app.MediaRouteControllerDialog$1
            r4.<init>()
            r2.mGroupListFadeInAnimation = r4
            android.content.Context r4 = r2.getContext()
            r2.mContext = r4
            androidx.mediarouter.app.MediaRouteControllerDialog$MediaControllerCallback r1 = new androidx.mediarouter.app.MediaRouteControllerDialog$MediaControllerCallback
            r1.<init>()
            r2.mControllerCallback = r1
            androidx.mediarouter.media.MediaRouter r1 = androidx.mediarouter.media.MediaRouter.getInstance(r4)
            r2.mRouter = r1
            androidx.mediarouter.media.MediaRouter$GlobalMediaRouter r1 = androidx.mediarouter.media.MediaRouter.sGlobal
            if (r1 != 0) goto L2e
            r0 = 0
            goto L35
        L2e:
            androidx.mediarouter.media.MediaRouter$GlobalMediaRouter r1 = androidx.mediarouter.media.MediaRouter.getGlobalRouter()
            r1.getClass()
        L35:
            r2.mEnableGroupVolumeUX = r0
            androidx.mediarouter.app.MediaRouteControllerDialog$MediaRouterCallback r0 = new androidx.mediarouter.app.MediaRouteControllerDialog$MediaRouterCallback
            r0.<init>()
            r2.mCallback = r0
            androidx.mediarouter.media.MediaRouter$RouteInfo r0 = androidx.mediarouter.media.MediaRouter.getSelectedRoute()
            r2.mRoute = r0
            r2.setMediaSession()
            android.content.res.Resources r0 = r4.getResources()
            r1 = 2131167356(0x7f07087c, float:1.7948983E38)
            int r0 = r0.getDimensionPixelSize(r1)
            r2.mVolumeGroupListPaddingTop = r0
            java.lang.String r0 = "accessibility"
            java.lang.Object r4 = r4.getSystemService(r0)
            android.view.accessibility.AccessibilityManager r4 = (android.view.accessibility.AccessibilityManager) r4
            r2.mAccessibilityManager = r4
            r4 = 2131492886(0x7f0c0016, float:1.8609237E38)
            android.view.animation.Interpolator r4 = android.view.animation.AnimationUtils.loadInterpolator(r3, r4)
            r2.mLinearOutSlowInInterpolator = r4
            r4 = 2131492885(0x7f0c0015, float:1.8609235E38)
            android.view.animation.Interpolator r3 = android.view.animation.AnimationUtils.loadInterpolator(r3, r4)
            r2.mFastOutSlowInInterpolator = r3
            android.view.animation.AccelerateDecelerateInterpolator r2 = new android.view.animation.AccelerateDecelerateInterpolator
            r2.<init>()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteControllerDialog.<init>(android.content.Context, int):void");
    }
}
