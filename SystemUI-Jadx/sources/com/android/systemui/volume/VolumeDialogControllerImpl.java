package com.android.systemui.volume;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.media.IVolumeController;
import android.media.MediaMetadata;
import android.media.MediaRouter2Manager;
import android.media.RoutingSessionInfo;
import android.media.VolumePolicy;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.VibrationEffect;
import android.provider.Settings;
import android.service.notification.Condition;
import android.service.notification.ZenModeConfig;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArrayMap;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.bluetooth.LocalBluetoothLeBroadcast;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import com.android.settingslib.volume.MediaSessions;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.VolumeDialogController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.VibratorHelper;
import com.android.systemui.util.RingerModeLiveData;
import com.android.systemui.util.RingerModeTracker;
import com.android.systemui.util.RingerModeTrackerImpl;
import com.android.systemui.util.concurrency.ThreadFactory;
import com.android.systemui.util.concurrency.ThreadFactoryImpl;
import com.android.systemui.volume.soundassistant.SoundAssistantChecker;
import com.android.systemui.volume.util.BluetoothAdapterWrapper;
import com.android.systemui.volume.util.BluetoothAudioCastWrapper;
import com.android.systemui.volume.util.BluetoothIconUtil;
import com.android.systemui.volume.util.BroadcastReceiverManager;
import com.android.systemui.volume.util.DesktopManagerWrapper;
import com.android.systemui.volume.util.DeviceStateManagerWrapper;
import com.android.systemui.volume.util.DisplayManagerWrapper;
import com.android.systemui.volume.util.SALoggingWrapper;
import com.android.systemui.volume.util.SoundAssistantManagerWrapper;
import com.android.systemui.volume.util.SystemServiceExtension;
import com.samsung.android.media.SemSoundAssistantManager;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeDialogControllerImpl implements VolumeDialogController, Dumpable {
    public static final int DEFAULT_MAX_LEVEL;
    public static final int FLAG_SMART_VIEW_NONE;
    public static final ArrayMap STREAMS;
    public static boolean mIsVolumeStarEnabled;
    public final ActivityManager mActivityManager;
    public final AudioManager mAudio;
    public final IAudioService mAudioService;
    public final BluetoothAdapterWrapper mBluetoothAdapterManager;
    public final BluetoothAudioCastWrapper mBluetoothAudioCastWrapper;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final BroadcastReceiverManager mBroadcastReceiverManager;
    public final C mCallbacks;
    public final CaptioningManager mCaptioningManager;
    public final Context mContext;
    public final AnonymousClass1 mCurrentUserTrackerCallback;
    public final DesktopManagerWrapper mDesktopManagerWrapper;
    public boolean mDeviceInteractive;
    public final DeviceStateManagerWrapper mDeviceStateManagerWrapper;
    public final DisplayManagerWrapper mDisplayManagerWrapper;
    public final DumpManager mDumpManager;
    public final boolean mHasVibrator;
    public boolean mIsAudioMirroringEnabled;
    public boolean mIsBudsTogetherEnabled;
    public Boolean mIsDLNAEnabled;
    public boolean mIsMusicShareEnabled;
    public Boolean mIsSupportTvVolumeControl;
    public boolean mIsVibrating;
    public boolean mIsVolumeDialogShowing;
    public boolean mKeyDown;
    public final KeyguardManager mKeyguardManager;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public long mLastToggledRingerOn;
    public final LocalBluetoothManager mLocalBluetoothManager;
    public final MediaSessions mMediaSessions;
    public final MediaSessionsCallbacks mMediaSessionsCallbacksW;
    public final NotificationManager mNoMan;
    public final PackageManager mPackageManager;
    public final RingerModeObservers mRingerModeObservers;
    public final MediaRouter2Manager mRouter2Manager;
    public final SALoggingWrapper mSALoggingWrapper;
    public boolean mShowA11yStream;
    public boolean mShowSafetyWarning;
    public boolean mShowVolumeDialog;
    public int mSmartViewFlag;
    public final SoundAssistantChecker mSoundAssistantChecker;
    public final SoundAssistantManagerWrapper mSoundAssistantManagerWrapper;
    public final VolumeDialogController.State mState;
    public UserActivityListener mUserActivityListener;
    public final UserTracker mUserTracker;
    public final VibratorHelper mVibrator;
    public final VC mVolumeController;
    public VolumePolicy mVolumePolicy;
    public final AnonymousClass2 mWakefullnessLifecycleObserver;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public final W mWorker;
    public static final String TAG = Util.logTag(VolumeDialogControllerImpl.class);
    public static final AudioAttributes SONIFICIATION_VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(13).build();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MediaSessionsCallbacks implements MediaSessions.Callbacks {
        public final boolean mVolumeAdjustmentForRemoteGroupSessions;
        public final HashMap mRemoteStreams = new HashMap();
        public int mNextStream = 100;

        public MediaSessionsCallbacks(Context context) {
            this.mVolumeAdjustmentForRemoteGroupSessions = context.getResources().getBoolean(17891913);
        }

        public final void addStream(MediaSession.Token token, String str) {
            synchronized (this.mRemoteStreams) {
                if (!this.mRemoteStreams.containsKey(token)) {
                    this.mRemoteStreams.put(token, Integer.valueOf(this.mNextStream));
                    String str2 = VolumeDialogControllerImpl.TAG;
                    Log.d(str2, str + ": added stream " + this.mNextStream + " from token + " + token.toString());
                    this.mNextStream = this.mNextStream + 1;
                    if ("com.samsung.android.audiomirroring".equals(new MediaController(VolumeDialogControllerImpl.this.mContext, token).getPackageName())) {
                        VolumeDialogControllerImpl.this.mIsAudioMirroringEnabled = true;
                        Log.d(str2, str.concat(": - AudioMirroring is on"));
                    }
                }
            }
        }

        public final void onRemoteRemoved(MediaSession.Token token) {
            if (showForSession(token)) {
                synchronized (this.mRemoteStreams) {
                    if (!this.mRemoteStreams.containsKey(token)) {
                        Log.d(VolumeDialogControllerImpl.TAG, "onRemoteRemoved: stream doesn't exist, aborting remote removed for token:" + token.toString());
                        return;
                    }
                    int intValue = ((Integer) this.mRemoteStreams.get(token)).intValue();
                    if (VolumeDialogControllerImpl.this.mIsAudioMirroringEnabled && "com.samsung.android.audiomirroring".equals(new MediaController(VolumeDialogControllerImpl.this.mContext, token).getPackageName())) {
                        VolumeDialogControllerImpl.this.mIsAudioMirroringEnabled = false;
                        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("onRemoteRemoved ", intValue, " - AudioMirroring is off", VolumeDialogControllerImpl.TAG);
                    }
                    VolumeDialogControllerImpl.this.mState.states.remove(intValue);
                    VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                    if (volumeDialogControllerImpl.mState.activeStream == intValue) {
                        volumeDialogControllerImpl.updateActiveStreamW(-1);
                    }
                    VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
                    volumeDialogControllerImpl2.mCallbacks.onStateChanged(volumeDialogControllerImpl2.mState);
                }
            }
        }

        public final boolean showForSession(MediaSession.Token token) {
            if (this.mVolumeAdjustmentForRemoteGroupSessions) {
                return true;
            }
            VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
            String packageName = new MediaController(volumeDialogControllerImpl.mContext, token).getPackageName();
            for (RoutingSessionInfo routingSessionInfo : volumeDialogControllerImpl.mRouter2Manager.getRoutingSessions(packageName)) {
                if (!routingSessionInfo.isSystemSession() && routingSessionInfo.getVolumeHandling() != 0) {
                    return true;
                }
            }
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("No routing session for ", packageName, VolumeDialogControllerImpl.TAG);
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Receiver extends BroadcastReceiver {
        public /* synthetic */ Receiver(VolumeDialogControllerImpl volumeDialogControllerImpl, int i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            boolean z = false;
            if (action.equals("android.media.STREAM_DEVICES_CHANGED_ACTION")) {
                int intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
                int intExtra2 = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_DEVICES", -1);
                int intExtra3 = intent.getIntExtra("android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES", -1);
                if (D.BUG) {
                    RecyclerView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("onReceive STREAM_DEVICES_CHANGED_ACTION stream=", intExtra, " devices=", intExtra2, " oldDevices="), intExtra3, VolumeDialogControllerImpl.TAG);
                }
                VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                String str = VolumeDialogControllerImpl.TAG;
                boolean checkRoutedToBluetoothW = volumeDialogControllerImpl.checkRoutedToBluetoothW(intExtra);
                if (intExtra == 3) {
                    checkRoutedToBluetoothW = checkRoutedToBluetoothW | VolumeDialogControllerImpl.this.checkRoutedToBluetoothW(21) | VolumeDialogControllerImpl.this.checkRoutedToBluetoothW(22);
                }
                z = checkRoutedToBluetoothW | VolumeDialogControllerImpl.this.onVolumeChangedW(intExtra, 0);
            } else if (action.equals("android.media.STREAM_MUTE_CHANGED_ACTION")) {
                int intExtra4 = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
                boolean booleanExtra = intent.getBooleanExtra("android.media.EXTRA_STREAM_VOLUME_MUTED", false);
                if (D.BUG) {
                    KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("onReceive STREAM_MUTE_CHANGED_ACTION stream=", intExtra4, " muted=", booleanExtra, VolumeDialogControllerImpl.TAG);
                }
                VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
                String str2 = VolumeDialogControllerImpl.TAG;
                z = volumeDialogControllerImpl2.updateStreamMuteW(intExtra4, booleanExtra);
                VolumeDialogControllerImpl.m2441$$Nest$mupdateStreamVolume(VolumeDialogControllerImpl.this, intExtra4);
                if (intExtra4 == 3) {
                    VolumeDialogControllerImpl.this.updateStreamMuteW(21, booleanExtra);
                    VolumeDialogControllerImpl.m2441$$Nest$mupdateStreamVolume(VolumeDialogControllerImpl.this, 21);
                    ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("onReceive STREAM_MUTE_CHANGED_ACTION : stream=", intExtra4, ", muted=", booleanExtra, ", mState.dualAudio="), VolumeDialogControllerImpl.this.mState.dualAudio, VolumeDialogControllerImpl.TAG);
                    VolumeDialogControllerImpl.this.updateStreamMuteW(22, booleanExtra);
                    VolumeDialogControllerImpl.m2441$$Nest$mupdateStreamVolume(VolumeDialogControllerImpl.this, 22);
                }
            } else if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                VolumeDialogControllerImpl volumeDialogControllerImpl3 = VolumeDialogControllerImpl.this;
                if (volumeDialogControllerImpl3.mIsVolumeDialogShowing && volumeDialogControllerImpl3.mState.activeStream == 6) {
                    if (intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1) == 10) {
                        VolumeDialogControllerImpl.this.mCallbacks.onDismissRequested(2);
                    }
                } else {
                    return;
                }
            } else if (action.equals("android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED")) {
                if (D.BUG) {
                    Log.d(VolumeDialogControllerImpl.TAG, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED");
                }
                VolumeDialogControllerImpl volumeDialogControllerImpl4 = VolumeDialogControllerImpl.this;
                z = volumeDialogControllerImpl4.updateEffectsSuppressorW(volumeDialogControllerImpl4.mNoMan.getEffectsSuppressor());
            } else if (action.equals("android.intent.action.CONFIGURATION_CHANGED")) {
                if (D.BUG) {
                    Log.d(VolumeDialogControllerImpl.TAG, "onReceive ACTION_CONFIGURATION_CHANGED");
                }
                VolumeDialogControllerImpl.this.mCallbacks.onConfigurationChanged();
            } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                if (D.BUG) {
                    Log.d(VolumeDialogControllerImpl.TAG, "onReceive ACTION_SCREEN_OFF");
                }
                VolumeDialogControllerImpl.this.mCallbacks.onScreenOff();
            } else if (action.equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                if (D.BUG) {
                    Log.d(VolumeDialogControllerImpl.TAG, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS");
                }
                VolumeDialogControllerImpl.this.mCallbacks.onDismissRequested(2);
            }
            if (z) {
                VolumeDialogControllerImpl volumeDialogControllerImpl5 = VolumeDialogControllerImpl.this;
                volumeDialogControllerImpl5.mCallbacks.onStateChanged(volumeDialogControllerImpl5.mState);
            }
        }

        private Receiver() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RingerModeObservers {
        public final RingerModeLiveData mRingerMode;
        public final RingerModeLiveData mRingerModeInternal;
        public final AnonymousClass1 mRingerModeObserver = new AnonymousClass1();
        public final AnonymousClass2 mRingerModeInternalObserver = new AnonymousClass2();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.volume.VolumeDialogControllerImpl$RingerModeObservers$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 implements Observer {
            public AnonymousClass1() {
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VolumeDialogControllerImpl.this.mWorker.post(new VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0(this, (Integer) obj, 0));
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.volume.VolumeDialogControllerImpl$RingerModeObservers$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 implements Observer {
            public AnonymousClass2() {
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VolumeDialogControllerImpl.this.mWorker.post(new VolumeDialogControllerImpl$RingerModeObservers$1$$ExternalSyntheticLambda0(this, (Integer) obj, 1));
            }
        }

        public RingerModeObservers(RingerModeLiveData ringerModeLiveData, RingerModeLiveData ringerModeLiveData2) {
            this.mRingerMode = ringerModeLiveData;
            this.mRingerModeInternal = ringerModeLiveData2;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingObserver extends ContentObserver {
        public final Uri ZEN_MODE_CONFIG_URI;
        public final Uri ZEN_MODE_URI;

        public SettingObserver(Handler handler) {
            super(handler);
            this.ZEN_MODE_URI = Settings.Global.getUriFor("zen_mode");
            this.ZEN_MODE_CONFIG_URI = Settings.Global.getUriFor("zen_mode_config_etag");
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            boolean z2;
            if (this.ZEN_MODE_URI.equals(uri)) {
                VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                String str = VolumeDialogControllerImpl.TAG;
                z2 = volumeDialogControllerImpl.updateZenModeW();
            } else {
                z2 = false;
            }
            if (this.ZEN_MODE_CONFIG_URI.equals(uri)) {
                VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
                String str2 = VolumeDialogControllerImpl.TAG;
                z2 |= volumeDialogControllerImpl2.updateZenConfig();
            }
            if (z2) {
                VolumeDialogControllerImpl volumeDialogControllerImpl3 = VolumeDialogControllerImpl.this;
                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface UserActivityListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class VC extends IVolumeController.Stub {
        public final String TAG;

        public /* synthetic */ VC(VolumeDialogControllerImpl volumeDialogControllerImpl, int i) {
            this();
        }

        public final void dismiss() {
            if (D.BUG) {
                Log.d(this.TAG, "dismiss requested");
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(2, 2, 0).sendToTarget();
            VolumeDialogControllerImpl.this.mWorker.sendEmptyMessage(2);
        }

        public final void displayCsdWarning(int i, int i2) {
            if (D.BUG) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("displayCsdWarning durMs=", i2, this.TAG);
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(17, i, i2).sendToTarget();
        }

        public final void displaySafeVolumeWarning(int i) {
            if (D.BUG) {
                String str = this.TAG;
                ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("displaySafeVolumeWarning "), com.android.settingslib.volume.Util.bitFieldToString(i, com.android.settingslib.volume.Util.AUDIO_MANAGER_FLAG_NAMES, com.android.settingslib.volume.Util.AUDIO_MANAGER_FLAGS), str);
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(14, i, 0).sendToTarget();
        }

        public final void displayVolumeLimiterToast() {
            if (D.BUG) {
                Log.d(this.TAG, "displayVolumeLimiterWarning");
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(18).sendToTarget();
        }

        public final void masterMuteChanged(int i) {
            if (D.BUG) {
                Log.d(this.TAG, "masterMuteChanged");
            }
        }

        public final void setA11yMode(int i) {
            if (D.BUG) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("setA11yMode to ", i, this.TAG);
            }
            if (i != 0) {
                if (i != 1) {
                    if (i != 100) {
                        if (i != 101) {
                            NestedScrollView$$ExternalSyntheticOutline0.m("Invalid accessibility mode ", i, this.TAG);
                        } else {
                            VolumeDialogControllerImpl.mIsVolumeStarEnabled = false;
                            return;
                        }
                    } else {
                        VolumeDialogControllerImpl.mIsVolumeStarEnabled = true;
                        return;
                    }
                } else {
                    VolumeDialogControllerImpl.this.mShowA11yStream = true;
                }
            } else {
                VolumeDialogControllerImpl.this.mShowA11yStream = false;
            }
            VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
            volumeDialogControllerImpl.mWorker.obtainMessage(15, Boolean.valueOf(volumeDialogControllerImpl.mShowA11yStream)).sendToTarget();
        }

        public final void setLayoutDirection(int i) {
            if (D.BUG) {
                Log.d(this.TAG, "setLayoutDirection");
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(8, i, 0).sendToTarget();
        }

        public final void volumeChanged(int i, int i2) {
            if (D.BUG) {
                String str = this.TAG;
                StringBuilder sb = new StringBuilder("volumeChanged ");
                sb.append(AudioSystem.streamToString(i));
                sb.append(" ");
                ExifInterface$$ExternalSyntheticOutline0.m(sb, com.android.settingslib.volume.Util.bitFieldToString(i2, Util.SAMSUNG_AUDIO_MANAGER_FLAG_NAMES, Util.SAMSUNG_AUDIO_MANAGER_FLAGS), str);
            }
            VolumeDialogControllerImpl.this.mWorker.obtainMessage(1, i, i2).sendToTarget();
        }

        private VC() {
            this.TAG = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), VolumeDialogControllerImpl.TAG, ".VC");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class W extends Handler {
        public W(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            int i = 100;
            Uri uri = null;
            MediaSession.Token token = null;
            boolean z2 = true;
            switch (message.what) {
                case 1:
                    VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    String str = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl.getClass();
                    if (i2 != 3 || (4194304 & i3) == 0) {
                        z2 = false;
                    }
                    if (z2 && volumeDialogControllerImpl.mIsVolumeDialogShowing) {
                        volumeDialogControllerImpl.mSmartViewFlag = i3;
                        return;
                    } else {
                        volumeDialogControllerImpl.onVolumeChangedW(i2, i3);
                        volumeDialogControllerImpl.mSmartViewFlag = VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE;
                        return;
                    }
                case 2:
                    VolumeDialogControllerImpl.this.mCallbacks.onDismissRequested(message.arg1);
                    return;
                case 3:
                    VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
                    String str2 = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl2.getClass();
                    ArrayMap arrayMap = VolumeDialogControllerImpl.STREAMS;
                    Iterator it = arrayMap.keySet().iterator();
                    while (it.hasNext()) {
                        int intValue = ((Integer) it.next()).intValue();
                        volumeDialogControllerImpl2.updateStreamLevelW(intValue, volumeDialogControllerImpl2.getLastAudibleStreamVolume(intValue));
                        volumeDialogControllerImpl2.streamStateW(intValue).levelMin = volumeDialogControllerImpl2.getAudioManagerStreamMinVolume(intValue);
                        volumeDialogControllerImpl2.streamStateW(intValue).levelMax = volumeDialogControllerImpl2.getAudioManagerStreamMaxVolume(intValue);
                        AudioManager audioManager = volumeDialogControllerImpl2.mAudio;
                        if (intValue != 20 && intValue != 23) {
                            if (intValue != 21 && intValue != 22) {
                                z = audioManager.isStreamMute(intValue);
                            } else {
                                z = audioManager.isStreamMute(3);
                            }
                        } else {
                            z = false;
                        }
                        volumeDialogControllerImpl2.updateStreamMuteW(intValue, z);
                        VolumeDialogController.StreamState streamStateW = volumeDialogControllerImpl2.streamStateW(intValue);
                        streamStateW.muteSupported = audioManager.isStreamAffectedByMute(intValue);
                        streamStateW.name = ((Integer) arrayMap.get(Integer.valueOf(intValue))).intValue();
                        volumeDialogControllerImpl2.checkRoutedToBluetoothW(intValue);
                        streamStateW.nameRes = volumeDialogControllerImpl2.mContext.getResources().getResourceName(streamStateW.name);
                    }
                    int intValue2 = volumeDialogControllerImpl2.mRingerModeObservers.mRingerMode.getValue().intValue();
                    VolumeDialogController.State state = volumeDialogControllerImpl2.mState;
                    if (intValue2 != state.ringerModeExternal) {
                        state.ringerModeExternal = intValue2;
                        Events.writeEvent(12, Integer.valueOf(intValue2));
                    }
                    volumeDialogControllerImpl2.updateZenModeW();
                    volumeDialogControllerImpl2.updateZenConfig();
                    volumeDialogControllerImpl2.updateEffectsSuppressorW(volumeDialogControllerImpl2.mNoMan.getEffectsSuppressor());
                    volumeDialogControllerImpl2.mCallbacks.onStateChanged(volumeDialogControllerImpl2.mState);
                    return;
                case 4:
                    VolumeDialogControllerImpl volumeDialogControllerImpl3 = VolumeDialogControllerImpl.this;
                    int i4 = message.arg1;
                    if (message.arg2 == 0) {
                        z2 = false;
                    }
                    AudioManager audioManager2 = volumeDialogControllerImpl3.mAudio;
                    if (z2) {
                        audioManager2.setRingerMode(i4);
                        return;
                    } else {
                        audioManager2.setRingerModeInternal(i4);
                        return;
                    }
                case 5:
                    VolumeDialogControllerImpl volumeDialogControllerImpl4 = VolumeDialogControllerImpl.this;
                    int i5 = message.arg1;
                    String str3 = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl4.getClass();
                    boolean z3 = D.BUG;
                    String str4 = VolumeDialogControllerImpl.TAG;
                    if (z3) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("onSetZenModeW ", i5, str4);
                    }
                    volumeDialogControllerImpl4.mNoMan.setZenMode(i5, null, str4);
                    return;
                case 6:
                    VolumeDialogControllerImpl volumeDialogControllerImpl5 = VolumeDialogControllerImpl.this;
                    Condition condition = (Condition) message.obj;
                    int i6 = volumeDialogControllerImpl5.mState.zenMode;
                    if (condition != null) {
                        uri = condition.id;
                    }
                    volumeDialogControllerImpl5.mNoMan.setZenMode(i6, uri, VolumeDialogControllerImpl.TAG);
                    return;
                case 7:
                    VolumeDialogControllerImpl volumeDialogControllerImpl6 = VolumeDialogControllerImpl.this;
                    int i7 = message.arg1;
                    if (message.arg2 == 0) {
                        z2 = false;
                    }
                    String str5 = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl6.getClass();
                    if (z2) {
                        i = -100;
                    }
                    volumeDialogControllerImpl6.mAudio.adjustStreamVolume(i7, i, 0);
                    return;
                case 8:
                    VolumeDialogControllerImpl.this.mCallbacks.onLayoutDirectionChanged(message.arg1);
                    return;
                case 9:
                    VolumeDialogControllerImpl.this.mCallbacks.onConfigurationChanged();
                    return;
                case 10:
                    VolumeDialogControllerImpl volumeDialogControllerImpl7 = VolumeDialogControllerImpl.this;
                    int i8 = message.arg1;
                    int i9 = message.arg2;
                    String str6 = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl7.getClass();
                    if (D.BUG) {
                        SuggestionsAdapter$$ExternalSyntheticOutline0.m("onSetStreamVolume ", i8, " level=", i9, VolumeDialogControllerImpl.TAG);
                    }
                    if (i8 >= 100) {
                        MediaSessionsCallbacks mediaSessionsCallbacks = volumeDialogControllerImpl7.mMediaSessionsCallbacksW;
                        synchronized (mediaSessionsCallbacks.mRemoteStreams) {
                            Iterator it2 = mediaSessionsCallbacks.mRemoteStreams.entrySet().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    Map.Entry entry = (Map.Entry) it2.next();
                                    if (((Integer) entry.getValue()).equals(Integer.valueOf(i8))) {
                                        token = (MediaSession.Token) entry.getKey();
                                    }
                                }
                            }
                        }
                        if (token == null) {
                            IconCompat$$ExternalSyntheticOutline0.m("setStreamVolume: No token found for stream: ", i8, VolumeDialogControllerImpl.TAG);
                            return;
                        }
                        if (mediaSessionsCallbacks.showForSession(token)) {
                            MediaSessions.MediaControllerRecord mediaControllerRecord = (MediaSessions.MediaControllerRecord) ((HashMap) VolumeDialogControllerImpl.this.mMediaSessions.mRecords).get(token);
                            String str7 = MediaSessions.TAG;
                            if (mediaControllerRecord == null) {
                                Log.w(str7, "setVolume: No record found for token " + token);
                                return;
                            } else {
                                if (com.android.settingslib.volume.D.BUG) {
                                    ListPopupWindow$$ExternalSyntheticOutline0.m("Setting level to ", i9, str7);
                                }
                                mediaControllerRecord.controller.setVolumeTo(i9, 0);
                                return;
                            }
                        }
                        return;
                    }
                    volumeDialogControllerImpl7.setStreamVolume(i8, i9, null);
                    return;
                case 11:
                    VolumeDialogControllerImpl volumeDialogControllerImpl8 = VolumeDialogControllerImpl.this;
                    int i10 = message.arg1;
                    String str8 = VolumeDialogControllerImpl.TAG;
                    if (volumeDialogControllerImpl8.updateActiveStreamW(i10)) {
                        volumeDialogControllerImpl8.mCallbacks.onStateChanged(volumeDialogControllerImpl8.mState);
                        return;
                    }
                    return;
                case 12:
                    VolumeDialogControllerImpl volumeDialogControllerImpl9 = VolumeDialogControllerImpl.this;
                    if (message.arg1 == 0) {
                        z2 = false;
                    }
                    volumeDialogControllerImpl9.mAudio.notifyVolumeControllerVisible(volumeDialogControllerImpl9.mVolumeController, z2);
                    if (!z2 && volumeDialogControllerImpl9.updateActiveStreamW(-1)) {
                        volumeDialogControllerImpl9.mCallbacks.onStateChanged(volumeDialogControllerImpl9.mState);
                        return;
                    }
                    return;
                case 13:
                    VolumeDialogControllerImpl volumeDialogControllerImpl10 = VolumeDialogControllerImpl.this;
                    String str9 = VolumeDialogControllerImpl.TAG;
                    synchronized (volumeDialogControllerImpl10) {
                        UserActivityListener userActivityListener = volumeDialogControllerImpl10.mUserActivityListener;
                        if (userActivityListener != null) {
                            ((VolumeDialogComponent) userActivityListener).mKeyguardViewMediator.userActivity();
                        }
                    }
                    return;
                case 14:
                    VolumeDialogControllerImpl volumeDialogControllerImpl11 = VolumeDialogControllerImpl.this;
                    int i11 = message.arg1;
                    if (volumeDialogControllerImpl11.mShowSafetyWarning) {
                        volumeDialogControllerImpl11.mCallbacks.onShowSafetyWarning(i11);
                        return;
                    }
                    return;
                case 15:
                    VolumeDialogControllerImpl.this.mCallbacks.onAccessibilityModeChanged((Boolean) message.obj);
                    return;
                case 16:
                    VolumeDialogControllerImpl volumeDialogControllerImpl12 = VolumeDialogControllerImpl.this;
                    volumeDialogControllerImpl12.mCallbacks.onCaptionComponentStateChanged(Boolean.valueOf(volumeDialogControllerImpl12.mCaptioningManager.isSystemAudioCaptioningUiEnabled()), Boolean.valueOf(((Boolean) message.obj).booleanValue()));
                    return;
                case 17:
                    VolumeDialogControllerImpl.this.mCallbacks.onShowCsdWarning(message.arg1, message.arg2);
                    return;
                case 18:
                    VolumeDialogControllerImpl.this.mCallbacks.onShowVolumeLimiterToast();
                    return;
                case 19:
                    VolumeDialogControllerImpl volumeDialogControllerImpl13 = VolumeDialogControllerImpl.this;
                    int i12 = message.arg1;
                    int i13 = message.arg2;
                    String str10 = (String) message.obj;
                    String str11 = VolumeDialogControllerImpl.TAG;
                    volumeDialogControllerImpl13.getClass();
                    if (D.BUG) {
                        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onSetStreamVolumeDualAudioW ", i12, " level=", i13, " btDeviceAddress=");
                        m.append(str10);
                        Log.d(VolumeDialogControllerImpl.TAG, m.toString());
                    }
                    volumeDialogControllerImpl13.setStreamVolume(i12, i13, str10);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: -$$Nest$mupdateRemoteFixedVolumeSession, reason: not valid java name */
    public static void m2440$$Nest$mupdateRemoteFixedVolumeSession(VolumeDialogControllerImpl volumeDialogControllerImpl, int i, MediaController.PlaybackInfo playbackInfo) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (playbackInfo == null) {
            volumeDialogControllerImpl.streamStateW(i).remoteFixedVolume = false;
            return;
        }
        volumeDialogControllerImpl.getClass();
        if (playbackInfo.getVolumeControl() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (playbackInfo.getPlaybackType() == 2 && playbackInfo.getVolumeControl() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        VolumeDialogController.StreamState streamStateW = volumeDialogControllerImpl.streamStateW(i);
        if (z || z2) {
            z3 = true;
        }
        streamStateW.remoteFixedVolume = z3;
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("updateRemoteVolumeRelativeOnly : stream=", i, ", isFixedVolume=", z, ", isRemoteRelativeVolume=");
        m.append(z2);
        Log.d(TAG, m.toString());
    }

    /* renamed from: -$$Nest$mupdateStreamVolume, reason: not valid java name */
    public static void m2441$$Nest$mupdateStreamVolume(VolumeDialogControllerImpl volumeDialogControllerImpl, int i) {
        volumeDialogControllerImpl.updateStreamLevelW(i, volumeDialogControllerImpl.getLastAudibleStreamVolume(i));
    }

    static {
        ArrayMap arrayMap = new ArrayMap();
        STREAMS = arrayMap;
        Integer valueOf = Integer.valueOf(R.string.volume_icon_description_incall);
        arrayMap.put(0, valueOf);
        arrayMap.put(1, Integer.valueOf(R.string.volumepanel_system));
        arrayMap.put(2, Integer.valueOf(R.string.volumepanel_ringtone));
        Integer valueOf2 = Integer.valueOf(R.string.volumepanel_media);
        arrayMap.put(3, valueOf2);
        arrayMap.put(4, Integer.valueOf(R.string.volume_alarm));
        arrayMap.put(5, Integer.valueOf(R.string.volumepanel_notification));
        arrayMap.put(6, valueOf);
        arrayMap.put(7, Integer.valueOf(R.string.stream_system_enforced));
        arrayMap.put(8, Integer.valueOf(R.string.stream_dtmf));
        arrayMap.put(9, Integer.valueOf(R.string.stream_tts));
        arrayMap.put(10, Integer.valueOf(R.string.stream_accessibility));
        arrayMap.put(20, valueOf2);
        arrayMap.put(21, valueOf2);
        arrayMap.put(11, Integer.valueOf(R.string.volumepanel_bixby_voice));
        arrayMap.put(22, valueOf2);
        arrayMap.put(23, Integer.valueOf(R.string.volumepanel_music_share));
        DEFAULT_MAX_LEVEL = 15;
        FLAG_SMART_VIEW_NONE = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.android.systemui.settings.UserTracker$Callback, com.android.systemui.volume.VolumeDialogControllerImpl$1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.android.systemui.volume.VolumeDialogControllerImpl$2] */
    public VolumeDialogControllerImpl(Context context, BroadcastDispatcher broadcastDispatcher, RingerModeTracker ringerModeTracker, ThreadFactory threadFactory, AudioManager audioManager, NotificationManager notificationManager, VibratorHelper vibratorHelper, IAudioService iAudioService, AccessibilityManager accessibilityManager, PackageManager packageManager, WakefulnessLifecycle wakefulnessLifecycle, CaptioningManager captioningManager, KeyguardManager keyguardManager, ActivityManager activityManager, UserTracker userTracker, DumpManager dumpManager, SALoggingWrapper sALoggingWrapper, BroadcastReceiverManager broadcastReceiverManager, DisplayManagerWrapper displayManagerWrapper, DesktopManagerWrapper desktopManagerWrapper, KnoxStateMonitor knoxStateMonitor, BluetoothAdapterWrapper bluetoothAdapterWrapper, SoundAssistantManagerWrapper soundAssistantManagerWrapper, DeviceStateManagerWrapper deviceStateManagerWrapper, LocalBluetoothManager localBluetoothManager, VolumeDependency volumeDependency) {
        int i = 0;
        Receiver receiver = new Receiver(this, i);
        this.mCallbacks = new C();
        this.mState = new VolumeDialogController.State();
        this.mDeviceInteractive = true;
        VC vc = new VC(this, i);
        this.mVolumeController = vc;
        Boolean bool = Boolean.FALSE;
        this.mIsSupportTvVolumeControl = bool;
        this.mIsDLNAEnabled = bool;
        ?? r6 = new UserTracker.Callback() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.1
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i2, Context context2) {
                int i3 = 0;
                while (true) {
                    VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
                    if (i3 < volumeDialogControllerImpl.mState.states.size()) {
                        volumeDialogControllerImpl.onVolumeChangedW(volumeDialogControllerImpl.mState.states.keyAt(i3), 0);
                        i3++;
                    } else {
                        return;
                    }
                }
            }
        };
        this.mCurrentUserTrackerCallback = r6;
        ?? r7 = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.2
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                VolumeDialogControllerImpl.this.mDeviceInteractive = false;
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                VolumeDialogControllerImpl.this.mDeviceInteractive = true;
            }
        };
        this.mWakefullnessLifecycleObserver = r7;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mPackageManager = packageManager;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        Events.writeEvent(5, new Object[0]);
        ((ThreadFactoryImpl) threadFactory).getClass();
        HandlerThread handlerThread = new HandlerThread("VolumeDialogControllerImpl");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        W w = new W(looper);
        this.mWorker = w;
        this.mRouter2Manager = MediaRouter2Manager.getInstance(applicationContext);
        MediaSessionsCallbacks mediaSessionsCallbacks = new MediaSessionsCallbacks(applicationContext);
        this.mMediaSessionsCallbacksW = mediaSessionsCallbacks;
        this.mMediaSessions = new MediaSessions(applicationContext, looper, mediaSessionsCallbacks);
        this.mAudio = audioManager;
        this.mNoMan = notificationManager;
        SettingObserver settingObserver = new SettingObserver(w);
        RingerModeTrackerImpl ringerModeTrackerImpl = (RingerModeTrackerImpl) ringerModeTracker;
        RingerModeObservers ringerModeObservers = new RingerModeObservers(ringerModeTrackerImpl.ringerMode, ringerModeTrackerImpl.ringerModeInternal);
        this.mRingerModeObservers = ringerModeObservers;
        RingerModeLiveData ringerModeLiveData = ringerModeObservers.mRingerMode;
        int intValue = ringerModeLiveData.getValue().intValue();
        VolumeDialogControllerImpl volumeDialogControllerImpl = VolumeDialogControllerImpl.this;
        if (intValue != -1) {
            volumeDialogControllerImpl.mState.ringerModeExternal = intValue;
        }
        ringerModeLiveData.observeForever(ringerModeObservers.mRingerModeObserver);
        RingerModeLiveData ringerModeLiveData2 = ringerModeObservers.mRingerModeInternal;
        int intValue2 = ringerModeLiveData2.getValue().intValue();
        if (intValue2 != -1) {
            volumeDialogControllerImpl.mState.ringerModeInternal = intValue2;
        }
        ringerModeLiveData2.observeForever(ringerModeObservers.mRingerModeInternalObserver);
        this.mBroadcastDispatcher = broadcastDispatcher;
        VolumeDialogControllerImpl.this.mContext.getContentResolver().registerContentObserver(settingObserver.ZEN_MODE_URI, false, settingObserver);
        VolumeDialogControllerImpl.this.mContext.getContentResolver().registerContentObserver(settingObserver.ZEN_MODE_CONFIG_URI, false, settingObserver);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.media.STREAM_DEVICES_CHANGED_ACTION");
        intentFilter.addAction("android.media.STREAM_MUTE_CHANGED_ACTION");
        intentFilter.addAction("android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        VolumeDialogControllerImpl volumeDialogControllerImpl2 = VolumeDialogControllerImpl.this;
        volumeDialogControllerImpl2.mBroadcastDispatcher.registerReceiverWithHandler(receiver, intentFilter, volumeDialogControllerImpl2.mWorker);
        this.mVibrator = vibratorHelper;
        this.mHasVibrator = vibratorHelper.hasVibrator();
        this.mAudioService = iAudioService;
        this.mCaptioningManager = captioningManager;
        this.mKeyguardManager = keyguardManager;
        this.mActivityManager = activityManager;
        this.mUserTracker = userTracker;
        this.mDumpManager = dumpManager;
        vc.setA11yMode(accessibilityManager.isAccessibilityVolumeStreamActive() ? 1 : 0);
        wakefulnessLifecycle.addObserver(r7);
        this.mSALoggingWrapper = sALoggingWrapper;
        this.mDesktopManagerWrapper = desktopManagerWrapper;
        this.mLocalBluetoothManager = localBluetoothManager;
        this.mBroadcastReceiverManager = broadcastReceiverManager;
        this.mDisplayManagerWrapper = displayManagerWrapper;
        this.mKnoxStateMonitor = knoxStateMonitor;
        this.mBluetoothAudioCastWrapper = new BluetoothAudioCastWrapper(applicationContext);
        this.mBluetoothAdapterManager = bluetoothAdapterWrapper;
        this.mSoundAssistantManagerWrapper = soundAssistantManagerWrapper;
        if (BasicRune.VOLUME_SUB_DISPLAY_VOLUME_DIALOG) {
            this.mDeviceStateManagerWrapper = deviceStateManagerWrapper;
        } else {
            this.mDeviceStateManagerWrapper = null;
        }
        ((UserTrackerImpl) userTracker).addCallback(r6, new HandlerExecutor(new Handler(Looper.getMainLooper())));
        this.mSoundAssistantChecker = (SoundAssistantChecker) volumeDependency.get(SoundAssistantChecker.class);
    }

    public static boolean isMediaStream(int i) {
        if (i != 3 && i != 21 && i != 22) {
            return false;
        }
        return true;
    }

    public static void updateStreamRoutedToHomeMiniW(BluetoothDevice bluetoothDevice, VolumeDialogController.StreamState streamState) {
        if (bluetoothDevice != null) {
            BluetoothIconUtil bluetoothIconUtil = BluetoothIconUtil.INSTANCE;
            BluetoothIconUtil.SamsungStandard.Companion.getClass();
            ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(Short.valueOf(BluetoothIconUtil.SamsungStandard.Companion.AI_SPEAKER_GALAXY_HOME_MINI));
            BluetoothIconUtil.INSTANCE.getClass();
            if (BluetoothIconUtil.isSameDeviceIconType(bluetoothDevice, arrayListOf)) {
                streamState.routedToHomeMini = true;
                return;
            }
        }
        streamState.routedToHomeMini = false;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void addCallback(VolumeDialogController.Callbacks callbacks, Handler handler) {
        C c = this.mCallbacks;
        c.getClass();
        if (callbacks != null && handler != null) {
            ((ConcurrentHashMap) c.mCallbackMap).put(callbacks, handler);
            callbacks.onAccessibilityModeChanged(Boolean.valueOf(this.mShowA11yStream));
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean areCaptionsEnabled() {
        return this.mCaptioningManager.isSystemAudioCaptioningEnabled();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        if (r0 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        if (r0.size() > 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean checkRoutedToBluetoothW(int r7) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumeDialogControllerImpl.checkRoutedToBluetoothW(int):boolean");
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("VolumeDialogControllerImpl state:");
        printWriter.print("  mVolumePolicy: ");
        printWriter.println(this.mVolumePolicy);
        printWriter.print("  mState: ");
        printWriter.println(this.mState.toString(4));
        printWriter.print("  mHasVibrator: ");
        printWriter.println(this.mHasVibrator);
        synchronized (this.mMediaSessionsCallbacksW.mRemoteStreams) {
            printWriter.print("  mRemoteStreams: ");
            printWriter.println(this.mMediaSessionsCallbacksW.mRemoteStreams.values());
        }
        printWriter.print("  mShowA11yStream: ");
        printWriter.println(this.mShowA11yStream);
        printWriter.println();
        MediaSessions mediaSessions = this.mMediaSessions;
        mediaSessions.getClass();
        printWriter.println("MediaSessions state:");
        printWriter.print("  mInit: ");
        printWriter.println(mediaSessions.mInit);
        printWriter.print("  mRecords.size: ");
        HashMap hashMap = (HashMap) mediaSessions.mRecords;
        printWriter.println(hashMap.size());
        Iterator it = hashMap.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i++;
            MediaController mediaController = ((MediaSessions.MediaControllerRecord) it.next()).controller;
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("  Controller ", i, ": ");
            m.append(mediaController.getPackageName());
            printWriter.println(m.toString());
            Bundle extras = mediaController.getExtras();
            long flags = mediaController.getFlags();
            MediaMetadata metadata = mediaController.getMetadata();
            MediaController.PlaybackInfo playbackInfo = mediaController.getPlaybackInfo();
            PlaybackState playbackState = mediaController.getPlaybackState();
            List<MediaSession.QueueItem> queue = mediaController.getQueue();
            CharSequence queueTitle = mediaController.getQueueTitle();
            int ratingType = mediaController.getRatingType();
            PendingIntent sessionActivity = mediaController.getSessionActivity();
            printWriter.println("    PlaybackState: " + com.android.settingslib.volume.Util.playbackStateToString(playbackState));
            printWriter.println("    PlaybackInfo: " + com.android.settingslib.volume.Util.playbackInfoToString(playbackInfo));
            if (metadata != null) {
                printWriter.println("  MediaMetadata.desc=" + metadata.getDescription());
            }
            printWriter.println("    RatingType: " + ratingType);
            printWriter.println("    Flags: " + flags);
            if (extras != null) {
                printWriter.println("    Extras:");
                for (String str : extras.keySet()) {
                    StringBuilder m2 = ActivityResultRegistry$$ExternalSyntheticOutline0.m("      ", str, "=");
                    m2.append(extras.getString(str));
                    printWriter.println(m2.toString());
                }
            }
            if (queueTitle != null) {
                printWriter.println("    QueueTitle: " + ((Object) queueTitle));
            }
            if (queue != null && !queue.isEmpty()) {
                printWriter.println("    Queue:");
                Iterator<MediaSession.QueueItem> it2 = queue.iterator();
                while (it2.hasNext()) {
                    printWriter.println("      " + it2.next());
                }
            }
            if (playbackInfo != null) {
                printWriter.println("    sessionActivity: " + sessionActivity);
            }
        }
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final AudioManager getAudioManager() {
        return this.mAudio;
    }

    public final int getAudioManagerStreamMaxVolume(int i) {
        if (i == 20) {
            if (isSmartViewEnabled()) {
                DisplayManagerWrapper displayManagerWrapper = this.mDisplayManagerWrapper;
                if (displayManagerWrapper.maxSmartViewVol == -1) {
                    SystemServiceExtension.INSTANCE.getClass();
                    displayManagerWrapper.maxSmartViewVol = ((Integer) SystemServiceExtension.getDisplayManager(displayManagerWrapper.context).semGetWifiDisplayConfiguration("mivo")).intValue();
                }
                return displayManagerWrapper.maxSmartViewVol;
            }
        } else {
            AudioManager audioManager = this.mAudio;
            if (i != 21 && i != 22) {
                if (i != 23) {
                    return audioManager.getStreamMaxVolume(i);
                }
            } else {
                return audioManager.getStreamMaxVolume(3);
            }
        }
        return DEFAULT_MAX_LEVEL;
    }

    public final int getAudioManagerStreamMinVolume(int i) {
        if (i == 20) {
            if (isSmartViewEnabled()) {
                DisplayManagerWrapper displayManagerWrapper = this.mDisplayManagerWrapper;
                if (displayManagerWrapper.minSmartViewVol == -1) {
                    SystemServiceExtension.INSTANCE.getClass();
                    displayManagerWrapper.minSmartViewVol = ((Integer) SystemServiceExtension.getDisplayManager(displayManagerWrapper.context).semGetWifiDisplayConfiguration("mavo")).intValue();
                }
                return displayManagerWrapper.minSmartViewVol;
            }
        } else {
            AudioManager audioManager = this.mAudio;
            if (i != 21 && i != 22) {
                if (i != 23) {
                    return audioManager.getStreamMinVolumeInt(i);
                }
            } else {
                return audioManager.getStreamMinVolumeInt(3);
            }
        }
        return 0;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void getCaptionsComponentState(boolean z) {
        this.mWorker.obtainMessage(16, Boolean.valueOf(z)).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getLastAudibleStreamVolume(int r8) {
        /*
            r7 = this;
            boolean r0 = isMediaStream(r8)
            android.media.AudioManager r1 = r7.mAudio
            r2 = 0
            if (r0 == 0) goto L8d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.android.systemui.plugins.VolumeDialogController$State r3 = r7.mState
            boolean r3 = r3.dualAudio
            r4 = 1
            if (r3 == 0) goto L24
            com.android.systemui.volume.util.BluetoothAdapterWrapper r0 = r7.mBluetoothAdapterManager
            java.util.List r0 = r0.getConnectedDevices()
            int r3 = r0.size()
            r5 = 2
            if (r3 != r5) goto L24
            r3 = r4
            goto L25
        L24:
            r3 = r2
        L25:
            android.util.Pair r5 = new android.util.Pair
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r5.<init>(r3, r0)
            java.lang.Object r0 = r5.first
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r3 = 3
            r6 = 21
            if (r0 == 0) goto L7b
            java.lang.Object r0 = r5.second
            java.util.List r0 = (java.util.List) r0
            boolean r7 = r7.isMultiSoundBT()
            if (r7 == 0) goto L5e
            if (r8 != r3) goto L4c
            int r7 = r1.semGetFineVolume(r3)
            goto L8a
        L4c:
            if (r8 != r6) goto L53
            java.lang.Object r7 = r0.get(r2)
            goto L57
        L53:
            java.lang.Object r7 = r0.get(r4)
        L57:
            android.bluetooth.BluetoothDevice r7 = (android.bluetooth.BluetoothDevice) r7
            int r7 = r1.semGetFineVolume(r7, r3)
            goto L8a
        L5e:
            if (r8 != r6) goto L69
            int r7 = r1.semGetPinDevice()
            int r7 = r1.getFineVolume(r3, r7)
            goto L8a
        L69:
            if (r8 != r3) goto L70
            java.lang.Object r7 = r0.get(r2)
            goto L74
        L70:
            java.lang.Object r7 = r0.get(r4)
        L74:
            android.bluetooth.BluetoothDevice r7 = (android.bluetooth.BluetoothDevice) r7
            int r7 = r1.semGetFineVolume(r7, r3)
            goto L8a
        L7b:
            if (r8 != r6) goto L86
            int r7 = r1.semGetPinDevice()
            int r7 = r1.getFineVolume(r3, r7)
            goto L8a
        L86:
            int r7 = r1.semGetFineVolume(r3)
        L8a:
            int r2 = r7 * 10
            goto Lb4
        L8d:
            r0 = 20
            if (r8 != r0) goto L9c
            boolean r8 = r7.isSmartViewEnabled()
            if (r8 == 0) goto Lb4
            com.android.systemui.volume.util.DisplayManagerWrapper r7 = r7.mDisplayManagerWrapper
            int r2 = r7.displayCurrentVolume
            goto Lb4
        L9c:
            r0 = 23
            if (r8 != r0) goto Lb0
            boolean r8 = r7.mIsBudsTogetherEnabled
            if (r8 == 0) goto Lb4
            com.android.systemui.volume.util.BluetoothAudioCastWrapper r7 = r7.mBluetoothAudioCastWrapper
            com.samsung.android.bluetooth.SemBluetoothAudioCast r7 = r7.service
            if (r7 == 0) goto Lb4
            r8 = 0
            int r2 = r7.getAudioSharingDeviceVolume(r8)
            goto Lb4
        Lb0:
            int r2 = r1.getStreamVolume(r8)
        Lb4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumeDialogControllerImpl.getLastAudibleStreamVolume(int):int");
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void getState() {
        this.mWorker.sendEmptyMessage(3);
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean hasVibrator() {
        return this.mHasVibrator;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isAODVolumePanel() {
        return this.mState.aodEnabled;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isAudioMirroring() {
        return this.mIsAudioMirroringEnabled;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isBudsTogetherEnabled() {
        return this.mIsBudsTogetherEnabled;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isDLNAEnabled() {
        return this.mIsDLNAEnabled.booleanValue();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isLeBroadcasting() {
        LocalBluetoothProfileManager localBluetoothProfileManager;
        LocalBluetoothLeBroadcast localBluetoothLeBroadcast;
        LocalBluetoothManager localBluetoothManager = this.mLocalBluetoothManager;
        if (localBluetoothManager == null || (localBluetoothProfileManager = localBluetoothManager.mProfileManager) == null || (localBluetoothLeBroadcast = localBluetoothProfileManager.mLeAudioBroadcast) == null) {
            return false;
        }
        return localBluetoothLeBroadcast.isEnabled();
    }

    public final boolean isMultiSoundBT() {
        int multiSoundDevice;
        SoundAssistantManagerWrapper soundAssistantManagerWrapper = this.mSoundAssistantManagerWrapper;
        if (soundAssistantManagerWrapper != null) {
            SemSoundAssistantManager semSoundAssistantManager = soundAssistantManagerWrapper.satMananger;
            if (semSoundAssistantManager.isMultiSoundOn() && this.mAudio.semGetCurrentDeviceType() != (multiSoundDevice = semSoundAssistantManager.getMultiSoundDevice()) && multiSoundDevice == 8) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isMusicShareEnabled() {
        if (this.mIsMusicShareEnabled && !this.mIsBudsTogetherEnabled) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isSmartViewEnabled() {
        if (!this.mIsDLNAEnabled.booleanValue() && !this.mIsSupportTvVolumeControl.booleanValue()) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean isVolumeStarEnabled() {
        return mIsVolumeStarEnabled;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void notifyVisible(boolean z) {
        this.mIsVolumeDialogShowing = z;
        VolumeDialogController.State state = this.mState;
        if (state.aodEnabled && !z) {
            state.aodEnabled = false;
        }
        this.mWorker.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    /* JADX WARN: Code restructure failed: missing block: B:214:0x0105, code lost:
    
        if (r5 == null) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x031b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0380 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onVolumeChangedW(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 915
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumeDialogControllerImpl.onVolumeChangedW(int, int):boolean");
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void removeCallback(VolumeDialogController.Callbacks callbacks) {
        ((ConcurrentHashMap) this.mCallbacks.mCallbackMap).remove(callbacks);
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void scheduleTouchFeedback() {
        this.mLastToggledRingerOn = System.currentTimeMillis();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setActiveStream(int i) {
        this.mWorker.obtainMessage(11, i, 0).sendToTarget();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setCaptionsEnabled(boolean z) {
        this.mCaptioningManager.setSystemAudioCaptioningEnabled(z);
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setRingerMode(int i, boolean z) {
        this.mWorker.obtainMessage(4, i, z ? 1 : 0).sendToTarget();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setSafeVolumeDialogShowing(boolean z) {
        try {
            this.mAudioService.notifySafetyVolumeDialogVisible(this.mVolumeController, z);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setStreamVolume(int i, int i2) {
        W w = this.mWorker;
        w.removeMessages(10);
        w.obtainMessage(10, i, i2).sendToTarget();
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void setStreamVolumeDualAudio(int i, int i2, String str) {
        W w = this.mWorker;
        w.removeMessages(19);
        w.obtainMessage(19, i, i2, str).sendToTarget();
    }

    public boolean shouldDualAudioUIEnabled() {
        int semGetCurrentDeviceType = this.mAudio.semGetCurrentDeviceType();
        if (semGetCurrentDeviceType != 8) {
            SoundAssistantManagerWrapper soundAssistantManagerWrapper = this.mSoundAssistantManagerWrapper;
            if (soundAssistantManagerWrapper != null) {
                SemSoundAssistantManager semSoundAssistantManager = soundAssistantManagerWrapper.satMananger;
                if (!semSoundAssistantManager.isMultiSoundOn() || semGetCurrentDeviceType == semSoundAssistantManager.getMultiSoundDevice()) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean shouldShowUI(int i) {
        DeviceStateManagerWrapper deviceStateManagerWrapper;
        boolean z;
        KnoxStateMonitor knoxStateMonitor = this.mKnoxStateMonitor;
        if (knoxStateMonitor != null) {
            CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) knoxStateMonitor).mCustomSdkMonitor;
            if (customSdkMonitor != null && customSdkMonitor.mVolumePanelEnabledState) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                Log.d(TAG, "KnoxStateMonitor : Disable VolumeDialog");
                return false;
            }
        }
        if (BasicRune.VOLUME_SUB_DISPLAY_VOLUME_DIALOG && (deviceStateManagerWrapper = this.mDeviceStateManagerWrapper) != null && deviceStateManagerWrapper.isFolded && this.mShowVolumeDialog && (i & 1) != 0) {
            return true;
        }
        int i2 = this.mWakefulnessLifecycle.mWakefulness;
        if (this.mState.aodEnabled) {
            if (!this.mShowVolumeDialog || (i & 1) == 0) {
                return false;
            }
            return true;
        }
        if (i2 == 0 || i2 == 3 || !this.mDeviceInteractive || (i & 1) == 0 || !this.mShowVolumeDialog) {
            return false;
        }
        return true;
    }

    public final VolumeDialogController.StreamState streamStateW(int i) {
        VolumeDialogController.State state = this.mState;
        VolumeDialogController.StreamState streamState = state.states.get(i);
        if (streamState == null) {
            VolumeDialogController.StreamState streamState2 = new VolumeDialogController.StreamState();
            state.states.put(i, streamState2);
            return streamState2;
        }
        return streamState;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final boolean supportTvVolumeControl() {
        return this.mIsSupportTvVolumeControl.booleanValue();
    }

    public final boolean updateActiveStreamW(int i) {
        VolumeDialogController.State state = this.mState;
        if (i == state.activeStream) {
            return false;
        }
        state.activeStream = i;
        Events.writeEvent(2, Integer.valueOf(i));
        boolean z = D.BUG;
        String str = TAG;
        if (z) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("updateActiveStreamW ", i, str);
        }
        if (i >= 100) {
            i = -1;
        }
        if (i == 21) {
            i = 10003;
        }
        if (i == 23 || i == 20 || i == 22) {
            i = 3;
        }
        if (z) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("forceVolumeControlStream ", i, str);
        }
        this.mAudio.forceVolumeControlStream(i);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        if (r3.length() > 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateEffectsSuppressorW(android.content.ComponentName r4) {
        /*
            r3 = this;
            com.android.systemui.plugins.VolumeDialogController$State r0 = r3.mState
            android.content.ComponentName r1 = r0.effectsSuppressor
            boolean r1 = java.util.Objects.equals(r1, r4)
            r2 = 0
            if (r1 == 0) goto Lc
            return r2
        Lc:
            r0.effectsSuppressor = r4
            android.content.pm.PackageManager r3 = r3.mPackageManager
            if (r4 != 0) goto L14
            r3 = 0
            goto L32
        L14:
            java.lang.String r4 = r4.getPackageName()
            android.content.pm.ApplicationInfo r1 = r3.getApplicationInfo(r4, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L31
            java.lang.CharSequence r3 = r1.loadLabel(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L31
            java.lang.String r1 = ""
            java.lang.String r3 = java.util.Objects.toString(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L31
            java.lang.String r3 = r3.trim()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L31
            int r1 = r3.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L31
            if (r1 <= 0) goto L31
            goto L32
        L31:
            r3 = r4
        L32:
            r0.effectsSuppressorName = r3
            android.content.ComponentName r3 = r0.effectsSuppressor
            java.lang.String r4 = r0.effectsSuppressorName
            java.lang.Object[] r3 = new java.lang.Object[]{r3, r4}
            r4 = 14
            com.android.systemui.volume.Events.writeEvent(r4, r3)
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumeDialogControllerImpl.updateEffectsSuppressorW(android.content.ComponentName):boolean");
    }

    public final boolean updateRingerModeInternalW(int i) {
        VolumeDialogController.State state = this.mState;
        if (i == state.ringerModeInternal) {
            return false;
        }
        if (i == 1) {
            this.mIsVibrating = true;
            this.mWorker.postDelayed(new VolumeDialogControllerImpl$$ExternalSyntheticLambda1(this, 0), 700L);
        }
        state.ringerModeInternal = i;
        Events.writeEvent(11, Integer.valueOf(i));
        if (state.ringerModeInternal == 2 && System.currentTimeMillis() - this.mLastToggledRingerOn < 1000) {
            try {
                this.mAudioService.playSoundEffect(5, ((UserTrackerImpl) this.mUserTracker).getUserId());
            } catch (RemoteException unused) {
            }
        }
        return true;
    }

    public final boolean updateStreamLevelW(int i, int i2) {
        VolumeDialogController.StreamState streamStateW = streamStateW(i);
        boolean z = false;
        if (streamStateW.level == i2) {
            return false;
        }
        streamStateW.level = i2;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                z = true;
                break;
        }
        if (z) {
            Events.writeEvent(10, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return true;
    }

    public final boolean updateStreamMuteW(int i, boolean z) {
        boolean z2;
        VolumeDialogController.StreamState streamStateW = streamStateW(i);
        boolean z3 = false;
        if (streamStateW.muted == z) {
            return false;
        }
        streamStateW.muted = z;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                z2 = true;
                break;
            default:
                z2 = false;
                break;
        }
        if (z2) {
            Events.writeEvent(15, Integer.valueOf(i), Boolean.valueOf(z));
        }
        if (z) {
            if (i == 2 || i == 5) {
                z3 = true;
            }
            if (z3) {
                updateRingerModeInternalW(this.mRingerModeObservers.mRingerModeInternal.getValue().intValue());
            }
        }
        return true;
    }

    public final void updateStreamNameMusicShare() {
        int i;
        VolumeDialogController.StreamState streamStateW = streamStateW(3);
        Resources resources = this.mContext.getResources();
        if (isMusicShareEnabled()) {
            i = R.string.volumepanel_music_share;
        } else {
            i = streamStateW.name;
        }
        streamStateW.nameRes = resources.getResourceName(i);
        if (D.BUG) {
            Log.d(TAG, "updateStreamNameMusicShare " + isMusicShareEnabled());
        }
    }

    public final boolean updateStreamRoutedToBluetoothW(int i, boolean z) {
        VolumeDialogController.StreamState streamStateW = streamStateW(i);
        if (streamStateW.routedToBluetooth == z) {
            return false;
        }
        streamStateW.routedToBluetooth = z;
        if (D.BUG) {
            Log.d(TAG, "updateStreamRoutedToBluetoothW stream=" + i + " routedToBluetooth=" + z);
            return true;
        }
        return true;
    }

    public final void updateStreamRoutedToBudsW(BluetoothDevice bluetoothDevice, VolumeDialogController.StreamState streamState) {
        if (bluetoothDevice != null) {
            BluetoothIconUtil bluetoothIconUtil = BluetoothIconUtil.INSTANCE;
            BluetoothIconUtil.SamsungStandard.Companion.getClass();
            ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(Short.valueOf(BluetoothIconUtil.SamsungStandard.Companion.GALAXY_BUDS), Short.valueOf(BluetoothIconUtil.SamsungStandard.Companion.GALAXY_BUDS_LIVE));
            BluetoothIconUtil.INSTANCE.getClass();
            if (BluetoothIconUtil.isSameDeviceIconType(bluetoothDevice, arrayListOf)) {
                streamState.routedToBuds = true;
                streamState.routedToBuds3 = false;
                return;
            } else if (BluetoothIconUtil.isSameDeviceIconType(bluetoothDevice, CollectionsKt__CollectionsKt.arrayListOf(Short.valueOf(BluetoothIconUtil.SamsungStandard.Companion.GALAXY_BUDS3))) && !this.mSoundAssistantChecker.isNeedToChangeBuds3IconToBtIcon) {
                streamState.routedToBuds = false;
                streamState.routedToBuds3 = true;
                return;
            }
        }
        streamState.routedToBuds = false;
        streamState.routedToBuds3 = false;
    }

    public final boolean updateStreamRoutedToHeadsetW(int i, boolean z) {
        VolumeDialogController.StreamState streamStateW = streamStateW(i);
        if (streamStateW.routedToHeadset == z) {
            return false;
        }
        streamStateW.routedToHeadset = z;
        if (D.BUG) {
            Log.d(TAG, "updateStreamRoutedToHeadsetW stream=" + i + " routedToHeadset=" + z);
            return true;
        }
        return true;
    }

    public final boolean updateZenConfig() {
        boolean z;
        boolean z2;
        boolean z3;
        NotificationManager.Policy consolidatedNotificationPolicy = this.mNoMan.getConsolidatedNotificationPolicy();
        int i = consolidatedNotificationPolicy.priorityCategories;
        if ((i & 32) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 64) == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 128) == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean areAllPriorityOnlyRingerSoundsMuted = ZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(consolidatedNotificationPolicy);
        VolumeDialogController.State state = this.mState;
        if (state.disallowAlarms == z && state.disallowMedia == z2 && state.disallowRinger == areAllPriorityOnlyRingerSoundsMuted && state.disallowSystem == z3) {
            return false;
        }
        state.disallowAlarms = z;
        state.disallowMedia = z2;
        state.disallowSystem = z3;
        state.disallowRinger = areAllPriorityOnlyRingerSoundsMuted;
        Events.writeEvent(17, KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("disallowAlarms=", z, " disallowMedia=", z2, " disallowSystem="), z3, " disallowRinger=", areAllPriorityOnlyRingerSoundsMuted));
        return true;
    }

    public final boolean updateZenModeW() {
        int i = Settings.Global.getInt(this.mContext.getContentResolver(), "zen_mode", 0);
        VolumeDialogController.State state = this.mState;
        if (state.zenMode == i) {
            return false;
        }
        state.zenMode = i;
        Events.writeEvent(13, Integer.valueOf(i));
        return true;
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void userActivity() {
        W w = this.mWorker;
        w.removeMessages(13);
        w.sendEmptyMessage(13);
    }

    @Override // com.android.systemui.plugins.VolumeDialogController
    public final void vibrate(VibrationEffect vibrationEffect) {
        this.mVibrator.vibrate(vibrationEffect, SONIFICIATION_VIBRATION_ATTRIBUTES);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class C implements VolumeDialogController.Callbacks {
        public final Map mCallbackMap = new ConcurrentHashMap();

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onAccessibilityModeChanged(Boolean bool) {
            final boolean z;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onAccessibilityModeChanged(Boolean.valueOf(z));
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onCaptionComponentStateChanged(Boolean bool, final Boolean bool2) {
            final boolean z;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$C$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Map.Entry entry2 = entry;
                        boolean z2 = z;
                        ((VolumeDialogController.Callbacks) entry2.getKey()).onCaptionComponentStateChanged(Boolean.valueOf(z2), bool2);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onConfigurationChanged() {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onConfigurationChanged();
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onDismissRequested(final int i) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onDismissRequested(i);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onKeyEvent(final boolean z, final boolean z2) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$C$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Map.Entry entry2 = entry;
                        ((VolumeDialogController.Callbacks) entry2.getKey()).onKeyEvent(z, z2);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onLayoutDirectionChanged(final int i) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onLayoutDirectionChanged(i);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onPlaySound(final int i, final boolean z) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$C$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Map.Entry entry2 = entry;
                        ((VolumeDialogController.Callbacks) entry2.getKey()).onPlaySound(i, z);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onScreenOff() {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onScreenOff();
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowCsdWarning(final int i, final int i2) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onShowCsdWarning(i, i2);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowRequested(final int i, final boolean z, final int i2) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onShowRequested(i, z, i2);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowSafetyWarning(final int i) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onShowSafetyWarning(i);
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowSilentHint() {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onShowSilentHint();
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowVibrateHint() {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onShowVibrateHint();
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onShowVolumeLimiterToast() {
            for (Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new VolumeDialogControllerImpl$$ExternalSyntheticLambda1(entry, 3));
            }
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onStateChanged(VolumeDialogController.State state) {
            System.currentTimeMillis();
            final VolumeDialogController.State copy = state.copy();
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable(this) { // from class: com.android.systemui.volume.VolumeDialogControllerImpl.C.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((VolumeDialogController.Callbacks) entry.getKey()).onStateChanged(copy);
                    }
                });
            }
            String str = Events.TAG;
        }

        @Override // com.android.systemui.plugins.VolumeDialogController.Callbacks
        public final void onPlaySound(final int i, final boolean z, final int i2) {
            for (final Map.Entry entry : ((ConcurrentHashMap) this.mCallbackMap).entrySet()) {
                ((Handler) entry.getValue()).post(new Runnable() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$C$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Map.Entry entry2 = entry;
                        ((VolumeDialogController.Callbacks) entry2.getKey()).onPlaySound(i, z, i2);
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setStreamVolume(int r6, int r7, final java.lang.String r8) {
        /*
            r5 = this;
            r0 = 20
            if (r6 != r0) goto L5
            return
        L5:
            boolean r0 = isMediaStream(r6)
            r1 = 0
            r2 = 0
            android.media.AudioManager r3 = r5.mAudio
            if (r0 == 0) goto L7c
            int r7 = r7 / 10
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.android.systemui.plugins.VolumeDialogController$State r4 = r5.mState
            boolean r4 = r4.dualAudio
            if (r4 == 0) goto L32
            com.android.systemui.volume.util.BluetoothAdapterWrapper r5 = r5.mBluetoothAdapterManager
            java.util.List r0 = r5.getConnectedDevices()
            boolean r5 = r0.isEmpty()
            if (r5 != 0) goto L32
            if (r8 == 0) goto L32
            boolean r5 = r8.isEmpty()
            if (r5 != 0) goto L32
            r5 = 1
            goto L33
        L32:
            r5 = r1
        L33:
            android.util.Pair r4 = new android.util.Pair
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            r4.<init>(r5, r0)
            java.lang.Object r5 = r4.first
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            r0 = 3
            if (r5 == 0) goto L6c
            java.lang.Object r5 = r4.second
            java.util.List r5 = (java.util.List) r5
            java.util.stream.Stream r5 = r5.stream()
            com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda0 r6 = new com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda0
            r6.<init>()
            java.util.stream.Stream r5 = r5.filter(r6)
            java.util.Optional r5 = r5.findFirst()
            java.lang.Object r5 = r5.orElse(r2)
            android.bluetooth.BluetoothDevice r5 = (android.bluetooth.BluetoothDevice) r5
            if (r5 == 0) goto L68
            r3.semSetFineVolume(r5, r0, r7, r1)
            goto L94
        L68:
            r3.semSetFineVolume(r0, r7, r1)
            goto L94
        L6c:
            r5 = 21
            if (r6 != r5) goto L78
            int r5 = r3.semGetPinDevice()
            r3.setFineVolume(r0, r7, r1, r5)
            goto L94
        L78:
            r3.semSetFineVolume(r0, r7, r1)
            goto L94
        L7c:
            r8 = 23
            if (r6 != r8) goto L91
            boolean r8 = r5.mIsBudsTogetherEnabled
            if (r8 == 0) goto L94
            com.android.systemui.volume.util.BluetoothAudioCastWrapper r8 = r5.mBluetoothAudioCastWrapper
            com.samsung.android.bluetooth.SemBluetoothAudioCast r8 = r8.service
            if (r8 == 0) goto L8d
            r8.setAudioSharingDeviceVolume(r2, r7)
        L8d:
            r5.onVolumeChangedW(r6, r1)
            goto L94
        L91:
            r3.setStreamVolume(r6, r7, r1)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumeDialogControllerImpl.setStreamVolume(int, int, java.lang.String):void");
    }
}
