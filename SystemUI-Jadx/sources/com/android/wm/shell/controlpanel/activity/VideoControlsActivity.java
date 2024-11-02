package com.android.wm.shell.controlpanel.activity;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.TaskStackListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.devicestate.DeviceStateManager;
import android.hardware.input.InputManager;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Lifecycle;
import com.android.systemui.R;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.wm.shell.controlpanel.activity.VideoControlsActivity;
import com.android.wm.shell.controlpanel.audio.AudioCallback;
import com.android.wm.shell.controlpanel.utils.CheckControlWindowState;
import com.android.wm.shell.controlpanel.utils.ControlPanelUtils;
import com.samsung.android.graphics.SemGfxImageFilter;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.view.SemWindowManager;
import java.util.Arrays;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class VideoControlsActivity extends AppCompatActivity {
    public static VideoControlsActivity sVideoControlsActivity;
    public ActivityManager mActivityManager;
    public int mBaseDeviceState;
    public boolean mCloseState;
    public int mDeviceState;
    public DeviceStateManager mDeviceStateManager;
    public EventReceiver mEventReceiver;
    public Animation mFadeIn;
    public InputMonitor mInputMonitor;
    public MediaController mMediaController;
    public MediaSessionManager mMediaSessionManager;
    public LinearLayout mMediaView;
    public VideoControlsActivity mOwnActivity;
    public int mPrevOrientation;
    public SharedPreferences mSharedPreferences;
    public VideoControlsPanel mVideoControlsPanel;
    public boolean mIsResumeCalled = false;
    public int mImmersiveState = 0;
    public boolean mIsDimTouched = false;
    public final H mDimHandler = new H();
    public final Impl mTaskStackListener = new Impl();
    public final AnonymousClass1 mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity.1
        public final void onBaseStateChanged(int i) {
            VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
            videoControlsActivity.mBaseDeviceState = i;
            if (videoControlsActivity.mDeviceState == 4 && i == 2) {
                if (((ComponentActivity) videoControlsActivity).mLifecycleRegistry.mState != Lifecycle.State.DESTROYED && videoControlsActivity.mIsResumeCalled) {
                    MultiWindowManager.getInstance().dismissSplitTask(videoControlsActivity.getActivityToken(), false);
                }
                videoControlsActivity.closeOperation();
            }
        }

        public final void onStateChanged(int i) {
            boolean z;
            VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
            videoControlsActivity.mDeviceState = i;
            if (i != 4 ? i == 2 : videoControlsActivity.mBaseDeviceState == 2) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (((ComponentActivity) videoControlsActivity).mLifecycleRegistry.mState != Lifecycle.State.DESTROYED && videoControlsActivity.mIsResumeCalled) {
                    MultiWindowManager.getInstance().dismissSplitTask(videoControlsActivity.getActivityToken(), false);
                }
                videoControlsActivity.closeOperation();
            }
        }
    };
    public final VideoControlsActivity$$ExternalSyntheticLambda0 mActiveSessionsChangedListener = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda0
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
            VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
            Log.i("VideoControlsActivity", "onActiveSessionsChanged closeState : " + videoControlsActivity.mCloseState + " controllers : " + list);
            if (!videoControlsActivity.mCloseState) {
                videoControlsActivity.checkActiveSession();
            }
        }
    };
    public final AnonymousClass4 mCallback = new AnonymousClass4();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 extends AudioCallback {
        public AnonymousClass4() {
        }

        public final void onMediaControllerConnected(MediaController mediaController) {
            if (mediaController == null) {
                Log.e("VideoControlsActivity", "VideoControlsActivity mCallback onMediaControllerConnected mMediaController == null");
                return;
            }
            Log.i("VideoControlsActivity", "VideoControlsActivity mCallback onMediaControllerConnected");
            VideoControlsPanel videoControlsPanel = VideoControlsActivity.this.mVideoControlsPanel;
            if (videoControlsPanel != null) {
                videoControlsPanel.updatePanel();
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onMetadataChanged(MediaMetadata mediaMetadata) {
            Log.i("VideoControlsActivity", "VideoControlsActivity mCallback onMetadataChanged");
            VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
            VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
            videoControlsActivity.checkActiveSession();
            VideoControlsPanel videoControlsPanel = VideoControlsActivity.this.mVideoControlsPanel;
            if (videoControlsPanel != null) {
                videoControlsPanel.updatePanel();
                VideoControlsActivity.this.mVideoControlsPanel.mMetadataChanged = true;
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onPlaybackStateChanged(PlaybackState playbackState) {
            boolean z;
            try {
                boolean isSupportButton = CheckControlWindowState.isSupportButton(VideoControlsActivity.this.mMediaController);
                if (VideoControlsActivity.this.mMediaView.getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                Log.i("VideoControlsActivity", "VideoControlsActivity mCallback onPlaybackStateChanged isSupportButton : " + isSupportButton + ", isVisible : " + z);
                if (isSupportButton && !z && VideoControlsActivity.this.semIsResumed()) {
                    VideoControlsActivity.this.mMediaView.setVisibility(0);
                    VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                    videoControlsActivity.mMediaView.startAnimation(videoControlsActivity.mFadeIn);
                }
                VideoControlsPanel videoControlsPanel = VideoControlsActivity.this.mVideoControlsPanel;
                if (videoControlsPanel != null) {
                    videoControlsPanel.updatePanel();
                }
            } catch (NullPointerException unused) {
                Log.i("VideoControlsActivity", "VideoControlsActivity mCallback onPlaybackStateChanged mediaController is null");
            }
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionDestroyed() {
            Log.i("VideoControlsActivity", "VideoControlsActivity mCallback onSessionDestroyed");
            VideoControlsPanel videoControlsPanel = VideoControlsActivity.this.mVideoControlsPanel;
            if (videoControlsPanel != null) {
                Log.i("MediaPanel", "MediaPanel clearController");
                if (videoControlsPanel.mMediaController != null) {
                    videoControlsPanel.mMediaController = null;
                }
                videoControlsPanel.mHandler.removeCallbacks(videoControlsPanel.mUpdateTimer);
            }
            VideoControlsActivity.this.mMediaController = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class EventReceiver extends InputEventReceiver {
        public EventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        public final void onInputEvent(InputEvent inputEvent) {
            boolean z = false;
            if (inputEvent instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) inputEvent;
                VideoControlsActivity.this.mDimHandler.removeMessages(1);
                VideoControlsActivity.this.mDimHandler.sendEmptyMessageDelayed(1, 5000L);
                if (VideoControlsActivity.this.mImmersiveState != 0 && motionEvent.getAction() == 0) {
                    VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                    if (videoControlsActivity.mIsDimTouched) {
                        videoControlsActivity.mIsDimTouched = false;
                    } else {
                        VideoControlsDimActivity videoControlsDimActivity = VideoControlsDimActivity.sVideoControlsDimActivity;
                        if (videoControlsDimActivity != null) {
                            videoControlsDimActivity.finish();
                        }
                    }
                    VideoControlsActivity.this.mImmersiveState = 0;
                }
                z = true;
            }
            finishInputEvent(inputEvent, z);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1 && CoreRune.MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE) {
                VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                if (videoControlsActivity.mImmersiveState != 1) {
                    videoControlsActivity.mImmersiveState = 1;
                    Intent intent = new Intent(VideoControlsActivity.this.getApplicationContext(), (Class<?>) VideoControlsDimActivity.class);
                    ActivityOptions makeBasic = ActivityOptions.makeBasic();
                    makeBasic.setLaunchTaskId(VideoControlsActivity.this.getTaskId());
                    makeBasic.setTaskOverlay(true, true);
                    intent.addFlags(805371904);
                    VideoControlsActivity.this.startActivityAsUser(intent, makeBasic.toBundle(), UserHandle.CURRENT);
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Impl extends TaskStackListener {
        public Impl() {
        }

        public final void onTaskFocusChanged(int i, boolean z) {
            ActivityManager.RunningTaskInfo runningTaskInfo;
            List<ActivityManager.RunningTaskInfo> runningTasks = VideoControlsActivity.this.mActivityManager.getRunningTasks(2);
            final int i2 = 0;
            if (!runningTasks.get(0).semIsFreeform() && 2 != runningTasks.get(0).getWindowingMode()) {
                final int i3 = 1;
                if ("com.android.wm.shell.controlpanel.activity.VideoControlsActivity".equalsIgnoreCase(runningTasks.get(0).baseActivity.getShortClassName())) {
                    runningTaskInfo = runningTasks.get(1);
                } else {
                    runningTaskInfo = runningTasks.get(0);
                }
                String packageName = runningTaskInfo.baseActivity.getPackageName();
                int topTaskUserId = ControlPanelUtils.getTopTaskUserId(VideoControlsActivity.this.mOwnActivity);
                if (!MultiWindowUtils.isKeepFlexPanelTask(packageName) && (SemWindowManager.getInstance().getSupportsFlexPanel(topTaskUserId, packageName) & 2) != 0) {
                    VideoControlsActivity.this.runOnUiThread(new Runnable(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$Impl$$ExternalSyntheticLambda0
                        public final /* synthetic */ VideoControlsActivity.Impl f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i2) {
                                case 0:
                                    VideoControlsActivity.this.mCloseState = true;
                                    return;
                                default:
                                    VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                                    VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                                    videoControlsActivity.checkActiveSession();
                                    return;
                            }
                        }
                    });
                } else {
                    VideoControlsActivity.this.runOnUiThread(new Runnable(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$Impl$$ExternalSyntheticLambda0
                        public final /* synthetic */ VideoControlsActivity.Impl f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i3) {
                                case 0:
                                    VideoControlsActivity.this.mCloseState = true;
                                    return;
                                default:
                                    VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                                    VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                                    videoControlsActivity.checkActiveSession();
                                    return;
                            }
                        }
                    });
                }
            }
        }
    }

    public final void checkActiveSession() {
        List<ActivityManager.RunningTaskInfo> runningTasks = this.mActivityManager.getRunningTasks(1);
        if (!runningTasks.get(0).semIsFreeform() && 2 != runningTasks.get(0).getWindowingMode()) {
            final int[] iArr = {0};
            final Handler handler = new Handler();
            handler.postDelayed(new Runnable() { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity.2
                @Override // java.lang.Runnable
                public final void run() {
                    MediaController mediaController = VideoControlsActivity.this.mMediaController;
                    if (mediaController == null && iArr[0] < 5) {
                        Log.i("VideoControlsActivity", "handler postDelayed mMediaController == null count : " + Arrays.toString(iArr));
                        VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                        videoControlsActivity.mMediaController = CheckControlWindowState.getMediaController(videoControlsActivity.mOwnActivity, videoControlsActivity.mMediaSessionManager);
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + 1;
                        handler.postDelayed(this, 200L);
                    } else if (mediaController != null) {
                        Log.i("VideoControlsActivity", "handler postDelayed mMediaController != null");
                        VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.this;
                        videoControlsActivity2.mMediaController.registerCallback(videoControlsActivity2.mCallback);
                        VideoControlsActivity videoControlsActivity3 = VideoControlsActivity.this;
                        if (CheckControlWindowState.getMediaController(videoControlsActivity3.mOwnActivity, videoControlsActivity3.mMediaSessionManager) == null) {
                            VideoControlsActivity.this.mMediaController = null;
                        }
                    }
                    VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.this;
                    boolean isMediaPanelRequestedState = CheckControlWindowState.isMediaPanelRequestedState(videoControlsActivity4.mOwnActivity, videoControlsActivity4.mMediaController);
                    ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("VideoControlsActivity checkActiveSession isMediaPanelRequestedState : ", isMediaPanelRequestedState, "VideoControlsActivity");
                    if (isMediaPanelRequestedState) {
                        VideoControlsActivity videoControlsActivity5 = VideoControlsActivity.this;
                        VideoControlsPanel videoControlsPanel = videoControlsActivity5.mVideoControlsPanel;
                        if (videoControlsPanel != null) {
                            MediaController mediaController2 = videoControlsActivity5.mMediaController;
                            Log.i("MediaPanel", "MediaPanel setMediaController");
                            if (videoControlsPanel.mMediaController != mediaController2) {
                                videoControlsPanel.mMediaController = mediaController2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Log.i("VideoControlsActivity", "VideoControlsActivity checkActiveSession MediaFloating no hasActiveSessions");
                    VideoControlsActivity.this.closeOperation();
                }
            }, 200L);
        }
    }

    public final void closeOperation() {
        this.mCloseState = true;
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        int i = configuration.orientation;
        if (i != this.mPrevOrientation) {
            this.mPrevOrientation = i;
            z = true;
        } else {
            z = false;
        }
        int rotation = configuration.windowConfiguration.getRotation();
        if (rotation != 1 && rotation != 3) {
            MultiWindowManager.getInstance().dismissSplitTask(getActivityToken(), false);
            closeOperation();
        }
        super.onConfigurationChanged(configuration);
        if (z) {
            if (Settings.System.getInt(getContentResolver(), "media_floating_only", 0) != 1 && !CheckControlWindowState.isMediaPanelRequestedState(this, this.mMediaController)) {
                closeOperation();
            } else {
                setupVideoControlsPanel();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010e  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.controlpanel.activity.VideoControlsActivity.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        if (CoreRune.MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE) {
            sVideoControlsActivity = null;
            this.mDimHandler.removeMessages(1);
            InputMonitor inputMonitor = this.mInputMonitor;
            if (inputMonitor != null) {
                inputMonitor.dispose();
                this.mInputMonitor = null;
            }
            EventReceiver eventReceiver = this.mEventReceiver;
            if (eventReceiver != null) {
                eventReceiver.dispose();
                this.mEventReceiver = null;
            }
        }
        this.mMediaSessionManager.removeOnActiveSessionsChangedListener(this.mActiveSessionsChangedListener);
        this.mDeviceStateManager.unregisterCallback(this.mDeviceStateCallback);
        MediaController mediaController = this.mMediaController;
        if (mediaController != null) {
            mediaController.unregisterCallback(this.mCallback);
        }
        VideoControlsPanel videoControlsPanel = this.mVideoControlsPanel;
        if (videoControlsPanel != null) {
            Log.i("MediaPanel", "MediaPanel clearController");
            if (videoControlsPanel.mMediaController != null) {
                videoControlsPanel.mMediaController = null;
            }
            videoControlsPanel.mHandler.removeCallbacks(videoControlsPanel.mUpdateTimer);
        }
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        if (!z) {
            closeOperation();
        }
        super.onMultiWindowModeChanged(z, configuration);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        if (CoreRune.MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE) {
            this.mDimHandler.removeMessages(1);
        }
        try {
            ActivityTaskManager.getService().unregisterTaskStackListener(this.mTaskStackListener);
        } catch (RemoteException unused) {
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.mIsResumeCalled = true;
        if (CoreRune.MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE) {
            H h = this.mDimHandler;
            h.removeMessages(1);
            h.sendEmptyMessageDelayed(1, 5000L);
            if (this.mInputMonitor == null) {
                this.mInputMonitor = InputManager.getInstance().monitorGestureInput("caption-touch", 0);
            }
            if (this.mEventReceiver == null) {
                this.mEventReceiver = new EventReceiver(this.mInputMonitor.getInputChannel(), Looper.myLooper());
            }
        }
        if (!isInMultiWindowMode()) {
            closeOperation();
        }
        try {
            ActivityTaskManager.getService().registerTaskStackListener(this.mTaskStackListener);
        } catch (RemoteException unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        if (this.mCloseState) {
            closeOperation();
        }
        super.onStop();
    }

    public final Drawable resizeDrawable(Drawable drawable) {
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        return new BitmapDrawable(getResources(), Bitmap.createBitmap(bitmap, 0, bitmap.getHeight() / 2, bitmap.getWidth(), bitmap.getHeight() / 2));
    }

    public final void setupVideoControlsPanel() {
        setContentView(R.layout.video_controls_panel_layout);
        View findViewById = findViewById(R.id.wallpaper_area);
        findViewById.setBackgroundColor(EmergencyPhoneWidget.BG_COLOR);
        SemGfxImageFilter semGfxImageFilter = new SemGfxImageFilter();
        semGfxImageFilter.setBlurRadius(200.0f);
        findViewById.semSetGfxImageFilter(semGfxImageFilter);
        this.mMediaView = (LinearLayout) findViewById(R.id.media_background_area);
        final int i = 0;
        final int i2 = this.mSharedPreferences.getInt("video_controls_mode", 0);
        findViewById(R.id.close_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity.closeOperation();
                        return;
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity3.findViewById(R.id.ratio_set_button).setVisibility(0);
                        videoControlsActivity3.findViewById(R.id.ratio_button).setVisibility(8);
                        return;
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity5.findViewById(R.id.ratio_set_button).setVisibility(8);
                        videoControlsActivity5.findViewById(R.id.ratio_button).setVisibility(0);
                        return;
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.ratio_button_text);
        final int i3 = 1;
        findViewById(R.id.ratio_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity.closeOperation();
                        return;
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity3.findViewById(R.id.ratio_set_button).setVisibility(0);
                        videoControlsActivity3.findViewById(R.id.ratio_button).setVisibility(8);
                        return;
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity5.findViewById(R.id.ratio_set_button).setVisibility(8);
                        videoControlsActivity5.findViewById(R.id.ratio_button).setVisibility(0);
                        return;
                }
            }
        });
        final int i4 = 2;
        findViewById(R.id.ratio_set_button).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity.closeOperation();
                        return;
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity3.findViewById(R.id.ratio_set_button).setVisibility(0);
                        videoControlsActivity3.findViewById(R.id.ratio_button).setVisibility(8);
                        return;
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                        videoControlsActivity5.findViewById(R.id.ratio_set_button).setVisibility(8);
                        videoControlsActivity5.findViewById(R.id.ratio_button).setVisibility(0);
                        return;
                }
            }
        });
        findViewById(R.id.ratio_set_button_text_18_9_layout).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        if (i2 == 1) {
                            VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity.getClass();
                            return;
                        } else {
                            videoControlsActivity.mSharedPreferences.edit().putInt("video_controls_mode", 1).apply();
                            videoControlsActivity.setupVideoControlsPanel();
                            return;
                        }
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        if (i2 == 2) {
                            VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity3.getClass();
                            return;
                        } else {
                            videoControlsActivity3.mSharedPreferences.edit().putInt("video_controls_mode", 2).apply();
                            videoControlsActivity3.setupVideoControlsPanel();
                            return;
                        }
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        if (i2 == 0) {
                            VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity5.getClass();
                            return;
                        } else {
                            videoControlsActivity5.mSharedPreferences.edit().putInt("video_controls_mode", 0).apply();
                            videoControlsActivity5.setupVideoControlsPanel();
                            return;
                        }
                }
            }
        });
        findViewById(R.id.ratio_set_button_text_215_9_layout).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        if (i2 == 1) {
                            VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity.getClass();
                            return;
                        } else {
                            videoControlsActivity.mSharedPreferences.edit().putInt("video_controls_mode", 1).apply();
                            videoControlsActivity.setupVideoControlsPanel();
                            return;
                        }
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        if (i2 == 2) {
                            VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity3.getClass();
                            return;
                        } else {
                            videoControlsActivity3.mSharedPreferences.edit().putInt("video_controls_mode", 2).apply();
                            videoControlsActivity3.setupVideoControlsPanel();
                            return;
                        }
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        if (i2 == 0) {
                            VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity5.getClass();
                            return;
                        } else {
                            videoControlsActivity5.mSharedPreferences.edit().putInt("video_controls_mode", 0).apply();
                            videoControlsActivity5.setupVideoControlsPanel();
                            return;
                        }
                }
            }
        });
        findViewById(R.id.ratio_set_button_text_16_9_layout).setOnClickListener(new View.OnClickListener(this) { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity$$ExternalSyntheticLambda2
            public final /* synthetic */ VideoControlsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        VideoControlsActivity videoControlsActivity = this.f$0;
                        if (i2 == 1) {
                            VideoControlsActivity videoControlsActivity2 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity.getClass();
                            return;
                        } else {
                            videoControlsActivity.mSharedPreferences.edit().putInt("video_controls_mode", 1).apply();
                            videoControlsActivity.setupVideoControlsPanel();
                            return;
                        }
                    case 1:
                        VideoControlsActivity videoControlsActivity3 = this.f$0;
                        if (i2 == 2) {
                            VideoControlsActivity videoControlsActivity4 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity3.getClass();
                            return;
                        } else {
                            videoControlsActivity3.mSharedPreferences.edit().putInt("video_controls_mode", 2).apply();
                            videoControlsActivity3.setupVideoControlsPanel();
                            return;
                        }
                    default:
                        VideoControlsActivity videoControlsActivity5 = this.f$0;
                        if (i2 == 0) {
                            VideoControlsActivity videoControlsActivity6 = VideoControlsActivity.sVideoControlsActivity;
                            videoControlsActivity5.getClass();
                            return;
                        } else {
                            videoControlsActivity5.mSharedPreferences.edit().putInt("video_controls_mode", 0).apply();
                            videoControlsActivity5.setupVideoControlsPanel();
                            return;
                        }
                }
            }
        });
        if (i2 != 1) {
            if (i2 != 2) {
                findViewById(R.id.ratio_set_button_text_16_9_layout).setBackground(getResources().getDrawable(R.drawable.ratio_button_selected_background, null));
                textView.setText("16:9");
            } else {
                findViewById(R.id.ratio_set_button_text_215_9_layout).setBackground(getResources().getDrawable(R.drawable.ratio_button_selected_background, null));
                textView.setText("21.5:9");
            }
        } else {
            findViewById(R.id.ratio_set_button_text_18_9_layout).setBackground(getResources().getDrawable(R.drawable.ratio_button_selected_background, null));
            textView.setText("18:9");
        }
        this.mVideoControlsPanel = new VideoControlsPanel(this, (LinearLayout) findViewById(R.id.video_controls_area), this.mMediaController);
        MediaController mediaController = this.mMediaController;
        AnonymousClass4 anonymousClass4 = this.mCallback;
        mediaController.registerCallback(anonymousClass4);
        anonymousClass4.onMediaControllerConnected(this.mMediaController);
        this.mMediaView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.wm.shell.controlpanel.activity.VideoControlsActivity.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                VideoControlsActivity.this.mMediaView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                VideoControlsActivity videoControlsActivity = VideoControlsActivity.this;
                videoControlsActivity.mMediaView.startAnimation(videoControlsActivity.mFadeIn);
            }
        });
    }
}
