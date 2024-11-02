package com.android.systemui.wallpaper.view;

import android.app.SemWallpaperResourcesInfo;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.pluginlock.PluginWallpaperManagerImpl;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.util.DeviceState;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperResultCallback;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.log.WallpaperLogger;
import com.android.systemui.wallpaper.log.WallpaperLoggerImpl;
import com.android.systemui.wallpaper.video.VideoPlayer;
import com.android.systemui.wallpaper.video.VideoPlayer$$ExternalSyntheticLambda3;
import com.samsung.android.media.SemMediaPlayer;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardVideoWallpaper extends SystemUIWallpaper implements SurfaceHolder.Callback {
    public final Context mContext;
    public final int mCurrentUserId;
    public final DozeParameters mDozeParameters;
    public final AnonymousClass1 mHandler;
    public boolean mIsBlurEnabled;
    public boolean mIsCleanUp;
    public boolean mIsPendingSurfaceViewAdd;
    public boolean mIsSurfaceViewAdded;
    public boolean mIsThumbnailViewAdded;
    public final WallpaperLogger mLoggerWrapper;
    public final KeyguardVideoWallpaper$$ExternalSyntheticLambda0 mOnInfoListener;
    public final PluginWallpaperManager mPluginWallpaperMgr;
    public AssetFileDescriptor mRetrieverFd;
    public final View mRootView;
    public final SemWallpaperResourcesInfo mSemWallpaperResourcesInfo;
    public boolean mShowing;
    public int mStartPosition;
    public SurfaceHolder mSurfaceHolder;
    public final PointF mSurfaceScaleInfo;
    public SurfaceView mSurfaceView;
    public String mThemePackage;
    public Drawable mThumbnail;
    public AnonymousClass2 mThumbnailLoader;
    public ImageView mThumbnailView;
    public AssetFileDescriptor mVideoFileDescriptor;
    public String mVideoFileName;
    public String mVideoFilePath;
    public Uri mVideoFileUri;
    public final VideoPlayer mVideoPlayer;
    public Point mVideoScreenSize;

    static {
        Debug.semIsProductDev();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$$ExternalSyntheticLambda0] */
    public KeyguardVideoWallpaper(Context context, String str, String str2, Uri uri, String str3, KeyguardUpdateMonitor keyguardUpdateMonitor, DozeParameters dozeParameters, WallpaperResultCallback wallpaperResultCallback, ExecutorService executorService, PluginWallpaperManager pluginWallpaperManager, WallpaperLogger wallpaperLogger, Consumer<Boolean> consumer, boolean z, boolean z2, int i, boolean z3) {
        super(context, keyguardUpdateMonitor, wallpaperResultCallback, executorService, consumer, false, z, z2);
        this.mVideoFilePath = null;
        this.mVideoFileDescriptor = null;
        this.mRetrieverFd = null;
        this.mVideoFileUri = null;
        boolean z4 = false;
        this.mIsThumbnailViewAdded = false;
        this.mIsPendingSurfaceViewAdd = false;
        this.mIsSurfaceViewAdded = false;
        this.mIsCleanUp = false;
        this.mStartPosition = 0;
        this.mIsBlurEnabled = false;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                boolean z5;
                VideoPlayer videoPlayer;
                int i2 = message.what;
                if (i2 != 1000) {
                    if (i2 == 1001 && (videoPlayer = KeyguardVideoWallpaper.this.mVideoPlayer) != null) {
                        videoPlayer.stopDrawing();
                        return;
                    }
                    return;
                }
                TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("removeThumbnailView, position : "), KeyguardVideoWallpaper.this.mStartPosition, "KeyguardVideoWallpaper");
                KeyguardVideoWallpaper keyguardVideoWallpaper = KeyguardVideoWallpaper.this;
                if (keyguardVideoWallpaper.hasWindowFocus() && KeyguardVideoWallpaper.this.mShowing && WallpaperUtils.sDrawState) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                keyguardVideoWallpaper.drawVideo(z5, false);
                KeyguardVideoWallpaper keyguardVideoWallpaper2 = KeyguardVideoWallpaper.this;
                ImageView imageView = keyguardVideoWallpaper2.mThumbnailView;
                if (imageView != null && keyguardVideoWallpaper2.mIsThumbnailViewAdded) {
                    keyguardVideoWallpaper2.removeView(imageView);
                    keyguardVideoWallpaper2.mIsThumbnailViewAdded = false;
                }
                KeyguardVideoWallpaper keyguardVideoWallpaper3 = KeyguardVideoWallpaper.this;
                if (keyguardVideoWallpaper3.mStartPosition != 0) {
                    keyguardVideoWallpaper3.mThumbnail = null;
                    keyguardVideoWallpaper3.mStartPosition = 0;
                    keyguardVideoWallpaper3.updateDrawable(false);
                }
            }
        };
        this.mOnInfoListener = new SemMediaPlayer.OnInfoListener() { // from class: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$$ExternalSyntheticLambda0
            public final boolean onInfo(SemMediaPlayer semMediaPlayer, int i2, int i3) {
                KeyguardVideoWallpaper keyguardVideoWallpaper = KeyguardVideoWallpaper.this;
                keyguardVideoWallpaper.getClass();
                Log.i("KeyguardVideoWallpaper", "onInfo: i = " + i2 + " , i1 = " + i3);
                if (i2 == 3) {
                    keyguardVideoWallpaper.mVideoPlayer.mIsRenderingStarted = true;
                    keyguardVideoWallpaper.mHandler.sendMessageAtFrontOfQueue(keyguardVideoWallpaper.mHandler.obtainMessage(1000));
                    return false;
                }
                return false;
            }
        };
        this.mContext = context;
        this.mCurrentUserId = i;
        this.mPluginWallpaperMgr = pluginWallpaperManager;
        this.mLoggerWrapper = wallpaperLogger;
        this.mThemePackage = str2;
        this.mVideoFileName = str3;
        this.mVideoFileUri = uri;
        this.mDozeParameters = dozeParameters;
        View rootView = getRootView();
        this.mRootView = rootView;
        if (this.mIsKeyguardShowing && !this.mOccluded) {
            z4 = true;
        }
        this.mShowing = z4;
        SemWallpaperResourcesInfo semWallpaperResourcesInfo = new SemWallpaperResourcesInfo(context);
        this.mSemWallpaperResourcesInfo = semWallpaperResourcesInfo;
        VideoPlayer videoPlayer = new VideoPlayer(context, rootView, semWallpaperResourcesInfo, wallpaperLogger);
        this.mVideoPlayer = videoPlayer;
        this.mBouncer = z3;
        videoPlayer.mBouncer = z3;
        this.mSurfaceScaleInfo = new PointF(1.0f, 1.0f);
        this.mVideoFilePath = str;
        this.mVideoFileDescriptor = getVideoFileDescriptor();
        this.mRetrieverFd = getVideoFileDescriptor();
        StringBuilder sb = new StringBuilder("KeyguardVideoWallpaper: path = ");
        sb.append(this.mVideoFilePath);
        sb.append(" , fd = ");
        sb.append(this.mVideoFileDescriptor);
        sb.append(", fileName = ");
        sb.append(this.mVideoFileName);
        sb.append(" , focus = ");
        sb.append(hasWindowFocus());
        sb.append(", mIsKeyguardShowing = ");
        sb.append(this.mIsKeyguardShowing);
        sb.append(" , mOccluded = ");
        NotificationListener$$ExternalSyntheticOutline0.m(sb, this.mOccluded, "KeyguardVideoWallpaper");
        if (this.mShowing) {
            Log.d("KeyguardVideoWallpaper", "Showing state");
            initSurfaceViewIfNeeded();
        }
        WallpaperResultCallback wallpaperResultCallback2 = this.mWallpaperResultCallback;
        if (wallpaperResultCallback2 != null) {
            wallpaperResultCallback2.onPreviewReady();
        }
    }

    public final void addSurfaceViewIfNeeded() {
        initSurfaceViewIfNeeded();
        if (!this.mIsSurfaceViewAdded) {
            addView(this.mSurfaceView);
            this.mIsSurfaceViewAdded = true;
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void cleanUp() {
        Log.i("KeyguardVideoWallpaper", "cleanUp: ");
        this.mIsCleanUp = true;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this);
            if (this.mSurfaceHolder.getSurface() != null) {
                this.mSurfaceHolder.getSurface().release();
            }
            this.mSurfaceHolder = null;
        }
        ImageView imageView = this.mThumbnailView;
        if (imageView != null) {
            imageView.setBackground(null);
        }
        if (this.mVideoPlayer != null) {
            releaseMediaPlayer();
            this.mVideoPlayer.mVideoPlayerThread.quitSafely();
        }
        removeAllViews();
        this.mIsThumbnailViewAdded = false;
        this.mIsSurfaceViewAdded = false;
        this.mThumbnail = null;
    }

    public final void drawVideo(boolean z, boolean z2) {
        if (this.mVideoPlayer == null) {
            return;
        }
        ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("drawVideo() ", z, ", force = ", z2, ", mDozeParameters.shouldControlScreenOff() = "), this.mDozeParameters.mControlScreenOffAnimation, "KeyguardVideoWallpaper");
        if (z) {
            removeMessages(1001);
            VideoPlayer videoPlayer = this.mVideoPlayer;
            videoPlayer.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer, 300000, 0));
        } else {
            if (!z2 && WallpaperUtils.isAODShowLockWallpaperEnabled() && this.mDozeParameters.mControlScreenOffAnimation) {
                if (((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).isDynamicWallpaperEnabled()) {
                    Log.d("KeyguardVideoWallpaper", "drawVideo: isAODShowLockWallpaperEnabled. Delay stopDrawing until getting video frame is started.");
                    return;
                } else {
                    if (!hasMessages(1001)) {
                        sendEmptyMessageDelayed(1001, 800L);
                        return;
                    }
                    return;
                }
            }
            this.mVideoPlayer.stopDrawing();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final Bitmap getCapturedWallpaper() {
        ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "getCapturedWallpaper : stop video because need to get current frame. position = " + this.mVideoPlayer.getCurrentPosition());
        this.mVideoPlayer.stopDrawing();
        final Bitmap[] bitmapArr = {null};
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null && surfaceHolder.getSurface() != null && this.mSurfaceHolder.getSurface().isValid()) {
            final int width = (int) (getWidth() * this.mSurfaceScaleInfo.x);
            final int height = (int) (getHeight() * this.mSurfaceScaleInfo.y);
            bitmapArr[0] = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            final HandlerThread handlerThread = new HandlerThread("PixelCopy");
            handlerThread.start();
            synchronized (handlerThread) {
                PixelCopy.request(this.mSurfaceHolder.getSurface(), bitmapArr[0], new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$$ExternalSyntheticLambda1
                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                    public final void onPixelCopyFinished(int i) {
                        VideoPlayer videoPlayer;
                        KeyguardVideoWallpaper keyguardVideoWallpaper = KeyguardVideoWallpaper.this;
                        Bitmap[] bitmapArr2 = bitmapArr;
                        int i2 = width;
                        int i3 = height;
                        HandlerThread handlerThread2 = handlerThread;
                        keyguardVideoWallpaper.getClass();
                        Log.i("KeyguardVideoWallpaper", "copy result = " + i);
                        if (i != 0 && (videoPlayer = keyguardVideoWallpaper.mVideoPlayer) != null) {
                            Bitmap currentFrame = videoPlayer.getCurrentFrame();
                            if (currentFrame == null) {
                                Bitmap videoFrame = WallpaperUtils.getVideoFrame(keyguardVideoWallpaper.mContext, keyguardVideoWallpaper.mRetrieverFd, keyguardVideoWallpaper.mVideoFilePath, keyguardVideoWallpaper.mVideoFileUri, keyguardVideoWallpaper.mVideoPlayer.getCurrentPosition() * 1000);
                                if (videoFrame != null) {
                                    bitmapArr2[0] = Bitmap.createScaledBitmap(videoFrame, i2, i3, true);
                                }
                            } else {
                                bitmapArr2[0] = currentFrame;
                            }
                        }
                        synchronized (handlerThread2) {
                            handlerThread2.notify();
                        }
                        handlerThread2.quitSafely();
                    }
                }, handlerThread.getThreadHandler());
                try {
                    handlerThread.wait(200L);
                } catch (InterruptedException unused) {
                    Log.w("KeyguardVideoWallpaper", "Failed to wait");
                    handlerThread.quitSafely();
                }
            }
        } else {
            bitmapArr[0] = this.mVideoPlayer.getCurrentFrame();
        }
        return bitmapArr[0];
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final Bitmap getCapturedWallpaperForBlur() {
        Bitmap bitmap;
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.stopDrawing();
            bitmap = this.mVideoPlayer.getCurrentFrame();
            ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "getCapturedWallpaperForBlur : bitmap = " + bitmap);
        } else {
            bitmap = null;
        }
        if (bitmap == null) {
            return WallpaperUtils.getVideoFrame(this.mContext, this.mRetrieverFd, this.mVideoFilePath, this.mVideoFileUri, 0L);
        }
        return bitmap;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final int getCurrentPosition() {
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (videoPlayer != null) {
            return videoPlayer.getCurrentPosition();
        }
        return 0;
    }

    public final int getDefaultFrameMillis() {
        boolean contains;
        SemWallpaperResourcesInfo semWallpaperResourcesInfo = this.mSemWallpaperResourcesInfo;
        int i = 0;
        if (semWallpaperResourcesInfo == null) {
            return 0;
        }
        if (semWallpaperResourcesInfo.isBlackFirstFrame(this.mVideoFileName)) {
            int defaultVideoFrameInfo = this.mSemWallpaperResourcesInfo.getDefaultVideoFrameInfo(this.mVideoFileName);
            int videoFrameCount = this.mVideoPlayer.getVideoFrameCount();
            if (videoFrameCount == 0) {
                this.mVideoPlayer.updateMediaMetadata(this.mRetrieverFd, this.mVideoFilePath, this.mVideoFileUri, 32);
                videoFrameCount = this.mVideoPlayer.getVideoFrameCount();
            }
            int videoDuration = this.mVideoPlayer.getVideoDuration();
            if (videoDuration == 0) {
                this.mVideoPlayer.updateMediaMetadata(this.mRetrieverFd, this.mVideoFilePath, this.mVideoFileUri, 9);
                videoDuration = this.mVideoPlayer.getVideoDuration();
            }
            if (defaultVideoFrameInfo > 0 && videoFrameCount > 0 && videoFrameCount >= defaultVideoFrameInfo) {
                i = (int) ((defaultVideoFrameInfo / videoFrameCount) * videoDuration);
            }
            TooltipPopup$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("getDefaultFrameMillis: ", i, " , count = ", videoFrameCount, " , requested index = "), defaultVideoFrameInfo, "KeyguardVideoWallpaper");
            return i;
        }
        if (!LsRune.WALLPAPER_MAISON_MARGIELA_EDITION) {
            return 0;
        }
        Context context = this.mContext;
        boolean z = WallpaperUtils.mIsEmergencyMode;
        String videoFilePath = WallpaperManager.getInstance(context).getVideoFilePath(WallpaperUtils.sCurrentWhich);
        if (TextUtils.isEmpty(videoFilePath)) {
            contains = false;
        } else {
            contains = videoFilePath.contains("/prism/etc/common/");
        }
        if (!contains) {
            return 0;
        }
        this.mVideoPlayer.updateMediaMetadata(this.mRetrieverFd, this.mVideoFilePath, this.mVideoFileUri, 9);
        int videoDuration2 = this.mVideoPlayer.getVideoDuration();
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("getDefaultFrameMillis(omc): ", videoDuration2, "KeyguardVideoWallpaper");
        return videoDuration2;
    }

    public final AssetFileDescriptor getVideoFileDescriptor() {
        Context context = this.mContext;
        String str = this.mThemePackage;
        String str2 = this.mVideoFileName;
        boolean z = WallpaperUtils.mIsEmergencyMode;
        if (TextUtils.isEmpty(str2) || !"com.samsung.android.wallpaper.res".equals(str)) {
            str2 = "video_1.mp4";
        }
        AssetFileDescriptor videoFDFromPackage = WallpaperUtils.getVideoFDFromPackage(context, str, str2);
        if (isDefaultVideoWallpaper() && TextUtils.isEmpty(this.mVideoFilePath) && videoFDFromPackage == null) {
            int i = WallpaperUtils.sCurrentWhich;
            String defaultVideoWallpaperFileName = this.mSemWallpaperResourcesInfo.getDefaultVideoWallpaperFileName(i);
            if (defaultVideoWallpaperFileName != null && !defaultVideoWallpaperFileName.equals(this.mVideoFileName)) {
                ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "old file = " + this.mVideoFileName + ", default file name :" + this.mVideoFileName + " , which = " + i);
                this.mVideoFileName = defaultVideoWallpaperFileName;
                videoFDFromPackage = WallpaperUtils.getVideoFDFromPackage(this.mContext, "com.samsung.android.wallpaper.res", defaultVideoWallpaperFileName);
                if (videoFDFromPackage != null) {
                    WallpaperManager.getInstance(this.mContext).setVideoLockscreenWallpaper(null, "com.samsung.android.wallpaper.res", this.mVideoFileName, this.mCurrentUserId, i);
                } else {
                    ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "Can't find resources or fail to openFD : " + this.mVideoFileName);
                }
            } else {
                ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "This file was already set. : " + this.mVideoFileName);
            }
        }
        return videoFDFromPackage;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final Bitmap getWallpaperBitmap() {
        int i = this.mStartPosition;
        if (i == 0) {
            i = getDefaultFrameMillis();
        }
        try {
            VideoPlayer videoPlayer = this.mVideoPlayer;
            if (videoPlayer != null && videoPlayer.mIsRenderingStarted) {
                return getCapturedWallpaper();
            }
            return WallpaperUtils.getVideoFrame(this.mContext, this.mRetrieverFd, this.mVideoFilePath, this.mVideoFileUri, i * 1000);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final void initSurfaceViewIfNeeded() {
        boolean z;
        StringBuilder sb = new StringBuilder("initSurfaceViewIfNeeded: mSurfaceView == null? : ");
        if (this.mSurfaceView == null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append(" , showing = ");
        NotificationListener$$ExternalSyntheticOutline0.m(sb, this.mShowing, "KeyguardVideoWallpaper");
        if (this.mSurfaceView == null) {
            SurfaceView surfaceView = new SurfaceView(this.mContext, null, 0, 0, true);
            this.mSurfaceView = surfaceView;
            SurfaceHolder holder = surfaceView.getHolder();
            this.mSurfaceHolder = holder;
            holder.addCallback(this);
        }
        if (this.mThumbnailView == null) {
            this.mThumbnailView = new ImageView(this.mContext);
        }
    }

    public final boolean isDefaultVideoWallpaper() {
        boolean z;
        if (WallpaperManager.getInstance(this.mContext).getDefaultWallpaperType(WallpaperUtils.sCurrentWhich) == 8 && !TextUtils.isEmpty(this.mVideoFileName)) {
            z = true;
        } else {
            z = false;
        }
        if (z && !((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).isVideoWallpaperEnabled()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:27|28|29|30|31|32|33|34|36|37|(6:42|43|44|46|47|48)|63|64|65|46|47|48) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:26|27|28|29|30|31|32|33|34|36|37|(6:42|43|44|46|47|48)|63|64|65|46|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007b, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x007c, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0080, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0081, code lost:
    
        r8 = r5;
        r5 = r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadMediaPlayer(boolean r11) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper.loadMediaPlayer(boolean):void");
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("onConfigurationChanged: "), configuration.orientation, "KeyguardVideoWallpaper");
        super.onConfigurationChanged(configuration);
        if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed()) {
            updateBlurState(this.mIsBlurEnabled);
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onFaceAuthError() {
        Log.i("KeyguardVideoWallpaper", "onFaceAuthError(), pause video");
        drawVideo(false, true);
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onFingerprintAuthSuccess(boolean z) {
        Log.i("KeyguardVideoWallpaper", "onFingerprintAuthSuccess()");
        drawVideo(false, true);
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
        int defaultFrameMillis;
        VideoPlayer videoPlayer;
        this.mBouncer = z;
        if (z && !WallpaperUtils.isSubDisplay()) {
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && this.mVideoPlayer != null && isDefaultVideoWallpaper() && (defaultFrameMillis = getDefaultFrameMillis()) > 0 && (videoPlayer = this.mVideoPlayer) != null) {
                videoPlayer.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer, defaultFrameMillis, 1));
            }
            drawVideo(false, true);
        }
        VideoPlayer videoPlayer2 = this.mVideoPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.mBouncer = this.mBouncer;
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onKeyguardShowing(boolean z) {
        this.mIsKeyguardShowing = z;
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onKeyguardShowing = ", z, "KeyguardVideoWallpaper");
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (videoPlayer == null) {
            return;
        }
        if (z) {
            if (!videoPlayer.mIsPrepared && !videoPlayer.mIsPreparing) {
                loadMediaPlayer(false);
                if (!this.mIsPendingSurfaceViewAdd) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        addSurfaceViewIfNeeded();
                        return;
                    } else {
                        post(new Runnable() { // from class: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyguardVideoWallpaper.this.addSurfaceViewIfNeeded();
                            }
                        });
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (!WallpaperUtils.isAODShowLockWallpaperEnabled()) {
            releaseMediaPlayer();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("onLayout called : ", i, " , ", i2, " , "), i3, " , ", i4, "KeyguardVideoWallpaper");
        if (this.mIsPendingSurfaceViewAdd && WallpaperUtils.isMainScreenRatio(getWidth(), getHeight())) {
            this.mIsPendingSurfaceViewAdd = false;
            if (this.mShowing && !this.mIsCleanUp) {
                addSurfaceViewIfNeeded();
                Log.d("KeyguardVideoWallpaper", "SurfaceView is added, visibility = " + this.mSurfaceView.getVisibility());
                this.mSurfaceView.setVisibility(8);
                this.mSurfaceView.setVisibility(0);
            }
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onPause() {
        VideoPlayer videoPlayer;
        VideoPlayer videoPlayer2;
        boolean z;
        Log.i("KeyguardVideoWallpaper", "onPause: showing = " + this.mShowing + " , focus = " + hasWindowFocus() + " , mBouncer = " + this.mBouncer);
        int i = 0;
        if (!WallpaperUtils.isAODShowLockWallpaperEnabled()) {
            if (this.mShowing) {
                if (isDefaultVideoWallpaper() && (z = LsRune.WALLPAPER_VIDEO_PLAY_RANDOM_POSITION)) {
                    VideoPlayer videoPlayer3 = this.mVideoPlayer;
                    if (!videoPlayer3.mHasSurface) {
                        if (videoPlayer3 != null) {
                            videoPlayer3.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer3, 0, 1));
                            return;
                        }
                        return;
                    } else {
                        if (isDefaultVideoWallpaper() && z) {
                            int videoDuration = this.mVideoPlayer.getVideoDuration();
                            Log.d("KeyguardVideoWallpaper", "videoDuration : " + videoDuration);
                            Random random = new Random();
                            if (videoDuration > 0) {
                                i = random.nextInt(videoDuration);
                            }
                            VideoPlayer videoPlayer4 = this.mVideoPlayer;
                            if (videoPlayer4 != null) {
                                videoPlayer4.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer4, i, 1));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                if ((LsRune.WALLPAPER_SUB_WATCHFACE || (hasWindowFocus() && !this.mBouncer)) && (videoPlayer2 = this.mVideoPlayer) != null) {
                    videoPlayer2.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer2, 0, 1));
                    return;
                }
                return;
            }
            return;
        }
        if (!this.mDozeParameters.mControlScreenOffAnimation && (videoPlayer = this.mVideoPlayer) != null) {
            videoPlayer.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer, 0, 1));
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onUnlock() {
        drawVideo(false, true);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        boolean z;
        super.onVisibilityChanged(view, i);
        if ((i == 0 && this.mIsKeyguardShowing) || (this.mUpdateMonitor.mKeyguardShowing && WallpaperUtils.isAODShowLockWallpaperEnabled())) {
            z = true;
        } else {
            z = false;
        }
        this.mShowing = z;
        WallpaperLogger wallpaperLogger = this.mLoggerWrapper;
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onVisibilityChanged: ", i, " , showingAndNotOccluded = ");
        m.append(this.mIsKeyguardShowing);
        m.append(" , showing = ");
        m.append(this.mUpdateMonitor.mKeyguardShowing);
        m.append(", mIsSurfaceViewAdded = ");
        m.append(this.mIsSurfaceViewAdded);
        m.append(" view = ");
        m.append(view);
        ((WallpaperLoggerImpl) wallpaperLogger).log("KeyguardVideoWallpaper", m.toString());
        if (this.mShowing && !this.mIsCleanUp) {
            VideoPlayer videoPlayer = this.mVideoPlayer;
            if (videoPlayer != null && !videoPlayer.mIsPrepared && !videoPlayer.mIsPreparing) {
                loadMediaPlayer(false);
            }
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE && !WallpaperUtils.isSubDisplay() && !WallpaperUtils.isMainScreenRatio(getWidth(), getHeight())) {
                this.mIsPendingSurfaceViewAdd = true;
            }
            if (!this.mIsPendingSurfaceViewAdd) {
                addSurfaceViewIfNeeded();
                return;
            }
            return;
        }
        if (this.mIsThumbnailViewAdded) {
            removeView(this.mThumbnailView);
            this.mIsThumbnailViewAdded = false;
        }
        this.mIsPendingSurfaceViewAdd = false;
        releaseMediaPlayer();
        if (this.mIsSurfaceViewAdded) {
            removeView(this.mSurfaceView);
            this.mIsSurfaceViewAdded = false;
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        boolean z2;
        int defaultFrameMillis;
        VideoPlayer videoPlayer;
        super.onWindowFocusChanged(z);
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("hasWindowFocus = ", z, " , state = ");
        m.append(WallpaperUtils.sDrawState);
        m.append(", blur = ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(m, this.mIsBlurEnabled, "KeyguardVideoWallpaper");
        if (this.mShowing && WallpaperUtils.sDrawState) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed()) {
            if (z2 && !this.mIsBlurEnabled) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z) {
            drawVideo(z2, false);
            return;
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE && !WallpaperUtils.isSubDisplay() && this.mVideoPlayer != null && isDefaultVideoWallpaper() && (defaultFrameMillis = getDefaultFrameMillis()) > 0 && (videoPlayer = this.mVideoPlayer) != null) {
            videoPlayer.getThreadHandler().post(new VideoPlayer$$ExternalSyntheticLambda3(videoPlayer, defaultFrameMillis, 1));
        }
        drawVideo(false, true);
    }

    public final void releaseMediaPlayer() {
        Log.d("KeyguardVideoWallpaper", "releaseMediaPlayer()");
        this.mVideoPlayer.releaseResource(false);
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void setStartPosition(int i) {
        this.mStartPosition = i;
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("setStartPosition: ", i, "KeyguardVideoWallpaper");
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.mStartPosition = i;
            updateDrawable(true);
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void setTransitionAnimationListener(KeyguardWallpaperController.AnonymousClass4 anonymousClass4) {
        this.mTransitionAnimationListener = anonymousClass4;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        WallpaperLogger wallpaperLogger = this.mLoggerWrapper;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("surfaceChanged: w = ", i2, ", h = ", i3, " , showing = ");
        m.append(this.mShowing);
        m.append(" , surface = ");
        m.append(surfaceHolder.getSurface());
        ((WallpaperLoggerImpl) wallpaperLogger).log("KeyguardVideoWallpaper", m.toString());
        updateSurfaceScale(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        boolean z;
        ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "surfaceCreated: shoiwng = " + this.mShowing + " , frame = " + surfaceHolder.getSurfaceFrame() + ", prepared = " + this.mVideoPlayer.mIsPrepared + " , preparing = " + this.mVideoPlayer.mIsPreparing + " , focus = " + hasWindowFocus() + " , surface = " + surfaceHolder.getSurface());
        if (hasWindowFocus()) {
            if (this.mShowing && WallpaperUtils.sDrawState) {
                z = true;
            } else {
                z = false;
            }
            drawVideo(z, false);
        }
        VideoPlayer videoPlayer = this.mVideoPlayer;
        if (!videoPlayer.mIsPrepared && !videoPlayer.mIsPreparing) {
            loadMediaPlayer(false);
        }
        if (this.mIsThumbnailViewAdded) {
            removeView(this.mThumbnailView);
            this.mIsThumbnailViewAdded = false;
        }
        ImageView imageView = this.mThumbnailView;
        if (imageView != null) {
            addView(imageView);
            this.mIsThumbnailViewAdded = true;
        }
        this.mVideoPlayer.setSurface(surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ((WallpaperLoggerImpl) this.mLoggerWrapper).log("KeyguardVideoWallpaper", "surfaceDestroyed: shoiwng = " + this.mShowing + " , surface = " + surfaceHolder.getSurface());
        if (this.mUpdateMonitor.mKeyguardShowing && WallpaperUtils.isAODShowLockWallpaperEnabled()) {
            releaseMediaPlayer();
        }
        this.mVideoPlayer.setSurface(null);
        this.mStartPosition = 0;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void update() {
        int i;
        boolean z;
        if (LsRune.WALLPAPER_SUB_WATCHFACE) {
            i = 6;
        } else {
            i = WallpaperUtils.sCurrentWhich;
        }
        this.mVideoFileName = WallpaperManager.getInstance(this.mContext).getVideoFileName(i);
        if (((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).isDynamicWallpaperEnabled()) {
            if (((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).getWallpaperUri() != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.mVideoFilePath = null;
                this.mVideoFileUri = ((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).getWallpaperUri();
            } else {
                this.mVideoFilePath = ((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).getWallpaperPath();
                this.mVideoFileUri = null;
            }
            this.mThemePackage = "";
        } else {
            this.mVideoFilePath = WallpaperManager.getInstance(this.mContext).getVideoFilePath(i);
            this.mThemePackage = WallpaperManager.getInstance(this.mContext).getVideoPackage(i);
            this.mVideoFileUri = null;
        }
        if (LsRune.KEYGUARD_FBE && !this.mUpdateMonitor.isUserUnlocked(this.mCurrentUserId)) {
            int screenId = PluginWallpaperManager.getScreenId(i);
            if (((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).isFbeWallpaperAvailable(screenId)) {
                this.mVideoFilePath = ((PluginWallpaperManagerImpl) this.mPluginWallpaperMgr).getFbeWallpaperPath(screenId);
                this.mThemePackage = "";
            }
        }
        Log.d("KeyguardVideoWallpaper", "update new video wallpaper! path = " + this.mVideoFilePath + ", pkg = " + this.mThemePackage + " , fileName = " + this.mVideoFileName + " , dls uri = " + this.mVideoFileUri);
        this.mVideoFileDescriptor = getVideoFileDescriptor();
        this.mRetrieverFd = getVideoFileDescriptor();
        ImageView imageView = this.mThumbnailView;
        if (imageView != null) {
            imageView.setBackground(null);
        }
        loadMediaPlayer(true);
        drawVideo(WallpaperUtils.sDrawState, false);
        WallpaperResultCallback wallpaperResultCallback = this.mWallpaperResultCallback;
        if (wallpaperResultCallback != null) {
            wallpaperResultCallback.onPreviewReady();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void updateBlurState(boolean z) {
        boolean z2;
        if (this.mIsBlurEnabled != z) {
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m("updateBlurState: b = ", z, ", f = ");
            m.append(hasWindowFocus());
            m.append(", s = ");
            NotificationListener$$ExternalSyntheticOutline0.m(m, WallpaperUtils.sDrawState, "KeyguardVideoWallpaper");
            this.mIsBlurEnabled = z;
            if (!z && hasWindowFocus() && WallpaperUtils.sDrawState) {
                z2 = true;
            } else {
                z2 = false;
            }
            drawVideo(z2, false);
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void updateDrawState(boolean z) {
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("updateDrawState() needDraw ", z, ", mBouncer = ");
        m.append(this.mBouncer);
        m.append(" , focus = ");
        m.append(hasWindowFocus());
        Log.d("KeyguardVideoWallpaper", m.toString());
        drawVideo(z, false);
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE && !SystemUIWallpaper.isSubDisplay()) {
            if (this.mBouncer || !hasWindowFocus()) {
                drawVideo(false, true);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [android.os.AsyncTask, com.android.systemui.wallpaper.view.KeyguardVideoWallpaper$2] */
    public final void updateDrawable(boolean z) {
        if (this.mThumbnail == null || z) {
            AnonymousClass2 anonymousClass2 = this.mThumbnailLoader;
            if (anonymousClass2 != null && !anonymousClass2.isCancelled()) {
                cancel(true);
                this.mThumbnailLoader = null;
            }
            ?? r2 = new AsyncTask() { // from class: com.android.systemui.wallpaper.view.KeyguardVideoWallpaper.2
                @Override // android.os.AsyncTask
                public final Object doInBackground(Object[] objArr) {
                    KeyguardVideoWallpaper keyguardVideoWallpaper = KeyguardVideoWallpaper.this;
                    Bitmap videoFrame = WallpaperUtils.getVideoFrame(keyguardVideoWallpaper.mContext, keyguardVideoWallpaper.mRetrieverFd, keyguardVideoWallpaper.mVideoFilePath, keyguardVideoWallpaper.mVideoFileUri, keyguardVideoWallpaper.mStartPosition * 1000);
                    if (videoFrame != null && (videoFrame.getWidth() >= 720 || videoFrame.getHeight() >= 720)) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(videoFrame, (int) (videoFrame.getWidth() * 0.3f), (int) (videoFrame.getHeight() * 0.3f), true);
                        videoFrame.recycle();
                        videoFrame = createScaledBitmap;
                    }
                    if (videoFrame != null) {
                        keyguardVideoWallpaper.mThumbnail = new BitmapDrawable(videoFrame);
                    }
                    Log.i("KeyguardVideoWallpaper", "createThumbnail mThumbnail: " + keyguardVideoWallpaper.mThumbnail);
                    return null;
                }

                @Override // android.os.AsyncTask
                public final void onPostExecute(Object obj) {
                    super.onPostExecute((Void) obj);
                    if (!isCancelled()) {
                        KeyguardVideoWallpaper keyguardVideoWallpaper = KeyguardVideoWallpaper.this;
                        if (keyguardVideoWallpaper.mThumbnailView == null) {
                            keyguardVideoWallpaper.mThumbnailView = new ImageView(KeyguardVideoWallpaper.this.mContext);
                        }
                        KeyguardVideoWallpaper keyguardVideoWallpaper2 = KeyguardVideoWallpaper.this;
                        keyguardVideoWallpaper2.mThumbnailView.setBackground(keyguardVideoWallpaper2.mThumbnail);
                        KeyguardVideoWallpaper.this.invalidate();
                        Log.i("KeyguardVideoWallpaper", "onPostExecute: mDrawable = " + KeyguardVideoWallpaper.this.mThumbnail);
                    }
                }
            };
            this.mThumbnailLoader = r2;
            r2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public final void updateSurfaceScale(int i, int i2) {
        float f;
        if (this.mVideoScreenSize != null && i > 0 && i2 > 0) {
            if (this.mSurfaceView == null) {
                Log.e("KeyguardVideoWallpaper", "updateSurfaceScale() mSurfaceView is null");
                return;
            }
            float f2 = (r0.x * i2) / (r0.y * i);
            float f3 = 1.0f;
            if (f2 >= 1.0f) {
                f = f2;
            } else {
                f = 1.0f;
            }
            if (f2 <= 1.0f) {
                f3 = 1.0f / f2;
            }
            PointF pointF = this.mSurfaceScaleInfo;
            pointF.x = f;
            pointF.y = f3;
            Log.i("KeyguardVideoWallpaper", "updateSurfaceScale: video size = " + this.mVideoScreenSize + ", height = " + i2 + ", sx = " + f + ", sy = " + f3);
            this.mSurfaceView.semResetRenderNodePosition();
            SurfaceView surfaceView = this.mSurfaceView;
            float f4 = ((float) i) * 0.5f;
            float f5 = ((float) i2) * 0.5f;
            surfaceView.setPivotX(f4);
            surfaceView.setPivotY(f5);
            surfaceView.setScaleX(f);
            surfaceView.setScaleY(f3);
            ImageView imageView = this.mThumbnailView;
            if (imageView != null) {
                imageView.setPivotX(f4);
                imageView.setPivotY(f5);
                imageView.setScaleX(f);
                imageView.setScaleY(f3);
                return;
            }
            return;
        }
        Log.e("KeyguardVideoWallpaper", "updateSurfaceScale() mVideoScreenSize is null");
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void handleTouchEvent(MotionEvent motionEvent) {
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onResume() {
    }
}
