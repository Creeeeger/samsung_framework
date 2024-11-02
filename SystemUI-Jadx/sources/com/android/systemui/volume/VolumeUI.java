package com.android.systemui.volume;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.hardware.display.SemDisplayVolumeListener;
import android.media.AudioManager;
import android.media.VolumePolicy;
import android.media.session.MediaSessionManager;
import android.os.Handler;
import android.util.Log;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.volume.MediaSessions;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.CoreStartable;
import com.android.systemui.Prefs;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.qs.tiles.DndTile;
import com.android.systemui.volume.util.BroadcastReceiverManager;
import com.android.systemui.volume.util.BroadcastReceiverType;
import com.android.systemui.volume.util.DisplayManagerWrapper;
import com.android.systemui.volume.util.SystemServiceExtension;
import com.sec.ims.IMSParameter;
import java.io.PrintWriter;
import java.util.Map;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeUI implements CoreStartable {
    public static final boolean LOGD = Log.isLoggable("VolumeUI", 3);
    public final Context mContext;
    public boolean mEnabled;
    public final VolumeDialogComponent mVolumeComponent;

    public VolumeUI(Context context, VolumeDialogComponent volumeDialogComponent) {
        new Handler();
        this.mContext = context;
        this.mVolumeComponent = volumeDialogComponent;
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.print("mEnabled=");
        printWriter.println(this.mEnabled);
        if (!this.mEnabled) {
            return;
        }
        this.mVolumeComponent.getClass();
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        if (!this.mEnabled) {
            return;
        }
        VolumeDialogComponent volumeDialogComponent = this.mVolumeComponent;
        if (volumeDialogComponent.mConfigChanges.applyNewConfig(volumeDialogComponent.mContext.getResources())) {
            volumeDialogComponent.mController.mCallbacks.onConfigurationChanged();
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        boolean z;
        Context context = this.mContext;
        boolean z2 = context.getResources().getBoolean(R.bool.enable_volume_ui);
        boolean z3 = context.getResources().getBoolean(R.bool.enable_safety_warning);
        final int i = 0;
        final int i2 = 1;
        if (!z2 && !z3) {
            z = false;
        } else {
            z = true;
        }
        this.mEnabled = z;
        if (!z) {
            return;
        }
        VolumeDialogComponent volumeDialogComponent = this.mVolumeComponent;
        VolumeDialogControllerImpl volumeDialogControllerImpl = volumeDialogComponent.mController;
        volumeDialogControllerImpl.mShowVolumeDialog = z2;
        volumeDialogControllerImpl.mShowSafetyWarning = z3;
        Intent intent = DndTile.DND_SETTINGS;
        Prefs.putBoolean(context, "DndTileVisible", true);
        if (LOGD) {
            Log.d("VolumeUI", "Registering default volume controller");
        }
        final VolumeDialogControllerImpl volumeDialogControllerImpl2 = volumeDialogComponent.mController;
        AudioManager audioManager = volumeDialogControllerImpl2.mAudio;
        String str = VolumeDialogControllerImpl.TAG;
        try {
            audioManager.setVolumeController(volumeDialogControllerImpl2.mVolumeController);
        } catch (SecurityException e) {
            Log.w(str, "Unable to set the volume controller", e);
        }
        VolumePolicy volumePolicy = volumeDialogControllerImpl2.mVolumePolicy;
        volumeDialogControllerImpl2.mVolumePolicy = volumePolicy;
        if (volumePolicy != null) {
            try {
                audioManager.setVolumePolicy(volumePolicy);
            } catch (NoSuchMethodError unused) {
                Log.w(str, "No volume policy api");
            }
        }
        if (D.BUG) {
            Log.d(VolumeDialogControllerImpl.TAG, "showDndTile");
        }
        Intent intent2 = DndTile.DND_SETTINGS;
        Prefs.putBoolean(volumeDialogControllerImpl2.mContext, "DndTileVisible", true);
        DumpManager dumpManager = volumeDialogControllerImpl2.mDumpManager;
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "VolumeDialogControllerImpl", volumeDialogControllerImpl2);
        try {
            MediaSessions mediaSessions = volumeDialogControllerImpl2.mMediaSessions;
            mediaSessions.getClass();
            MediaSessions.H h = mediaSessions.mHandler;
            if (com.android.settingslib.volume.D.BUG) {
                Log.d(MediaSessions.TAG, "init");
            }
            MediaSessions.AnonymousClass1 anonymousClass1 = mediaSessions.mSessionsListener;
            MediaSessionManager mediaSessionManager = mediaSessions.mMgr;
            mediaSessionManager.addOnActiveSessionsChangedListener(anonymousClass1, null, h);
            mediaSessions.mInit = true;
            h.sendEmptyMessage(1);
            mediaSessionManager.registerRemoteSessionCallback(mediaSessions.mHandlerExecutor, mediaSessions.mRemoteSessionCallback);
        } catch (SecurityException e2) {
            Log.w(str, "No access to media sessions", e2);
        }
        final Consumer consumer = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i3 = 1;
                switch (i) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i4 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i4 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i3 = i4;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i3);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i5 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i5 != 0 && i5 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        final Consumer consumer2 = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i3 = 1;
                switch (i2) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i4 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i4 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i3 = i4;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i3);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i5 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i5 != 0 && i5 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        final BroadcastReceiverManager broadcastReceiverManager = volumeDialogControllerImpl2.mBroadcastReceiverManager;
        BroadcastReceiverManager.BroadcastReceiverItem broadcastReceiverItem = (BroadcastReceiverManager.BroadcastReceiverItem) broadcastReceiverManager.broadcastReceiverItemMap.get(BroadcastReceiverType.DISPLAY_MANAGER);
        if (broadcastReceiverItem != null) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.volume.util.BroadcastReceiverManager$registerDisplayManagerStateAction$1$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent3) {
                    boolean z4;
                    String action = intent3.getAction();
                    if (action != null) {
                        int hashCode = action.hashCode();
                        boolean z5 = true;
                        if (hashCode != -1061859923) {
                            if (hashCode != 1735215423) {
                                if (hashCode == 1886075268 && action.equals("com.samsung.intent.action.DLNA_STATUS_CHANGED")) {
                                    if (intent3.getIntExtra(IMSParameter.CALL.STATUS, 0) != 1) {
                                        z5 = false;
                                    }
                                    consumer2.accept(Boolean.valueOf(z5));
                                    broadcastReceiverManager.logWrapper.d("BroadcastManager", "onReceive : SmartView action=" + intent3.getAction() + ", dlnaEnabled=" + z5);
                                    return;
                                }
                                return;
                            }
                            if (!action.equals("com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED")) {
                                return;
                            }
                        } else if (!action.equals("com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE")) {
                            return;
                        }
                        int intExtra = intent3.getIntExtra("state", 0);
                        boolean booleanExtra = intent3.getBooleanExtra("isSupportDisplayVolumeControl", false);
                        Consumer consumer3 = consumer;
                        if (intExtra == 1 && booleanExtra) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        consumer3.accept(Boolean.valueOf(z4));
                        LogWrapper logWrapper = broadcastReceiverManager.logWrapper;
                        String action2 = intent3.getAction();
                        if (intExtra != 1 || !booleanExtra) {
                            z5 = false;
                        }
                        logWrapper.d("BroadcastManager", KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("onReceive : SmartView action=", action2, ", state=", intExtra, ", isSupportDisplayVolumeControl="), booleanExtra, ", ret=", z5));
                    }
                }
            };
            BroadcastDispatcher.registerReceiver$default(broadcastReceiverManager.broadcastDispatcher, broadcastReceiver, broadcastReceiverItem.intentFilter, null, null, 0, null, 60);
            broadcastReceiverItem.receiver = broadcastReceiver;
            Unit unit = Unit.INSTANCE;
        }
        final int i3 = 2;
        final Consumer consumer3 = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i32 = 1;
                switch (i3) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i4 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i4 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i32 = i4;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i32);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i5 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i5 != 0 && i5 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        final DisplayManagerWrapper displayManagerWrapper = volumeDialogControllerImpl2.mDisplayManagerWrapper;
        displayManagerWrapper.getClass();
        SemDisplayVolumeListener semDisplayVolumeListener = new SemDisplayVolumeListener() { // from class: com.android.systemui.volume.util.DisplayManagerWrapper$registerDisplayVolumeListener$1
            public final void onVolumeChanged(int i4, int i5, int i6, boolean z4) {
                DisplayManagerWrapper displayManagerWrapper2 = DisplayManagerWrapper.this;
                displayManagerWrapper2.displayCurrentVolume = i6;
                displayManagerWrapper2.minSmartViewVol = i4;
                displayManagerWrapper2.maxSmartViewVol = i5;
                LogWrapper logWrapper = displayManagerWrapper2.logWrapper;
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onDisplayVolumeChanged : curVol = ", i6, ", minVol = ", i4, ", maxVol = ");
                m.append(i5);
                m.append(", mute=");
                m.append(z4);
                logWrapper.d("DisplayManagerWrapper", m.toString());
                consumer3.accept(Boolean.valueOf(z4));
            }
        };
        SystemServiceExtension.INSTANCE.getClass();
        SystemServiceExtension.getDisplayManager(displayManagerWrapper.context).semRegisterDisplayVolumeListener(semDisplayVolumeListener, new Handler());
        final int i4 = 3;
        final Consumer consumer4 = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i32 = 1;
                switch (i4) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i42 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i42 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i32 = i42;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i32);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i5 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i5 != 0 && i5 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        final VolumeDialogControllerImpl$$ExternalSyntheticLambda1 volumeDialogControllerImpl$$ExternalSyntheticLambda1 = new VolumeDialogControllerImpl$$ExternalSyntheticLambda1(volumeDialogControllerImpl2, 1);
        Map map = broadcastReceiverManager.broadcastReceiverItemMap;
        BroadcastReceiverManager.BroadcastReceiverItem broadcastReceiverItem2 = (BroadcastReceiverManager.BroadcastReceiverItem) map.get(BroadcastReceiverType.BUDS_TOGETHER);
        if (broadcastReceiverItem2 != null) {
            BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.android.systemui.volume.util.BroadcastReceiverManager$registerAudioSharingStateAction$1$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent3) {
                    String action = intent3.getAction();
                    boolean z4 = false;
                    if (Intrinsics.areEqual(action, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_MODE_CHANGED")) {
                        if (intent3.getIntExtra("com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_MODE", 0) == 1) {
                            z4 = true;
                        }
                        consumer4.accept(Boolean.valueOf(z4));
                        volumeDialogControllerImpl$$ExternalSyntheticLambda1.run();
                        broadcastReceiverManager.logWrapper.d("BroadcastManager", "onReceive : " + action + " " + z4);
                        return;
                    }
                    if (Intrinsics.areEqual(action, "com.samsung.android.bluetooth.audiocast.action.device.AUDIO_SHARING_DEVICE_VOLUME_CHANGED")) {
                        int intExtra = intent3.getIntExtra("com.samsung.android.bluetooth.cast.extra.AUDIO_SHARING_DEVICE_VOLUME", 0);
                        volumeDialogControllerImpl$$ExternalSyntheticLambda1.run();
                        broadcastReceiverManager.logWrapper.d("BroadcastManager", "onReceive : " + action + " " + intExtra);
                    }
                }
            };
            BroadcastDispatcher.registerReceiver$default(broadcastReceiverManager.broadcastDispatcher, broadcastReceiver2, broadcastReceiverItem2.intentFilter, null, null, 0, null, 60);
            broadcastReceiverItem2.receiver = broadcastReceiver2;
            Unit unit2 = Unit.INSTANCE;
        }
        final int i5 = 4;
        final Consumer consumer5 = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i32 = 1;
                switch (i5) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i42 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i42 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i32 = i42;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i32);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i52 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i52 != 0 && i52 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        final VolumeDialogControllerImpl$$ExternalSyntheticLambda1 volumeDialogControllerImpl$$ExternalSyntheticLambda12 = new VolumeDialogControllerImpl$$ExternalSyntheticLambda1(volumeDialogControllerImpl2, 2);
        BroadcastReceiverManager.BroadcastReceiverItem broadcastReceiverItem3 = (BroadcastReceiverManager.BroadcastReceiverItem) map.get(BroadcastReceiverType.MUSIC_SHARE);
        if (broadcastReceiverItem3 != null) {
            BroadcastReceiver broadcastReceiver3 = new BroadcastReceiver() { // from class: com.android.systemui.volume.util.BroadcastReceiverManager$registerMusicShareStateAction$1$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent3) {
                    String action = intent3.getAction();
                    if (Intrinsics.areEqual(action, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED")) {
                        boolean z4 = false;
                        if (intent3.getIntExtra("com.samsung.android.bluetooth.cast.extra.STATE", 0) == 2) {
                            z4 = true;
                        }
                        consumer5.accept(Boolean.valueOf(z4));
                        volumeDialogControllerImpl$$ExternalSyntheticLambda12.run();
                        broadcastReceiverManager.logWrapper.d("BroadcastManager", "onReceive : " + action + " " + z4);
                    }
                }
            };
            BroadcastDispatcher.registerReceiver$default(broadcastReceiverManager.broadcastDispatcher, broadcastReceiver3, broadcastReceiverItem3.intentFilter, null, null, 0, null, 60);
            broadcastReceiverItem3.receiver = broadcastReceiver3;
            Unit unit3 = Unit.INSTANCE;
        }
        final int i6 = 5;
        final Consumer consumer6 = new Consumer() { // from class: com.android.systemui.volume.VolumeDialogControllerImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z4;
                int i32 = 1;
                switch (i6) {
                    case 0:
                        volumeDialogControllerImpl2.mIsSupportTvVolumeControl = (Boolean) obj;
                        return;
                    case 1:
                        volumeDialogControllerImpl2.mIsDLNAEnabled = (Boolean) obj;
                        return;
                    case 2:
                        VolumeDialogControllerImpl volumeDialogControllerImpl3 = volumeDialogControllerImpl2;
                        Boolean bool = (Boolean) obj;
                        if (volumeDialogControllerImpl3.streamStateW(20).muted != bool.booleanValue()) {
                            volumeDialogControllerImpl3.updateStreamMuteW(20, bool.booleanValue());
                        }
                        if (volumeDialogControllerImpl3.mIsVolumeDialogShowing) {
                            int i42 = volumeDialogControllerImpl3.mSmartViewFlag;
                            if (i42 != VolumeDialogControllerImpl.FLAG_SMART_VIEW_NONE) {
                                i32 = i42;
                            }
                            volumeDialogControllerImpl3.onVolumeChangedW(20, i32);
                            if (volumeDialogControllerImpl3.isSmartViewEnabled()) {
                                volumeDialogControllerImpl3.mCallbacks.onStateChanged(volumeDialogControllerImpl3.mState);
                                return;
                            }
                            return;
                        }
                        return;
                    case 3:
                        VolumeDialogControllerImpl volumeDialogControllerImpl4 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl4.getClass();
                        volumeDialogControllerImpl4.mIsBudsTogetherEnabled = ((Boolean) obj).booleanValue();
                        return;
                    case 4:
                        VolumeDialogControllerImpl volumeDialogControllerImpl5 = volumeDialogControllerImpl2;
                        volumeDialogControllerImpl5.getClass();
                        volumeDialogControllerImpl5.mIsMusicShareEnabled = ((Boolean) obj).booleanValue();
                        return;
                    default:
                        VolumeDialogControllerImpl volumeDialogControllerImpl6 = volumeDialogControllerImpl2;
                        int i52 = volumeDialogControllerImpl6.mWakefulnessLifecycle.mWakefulness;
                        if (i52 != 0 && i52 != 3 && volumeDialogControllerImpl6.mDeviceInteractive) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        volumeDialogControllerImpl6.mState.aodEnabled = z4;
                        if (z4) {
                            volumeDialogControllerImpl6.onVolumeChangedW(3, 1);
                            return;
                        }
                        return;
                }
            }
        };
        BroadcastReceiverManager.BroadcastReceiverItem broadcastReceiverItem4 = (BroadcastReceiverManager.BroadcastReceiverItem) map.get(BroadcastReceiverType.AOD);
        if (broadcastReceiverItem4 != null) {
            BroadcastReceiver broadcastReceiver4 = new BroadcastReceiver() { // from class: com.android.systemui.volume.util.BroadcastReceiverManager$registerAODShowAction$1$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent3) {
                    int intExtra;
                    if (Intrinsics.areEqual(intent3.getAction(), "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE") && (intExtra = intent3.getIntExtra("info", -1)) == 18) {
                        consumer6.accept(Boolean.TRUE);
                        broadcastReceiverManager.logWrapper.d("BroadcastManager", "onReceive : " + intExtra + ", long press on AOD state true");
                    }
                }
            };
            BroadcastDispatcher.registerReceiver$default(broadcastReceiverManager.broadcastDispatcher, broadcastReceiver4, broadcastReceiverItem4.intentFilter, null, null, 0, null, 60);
            broadcastReceiverItem4.receiver = broadcastReceiver4;
            Unit unit4 = Unit.INSTANCE;
        }
        Prefs.putBoolean(volumeDialogComponent.mContext, "DndTileCombinedIcon", true);
    }
}
