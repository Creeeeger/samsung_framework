package com.android.systemui.wallpaper;

import android.app.IWallpaperManager;
import android.app.IWallpaperManagerCallback;
import android.app.SemWallpaperColors;
import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.Prefs;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorCallback;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.pluginlock.PluginLockUtils;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.pluginlock.PluginWallpaperManagerImpl;
import com.android.systemui.pluginlock.component.PluginLockWallpaper;
import com.android.systemui.pluginlock.component.PluginWallpaperCallback;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.Assert;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.wallpaper.colors.ColorData;
import com.android.systemui.wallpaper.colors.KeyguardWallpaperColors;
import com.android.systemui.wallpaper.colors.SystemWallpaperColors;
import com.android.systemui.wallpaper.log.WallpaperLogger;
import com.android.systemui.wallpaper.log.WallpaperLoggerImpl;
import com.android.systemui.wallpaper.utils.WhichChecker;
import com.android.systemui.wallpaper.view.KeyguardAnimatedWallpaper;
import com.android.systemui.wallpaper.view.KeyguardBlurredWallpaper;
import com.android.systemui.wallpaper.view.KeyguardImageWallpaper;
import com.android.systemui.wallpaper.view.KeyguardLiveWallpaper;
import com.android.systemui.wallpaper.view.KeyguardMotionWallpaper;
import com.android.systemui.wallpaper.view.KeyguardTransitionWallpaper;
import com.android.systemui.wallpaper.view.KeyguardVideoWallpaper;
import com.android.systemui.wallpaper.view.SystemUIWallpaper;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import com.samsung.android.displaysolution.SemDisplaySolutionManager;
import com.samsung.android.graphics.SemGfxImageFilter;
import com.samsung.systemui.splugins.pluginlock.PluginLock;
import com.sec.ims.IMSParameter;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardWallpaperController extends IWallpaperManagerCallback.Stub implements KeyguardWallpaper, PluginWallpaperCallback {
    public static KeyguardWallpaperController sController;
    public final SemGfxImageFilter mBlurFilter;
    public KeyguardBlurredWallpaper mBlurredView;
    public int mBottom;
    public final Context mContext;
    public DlsRestoreDispatcher mDlsRestoreDispatcher;
    public final DozeParameters mDozeParameters;
    public boolean mIsLockscreenDisabled;
    public final AnonymousClass3 mKnoxStateCallback;
    public final LockPatternUtils mLockPatternUtils;
    public final Handler mMainHandler;
    public MultiPackDispatcher mMultiPackDispatcher;
    public Consumer mNoSensorConsumer;
    public final WallpaperChangeObserver mObserver;
    public int mOldLockScreenWallpaperSettingsValue;
    public int mOldLockScreenWallpaperSubSettingsValue;
    public int mOldTransparentType;
    public SystemUIWallpaperBase mOldWallpaperView;
    public final PluginLockUtils mPluginLockUtils;
    public final PluginWallpaperManager mPluginWallpaperManager;
    public ViewGroup mRootView;
    public KeyguardWallpaperController$$ExternalSyntheticLambda9 mRunnableCleanUp;
    public KeyguardWallpaperController$$ExternalSyntheticLambda7 mRunnableSetBackground;
    public KeyguardWallpaperController$$ExternalSyntheticLambda2 mRunnableUpdate;
    public boolean mScreenOn;
    public final SemDisplaySolutionManager mSemDisplaySolutionManager;
    public final IWallpaperManager mService;
    public final SettingsHelper mSettingsHelper;
    public final SystemWallpaperColors mSystemWallpaperColors;
    public final AnonymousClass4 mTransitionAnimationListener;
    public final AnonymousClass5 mTransitionListener;
    public SystemUIWallpaperBase mTransitionView;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final WallpaperAnalytics mWallpaperAnalytics;
    public final WallpaperChangeNotifier mWallpaperChangeNotifier;
    public final WallpaperEventNotifier mWallpaperEventNotifier;
    public final WallpaperLogger mWallpaperLogger;
    public final WallpaperManager mWallpaperManager;
    public final AnonymousClass2 mWallpaperResultCallback;
    public SystemUIWallpaperBase mWallpaperView;
    public Consumer mWcgConsumer;
    public final AnonymousClass6 mWorkHandler;
    public boolean mIsKeyguardShowing = false;
    public boolean mOccluded = false;
    public boolean mIsGoingToSleep = false;
    public boolean mIsFingerPrintTouchDown = false;
    public int mVisibility = 4;
    public boolean mIsPendingTypeChange = false;
    public boolean mIsPendingTypeChangeForTransition = false;
    public boolean mPendingRotationForTransitionView = false;
    public boolean mDismissCancelled = false;
    public int mCurrentUserId = 0;
    public boolean mIsBlurredViewAdded = false;
    public boolean mBouncer = false;
    public boolean mWallpaperChanged = false;
    public int mDlsViewMode = 0;
    public final AnonymousClass1 mColorProvider = new Provider() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController.1
        @Override // javax.inject.Provider
        public final Object get() {
            KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
            keyguardWallpaperController.getClass();
            boolean z = WallpaperUtils.mIsUltraPowerSavingMode;
            boolean z2 = WallpaperUtils.mIsEmergencyMode;
            if (!z && !z2) {
                SemWallpaperColors semWallpaperColors = keyguardWallpaperController.mWallpaperEventNotifier.getSemWallpaperColors(false);
                if (semWallpaperColors == null) {
                    SemWallpaperColors wallpaperColors = keyguardWallpaperController.getWallpaperColors(false);
                    if (wallpaperColors == null) {
                        Log.d("KeyguardWallpaperController", "getHints: getBlankWallpaperColors!");
                        return SemWallpaperColors.getBlankWallpaperColors();
                    }
                    return wallpaperColors;
                }
                return semWallpaperColors;
            }
            return SemWallpaperColors.getBlankWallpaperColors();
        }
    };
    public boolean mIsPluginLockReady = false;
    public final ExecutorService mExecutor = Executors.newFixedThreadPool(2);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallpaper.KeyguardWallpaperController$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallpaper.KeyguardWallpaperController$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }

        public final void onDrawCompleted() {
            KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
            StringBuilder sb = new StringBuilder("onDrawCompleted: mIsPendingTypeChangeForTransition = ");
            KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.this;
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, keyguardWallpaperController2.mIsPendingTypeChangeForTransition, "KeyguardWallpaperController");
            if (keyguardWallpaperController2.mIsPendingTypeChangeForTransition) {
                keyguardWallpaperController2.mMainHandler.postAtFrontOfQueue(keyguardWallpaperController2.mRunnableSetBackground);
                keyguardWallpaperController2.mIsPendingTypeChangeForTransition = false;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallpaper.KeyguardWallpaperController$8, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass8 {
        public AnonymousClass8() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.wallpaper.KeyguardWallpaperController$9, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass9 {
        public AnonymousClass9() {
        }

        public final void onMultipackApplied(int i, int i2) {
            String str;
            String str2;
            boolean z;
            KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
            if (i == 0) {
                if (i2 == 0) {
                    str2 = "lockscreen_wallpaper";
                } else {
                    str2 = "lockscreen_wallpaper_sub";
                }
                Settings.System.putInt(keyguardWallpaperController.mContext.getContentResolver(), str2, 1);
                StringBuilder sb = new StringBuilder("put settings ");
                SettingsHelper settingsHelper = keyguardWallpaperController.mSettingsHelper;
                if (i2 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(settingsHelper.isLiveWallpaperEnabled(z));
                keyguardWallpaperController.printLognAddHistory(sb.toString());
            }
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            str = "UNKNOWN";
                        } else {
                            str = "APPLY_MULTIPACK_RESULT_FAIL_DLS_INTERNAL_ERROR";
                        }
                    } else {
                        str = "APPLY_MULTIPACK_RESULT_FAIL_LIVE_WALLPAPER";
                    }
                } else {
                    str = "APPLY_MULTIPACK_RESULT_FAIL_RETRY_COUNT_OVER";
                }
            } else {
                str = "APPLY_MULTIPACK_RESULT_SUCCESS";
            }
            String concat = "onMultipackApplied: reason = ".concat(str);
            KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.sController;
            keyguardWallpaperController.printLognAddHistory(concat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.wallpaper.KeyguardWallpaperController$1] */
    /* JADX WARN: Type inference failed for: r7v2, types: [com.android.systemui.wallpaper.KeyguardWallpaperController$2] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.android.systemui.knox.KnoxStateMonitorCallback, com.android.systemui.wallpaper.KeyguardWallpaperController$3] */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.android.systemui.wallpaper.KeyguardWallpaperController$6] */
    public KeyguardWallpaperController(Context context, WallpaperManager wallpaperManager, KeyguardUpdateMonitor keyguardUpdateMonitor, PluginWallpaperManager pluginWallpaperManager, PluginLockUtils pluginLockUtils, SettingsHelper settingsHelper, WakefulnessLifecycle wakefulnessLifecycle, WallpaperLogger wallpaperLogger, WallpaperEventNotifier wallpaperEventNotifier, SystemWallpaperColors systemWallpaperColors, DozeParameters dozeParameters, ConfigurationController configurationController, KeyguardFoldController keyguardFoldController, WallpaperChangeObserver wallpaperChangeObserver, KeyguardWallpaperEventHandler keyguardWallpaperEventHandler, WallpaperChangeNotifier wallpaperChangeNotifier) {
        boolean z;
        boolean z2;
        this.mOldLockScreenWallpaperSettingsValue = -1;
        this.mOldLockScreenWallpaperSubSettingsValue = -1;
        HandlerThread handlerThread = new HandlerThread("KeyguardWallpaperThread");
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mWallpaperResultCallback = new WallpaperResultCallback() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController.2
            @Override // com.android.systemui.wallpaper.WallpaperResultCallback
            public final void onDrawFinished() {
                KeyguardBlurredWallpaper keyguardBlurredWallpaper;
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                StringBuilder sb = new StringBuilder("onDrawFinished: chaged = ");
                KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.this;
                NotificationListener$$ExternalSyntheticOutline0.m(sb, keyguardWallpaperController2.mWallpaperChanged, "KeyguardWallpaperController");
                if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed() && (keyguardBlurredWallpaper = keyguardWallpaperController2.mBlurredView) != null && keyguardWallpaperController2.mWallpaperChanged) {
                    keyguardBlurredWallpaper.update();
                    keyguardWallpaperController2.mWallpaperChanged = false;
                }
            }

            @Override // com.android.systemui.wallpaper.WallpaperResultCallback
            public final void onPreviewReady() {
                boolean z3;
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
                keyguardWallpaperController.mObserver.updateState(2);
                boolean z4 = false;
                if (LsRune.KEYGUARD_FBE && keyguardWallpaperController.isPluginLockFbeCondition()) {
                    if (((PluginWallpaperManagerImpl) keyguardWallpaperController.mPluginWallpaperManager).isFbeWallpaperAvailable(PluginWallpaperManager.getScreenId(WallpaperUtils.sCurrentWhich))) {
                        if (KeyguardUpdateMonitor.getCurrentUser() != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!z3) {
                            Log.d("KeyguardWallpaperController", "isFbeWallpaperInDisplay: true");
                            z4 = true;
                        }
                    }
                }
                if (z4) {
                    int screenId = PluginWallpaperManager.getScreenId(WallpaperUtils.sCurrentWhich);
                    SemWallpaperColors fbeSemWallpaperColors = ((PluginWallpaperManagerImpl) keyguardWallpaperController.mPluginWallpaperManager).getFbeSemWallpaperColors(screenId);
                    KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.sController;
                    Log.i("KeyguardWallpaperController", "onPreviewReady" + fbeSemWallpaperColors + " , screenId = " + screenId);
                    keyguardWallpaperController.onWallpaperHintUpdate(fbeSemWallpaperColors);
                }
            }

            @Override // com.android.systemui.wallpaper.WallpaperResultCallback
            public final void onDelegateBitmapReady(Bitmap bitmap) {
            }
        };
        ?? r7 = new KnoxStateMonitorCallback() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController.3
            @Override // com.android.systemui.knox.KnoxStateMonitorCallback
            public final void onEnableMDMWallpaper() {
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.this;
                keyguardWallpaperController2.printLognAddHistory("onEnableMDMWallpaper");
                keyguardWallpaperController2.sendUpdateWallpaperMessage(605);
            }

            @Override // com.android.systemui.knox.KnoxStateMonitorCallback
            public final void onMDMWallpaperChanged() {
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                KeyguardWallpaperController keyguardWallpaperController2 = KeyguardWallpaperController.this;
                keyguardWallpaperController2.printLognAddHistory("onMDMWallpaperChanged");
                keyguardWallpaperController2.sendUpdateWallpaperMessage(VolteConstants.ErrorCode.NOT_ACCEPTABLE2);
            }
        };
        this.mKnoxStateCallback = r7;
        this.mTransitionAnimationListener = new AnonymousClass4();
        this.mTransitionListener = new AnonymousClass5();
        Log.d("KeyguardWallpaperController", "KeyguardWallpaperController()");
        this.mContext = context;
        this.mWallpaperManager = wallpaperManager;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mWallpaperLogger = wallpaperLogger;
        this.mDozeParameters = dozeParameters;
        this.mObserver = wallpaperChangeObserver;
        handlerThread.start();
        handlerThread.setPriority(10);
        final ?? r9 = new Handler(handlerThread.getLooper()) { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController.6
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:351:0x02f0  */
            /* JADX WARN: Removed duplicated region for block: B:354:0x02fb  */
            /* JADX WARN: Removed duplicated region for block: B:356:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:357:0x02f3  */
            @Override // android.os.Handler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void handleMessage(android.os.Message r13) {
                /*
                    Method dump skipped, instructions count: 2028
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.KeyguardWallpaperController.AnonymousClass6.handleMessage(android.os.Message):void");
            }
        };
        this.mWorkHandler = r9;
        this.mPluginWallpaperManager = pluginWallpaperManager;
        this.mPluginLockUtils = pluginLockUtils;
        this.mSettingsHelper = settingsHelper;
        WallpaperUtils.mSettingsHelper = settingsHelper;
        WallpaperUtils.loadDeviceState(context.getUserId(), context);
        this.mWallpaperEventNotifier = wallpaperEventNotifier;
        this.mSystemWallpaperColors = systemWallpaperColors;
        this.mLockPatternUtils = new LockPatternUtils(context);
        IWallpaperManager asInterface = IWallpaperManager.Stub.asInterface(ServiceManager.getService("wallpaper"));
        this.mService = asInterface;
        this.mSemDisplaySolutionManager = (SemDisplaySolutionManager) context.getSystemService("DisplaySolution");
        this.mWallpaperChangeNotifier = wallpaperChangeNotifier;
        WallpaperAnalytics wallpaperAnalytics = new WallpaperAnalytics(context, pluginWallpaperManager, settingsHelper);
        this.mWallpaperAnalytics = wallpaperAnalytics;
        SharedPreferences sharedPreferences = wallpaperAnalytics.mContext.getSharedPreferences("wallpaper_pref", 0);
        int i = sharedPreferences.getInt("version", -1);
        if (i >= 1) {
            z = true;
        } else {
            Log.i("WallpaperAnalytics", "migrateIfNeeds: perform migration. from=" + i + ", to=1");
            wallpaperAnalytics.updateWallpaperStatus(6);
            wallpaperAnalytics.updateWallpaperStatus(5);
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
                wallpaperAnalytics.updateWallpaperStatus(18);
                wallpaperAnalytics.updateWallpaperStatus(17);
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            z = true;
            edit.putInt("version", 1);
            edit.apply();
        }
        context.registerReceiver(new BroadcastReceiver() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController.7
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                int intExtra = intent.getIntExtra("which", 0);
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.sController;
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m("onReceive: system wallpaper has been changed. which = ", intExtra, "KeyguardWallpaperController");
                if (intExtra > 0) {
                    Message obtainMessage = obtainMessage(1003);
                    obtainMessage.arg1 = intExtra;
                    sendMessage(obtainMessage);
                }
            }
        }, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
        this.mOldTransparentType = settingsHelper.getLockscreenWallpaperTransparent();
        this.mBlurFilter = new SemGfxImageFilter();
        this.mOldLockScreenWallpaperSettingsValue = settingsHelper.getLockscreenWallpaperType(0);
        this.mOldLockScreenWallpaperSubSettingsValue = settingsHelper.getLockscreenWallpaperType(16);
        if (asInterface == null) {
            Log.e("KeyguardWallpaperController", "WallpaperManagerService is not ready yet! Just return here!");
            return;
        }
        keyguardWallpaperEventHandler.mEventConsumer = new Consumer() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                r9.sendMessage((Message) obj);
            }
        };
        new Thread(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 0), "LockWallpaperCB").start();
        ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).registerCallback(r7);
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) ((PluginWallpaperManagerImpl) pluginWallpaperManager).mMediator).mLockWallpaper;
        if (pluginLockWallpaper != null) {
            pluginLockWallpaper.mWallpaperUpdateCallback = this;
        }
        sendUpdateWallpaperMessage(607);
        sController = this;
        boolean z3 = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
        if (z3) {
            ((KeyguardFoldControllerImpl) keyguardFoldController).addCallback(new KeyguardFoldController.StateListener() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController$$ExternalSyntheticLambda3
                @Override // com.android.systemui.keyguard.KeyguardFoldController.StateListener
                public final void onFoldStateChanged(boolean z4) {
                    int i2;
                    KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
                    keyguardWallpaperController.getClass();
                    keyguardWallpaperController.printLognAddHistory("onFolderStateChanged: isOpened = " + z4);
                    if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
                        if (!z4) {
                            i2 = 18;
                        } else {
                            i2 = 6;
                        }
                    } else {
                        i2 = 2;
                    }
                    if (WallpaperUtils.sCurrentWhich != i2) {
                        TooltipPopup$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onFolderStateChanged: which = ", i2, ", previous which = "), WallpaperUtils.sCurrentWhich, "KeyguardWallpaperController");
                        WallpaperUtils.sCurrentWhich = i2;
                        keyguardWallpaperController.mIsPendingTypeChange = false;
                        if (keyguardWallpaperController.mRunnableCleanUp != null) {
                            Log.d("KeyguardWallpaperController", "onFolderStateChanged, remove clean-up runnable");
                            keyguardWallpaperController.mMainHandler.removeCallbacks(keyguardWallpaperController.mRunnableCleanUp);
                        }
                        if (keyguardWallpaperController.mRunnableSetBackground != null) {
                            Log.d("KeyguardWallpaperController", "onFolderStateChanged, remove set background runnable");
                            keyguardWallpaperController.mMainHandler.removeCallbacks(keyguardWallpaperController.mRunnableSetBackground);
                        }
                        if (keyguardWallpaperController.mWorkHandler.hasMessages(612)) {
                            Log.d("KeyguardWallpaperController", "onFolderStateChanged, remove MSG_WALLPAPER_DISPLAY_CHANGED");
                            keyguardWallpaperController.mWorkHandler.removeMessages(612);
                        }
                        keyguardWallpaperController.sendUpdateWallpaperMessage(612, true, null);
                    }
                }
            }, 1001);
        }
        try {
            if (asInterface.semGetWallpaperType(6) == 3) {
                z2 = z;
            } else {
                z2 = false;
            }
            if (!z2 && z3 && !LsRune.WALLPAPER_SUB_WATCHFACE) {
                if (asInterface.semGetWallpaperType(18) == 3) {
                    z2 = z;
                } else {
                    z2 = false;
                }
            }
            if (z2 && !MultiPackDispatcher.enableDlsIfDisabled(context)) {
                Log.e("KeyguardWallpaperController", "Failed to enable DLS.");
            }
        } catch (RemoteException e) {
            Log.e("KeyguardWallpaperController", "System dead?" + e);
        }
    }

    public static boolean isMatching(int i, SystemUIWallpaperBase systemUIWallpaperBase) {
        if (systemUIWallpaperBase == null) {
            return false;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1 && i != 2) {
                    if (i != 4) {
                        if (i != 1000) {
                            if (i != 7) {
                                if (i != 8) {
                                    ListPopupWindow$$ExternalSyntheticOutline0.m("isMatching: Invalid type. type = ", i, "KeyguardWallpaperController");
                                } else if (systemUIWallpaperBase instanceof KeyguardVideoWallpaper) {
                                    return true;
                                }
                            } else if (systemUIWallpaperBase instanceof KeyguardLiveWallpaper) {
                                return true;
                            }
                        }
                    } else if (systemUIWallpaperBase instanceof KeyguardAnimatedWallpaper) {
                        return true;
                    }
                } else if (systemUIWallpaperBase instanceof KeyguardMotionWallpaper) {
                    return true;
                }
                return false;
            }
        } else if (!LsRune.WALLPAPER_SUB_WATCHFACE) {
            return false;
        }
        if (!(systemUIWallpaperBase instanceof KeyguardImageWallpaper)) {
            return false;
        }
        return true;
    }

    public static boolean isSubDisplay() {
        if ((WallpaperUtils.sCurrentWhich & 16) != 0) {
            return true;
        }
        return false;
    }

    public final void applyBlur(int i) {
        int i2 = 1;
        if (this.mDlsViewMode == 1) {
            Log.w("KeyguardWallpaperController", "applyBlur: ignored by DLS");
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            showBlurredViewIfNeededOnUiThread();
        } else {
            this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, i2));
        }
        int i3 = 0;
        if (this.mSettingsHelper.isReduceTransparencyEnabled()) {
            i = 0;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            applyBlurInternalOnUiThread(i);
        } else {
            this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda4(this, i, i3));
        }
    }

    public final void applyBlurFilter(int i) {
        Object obj = this.mWallpaperView;
        if (obj != null) {
            KeyguardWallpaperController$$ExternalSyntheticLambda4 keyguardWallpaperController$$ExternalSyntheticLambda4 = new KeyguardWallpaperController$$ExternalSyntheticLambda4((View) obj, i);
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                keyguardWallpaperController$$ExternalSyntheticLambda4.run();
            } else {
                this.mMainHandler.postAtFrontOfQueue(keyguardWallpaperController$$ExternalSyntheticLambda4);
            }
        }
    }

    public final void applyBlurInternalOnUiThread(int i) {
        SystemUIWallpaperBase systemUIWallpaperBase;
        boolean z;
        Assert.isMainThread();
        Log.d("KeyguardWallpaperController", "applyBlurInternal: amount = " + i);
        SystemUIWallpaperBase systemUIWallpaperBase2 = this.mWallpaperView;
        if (systemUIWallpaperBase2 != null) {
            if (i != 0.0f) {
                z = true;
            } else {
                z = false;
            }
            systemUIWallpaperBase2.updateBlurState(z);
        }
        if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed()) {
            KeyguardBlurredWallpaper keyguardBlurredWallpaper = this.mBlurredView;
            if (keyguardBlurredWallpaper != null && this.mIsBlurredViewAdded) {
                keyguardBlurredWallpaper.applyBlur(i);
            } else if (this.mWallpaperView != null) {
                applyBlurFilter(i);
            }
            WallpaperUtils.sLastAmount = i;
            return;
        }
        if (LsRune.WALLPAPER_BLUR && (systemUIWallpaperBase = this.mWallpaperView) != null && !(systemUIWallpaperBase instanceof KeyguardVideoWallpaper)) {
            applyBlurFilter(i);
        }
    }

    public final void cleanUp(boolean z) {
        if (!WallpaperUtils.isAODShowLockWallpaperAndLockDisabled(KeyguardUpdateMonitor.getCurrentUser(), this.mContext)) {
            if (this.mWallpaperView != null) {
                if (this.mRunnableCleanUp != null) {
                    Log.i("KeyguardWallpaperController", "cleanUpOnUiThread, remove runnable");
                    this.mMainHandler.removeCallbacks(this.mRunnableCleanUp);
                }
                KeyguardWallpaperController$$ExternalSyntheticLambda9 keyguardWallpaperController$$ExternalSyntheticLambda9 = new KeyguardWallpaperController$$ExternalSyntheticLambda9(this, z, 0);
                this.mRunnableCleanUp = keyguardWallpaperController$$ExternalSyntheticLambda9;
                this.mMainHandler.postAtFrontOfQueue(keyguardWallpaperController$$ExternalSyntheticLambda9);
            } else {
                Log.d("KeyguardWallpaperController", "cleanUp() is cancelled because view is already null");
            }
        } else {
            Log.d("KeyguardWallpaperController", "cleanUp: DO NOT clean up keyguard wallpaper");
        }
        if (!this.mIsLockscreenDisabled && z) {
            this.mIsLockscreenDisabled = true;
        }
    }

    public final void cleanUpBlurredView() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            cleanUpBlurredViewOnUiThread();
        } else {
            this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 4));
        }
    }

    public final void cleanUpBlurredViewOnUiThread() {
        Assert.isMainThread();
        Log.i("KeyguardWallpaperController", "cleanUpBlurredView: mBlurredView = " + this.mBlurredView);
        KeyguardBlurredWallpaper keyguardBlurredWallpaper = this.mBlurredView;
        if (keyguardBlurredWallpaper != null && this.mIsBlurredViewAdded) {
            keyguardBlurredWallpaper.cleanUp();
            this.mRootView.removeView(this.mBlurredView);
            this.mBlurredView = null;
        }
        this.mIsBlurredViewAdded = false;
    }

    public final void disableRotateIfNeeded() {
        this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 10));
    }

    public final void dump(FileDescriptor fileDescriptor, final PrintWriter printWriter, String[] strArr) {
        SemWallpaperColors semWallpaperColors;
        printWriter.println("KeyguardWallpaperController: ");
        WallpaperEventNotifier wallpaperEventNotifier = this.mWallpaperEventNotifier;
        if (wallpaperEventNotifier != null) {
            printWriter.println("WallpaperEventNotifier:");
            synchronized (wallpaperEventNotifier) {
                final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
                wallpaperEventNotifier.mLogs.forEach(new Consumer() { // from class: com.android.systemui.wallpaper.WallpaperEventNotifier$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        PrintWriter printWriter2 = printWriter;
                        DateFormat dateFormat = simpleDateFormat;
                        WallpaperEventNotifier.DebugLog debugLog = (WallpaperEventNotifier.DebugLog) obj;
                        Date date = new Date(debugLog.time);
                        StringBuilder sb = new StringBuilder("    ");
                        sb.append(dateFormat.format(date));
                        sb.append(": ");
                        KeyboardUI$$ExternalSyntheticOutline0.m(sb, debugLog.text, printWriter2);
                    }
                });
            }
            KeyguardWallpaperColors keyguardWallpaperColors = wallpaperEventNotifier.mKeyguardWallpaperColors;
            keyguardWallpaperColors.getClass();
            printWriter.println("KeyguardWallpaperColors:");
            try {
                StringBuilder sb = new StringBuilder("\tLast wallpaper color = ");
                try {
                    semWallpaperColors = ((ColorData) keyguardWallpaperColors.mSemWallpaperColors.get(KeyguardUpdateMonitor.getCurrentUser())).colors;
                } catch (NullPointerException unused) {
                    semWallpaperColors = null;
                }
                sb.append(semWallpaperColors.toSimpleString());
                sb.append("\n");
                printWriter.println(sb.toString());
            } catch (Exception e) {
                printWriter.println("\nDump error: " + e.getMessage() + "\n");
            }
        }
        MultiPackDispatcher multiPackDispatcher = this.mMultiPackDispatcher;
        if (multiPackDispatcher != null) {
            StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "MultiPackDispatcher", "mLastUri = ");
            m.append(multiPackDispatcher.mLastUri);
            printWriter.println(m.toString());
        }
        boolean z = WallpaperUtils.mIsEmergencyMode;
        printWriter.println("Dump of WallpaperUtils: ");
        printWriter.print("  isAdaptiveColorMode: ");
        printWriter.println(WallpaperUtils.mSettingsHelper.isAdaptiveColorMode());
        printWriter.print("  isExternalLiveWallpaper: ");
        printWriter.println(WallpaperUtils.isExternalLiveWallpaper());
        printWriter.print("  Emergency mode: ");
        printWriter.println(WallpaperUtils.mIsEmergencyMode);
        printWriter.print("  UltraPowerSavingMode: ");
        printWriter.println(WallpaperUtils.mIsUltraPowerSavingMode);
        printWriter.print("  DeXMode: ");
        printWriter.println(false);
        printWriter.print("  Type: ");
        printWriter.println(WallpaperUtils.sWallpaperType);
        printWriter.print("  isVideoWallpaper: ");
        printWriter.println(WallpaperUtils.isVideoWallpaper());
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            printWriter.print("  sCachedWallpaperColors(FLAG_DISPLAY_PHONE): ");
            SparseArray sparseArray = WallpaperUtils.sCachedWallpaperColors;
            printWriter.println(sparseArray.get(4));
            printWriter.print("  sCachedWallpaperColors(FLAG_DISPLAY_SUB): ");
            printWriter.println(sparseArray.get(16));
        }
        printWriter.println();
    }

    public final void forceBroadcastWhiteKeyguardWallpaper(int i) {
        TooltipPopup$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("forceBroadcastWhiteKeyguardWallpaper: cur = ", i, " , old = "), this.mOldTransparentType, "KeyguardWallpaperController");
        if (this.mOldTransparentType == 2 && i != 2) {
            SettingsHelper settingsHelper = this.mSettingsHelper;
            settingsHelper.getClass();
            settingsHelper.broadcastChange(Settings.System.getUriFor("white_lockscreen_wallpaper"));
        }
        this.mOldTransparentType = i;
    }

    public final int getFbeWallpaperType(int i) {
        boolean z;
        if (KeyguardUpdateMonitor.getCurrentUser() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && LsRune.KEYGUARD_FBE && isPluginLockFbeCondition()) {
            int screenId = PluginWallpaperManager.getScreenId(WallpaperUtils.sCurrentWhich);
            if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isFbeWallpaperAvailable(screenId)) {
                if (!((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isFbeWallpaperVideo(screenId)) {
                    return 0;
                }
                return 8;
            }
            return i;
        }
        return i;
    }

    public final SemWallpaperColors.Item getHint(long j, boolean z) {
        SemWallpaperColors blankWallpaperColors;
        SemWallpaperColors.Item item;
        SemWallpaperColors.Item item2;
        boolean z2 = WallpaperUtils.mIsUltraPowerSavingMode;
        boolean z3 = WallpaperUtils.mIsEmergencyMode;
        if (!z2 && !z3) {
            blankWallpaperColors = this.mWallpaperEventNotifier.getSemWallpaperColors(z);
        } else {
            blankWallpaperColors = SemWallpaperColors.getBlankWallpaperColors();
        }
        if (blankWallpaperColors != null && (item2 = blankWallpaperColors.get(j)) != null) {
            return item2;
        }
        SemWallpaperColors wallpaperColors = getWallpaperColors(z);
        if (wallpaperColors != null && (item = wallpaperColors.get(j)) != null) {
            return item;
        }
        Log.d("KeyguardWallpaperController", "getDummyHintItem()");
        return new SemWallpaperColors.Item(0, 1.0f, 0.5f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
    
        if (((com.android.systemui.pluginlock.component.PluginLockWallpaper.PluginLockWallpaperData) ((java.util.ArrayList) r8.mWallpaperDataList).get(r8.getScreenType())).mType != 2) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getLockWallpaperType(boolean r9) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.KeyguardWallpaperController.getLockWallpaperType(boolean):int");
    }

    public final Bitmap getWallpaperBitmap() {
        SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
        if (systemUIWallpaperBase != null) {
            return systemUIWallpaperBase.getWallpaperBitmap();
        }
        return null;
    }

    public final SemWallpaperColors getWallpaperColors(boolean z) {
        int i;
        if (LsRune.WALLPAPER_SUB_WATCHFACE) {
            if (z || isSubDisplay()) {
                i = 17;
            }
            i = 6;
        } else {
            if (isSubDisplay()) {
                i = 18;
            }
            i = 6;
        }
        return this.mWallpaperManager.semGetWallpaperColors(i);
    }

    public final int getWallpaperViewType() {
        int i;
        if (this.mWallpaperView != null && !WallpaperUtils.isLiveWallpaperEnabled()) {
            SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
            if (systemUIWallpaperBase instanceof KeyguardMotionWallpaper) {
                i = 1;
            } else if (systemUIWallpaperBase instanceof KeyguardAnimatedWallpaper) {
                i = 4;
            } else if (systemUIWallpaperBase instanceof KeyguardLiveWallpaper) {
                i = 7;
            } else if (systemUIWallpaperBase instanceof KeyguardVideoWallpaper) {
                i = 8;
            } else {
                i = 0;
            }
        } else {
            i = -1;
        }
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("getWallpaperViewType: type = ", i, "KeyguardWallpaperController");
        return i;
    }

    public final void handleAdaptiveColorModeChanged(boolean z) {
        boolean z2;
        boolean isAdaptiveColorMode;
        SemWallpaperColors semWallpaperColors;
        if (z) {
            z2 = WallpaperUtils.mIsAdaptiveColorModeSub;
        } else {
            z2 = WallpaperUtils.mIsAdaptiveColorMode;
        }
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (z) {
            if (settingsHelper.mItemLists.get("lock_adaptive_color_sub").getIntValue() != 0) {
                isAdaptiveColorMode = true;
            } else {
                isAdaptiveColorMode = false;
            }
        } else {
            isAdaptiveColorMode = settingsHelper.isAdaptiveColorMode();
        }
        if (z2 != isAdaptiveColorMode) {
            if (!z) {
                Context context = this.mContext;
                boolean isAdaptiveColorMode2 = this.mSettingsHelper.isAdaptiveColorMode();
                context.getSharedPreferences("lockscreen_pref", 0).edit().putInt("9010", isAdaptiveColorMode2 ? 1 : 0).apply();
                if (isAdaptiveColorMode2) {
                    context.getSharedPreferences("lockscreen_pref", 0).edit().putString("9009", "Adaptive color (Default)").apply();
                }
            }
            WallpaperEventNotifier wallpaperEventNotifier = this.mWallpaperEventNotifier;
            KeyguardWallpaperColors keyguardWallpaperColors = wallpaperEventNotifier.mKeyguardWallpaperColors;
            int currentUser = KeyguardUpdateMonitor.getCurrentUser();
            keyguardWallpaperColors.getClass();
            try {
                if (z) {
                    semWallpaperColors = ((ColorData) keyguardWallpaperColors.mSemWallpaperColorsCover.get(currentUser)).colors;
                } else {
                    semWallpaperColors = ((ColorData) keyguardWallpaperColors.mSemWallpaperColors.get(currentUser)).colors;
                }
            } catch (NullPointerException unused) {
                semWallpaperColors = null;
            }
            wallpaperEventNotifier.update(z, 2L, semWallpaperColors);
        }
        if (z) {
            WallpaperUtils.mIsAdaptiveColorModeSub = isAdaptiveColorMode;
        } else {
            WallpaperUtils.mIsAdaptiveColorMode = isAdaptiveColorMode;
        }
    }

    public final void handleColorThemeStateChanged(boolean z) {
        int intValue;
        boolean isColorThemeEnabled$1 = this.mSettingsHelper.isColorThemeEnabled$1();
        SettingsHelper.ItemMap itemMap = this.mSettingsHelper.mItemLists;
        if (z) {
            intValue = itemMap.get("lock_adaptive_color_sub").getIntValue();
        } else {
            intValue = itemMap.get("lock_adaptive_color").getIntValue();
        }
        if (isColorThemeEnabled$1) {
            if ((intValue & 2) == 0) {
                this.mSettingsHelper.setAdaptiveColorMode(intValue | 2, z);
            }
        } else if ((intValue & 2) != 0) {
            this.mSettingsHelper.setAdaptiveColorMode(intValue & (-3), z);
        }
        this.mWallpaperEventNotifier.update(z, 1024L, getWallpaperColors(z));
    }

    public final void handleDlsViewMode(int i, boolean z) {
        int i2;
        ListPopupWindow$$ExternalSyntheticOutline0.m("handleDlsViewMode: mode = ", i, "KeyguardWallpaperController");
        if (z || this.mDlsViewMode != i) {
            this.mDlsViewMode = i;
            int i3 = 0;
            if (i == 1 && !this.mSettingsHelper.isReduceTransparencyEnabled()) {
                i2 = 100;
            } else {
                i2 = 0;
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                applyBlurInternalOnUiThread(i2);
            } else {
                this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda4(this, i2, i3));
            }
        }
    }

    public final void handleDlsViewModeDelayed(int i) {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("handleWallpaperTypeChanged mDlsViewMode: "), this.mDlsViewMode, "KeyguardWallpaperController");
        if (this.mDlsViewMode == 1) {
            postDelayed(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 5), i);
        }
    }

    public final void handleWallpaperResourceUpdated() {
        int i;
        boolean z;
        Log.d("KeyguardWallpaperController", "handleWallpaperResourceUpdated");
        boolean z2 = true;
        if (!WallpaperUtils.isAODShowLockWallpaperAndLockDisabled(KeyguardUpdateMonitor.getCurrentUser(), this.mContext) && (this.mIsLockscreenDisabled || WallpaperUtils.isLiveWallpaperEnabled() || this.mRootView == null || this.mWallpaperView == null)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("handleWallpaperResourceUpdated: mIsLockscreenDisabled = " + this.mIsLockscreenDisabled);
                sb.append(", isLiveWallpaperEnabled = " + WallpaperUtils.isLiveWallpaperEnabled());
                StringBuilder sb2 = new StringBuilder(", mRootView == null ? ");
                if (this.mRootView == null) {
                    z = true;
                } else {
                    z = false;
                }
                sb2.append(z);
                sb.append(sb2.toString());
                StringBuilder sb3 = new StringBuilder(", mWallpaperView == null ? ");
                if (this.mWallpaperView != null) {
                    z2 = false;
                }
                sb3.append(z2);
                sb.append(sb3.toString());
                printLognAddHistory(sb.toString());
            } catch (NullPointerException unused) {
                Log.d("KeyguardWallpaperController", "handleWallpaperResourceUpdated: Exception while printing log.");
            }
            this.mObserver.updateState(3);
            if (WallpaperUtils.isExternalLiveWallpaper()) {
                setBackground(null, null, false, true, true);
                return;
            }
            return;
        }
        if (WallpaperUtils.isExternalLiveWallpaper()) {
            setBackground(null, null, false, true, true);
        } else {
            if (this.mRunnableUpdate != null) {
                Log.i("KeyguardWallpaperController", "handleWallpaperResourceUpdated, remove update runnable");
                this.mMainHandler.removeCallbacks(this.mRunnableUpdate);
            }
            this.mObserver.updateState(1);
            KeyguardWallpaperController$$ExternalSyntheticLambda2 keyguardWallpaperController$$ExternalSyntheticLambda2 = new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 13);
            this.mRunnableUpdate = keyguardWallpaperController$$ExternalSyntheticLambda2;
            this.mMainHandler.post(keyguardWallpaperController$$ExternalSyntheticLambda2);
        }
        if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed()) {
            this.mWallpaperChanged = true;
        }
        if (isSubDisplay()) {
            i = 16;
        } else {
            i = 4;
        }
        this.mWallpaperAnalytics.updateWallpaperStatus(i | 2);
    }

    public final void handleWallpaperTypeChanged(int i) {
        if (this.mRootView == null) {
            printLognAddHistory("handleWallpaperTypeChanged: mRootView is null.");
        } else {
            handleWallpaperTypeChanged(i, false);
        }
    }

    public final void hideLockOnlyLiveWallpaperImmediately() {
        SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
        if (systemUIWallpaperBase != null && (systemUIWallpaperBase instanceof KeyguardLiveWallpaper)) {
            Log.d("KeyguardWallpaperController", "hideLockOnlyLiveWallpaperImmediately");
            KeyguardLiveWallpaper.WallpaperConnection wallpaperConnection = ((KeyguardLiveWallpaper) this.mWallpaperView).mWallpaperConnection;
            if (wallpaperConnection != null) {
                wallpaperConnection.setSurfaceAlpha(0.0f);
            }
        }
    }

    public final boolean isPluginLockFbeCondition() {
        boolean z;
        if (KeyguardUpdateMonitor.getCurrentUser() == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && !this.mUpdateMonitor.isUserUnlocked(0)) {
            return true;
        }
        return false;
    }

    public final boolean isStartMultipackCondition() {
        int i;
        int i2;
        boolean z;
        int i3 = 18;
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            if (isSubDisplay()) {
                i = 18;
            } else {
                i = 6;
            }
        } else {
            i = 2;
        }
        if (isWallpaperUpdateFromDls()) {
            Log.d("KeyguardWallpaperController", "isStartMultipackCondition: PluginLock manages lockscreen wallpaper.");
            return false;
        }
        try {
            i2 = this.mService.semGetWallpaperType(i);
        } catch (RemoteException e) {
            Log.e("KeyguardWallpaperController", "System dead?" + e);
            i2 = -1;
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("isStartMultipackCondition: type = ", i2, "KeyguardWallpaperController");
        if (i2 == 3) {
            return true;
        }
        if (i2 == -1) {
            if (WallpaperUtils.isLiveWallpaperEnabled()) {
                Log.d("KeyguardWallpaperController", "isStartMultipackCondition: Live wallpaper is enabled.");
                return false;
            }
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
                if (!isSubDisplay()) {
                    i3 = 6;
                }
            } else {
                i3 = 2;
            }
            if (WallpaperManager.isDefaultOperatorWallpaper(this.mContext, i3)) {
                Log.d("KeyguardWallpaperController", "isStartMultipackCondition: Operator wallpaper.");
                return false;
            }
            if (WallpaperManager.getInstance(this.mContext).getDefaultWallpaperType(WallpaperUtils.sCurrentWhich) == 3) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final boolean isWallpaperUpdateFromDls() {
        boolean z;
        if (KeyguardUpdateMonitor.getCurrentUser() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            if (isSubDisplay()) {
                return Prefs.getBoolean(this.mContext, "WPaperChangedByDlsSub", false);
            }
            return Prefs.getBoolean(this.mContext, "WPaperChangedByDls", false);
        }
        return Prefs.getBoolean(this.mContext, "WPaperChangedByDls", false);
    }

    @Override // com.android.systemui.pluginlock.component.PluginWallpaperCallback
    public final void onDataCleared() {
        printLognAddHistory("onDataCleared()");
        setWallpaperUpdateFromDls(2, false);
        sendUpdateWallpaperMessage(610);
    }

    public final void onPause() {
        if (this.mWallpaperView != null) {
            boolean z = this.mDozeParameters.mControlScreenOffAnimation;
            Log.d("KeyguardWallpaperController", "mWallpaperView.onPause() visibility = " + this.mVisibility + " shouldControlScreenOff = " + z);
            WallpaperUtils.sDrawState = false;
            this.mWallpaperView.updateDrawState(false);
            if (!z) {
                this.mWallpaperView.onPause();
            }
        }
    }

    @Override // com.android.systemui.pluginlock.component.PluginWallpaperCallback
    public final void onReady() {
        printLognAddHistory("onReady()");
        if (this.mIsPluginLockReady) {
            return;
        }
        this.mIsPluginLockReady = true;
        sendUpdateWallpaperMessage(611);
    }

    public final void onResume() {
        Log.d("KeyguardWallpaperController", "mWallpaperView.onResume()");
        this.mExecutor.execute(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 6));
        WallpaperUtils.sDrawState = true;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
            if (systemUIWallpaperBase != null) {
                systemUIWallpaperBase.updateDrawState(true);
                this.mWallpaperView.onResume();
                return;
            }
            return;
        }
        this.mMainHandler.postAtFrontOfQueue(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 7));
    }

    public final void onSemBackupStatusChanged(int i, int i2, int i3) {
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onSemBackupStatusChanged: which = ", i, ", status = ", i2, " , key = ");
        m.append(i3);
        printLognAddHistory(m.toString());
        if (this.mPluginWallpaperManager != null) {
            if ((i & 2) != 0 || i == -1 || (LsRune.WALLPAPER_SUB_WATCHFACE && WhichChecker.isWatchFace(i))) {
                Bundle bundle = new Bundle();
                bundle.putInt("which", i);
                bundle.putInt(IMSParameter.CALL.STATUS, i2);
                bundle.putInt("key", i3);
                sendUpdateWallpaperMessage(609, false, bundle);
                return;
            }
            return;
        }
        printLognAddHistory("onSemBackupStatusChanged: mPluginWallpaperManager is null.");
    }

    public final void onSemMultipackApplied(int i) {
        this.mObserver.updateState(1);
        printLognAddHistory("onSemMultipackApplied: which = " + i);
        Bundle bundle = new Bundle();
        bundle.putInt("which", i);
        sendUpdateWallpaperMessage(613, false, bundle);
    }

    public final void onSemWallpaperChanged(int i, int i2, Bundle bundle) {
        int i3;
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("include_dls", false);
        bundle2.putInt("which", i2);
        printLognAddHistory("onSemWallpaperChanged: type = " + i + ", which = " + i2);
        this.mWallpaperChangeNotifier.notify(i2);
        int i4 = 2;
        if (!WhichChecker.isFlagEnabled(i2, 2)) {
            return;
        }
        if (WhichChecker.isFlagEnabled(i2, 8) && (!LsRune.WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER || !WallpaperUtils.isDexStandAloneMode())) {
            return;
        }
        this.mObserver.updateState(1);
        if (i == 1000) {
            String string = bundle.getString("trigger");
            if (string != null) {
                if (!string.equals("dls")) {
                    if (string.equals("snapshot")) {
                        bundle2.putBoolean("flag", true);
                        Uri semGetUri = this.mWallpaperManager.semGetUri(i2);
                        if (semGetUri != null) {
                            bundle2.putString("type", semGetUri.toString().substring(semGetUri.toString().lastIndexOf("/") + 1));
                        }
                        bundle2.putInt(PluginLock.KEY_SCREEN, WhichChecker.isSubDisplay(i2) ? 1 : 0);
                        sendUpdateWallpaperMessage(1001, false, bundle2);
                        return;
                    }
                    return;
                }
                bundle2.putInt(PluginLock.KEY_SCREEN, WhichChecker.isSubDisplay(i2) ? 1 : 0);
                sendUpdateWallpaperMessage(1002, false, bundle2);
                return;
            }
            return;
        }
        if (i != 3) {
            this.mWallpaperManager.semSetDLSWallpaperColors(null, i2);
            if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled(WhichChecker.isSubDisplay(i2) ? 1 : 0)) {
                if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE && this.mWallpaperEventNotifier.mIsThemeApplying && WallpaperUtils.isSubDisplay(i2)) {
                    this.mMainHandler.postDelayed(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, i4), 1000L);
                    bundle2.putLong("delay", 1000L);
                } else {
                    ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).onLockWallpaperChanged(WallpaperUtils.isSubDisplay(i2) ? 1 : 0);
                }
            }
        }
        if (i == -1) {
            bundle2.putLong("delay", 500L);
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            int i5 = WallpaperUtils.sCurrentWhich;
            if ((i5 & 60) == 0) {
                i5 |= 4;
            }
            if ((i2 & 60) == 0) {
                i3 = i2 | 4;
            } else {
                i3 = i2;
            }
            if (i5 != i3) {
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m("Ignore wallpaper change for not current which : ", i2, "KeyguardWallpaperController");
                return;
            }
        }
        sendUpdateWallpaperMessage(601, false, bundle2);
    }

    public final void onSemWallpaperColorsAnalysisRequested(int i, int i2) {
        removeMessages(906);
        Message obtainMessage = obtainMessage(906);
        Bundle bundle = new Bundle();
        bundle.putInt("which", i);
        bundle.putInt("userid", i2);
        obtainMessage.setData(bundle);
        sendMessage(obtainMessage);
    }

    public final void onSemWallpaperColorsChanged(SemWallpaperColors semWallpaperColors, int i, int i2) {
        boolean z;
        boolean z2;
        int i3;
        int i4;
        if (semWallpaperColors == null) {
            printLognAddHistory("onSemWallpaperColorsChanged: SemWallpaperColors == null");
            return;
        }
        int i5 = i & 2;
        if (i5 == 0) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("set system color which = ", i, ", opacity = ");
            m.append(semWallpaperColors.getDarkModeDimOpacity());
            Log.i("KeyguardWallpaperController", m.toString());
            SystemWallpaperColors systemWallpaperColors = this.mSystemWallpaperColors;
            systemWallpaperColors.getClass();
            Log.d("SystemWallpaperColors", "setColor: which = " + i);
            if ((i & 1) != 0) {
                if ((i & 60) == 0) {
                    i4 = i | 4;
                } else {
                    i4 = i;
                }
                Log.i("SystemWallpaperColors", "setColor : put color for which " + i4 + ", color = " + semWallpaperColors);
                systemWallpaperColors.mSystemWallpaperColors.put(i4, semWallpaperColors);
            }
        }
        if (WhichChecker.isFlagEnabled(i, 8) && !WallpaperUtils.isDexStandAloneMode()) {
            printLognAddHistory("onSemWallpaperColorsChanged: DEX.");
            return;
        }
        boolean z3 = WallpaperUtils.mIsEmergencyMode;
        boolean z4 = LsRune.WALLPAPER_SUB_DISPLAY_MODE;
        if (z4 && !(z = LsRune.WALLPAPER_SUB_WATCHFACE) && z4 && !z) {
            if ((i & 3) == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                SparseArray sparseArray = WallpaperUtils.sCachedWallpaperColors;
                if (WallpaperUtils.isSubDisplay(i)) {
                    i3 = 16;
                } else {
                    i3 = 4;
                }
                sparseArray.put(i3, semWallpaperColors);
            }
        }
        boolean z5 = LsRune.WALLPAPER_SUB_WATCHFACE;
        if (z5) {
            if (i5 == 0 && (i & 16) == 0) {
                printLognAddHistory("onSemWallpaperColorsChanged: Not for lockscreen. which = " + i);
                return;
            } else if (i5 != 0 && (i & 16) != 0) {
                printLognAddHistory("onSemWallpaperColorsChanged: Not avaiable on this model. which = " + i);
                return;
            }
        } else if (LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            if (i5 == 0 && (i & 32) == 0) {
                printLognAddHistory("onSemWallpaperColorsChanged: Not for lockscreen. which = " + i);
                return;
            } else if (i5 != 0 && (i & 32) != 0) {
                printLognAddHistory("onSemWallpaperColorsChanged: Not avaiable on this model. which = " + i);
                return;
            }
        } else if (i5 == 0) {
            printLognAddHistory("onSemWallpaperColorsChanged: Not for lockscreen. which = " + i);
            return;
        }
        if (this.mWallpaperEventNotifier.mIsThemeApplying) {
            printLognAddHistory("onSemWallpaperColorsChanged: Theme is currently applying. Send message later.");
            return;
        }
        boolean z6 = WallpaperUtils.mIsUltraPowerSavingMode;
        boolean z7 = WallpaperUtils.mIsEmergencyMode;
        if (!z6 && !z7) {
            StringBuilder m2 = GridLayoutManager$$ExternalSyntheticOutline0.m("onSemWallpaperColorsChanged: which = ", i, ", userId = ", i2, ", colors = ");
            m2.append(semWallpaperColors.toSimpleString());
            printLognAddHistory(m2.toString());
            removeMessages(608);
            Message obtainMessage = obtainMessage(608);
            Bundle bundle = new Bundle();
            bundle.putParcelable("wallpaper_colors", semWallpaperColors);
            bundle.putInt("which", i);
            bundle.putInt("userid", i2);
            obtainMessage.setData(bundle);
            if (z4 && !z5) {
                sendMessageDelayed(obtainMessage, 50L);
                return;
            } else {
                sendMessage(obtainMessage);
                return;
            }
        }
        printLognAddHistory("onSemWallpaperColorsChanged: We are in UPSM or EM. We don't need this event for now.");
    }

    public final void onTransitionAod(boolean z) {
        Log.d("KeyguardWallpaperController", "onTransitionAod: mDozeParameters.shouldControlScreenOff() = " + this.mDozeParameters.mControlScreenOffAnimation);
        if (WallpaperUtils.isAODShowLockWallpaperEnabled()) {
            this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda9(this, z, 1));
        }
        if (!((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled() || !WallpaperUtils.isAODShowLockWallpaperEnabled() || (z && !this.mDozeParameters.mControlScreenOffAnimation)) {
            this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 14));
        }
    }

    @Override // com.android.systemui.pluginlock.component.PluginWallpaperCallback
    public final void onWallpaperHintUpdate(SemWallpaperColors semWallpaperColors) {
        int i = WallpaperUtils.sCurrentWhich;
        if (semWallpaperColors == null) {
            this.mWallpaperManager.semSetDLSWallpaperColors(semWallpaperColors, i);
            return;
        }
        int which = semWallpaperColors.getWhich();
        if ((which & 2) == 0) {
            printLognAddHistory("onWallpaperHintUpdate: invalid which. which = " + which);
            return;
        }
        if (which != i) {
            Log.w("KeyguardWallpaperController", "onWallpaperHintUpdate: which mismatched. curWhich = " + i + ", colorWhich=" + which);
        }
        this.mWallpaperManager.semSetDLSWallpaperColors(semWallpaperColors, which);
    }

    @Override // com.android.systemui.pluginlock.component.PluginWallpaperCallback
    public final void onWallpaperUpdate(boolean z) {
        boolean z2;
        printLognAddHistory("onWallpaperUpdate, cacheClear:" + z);
        this.mObserver.updateState(1);
        if (z && LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            WallpaperUtils.clearCachedWallpaper(2);
            WallpaperUtils.clearCachedWallpaper(18);
        }
        if (KeyguardUpdateMonitor.getCurrentUser() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            printLognAddHistory("onWallpaperUpdate: Error. onWallpaperUpdate SHOULD NOT be called on multi-user.");
            return;
        }
        boolean z3 = WallpaperUtils.mIsUltraPowerSavingMode;
        boolean z4 = WallpaperUtils.mIsEmergencyMode;
        if (!z3 && !z4) {
            if (!isWallpaperUpdateFromDls()) {
                setWallpaperUpdateFromDls(isSubDisplay() ? 1 : 0, true);
            }
            if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled() && WallpaperUtils.isLiveWallpaperEnabled(isSubDisplay())) {
                WallpaperUtils.loadLiveWallpaperSettings(this.mCurrentUserId, this.mContext);
            }
            sendUpdateWallpaperMessage(VolteConstants.ErrorCode.DOES_NOT_EXIST_ANYWHERE);
            return;
        }
        printLognAddHistory("onWallpaperUpdate: We are handling wallpaper update by settings changed event for UPSM or EM.");
    }

    public final void printLognAddHistory(String str) {
        ((WallpaperLoggerImpl) this.mWallpaperLogger).log("KeyguardWallpaperController", str);
    }

    public final void removeAllChildViews(ViewGroup viewGroup, boolean z) {
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        Log.d("KeyguardWallpaperController", "removeAllChildViews: childCount = " + childCount);
        while (true) {
            childCount--;
            if (childCount >= 0) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt != null) {
                    if (!z && WallpaperUtils.isAODShowLockWallpaperEnabled() && ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled() && (childAt instanceof KeyguardTransitionWallpaper)) {
                        Log.d("KeyguardWallpaperController", "removeAllChildViews: skip transition view.");
                    } else {
                        try {
                            viewGroup.removeView(childAt);
                        } catch (Throwable th) {
                            Log.e("KeyguardWallpaperController", "removeAllChildViews : e = " + th, th);
                        }
                    }
                }
            } else {
                Log.d("KeyguardWallpaperController", "removeAllChildViews: childCount after remove = " + viewGroup.getChildCount());
                return;
            }
        }
    }

    public final void sendUpdateWallpaperMessage(int i) {
        sendUpdateWallpaperMessage(i, false, null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.wallpaper.KeyguardWallpaperController$$ExternalSyntheticLambda7] */
    public final void setBackground(final SystemUIWallpaper systemUIWallpaper, final SystemUIWallpaper systemUIWallpaper2, final boolean z, final boolean z2, final boolean z3) {
        if (this.mRunnableSetBackground != null) {
            Log.d("KeyguardWallpaperController", "setBackground, remove runnable");
            this.mMainHandler.removeCallbacks(this.mRunnableSetBackground);
            this.mOldWallpaperView = null;
        }
        this.mRunnableSetBackground = new Runnable() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController$$ExternalSyntheticLambda7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                SystemUIWallpaperBase systemUIWallpaperBase;
                boolean z4;
                KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
                SystemUIWallpaperBase systemUIWallpaperBase2 = systemUIWallpaper;
                boolean z5 = z3;
                SystemUIWallpaperBase systemUIWallpaperBase3 = systemUIWallpaper2;
                boolean z6 = z;
                boolean z7 = z2;
                keyguardWallpaperController.mRunnableSetBackground = null;
                keyguardWallpaperController.mOldWallpaperView = keyguardWallpaperController.mWallpaperView;
                Log.d("KeyguardWallpaperController", "setBackground [old] : " + keyguardWallpaperController.mOldWallpaperView + " , [new] : " + systemUIWallpaperBase2);
                ViewGroup viewGroup = keyguardWallpaperController.mRootView;
                boolean z8 = true;
                if (viewGroup != null) {
                    keyguardWallpaperController.removeAllChildViews(viewGroup, false);
                    if (systemUIWallpaperBase2 != 0) {
                        SystemUIWallpaper systemUIWallpaper3 = (SystemUIWallpaper) systemUIWallpaperBase2;
                        if (keyguardWallpaperController.mIsKeyguardShowing != systemUIWallpaper3.mIsKeyguardShowing) {
                            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateKeyguardState, showing state : "), keyguardWallpaperController.mIsKeyguardShowing, "KeyguardWallpaperController");
                            systemUIWallpaperBase2.onKeyguardShowing(keyguardWallpaperController.mIsKeyguardShowing);
                        }
                        if (keyguardWallpaperController.mOccluded != systemUIWallpaper3.mOccluded) {
                            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateKeyguardState, occluded state : "), keyguardWallpaperController.mOccluded, "KeyguardWallpaperController");
                            systemUIWallpaperBase2.onOccluded(keyguardWallpaperController.mOccluded);
                        }
                        if (keyguardWallpaperController.mBouncer != systemUIWallpaper3.mBouncer) {
                            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateKeyguardState, bouncer state : "), keyguardWallpaperController.mBouncer, "KeyguardWallpaperController");
                            systemUIWallpaperBase2.onKeyguardBouncerFullyShowingChanged(keyguardWallpaperController.mBouncer);
                        }
                        if (WallpaperUtils.isAODShowLockWallpaperEnabled() && ((PluginWallpaperManagerImpl) keyguardWallpaperController.mPluginWallpaperManager).isDynamicWallpaperEnabled() && keyguardWallpaperController.mTransitionView != null) {
                            ViewGroup viewGroup2 = keyguardWallpaperController.mRootView;
                            int i = -1;
                            if (viewGroup2 != null) {
                                int childCount = viewGroup2.getChildCount() - 1;
                                while (true) {
                                    if (childCount < 0) {
                                        break;
                                    }
                                    View childAt = keyguardWallpaperController.mRootView.getChildAt(childCount);
                                    if (childAt != null && WallpaperUtils.isAODShowLockWallpaperEnabled() && ((PluginWallpaperManagerImpl) keyguardWallpaperController.mPluginWallpaperManager).isDynamicWallpaperEnabled() && (childAt instanceof KeyguardTransitionWallpaper)) {
                                        ListPopupWindow$$ExternalSyntheticOutline0.m("getTransitionViewIndex: index = ", childCount, "KeyguardWallpaperController");
                                        i = childCount;
                                        break;
                                    }
                                    childCount--;
                                }
                            }
                            ListPopupWindow$$ExternalSyntheticOutline0.m("setBackground: index = ", i, "KeyguardWallpaperController");
                            keyguardWallpaperController.mRootView.addView((View) systemUIWallpaperBase2, 0);
                            if (keyguardWallpaperController.mRootView.getChildCount() == 1) {
                                keyguardWallpaperController.mRootView.addView((View) keyguardWallpaperController.mTransitionView);
                            }
                        } else {
                            keyguardWallpaperController.mRootView.addView((View) systemUIWallpaperBase2);
                        }
                    }
                    KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardWallpaperController.mUpdateMonitor;
                    if (systemUIWallpaperBase2 != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    keyguardUpdateMonitor.setHasLockscreenWallpaper(z4);
                }
                keyguardWallpaperController.mWallpaperView = systemUIWallpaperBase2;
                if (WallpaperUtils.isAODShowLockWallpaperEnabled() && (systemUIWallpaperBase = keyguardWallpaperController.mWallpaperView) != null) {
                    if (((SystemUIWallpaper) systemUIWallpaperBase).mTransitionAnimationListener == null) {
                        z8 = false;
                    }
                    if (!z8) {
                        systemUIWallpaperBase2.setTransitionAnimationListener(keyguardWallpaperController.mTransitionAnimationListener);
                    }
                }
                SystemUIWallpaperBase systemUIWallpaperBase4 = keyguardWallpaperController.mOldWallpaperView;
                if (systemUIWallpaperBase4 != null) {
                    systemUIWallpaperBase4.cleanUp();
                }
                if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed()) {
                    if (keyguardWallpaperController.mIsBlurredViewAdded) {
                        keyguardWallpaperController.cleanUpBlurredView();
                    }
                    if (z5) {
                        keyguardWallpaperController.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda6(keyguardWallpaperController, systemUIWallpaperBase3));
                    }
                }
                keyguardWallpaperController.mUpdateMonitor.setBackDropViewShowing(z6, z7);
            }
        };
        if (WallpaperUtils.isAODShowLockWallpaperEnabled() && ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled() && this.mTransitionView != null && this.mIsPendingTypeChangeForTransition) {
            Log.d("KeyguardWallpaperController", "setBackground: Postpone setBackground()");
        } else {
            this.mIsPendingTypeChangeForTransition = false;
            this.mMainHandler.post(this.mRunnableSetBackground);
        }
    }

    public final void setKeyguardShowing(boolean z) {
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("setKeyguardShowing() showing:", z, ", mIsPendingTypeChange:");
        m.append(this.mIsPendingTypeChange);
        m.append(", mOccluded:");
        NotificationListener$$ExternalSyntheticOutline0.m(m, this.mOccluded, "KeyguardWallpaperController");
        this.mIsKeyguardShowing = z;
        if (z && this.mIsPendingTypeChange) {
            if (this.mRunnableCleanUp != null) {
                Log.i("KeyguardWallpaperController", "setKeyguardShowing, remove cleanUp runnable");
                this.mMainHandler.removeCallbacks(this.mRunnableCleanUp);
            }
            handleWallpaperTypeChanged(getLockWallpaperType(true), true);
        }
        SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
        if (systemUIWallpaperBase != null) {
            systemUIWallpaperBase.onKeyguardShowing(this.mIsKeyguardShowing);
        }
        this.mMainHandler.postAtFrontOfQueue(new KeyguardWallpaperController$$ExternalSyntheticLambda2(this, 11));
        if (this.mIsLockscreenDisabled && this.mIsKeyguardShowing) {
            this.mIsLockscreenDisabled = false;
            if (!LsRune.WALLPAPER_SUB_WATCHFACE || !isSubDisplay()) {
                if (WallpaperUtils.isAODShowLockWallpaperAndLockDisabled(KeyguardUpdateMonitor.getCurrentUser(), this.mContext) && this.mWallpaperView != null) {
                    onResume();
                } else {
                    sendEmptyMessage(601);
                }
            }
        }
    }

    public final void setRootView(ViewGroup viewGroup) {
        Log.d("KeyguardWallpaperController", "setRootView");
        this.mRootView = viewGroup;
        if (viewGroup != null) {
            removeAllChildViews(viewGroup, true);
        }
        this.mIsLockscreenDisabled = this.mLockPatternUtils.isLockScreenDisabled(KeyguardUpdateMonitor.getCurrentUser());
        ViewGroup viewGroup2 = this.mRootView;
        if (viewGroup2 != null) {
            viewGroup2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperController$$ExternalSyntheticLambda0
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    KeyguardWallpaperController keyguardWallpaperController = KeyguardWallpaperController.this;
                    if (keyguardWallpaperController.mBottom != i4) {
                        StringBuilder sb = new StringBuilder("onLayoutChange() v: ");
                        sb.append(view);
                        sb.append(", bottom : ");
                        sb.append(i4);
                        sb.append(", oldBottom : ");
                        RecyclerView$$ExternalSyntheticOutline0.m(sb, i8, "KeyguardWallpaperController");
                        keyguardWallpaperController.mBottom = i4;
                        keyguardWallpaperController.mMainHandler.postAtFrontOfQueue(new KeyguardWallpaperController$$ExternalSyntheticLambda2(keyguardWallpaperController, 11));
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            keyguardWallpaperController.showBlurredViewIfNeededOnUiThread();
                        } else {
                            keyguardWallpaperController.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(keyguardWallpaperController, 1));
                        }
                        keyguardWallpaperController.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda2(keyguardWallpaperController, 3));
                    }
                }
            });
        } else {
            Log.d("KeyguardWallpaperController", "setRootView: mRootView is null!");
        }
        handleWallpaperTypeChanged(getLockWallpaperType(true));
    }

    public final void setThumbnailVisibility(int i) {
        boolean z;
        WallpaperUtils.isSubDisplay();
        int i2 = 1;
        if (WallpaperUtils.sWallpaperType[WallpaperUtils.isSubDisplay() ? 1 : 0] == 7) {
            z = true;
        } else {
            z = false;
        }
        if (z && !WallpaperUtils.isLiveWallpaperEnabled()) {
            if (this.mIsFingerPrintTouchDown && i != 0) {
                Log.w("KeyguardWallpaperController", "Thumbnail should be shown when unlocking using fingerprint.");
                return;
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                SystemUIWallpaperBase systemUIWallpaperBase = this.mWallpaperView;
                if (systemUIWallpaperBase != null) {
                    systemUIWallpaperBase.setThumbnailVisibility(i);
                    return;
                }
                return;
            }
            this.mMainHandler.postAtFrontOfQueue(new KeyguardWallpaperController$$ExternalSyntheticLambda4(this, i, i2));
        }
    }

    public final void setWallpaperUpdateFromDls(int i, boolean z) {
        boolean z2;
        if (KeyguardUpdateMonitor.getCurrentUser() != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            printLognAddHistory("setWallpaperUpdateFromDls: User (" + KeyguardUpdateMonitor.getCurrentUser() + ") changed wallpaper. Don't update WPAPER_CHANGED_BY_DLS.");
            return;
        }
        if (i == 2) {
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && Prefs.getBoolean(this.mContext, "WPaperChangedByDlsSub", false) != z) {
                Prefs.putBoolean(this.mContext, "WPaperChangedByDlsSub", z);
            }
            if (Prefs.getBoolean(this.mContext, "WPaperChangedByDls", false) != z) {
                Prefs.putBoolean(this.mContext, "WPaperChangedByDls", z);
                return;
            }
            return;
        }
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
            if (i == 1) {
                if (Prefs.getBoolean(this.mContext, "WPaperChangedByDlsSub", false) != z) {
                    Prefs.putBoolean(this.mContext, "WPaperChangedByDlsSub", z);
                    return;
                }
                return;
            } else {
                if (Prefs.getBoolean(this.mContext, "WPaperChangedByDls", false) != z) {
                    Prefs.putBoolean(this.mContext, "WPaperChangedByDls", z);
                    return;
                }
                return;
            }
        }
        if (Prefs.getBoolean(this.mContext, "WPaperChangedByDls", false) != z) {
            Prefs.putBoolean(this.mContext, "WPaperChangedByDls", z);
        }
    }

    public final void showBlurredViewIfNeededOnUiThread() {
        ViewGroup viewGroup;
        Assert.isMainThread();
        if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed() && this.mOccluded && this.mBouncer && (viewGroup = this.mRootView) != null) {
            viewGroup.setVisibility(0);
            Object obj = this.mWallpaperView;
            if (obj != null) {
                ((View) obj).setVisibility(4);
            }
            if (!this.mIsBlurredViewAdded) {
                this.mMainHandler.post(new KeyguardWallpaperController$$ExternalSyntheticLambda6(this, this.mWallpaperView));
            }
        }
    }

    public final void startMultipack(int i) {
        printLognAddHistory("startMultipack: which = " + i);
        if (!this.mIsPluginLockReady) {
            Log.d("KeyguardWallpaperController", "startMultipack: mIsPluginLockReady is false");
            return;
        }
        if (this.mMultiPackDispatcher == null) {
            MultiPackDispatcher multiPackDispatcher = new MultiPackDispatcher(this.mContext, this.mWallpaperLogger, this.mPluginLockUtils);
            this.mMultiPackDispatcher = multiPackDispatcher;
            multiPackDispatcher.mOnApplyMultipackListener = new AnonymousClass9();
        }
        MultiPackDispatcher multiPackDispatcher2 = this.mMultiPackDispatcher;
        if (multiPackDispatcher2 != null) {
            multiPackDispatcher2.startMultipack(i);
        }
    }

    public final void sendUpdateWallpaperMessage(int i, boolean z, Bundle bundle) {
        AnonymousClass6 anonymousClass6 = this.mWorkHandler;
        if (anonymousClass6 != null) {
            Message obtainMessage = anonymousClass6.obtainMessage(i);
            if (i != 612 && i != 613 && i != 609 && hasMessages(i)) {
                printLognAddHistory("sendUpdateWallpaperMessage: remove message what = " + i);
                removeMessages(i);
            }
            if (bundle == null) {
                if (z) {
                    sendMessageAtFrontOfQueue(obtainMessage);
                    return;
                } else {
                    sendEmptyMessage(i);
                    return;
                }
            }
            obtainMessage.setData(bundle);
            long j = bundle.getLong("delay", 0L);
            if (j == 0) {
                sendMessage(obtainMessage);
            } else {
                sendMessageDelayed(obtainMessage, j);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x038c  */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleWallpaperTypeChanged(int r56, boolean r57) {
        /*
            Method dump skipped, instructions count: 976
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.KeyguardWallpaperController.handleWallpaperTypeChanged(int, boolean):void");
    }

    public final void onWallpaperChanged() {
    }

    public final void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i, int i2) {
    }
}
