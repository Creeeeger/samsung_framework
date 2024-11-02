package com.android.systemui.pluginlock;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.facewidget.plugin.ExternalClockProvider;
import com.android.systemui.facewidget.plugin.FaceWidgetPluginLockManagerWrapper;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.pluginlock.PluginLockInstanceData;
import com.android.systemui.pluginlock.component.PluginHomeWallpaper;
import com.android.systemui.pluginlock.component.PluginLockFaceWidget;
import com.android.systemui.pluginlock.component.PluginLockHelpText;
import com.android.systemui.pluginlock.component.PluginLockLockIcon;
import com.android.systemui.pluginlock.component.PluginLockMusic;
import com.android.systemui.pluginlock.component.PluginLockNotification;
import com.android.systemui.pluginlock.component.PluginLockSecure;
import com.android.systemui.pluginlock.component.PluginLockShortcut;
import com.android.systemui.pluginlock.component.PluginLockStatusBar;
import com.android.systemui.pluginlock.component.PluginLockSwipe;
import com.android.systemui.pluginlock.component.PluginLockWallpaper;
import com.android.systemui.pluginlock.listener.KeyguardListener$SPlugin;
import com.android.systemui.pluginlock.listener.KeyguardListener$UserSwitch;
import com.android.systemui.pluginlock.listener.PluginLockListener$State;
import com.android.systemui.pluginlock.model.DynamicLockData;
import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.KeyguardStatusBarViewController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.google.gson.Gson;
import com.samsung.android.cover.CoverState;
import com.samsung.android.sdk.cover.ScoverManager;
import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.SPluginListener;
import com.samsung.systemui.splugins.SPluginManager;
import com.samsung.systemui.splugins.pluginlock.PluginLock;
import com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockMediatorImpl implements PluginLockMediator, SPluginListener {
    public static int sScreenType;
    public int mBarState;
    public PluginLockDelegateApp mBasicListener;
    public PluginLockFaceWidget mClock;
    public final ExternalClockProvider mClockProvider;
    public final Context mContext;
    public final DozeParameters mDozeParameters;
    public String mDynamicLockData;
    public final Handler mHandler;
    public PluginLockHelpText mHelpText;
    public final PluginHomeWallpaper mHomeWallpaper;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public PluginLockLockIcon mLockIcon;
    public final LockPatternUtils mLockPatternUtils;
    public final PluginLockWallpaper mLockWallpaper;
    public PluginLockMusic mMusic;
    public PluginLockNotification mNotification;
    public Context mPluginContext;
    public KeyguardListener$SPlugin mSPluginListener;
    public final SPluginManager mSPluginManager;
    public PluginLockSecure mSecure;
    public final SettingsHelper mSettingsHelper;
    public final KeyguardShortcutManager mShortcurManager;
    public PluginLockShortcut mShortcut;
    public PluginLockStatusBar mStatusBar;
    public KeyguardStatusBarViewController.AnonymousClass6 mStatusBarCallback;
    public PluginLockSwipe mSwipe;
    public final PluginLockUtils mUtils;
    public int mViewMode;
    public SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 mWindowListener;
    public final List mUserSwitchListenerList = new ArrayList();
    public final List mStateListenerList = new ArrayList();
    public DynamicLockData mCurrentDynamicLockData = null;
    public boolean mIsEnabled = false;
    public boolean mIsDynamicLockData = true;
    public boolean mIsRotateMenuHide = false;
    public boolean mIsLockScreenEnabled = true;
    public boolean mIsSecureWindow = false;
    public boolean mIsCoverAttached = false;
    public final KeyguardUpdateMonitorCallback mMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.pluginlock.PluginLockMediatorImpl.1
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onKeyguardVisibilityChanged(boolean z) {
            PluginLockMediatorImpl pluginLockMediatorImpl = PluginLockMediatorImpl.this;
            if (pluginLockMediatorImpl.mViewMode != 0 && !z) {
                pluginLockMediatorImpl.onViewModeChanged(0);
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onLocaleChanged() {
            PluginLockBasicManager pluginLockBasicManager;
            PluginLockDelegateApp pluginLockDelegateApp = PluginLockMediatorImpl.this.mBasicListener;
            if (pluginLockDelegateApp != null && (pluginLockBasicManager = pluginLockDelegateApp.mBasicManager) != null) {
                pluginLockBasicManager.onLocaleChanged();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onStartedGoingToSleep(int i) {
            LogUtil.i("PluginLockMediatorImpl", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onStartedGoingToSleep why :", i), new Object[0]);
            PluginLockMediatorImpl pluginLockMediatorImpl = PluginLockMediatorImpl.this;
            if (pluginLockMediatorImpl.mIsSecureWindow) {
                pluginLockMediatorImpl.updateWindowSecureState(false);
            }
            if (i == 4) {
                Bundle bundle = new Bundle();
                bundle.putString("action", PluginLock.ACTION_LID_SWITCH);
                pluginLockMediatorImpl.onEventReceived(bundle);
            }
            boolean z = !pluginLockMediatorImpl.mLockPatternUtils.isLockScreenDisabled(KeyguardUpdateMonitor.getCurrentUser());
            if (pluginLockMediatorImpl.mIsLockScreenEnabled != z) {
                pluginLockMediatorImpl.mIsLockScreenEnabled = z;
                Bundle bundle2 = new Bundle();
                bundle2.putString("action", PluginLock.ACTION_LOCK_STYLE_CHANGED);
                bundle2.putBoolean("value", pluginLockMediatorImpl.mIsLockScreenEnabled);
                pluginLockMediatorImpl.onEventReceived(bundle2);
            }
            PluginLockDelegateApp pluginLockDelegateApp = pluginLockMediatorImpl.mBasicListener;
            if (pluginLockDelegateApp != null) {
                boolean z2 = pluginLockMediatorImpl.mDozeParameters.mControlScreenOffAnimation;
                StringBuilder sb = new StringBuilder("onStartedGoingToSleep enabled: true aodClockTransition : ");
                pluginLockDelegateApp.mUtils.getClass();
                sb.append(z2);
                Log.d("PluginLockDelegateApp", sb.toString());
                PluginLockBasicManager pluginLockBasicManager = pluginLockDelegateApp.mBasicManager;
                if (pluginLockBasicManager != null) {
                    pluginLockBasicManager.onStartedGoingToSleep(z2);
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onStartedWakingUp() {
            PluginLockBasicManager pluginLockBasicManager;
            PluginLockDelegateApp pluginLockDelegateApp = PluginLockMediatorImpl.this.mBasicListener;
            if (pluginLockDelegateApp != null && (pluginLockBasicManager = pluginLockDelegateApp.mBasicManager) != null) {
                pluginLockBasicManager.onStartedWakingUp();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUpdateCoverState(CoverState coverState) {
            boolean z = coverState.attached;
            PluginLockMediatorImpl pluginLockMediatorImpl = PluginLockMediatorImpl.this;
            pluginLockMediatorImpl.mIsCoverAttached = z;
            boolean z2 = !coverState.switchState;
            Log.d("PluginLockMediatorImpl", "onUpdateCoverState, mViewMode: " + pluginLockMediatorImpl.mViewMode + ", state: " + coverState);
            if (z2 && pluginLockMediatorImpl.mViewMode == 1) {
                Bundle bundle = new Bundle();
                bundle.putString("action", PluginLock.ACTION_COVER_CLOSED);
                pluginLockMediatorImpl.onEventReceived(bundle);
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserSwitchComplete(int i) {
            KeyguardListener$UserSwitch keyguardListener$UserSwitch;
            synchronized (PluginLockMediatorImpl.this.mUserSwitchListenerList) {
                for (int i2 = 0; i2 < ((ArrayList) PluginLockMediatorImpl.this.mUserSwitchListenerList).size(); i2++) {
                    WeakReference weakReference = (WeakReference) ((ArrayList) PluginLockMediatorImpl.this.mUserSwitchListenerList).get(i2);
                    if (weakReference != null && (keyguardListener$UserSwitch = (KeyguardListener$UserSwitch) weakReference.get()) != null) {
                        keyguardListener$UserSwitch.onUserSwitchComplete(i);
                    }
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserSwitching(int i) {
            KeyguardListener$UserSwitch keyguardListener$UserSwitch;
            synchronized (PluginLockMediatorImpl.this.mUserSwitchListenerList) {
                for (int i2 = 0; i2 < ((ArrayList) PluginLockMediatorImpl.this.mUserSwitchListenerList).size(); i2++) {
                    WeakReference weakReference = (WeakReference) ((ArrayList) PluginLockMediatorImpl.this.mUserSwitchListenerList).get(i2);
                    if (weakReference != null && (keyguardListener$UserSwitch = (KeyguardListener$UserSwitch) weakReference.get()) != null) {
                        keyguardListener$UserSwitch.onUserSwitching(i);
                    }
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserUnlocked() {
            PluginLockMediatorImpl.this.mUtils.checkSafeMode();
        }
    };

    public PluginLockMediatorImpl(Context context, SPluginManager sPluginManager, KeyguardUpdateMonitor keyguardUpdateMonitor, DozeParameters dozeParameters, ExternalClockProvider externalClockProvider, KeyguardShortcutManager keyguardShortcutManager, SettingsHelper settingsHelper, PluginLockUtils pluginLockUtils) {
        this.mSPluginManager = sPluginManager;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mClockProvider = externalClockProvider;
        this.mShortcurManager = keyguardShortcutManager;
        this.mSettingsHelper = settingsHelper;
        this.mContext = context;
        this.mUtils = pluginLockUtils;
        pluginLockUtils.addDump("PluginLockMediatorImpl", "## PluginLockMediatorImpl ##, " + this);
        this.mDozeParameters = dozeParameters;
        this.mLockPatternUtils = new LockPatternUtils(context);
        this.mHomeWallpaper = new PluginHomeWallpaper(context);
        this.mLockWallpaper = new PluginLockWallpaper(context, null, settingsHelper);
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public static String getItemLocation(int i) {
        int i2 = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).getRealSize().y;
        int i3 = i2 / 3;
        if (i3 > i) {
            return "top";
        }
        if (i3 * 2 > i) {
            return "background";
        }
        if (i2 >= i) {
            return "bottom";
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0054, code lost:
    
        if (r8.equals("face_widget") == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getLockStarItemLocationInfo(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockMediatorImpl.getLockStarItemLocationInfo(java.lang.String):java.lang.String");
    }

    public final boolean isDynamicLockEnabled() {
        if (this.mIsEnabled) {
            this.mUtils.getClass();
            if (!PluginLockUtils.isGoingToRescueParty()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isRotateMenuHide() {
        StringBuilder sb = new StringBuilder("isRotateMenuHide mIsEnabled: ");
        sb.append(this.mIsEnabled);
        sb.append(", mIsRotateMenuHide: ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.mIsRotateMenuHide, "PluginLockMediatorImpl");
        if (this.mIsEnabled && this.mIsRotateMenuHide) {
            return true;
        }
        return false;
    }

    public final void onDataCleared() {
        this.mLockWallpaper.mWallpaperUpdateCallback.onDataCleared();
        PluginHomeWallpaper pluginHomeWallpaper = this.mHomeWallpaper;
        pluginHomeWallpaper.mWallpaperUpdateCallback.onDataCleared();
        Map map = pluginHomeWallpaper.mWallpaperDataList;
        try {
            PluginHomeWallpaper.WallpaperData wallpaperData = (PluginHomeWallpaper.WallpaperData) ((HashMap) map).get(0);
            wallpaperData.mType = -2;
            wallpaperData.mPath = null;
            wallpaperData.mUri = null;
            wallpaperData.mHints = null;
            wallpaperData.mRect = null;
            if (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
                PluginHomeWallpaper.WallpaperData wallpaperData2 = (PluginHomeWallpaper.WallpaperData) ((HashMap) map).get(1);
                wallpaperData2.mType = -2;
                wallpaperData2.mPath = null;
                wallpaperData2.mUri = null;
                wallpaperData2.mHints = null;
                wallpaperData2.mRect = null;
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    public final void onEventReceived(Bundle bundle) {
        PluginLockBasicManager pluginLockBasicManager;
        PluginLockDelegateApp pluginLockDelegateApp = this.mBasicListener;
        if (pluginLockDelegateApp != null && (pluginLockBasicManager = pluginLockDelegateApp.mBasicManager) != null) {
            pluginLockBasicManager.onEventReceived(bundle);
        }
    }

    public final void onFolderStateChanged(boolean z, boolean z2) {
        PluginLockBasicManager pluginLockBasicManager;
        PluginLockDelegateApp pluginLockDelegateApp = this.mBasicListener;
        if (pluginLockDelegateApp != null && (pluginLockBasicManager = pluginLockDelegateApp.mBasicManager) != null) {
            try {
                pluginLockBasicManager.onFolderStateChanged(z, z2);
            } catch (AbstractMethodError e) {
                Log.w("PluginLockDelegateApp", "onFolderStateChanged, " + e.getMessage());
                pluginLockDelegateApp.mBasicManager.onFolderStateChanged(z);
            }
        }
    }

    @Override // com.samsung.systemui.splugins.SPluginListener
    public final void onPluginConnected(SPlugin sPlugin, Context context) {
        boolean z;
        PluginLock pluginLock = (PluginLock) sPlugin;
        Log.d("PluginLockMediatorImpl", "onPluginConnected");
        KeyguardListener$SPlugin keyguardListener$SPlugin = this.mSPluginListener;
        if (keyguardListener$SPlugin != null) {
            PluginLockManagerImpl pluginLockManagerImpl = (PluginLockManagerImpl) keyguardListener$SPlugin;
            if (UserHandle.semGetMyUserId() == 0) {
                z = true;
            } else {
                z = false;
            }
            Log.d("PluginLockManagerImpl", "onPluginConnected : " + context.getPackageName() + ", isOwnerProcess: " + z);
            if (z) {
                PluginLockInstanceState pluginLockInstanceState = new PluginLockInstanceState(pluginLock, context, pluginLockManagerImpl.mUtils);
                if (LsRune.PLUGIN_LOCK_MULTIPLE_ACTIVATION) {
                    int intValue = ((PluginLockInstanceData) pluginLockInstanceState.mGson.fromJson(PluginLockInstanceData.class, pluginLockInstanceState.getDbData())).getVersion().intValue();
                    Log.d("PluginLockInstanceState", "getDataVersion() " + intValue);
                    Log.d("PluginLockManagerImpl", "[migration] for [" + pluginLockInstanceState.mPackageName + "]");
                    StringBuilder sb = new StringBuilder("[migration] - savedVersion: ");
                    sb.append(intValue);
                    ExifInterface$$ExternalSyntheticOutline0.m(sb, ", currVersion:3", "PluginLockManagerImpl");
                    if (intValue < 3) {
                        SettingsHelper settingsHelper = pluginLockManagerImpl.mSettingsHelper;
                        int pluginLockValue = settingsHelper.getPluginLockValue(0);
                        int pluginLockValue2 = settingsHelper.getPluginLockValue(1);
                        SuggestionsAdapter$$ExternalSyntheticOutline0.m("[migration] - mainValue: ", pluginLockValue, ", subValue:", pluginLockValue2, "PluginLockManagerImpl");
                        if (pluginLockValue != -1 && pluginLockValue2 == -1) {
                            int i = pluginLockInstanceState.mAllowedNumber;
                            pluginLockManagerImpl.mPolicy.getClass();
                            if (PluginLockInstancePolicy.isSameInstance(i, pluginLockValue)) {
                                if (PluginLockInstancePolicy.isEnable(pluginLockValue)) {
                                    Log.d("PluginLockManagerImpl", "[migration] - start!");
                                    pluginLockInstanceState.setStateData(1, PluginLockInstancePolicy.isEnable(pluginLockValue));
                                    pluginLockManagerImpl.mIsMigrating = true;
                                    settingsHelper.setPluginLockValue(1, pluginLockValue);
                                }
                            } else {
                                Log.d("PluginLockManagerImpl", "[migration] - not activated plugin");
                            }
                        }
                    }
                }
                try {
                    pluginLockManagerImpl.setPluginInstanceState(pluginLockInstanceState);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    @Override // com.samsung.systemui.splugins.SPluginListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onPluginDisconnected(com.samsung.systemui.splugins.SPlugin r19, int r20) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockMediatorImpl.onPluginDisconnected(com.samsung.systemui.splugins.SPlugin, int):void");
    }

    public final void onViewModeChanged(int i) {
        PluginLockListener$State pluginLockListener$State;
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onViewModeChanged mode: ", i, ", mStateListenerList.size(): ");
        ArrayList arrayList = (ArrayList) this.mStateListenerList;
        m.append(arrayList.size());
        m.append(", mViewMode:");
        m.append(this.mViewMode);
        int i2 = 0;
        LogUtil.d("PluginLockMediatorImpl", m.toString(), new Object[0]);
        if (this.mViewMode == i) {
            return;
        }
        this.mViewMode = i;
        if (1 != i && this.mIsSecureWindow) {
            updateWindowSecureState(false);
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            WeakReference weakReference = (WeakReference) arrayList.get(i3);
            if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                pluginLockListener$State.onViewModeChanged(i);
            }
        }
        if (this.mWindowListener != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.mWindowListener.onViewModeChanged(i);
            } else {
                this.mHandler.post(new PluginLockMediatorImpl$$ExternalSyntheticLambda2(this, i, i2));
            }
        }
    }

    public final void publishLockStarState() {
        String lockStarItemLocationInfo;
        int i = 0;
        LogUtil.d("PluginLockMediatorImpl", "publishLockStarState mIsDynamicLockData: " + this.mIsDynamicLockData, new Object[0]);
        int i2 = 0;
        while (true) {
            List list = this.mStateListenerList;
            boolean z = true;
            if (i2 >= ((ArrayList) list).size()) {
                break;
            }
            if (((WeakReference) ((ArrayList) list).get(i2)).get() != null) {
                Log.d("PluginLockMediatorImpl", "publishLockStarState : " + ((WeakReference) ((ArrayList) list).get(i2)).get());
                try {
                    PluginLockListener$State pluginLockListener$State = (PluginLockListener$State) ((WeakReference) ((ArrayList) list).get(i2)).get();
                    if (this.mIsDynamicLockData) {
                        z = false;
                    }
                    pluginLockListener$State.onLockStarEnabled(z);
                } catch (Exception e) {
                    EmergencyButton$$ExternalSyntheticOutline0.m("publishLockStarState Exception: ", e, "PluginLockMediatorImpl");
                }
            }
            i2++;
        }
        Context context = this.mContext;
        if (context != null && context.getContentResolver() != null) {
            ContentResolver contentResolver = context.getContentResolver();
            if (!this.mIsDynamicLockData && (lockStarItemLocationInfo = getLockStarItemLocationInfo("face_widget")) != null) {
                lockStarItemLocationInfo.hashCode();
                char c = 65535;
                switch (lockStarItemLocationInfo.hashCode()) {
                    case -1383228885:
                        if (lockStarItemLocationInfo.equals("bottom")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1332194002:
                        if (lockStarItemLocationInfo.equals("background")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 115029:
                        if (lockStarItemLocationInfo.equals("top")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        i = 3;
                        break;
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 1;
                        break;
                }
            }
            Settings.Secure.putInt(contentResolver, "lockstar_facewidget_area", i);
        }
    }

    public final void registerStateCallback(PluginLockListener$State pluginLockListener$State) {
        boolean z;
        boolean z2 = false;
        LogUtil.d("PluginLockMediatorImpl", "registerStateCallback: " + pluginLockListener$State, new Object[0]);
        synchronized (this.mStateListenerList) {
            for (int i = 0; i < ((ArrayList) this.mStateListenerList).size(); i++) {
                if (((WeakReference) ((ArrayList) this.mStateListenerList).get(i)).get() == pluginLockListener$State) {
                    return;
                }
            }
            ((ArrayList) this.mStateListenerList).add(new WeakReference(pluginLockListener$State));
            if (pluginLockListener$State instanceof FaceWidgetPluginLockManagerWrapper.FaceWidgetLockStarStateCallbackWrapper) {
                StringBuilder sb = new StringBuilder();
                sb.append("registerStateCallback isLockStar: ");
                if (!this.mIsDynamicLockData) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                LogUtil.i("PluginLockMediatorImpl", sb.toString(), new Object[0]);
                if (!this.mIsDynamicLockData) {
                    z2 = true;
                }
                pluginLockListener$State.onLockStarEnabled(z2);
                DynamicLockData dynamicLockData = this.mCurrentDynamicLockData;
                if (dynamicLockData != null) {
                    PluginLockFaceWidget pluginLockFaceWidget = this.mClock;
                    if (pluginLockFaceWidget != null) {
                        pluginLockFaceWidget.loadClockData(null, dynamicLockData);
                    }
                    PluginLockMusic pluginLockMusic = this.mMusic;
                    if (pluginLockMusic != null) {
                        pluginLockMusic.loadMusicData();
                    }
                }
            }
        }
    }

    public final void registerUpdateMonitor() {
        boolean z;
        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = this.mMonitorCallback;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        keyguardUpdateMonitor.removeCallback(keyguardUpdateMonitorCallback);
        keyguardUpdateMonitor.registerCallback(this.mMonitorCallback);
        ScoverManager scoverManager = new ScoverManager(this.mContext);
        if (scoverManager.getCoverState() != null) {
            z = scoverManager.getCoverState().attached;
        } else {
            z = false;
        }
        this.mIsCoverAttached = z;
    }

    public final void resetConfigs() {
        PluginLockListener$State pluginLockListener$State;
        Log.e("PluginLockMediatorImpl", "resetConfig mIsDynamicLockData: " + this.mIsDynamicLockData);
        Point point = DeviceState.sDisplaySize;
        if (!DeviceType.isTablet() && WallpaperUtils.isVideoWallpaper()) {
            this.mIsRotateMenuHide = false;
        } else {
            setScreenOrientation(false, false);
        }
        SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 = this.mWindowListener;
        if (secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 != null) {
            secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1.updateOverlayUserTimeout(false);
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.mStateListenerList;
            if (i < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.onViewModeChanged(0);
                    if (!this.mIsDynamicLockData) {
                        pluginLockListener$State.onLockStarEnabled(false);
                    }
                }
                i++;
            } else {
                this.mIsDynamicLockData = true;
                return;
            }
        }
    }

    public final void resetDynamicLock() {
        PluginLockListener$State pluginLockListener$State;
        Log.e("PluginLockMediatorImpl", "resetDynamicLock");
        int i = 0;
        while (true) {
            List list = this.mStateListenerList;
            if (i < ((ArrayList) list).size()) {
                WeakReference weakReference = (WeakReference) ((ArrayList) list).get(i);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.resetDynamicLock();
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void resetDynamicLockData(boolean z) {
        PluginLockListener$State pluginLockListener$State;
        int i;
        PluginLockInstanceData.Data.RecoverData recoverData;
        int i2;
        int i3;
        PluginLockInstanceData.Data.RecoverData recoverData2;
        PluginLockInstanceData.Data.RecoverData recoverData3;
        this.mCurrentDynamicLockData = null;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("resetDynamicLockData() reconnectReq: ", z, "PluginLockMediatorImpl");
        PluginLockNotification pluginLockNotification = this.mNotification;
        if (pluginLockNotification != null) {
            Log.d("PluginLockNotification", "reset()");
            Log.d("PluginLockNotification", "unregisterCallback()");
            pluginLockNotification.mVisibility = -1;
            pluginLockNotification.mCallbackValue = -1;
            pluginLockNotification.mCallbackRegisterTime = 0L;
            pluginLockNotification.mSettingsHelper.unregisterCallback(pluginLockNotification.mCallBack);
            if (!z) {
                int notificationState = pluginLockNotification.getNotificationState();
                ListPopupWindow$$ExternalSyntheticOutline0.m("reset() state: ", notificationState, "PluginLockNotification");
                if (notificationState != -1 && notificationState != -2) {
                    PluginLockInstanceState pluginLockInstanceState = pluginLockNotification.mInstanceState;
                    if (pluginLockInstanceState != null && (recoverData3 = pluginLockInstanceState.getRecoverData()) != null) {
                        i2 = recoverData3.getNotificationBackupVisibility().intValue();
                    } else {
                        i2 = -1;
                    }
                    PluginLockInstanceState pluginLockInstanceState2 = pluginLockNotification.mInstanceState;
                    if (pluginLockInstanceState2 != null && (recoverData2 = pluginLockInstanceState2.getRecoverData()) != null) {
                        i3 = recoverData2.getNotificationBackupType().intValue();
                    } else {
                        i3 = -1;
                    }
                    pluginLockNotification.setNotificationVisibility(i2);
                    pluginLockNotification.setNotificationType(i3);
                }
                pluginLockNotification.setNotificationBackup(-1, -1);
            }
        }
        if (this.mSecure != null) {
            Log.d("PluginLockSecure", "reset()");
        }
        PluginLockShortcut pluginLockShortcut = this.mShortcut;
        if (pluginLockShortcut != null) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("reset() reconnectReq: ", z, "PluginLockShortcut");
            pluginLockShortcut.mShortcutVisibility = -1;
            Log.d("PluginLockShortcut", "unregisterCallback() ");
            pluginLockShortcut.mCallbackValue = -1;
            pluginLockShortcut.mCallbackRegisterTime = 0L;
            pluginLockShortcut.mSettingsHelper.unregisterCallback(pluginLockShortcut.mCallback);
            if (!z) {
                int shortcutState = pluginLockShortcut.getShortcutState();
                ListPopupWindow$$ExternalSyntheticOutline0.m("reset() state: ", shortcutState, "PluginLockShortcut");
                if (shortcutState != -1 && shortcutState != -2) {
                    PluginLockInstanceState pluginLockInstanceState3 = pluginLockShortcut.mInstanceState;
                    if (pluginLockInstanceState3 != null && (recoverData = pluginLockInstanceState3.getRecoverData()) != null) {
                        i = recoverData.getShortcutBackupValue().intValue();
                    } else {
                        i = -1;
                    }
                    Log.d("PluginLockShortcut", "reset() original: " + i);
                    pluginLockShortcut.setShortcutVisibility(i);
                }
                pluginLockShortcut.setShortcutBackup(-1);
            }
            this.mShortcurManager.updateShortcuts();
        }
        PluginLockStatusBar pluginLockStatusBar = this.mStatusBar;
        int i4 = 0;
        if (pluginLockStatusBar != null) {
            Log.d("PluginLockStatusBar", "reset()");
            KeyguardStatusBarViewController.AnonymousClass6 anonymousClass6 = pluginLockStatusBar.mCallback;
            if (anonymousClass6 != null) {
                anonymousClass6.onVisibilityUpdated(0, 0);
            }
        }
        PluginLockSwipe pluginLockSwipe = this.mSwipe;
        if (pluginLockSwipe != null) {
            Log.d("PluginLockSwipe", "reset()");
            pluginLockSwipe.mNonSwipeMode = 0;
            pluginLockSwipe.mNonSwipeModeAngle = 45;
        }
        PluginLockWallpaper pluginLockWallpaper = this.mLockWallpaper;
        if (pluginLockWallpaper != null) {
            if (LsRune.LOCKUI_SUB_DISPLAY_LOCK && LsRune.PLUGIN_LOCK_LSM) {
                if (z) {
                    pluginLockWallpaper.reset(true);
                } else {
                    pluginLockWallpaper.resetAll();
                }
            } else {
                pluginLockWallpaper.reset(z);
            }
        }
        PluginLockFaceWidget pluginLockFaceWidget = this.mClock;
        if (pluginLockFaceWidget != null) {
            pluginLockFaceWidget.reset(z);
        }
        PluginLockMusic pluginLockMusic = this.mMusic;
        if (pluginLockMusic != null) {
            pluginLockMusic.mMusicPaddingTop = -1;
            pluginLockMusic.mMusicPaddingStart = -1;
            pluginLockMusic.mMusicPaddingEnd = -1;
            pluginLockMusic.mMusicVisibility = 0;
            pluginLockMusic.mMusicPaddingTopLand = -1;
            pluginLockMusic.mMusicPaddingStartLand = -1;
            pluginLockMusic.mMusicPaddingEndLand = -1;
            pluginLockMusic.mMusicVisibilityLand = 0;
            pluginLockMusic.mMusicGravityLand = 17;
            pluginLockMusic.loadMusicData();
        }
        if (this.mLockIcon != null) {
            Log.d("PluginLockLockIcon", "reset()");
        }
        while (true) {
            ArrayList arrayList = (ArrayList) this.mStateListenerList;
            if (i4 < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i4);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.onPluginLockReset();
                }
                i4++;
            } else {
                return;
            }
        }
    }

    public final void setEnabled(boolean z) {
        LogUtil.d("PluginLockMediatorImpl", "setEnabled: " + z + ", " + this, new Object[0]);
        this.mIsEnabled = z;
    }

    public final void setInstanceState(int i, PluginLockInstanceState pluginLockInstanceState) {
        Log.d("PluginLockMediatorImpl", "setInstanceState, screen: " + i + ", state: " + pluginLockInstanceState);
        PluginLockFaceWidget pluginLockFaceWidget = this.mClock;
        List list = this.mStateListenerList;
        if (pluginLockFaceWidget == null) {
            PluginLockFaceWidget pluginLockFaceWidget2 = new PluginLockFaceWidget(this.mContext, pluginLockInstanceState, this.mClockProvider, this.mSettingsHelper, this);
            this.mClock = pluginLockFaceWidget2;
            pluginLockFaceWidget2.mStateListenerList = list;
        }
        this.mClock.mInstanceState = pluginLockInstanceState;
        PluginLockMusic pluginLockMusic = this.mMusic;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        Context context = this.mContext;
        if (pluginLockMusic == null) {
            PluginLockMusic pluginLockMusic2 = new PluginLockMusic(context, pluginLockInstanceState, settingsHelper);
            this.mMusic = pluginLockMusic2;
            pluginLockMusic2.mStateListenerList = list;
        }
        this.mMusic.mInstanceState = pluginLockInstanceState;
        if (this.mHelpText == null) {
            this.mHelpText = new PluginLockHelpText(context, pluginLockInstanceState, settingsHelper);
        }
        this.mHelpText.mInstanceState = pluginLockInstanceState;
        if (this.mLockIcon == null) {
            this.mLockIcon = new PluginLockLockIcon(context, pluginLockInstanceState, settingsHelper);
        }
        this.mLockIcon.mInstanceState = pluginLockInstanceState;
        if (this.mNotification == null) {
            this.mNotification = new PluginLockNotification(context, pluginLockInstanceState, settingsHelper, this);
        }
        this.mNotification.mInstanceState = pluginLockInstanceState;
        if (this.mSecure == null) {
            this.mSecure = new PluginLockSecure(context, pluginLockInstanceState, settingsHelper);
        }
        this.mSecure.mInstanceState = pluginLockInstanceState;
        if (this.mShortcut == null) {
            this.mShortcut = new PluginLockShortcut(context, pluginLockInstanceState, settingsHelper, this);
        }
        this.mShortcut.mInstanceState = pluginLockInstanceState;
        if (this.mStatusBar == null) {
            PluginLockStatusBar pluginLockStatusBar = new PluginLockStatusBar(context, pluginLockInstanceState, settingsHelper);
            this.mStatusBar = pluginLockStatusBar;
            pluginLockStatusBar.mCallback = this.mStatusBarCallback;
        }
        this.mStatusBar.mInstanceState = pluginLockInstanceState;
        if (this.mSwipe == null) {
            this.mSwipe = new PluginLockSwipe(context, pluginLockInstanceState, settingsHelper);
        }
        this.mSwipe.mInstanceState = pluginLockInstanceState;
        PluginLockWallpaper pluginLockWallpaper = this.mLockWallpaper;
        pluginLockWallpaper.mInstanceState = pluginLockInstanceState;
        Log.d("PluginLockWallpaper", "setInstanceState, screen: " + i + ", instanceState: " + pluginLockInstanceState);
        if (pluginLockInstanceState == null && (((!LsRune.WALLPAPER_SUB_WATCHFACE && !LsRune.WALLPAPER_VIRTUAL_DISPLAY) || i != 1) && pluginLockWallpaper.isDynamicWallpaper())) {
            pluginLockWallpaper.reset(false);
        }
        if (pluginLockInstanceState != null) {
            this.mPluginContext = pluginLockInstanceState.mContext;
        } else {
            this.mPluginContext = null;
        }
    }

    public final void setKeyguardUserSwitchListener(KeyguardListener$UserSwitch keyguardListener$UserSwitch) {
        LogUtil.d("PluginLockMediatorImpl", "setKeyguardUserSwitchListener: " + keyguardListener$UserSwitch, new Object[0]);
        synchronized (this.mUserSwitchListenerList) {
            for (int i = 0; i < ((ArrayList) this.mUserSwitchListenerList).size(); i++) {
                if (((WeakReference) ((ArrayList) this.mUserSwitchListenerList).get(i)).get() == keyguardListener$UserSwitch) {
                    return;
                }
            }
            ((ArrayList) this.mUserSwitchListenerList).add(new WeakReference(keyguardListener$UserSwitch));
        }
    }

    public final void setPluginLock(PluginLock pluginLock) {
        PluginLockListener$State pluginLockListener$State;
        StringBuilder sb = new StringBuilder("setPluginLock() ");
        List list = this.mStateListenerList;
        sb.append(((ArrayList) list).size());
        Log.d("PluginLockMediatorImpl", sb.toString());
        for (int i = 0; i < ((ArrayList) list).size(); i++) {
            WeakReference weakReference = (WeakReference) ((ArrayList) list).get(i);
            if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                pluginLockListener$State.setPluginLock(pluginLock);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0137, code lost:
    
        if (r10.mBitmap == null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01f9, code lost:
    
        if (r1 != false) goto L122;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setPluginWallpaper(int r14, int r15, int r16, java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockMediatorImpl.setPluginWallpaper(int, int, int, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setPluginWallpaperHint(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            r1 = 1
            if (r6 == 0) goto L3c
            java.lang.String r2 = "white"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto L1a
            android.app.SemWallpaperColors$Builder r6 = new android.app.SemWallpaperColors$Builder
            r6.<init>()
            r6.setColorType(r0)
            android.app.SemWallpaperColors r6 = r6.build()
            goto L3d
        L1a:
            java.lang.String r2 = "black"
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto L2f
            android.app.SemWallpaperColors$Builder r6 = new android.app.SemWallpaperColors$Builder
            r6.<init>()
            r6.setColorType(r1)
            android.app.SemWallpaperColors r6 = r6.build()
            goto L3d
        L2f:
            java.lang.String r2 = ""
            boolean r2 = r6.equals(r2)
            if (r2 != 0) goto L3c
            android.app.SemWallpaperColors r6 = android.app.SemWallpaperColors.fromXml(r6)
            goto L3d
        L3c:
            r6 = 0
        L3d:
            boolean r2 = com.android.systemui.LsRune.WALLPAPER_SUB_WATCHFACE
            if (r2 != 0) goto L45
            boolean r2 = com.android.systemui.LsRune.WALLPAPER_VIRTUAL_DISPLAY
            if (r2 == 0) goto Lb7
        L45:
            com.android.systemui.pluginlock.component.PluginHomeWallpaper r2 = r5.mHomeWallpaper
            int r3 = r2.getWallpaperType(r1)
            r4 = 10
            if (r3 <= r4) goto L50
            r0 = r1
        L50:
            if (r0 == 0) goto Lb7
            r2.getClass()
            int r0 = com.android.systemui.pluginlock.component.PluginHomeWallpaper.sScreenType
            if (r0 != r1) goto Lb7
            boolean r0 = com.android.systemui.LsRune.WALLPAPER_VIRTUAL_DISPLAY
            if (r0 == 0) goto L6a
            boolean r5 = r5.mIsCoverAttached
            if (r5 != 0) goto L6a
            java.lang.String r5 = "PluginLockMediatorImpl"
            java.lang.String r6 = "setPluginWallpaperHint() cover is not attached"
            android.util.Log.w(r5, r6)
            return
        L6a:
            java.util.Map r5 = r2.mWallpaperDataList
            int r0 = com.android.systemui.pluginlock.component.PluginHomeWallpaper.sScreenType
            int r0 = com.android.systemui.pluginlock.component.PluginHomeWallpaper.getKey(r0)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r5
            java.util.HashMap r1 = (java.util.HashMap) r1
            java.lang.Object r0 = r1.get(r0)
            com.android.systemui.pluginlock.component.PluginHomeWallpaper$WallpaperData r0 = (com.android.systemui.pluginlock.component.PluginHomeWallpaper.WallpaperData) r0
            if (r0 == 0) goto L83
            r0.mHints = r6
        L83:
            com.android.systemui.pluginlock.component.PluginWallpaperCallback r6 = r2.mWallpaperUpdateCallback
            if (r6 == 0) goto Lee
            int r6 = com.android.systemui.pluginlock.component.PluginHomeWallpaper.sScreenType
            int r6 = com.android.systemui.pluginlock.component.PluginHomeWallpaper.getKey(r6)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "updateHint() onWallpaperHintUpdate will be called: "
            r0.<init>(r1)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "PluginHomeWallpaper"
            android.util.Log.d(r1, r0)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            java.util.HashMap r5 = (java.util.HashMap) r5
            java.lang.Object r5 = r5.get(r6)
            com.android.systemui.pluginlock.component.PluginHomeWallpaper$WallpaperData r5 = (com.android.systemui.pluginlock.component.PluginHomeWallpaper.WallpaperData) r5
            if (r5 == 0) goto Lee
            com.android.systemui.pluginlock.component.PluginWallpaperCallback r6 = r2.mWallpaperUpdateCallback
            android.app.SemWallpaperColors r5 = r5.mHints
            r6.onWallpaperHintUpdate(r5)
            goto Lee
        Lb7:
            com.android.systemui.pluginlock.component.PluginLockWallpaper r0 = r5.mLockWallpaper
            java.util.List r2 = r0.mWallpaperDataList
            int r3 = r0.getScreenType()
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            java.lang.Object r2 = r2.get(r3)
            com.android.systemui.pluginlock.component.PluginLockWallpaper$PluginLockWallpaperData r2 = (com.android.systemui.pluginlock.component.PluginLockWallpaper.PluginLockWallpaperData) r2
            r2.mHints = r6
            r0.updateHint()
            int r0 = r5.mViewMode
            if (r0 != r1) goto Lee
            com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 r0 = r5.mWindowListener
            if (r0 == 0) goto Lee
            android.os.Looper r0 = android.os.Looper.myLooper()
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            if (r0 != r1) goto Le4
            com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 r5 = r5.mWindowListener
            r5.onViewModePageChanged(r6)
            goto Lee
        Le4:
            android.os.Handler r0 = r5.mHandler
            com.android.systemui.pluginlock.PluginLockMediatorImpl$$ExternalSyntheticLambda1 r1 = new com.android.systemui.pluginlock.PluginLockMediatorImpl$$ExternalSyntheticLambda1
            r1.<init>()
            r0.post(r1)
        Lee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockMediatorImpl.setPluginWallpaperHint(java.lang.String):void");
    }

    public final void setScreenOrientation(boolean z, boolean z2) {
        EmergencyButtonController$$ExternalSyntheticOutline0.m("setScreenOrientation noSensor: ", z, ", hideMenu : ", z2, "PluginLockMediatorImpl");
        if (!z && WallpaperUtils.isVideoWallpaper()) {
            Log.d("PluginLockMediatorImpl", "setScreenOrientation ignore, video wallpaper");
            return;
        }
        if (z) {
            Point point = DeviceState.sDisplaySize;
            if (DeviceType.isTablet()) {
                Log.d("PluginLockMediatorImpl", "setScreenOrientation ignore, tablet");
                return;
            }
        }
        if (this.mWindowListener != null) {
            if (z) {
                this.mIsRotateMenuHide = z2;
            } else {
                this.mIsRotateMenuHide = false;
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                SecNotificationShadeWindowControllerHelperImpl.access$setScreenOrientation(this.mWindowListener.this$0, z);
            } else {
                this.mHandler.post(new PluginLockMediatorImpl$$ExternalSyntheticLambda0(this, z, 3));
            }
        }
    }

    public final void updateDynamicLockData(String str) {
        DynamicLockData dynamicLockData;
        PluginLockListener$State pluginLockListener$State;
        int i;
        PluginLockUtils pluginLockUtils = this.mUtils;
        int i2 = 0;
        if ((LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY) && sScreenType == 1) {
            LogUtil.w("PluginLockMediatorImpl", "updateDynamicLockData skip", new Object[0]);
            return;
        }
        LogUtil.d("PluginLockMediatorImpl", KeyAttributes$$ExternalSyntheticOutline0.m("updateDynamicLockData dynamicLockData: ", str), new Object[0]);
        try {
            dynamicLockData = (DynamicLockData) new Gson().fromJson(DynamicLockData.class, str);
        } catch (Throwable th) {
            pluginLockUtils.addDump("PluginLockMediatorImpl", "[parse, update] " + th.toString());
            th.printStackTrace();
            dynamicLockData = null;
        }
        Log.d("PluginLockMediatorImpl", "updateDynamicLockData() currData:" + this.mCurrentDynamicLockData + ", newData:" + dynamicLockData);
        if (dynamicLockData != null) {
            try {
                PluginLockSwipe pluginLockSwipe = this.mSwipe;
                DynamicLockData dynamicLockData2 = this.mCurrentDynamicLockData;
                pluginLockSwipe.getClass();
                Log.d("PluginLockSwipe", "update()");
                pluginLockSwipe.apply(dynamicLockData2, dynamicLockData);
                this.mSecure.getClass();
                Log.d("PluginLockSecure", "update()");
                Log.d("PluginLockSecure", "apply()");
                dynamicLockData.getCaptureData().getType().intValue();
                PluginLockWallpaper pluginLockWallpaper = this.mLockWallpaper;
                DynamicLockData dynamicLockData3 = this.mCurrentDynamicLockData;
                pluginLockWallpaper.getClass();
                Log.d("PluginLockWallpaper", "update()");
                if (dynamicLockData3 == null || !dynamicLockData.getWallpaperData().equals(dynamicLockData3.getWallpaperData())) {
                    dynamicLockData.getWallpaperData().getUpdateStyle().intValue();
                    dynamicLockData.getWallpaperData().getRecoverType().intValue();
                }
                this.mHelpText.getClass();
                Log.d("PluginLockHelpText", "update()");
                Log.d("PluginLockHelpText", "apply()");
                this.mLockIcon.getClass();
                Log.d("PluginLockLockIcon", "update()");
            } catch (Throwable th2) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[basic, update] " + th2.toString());
                th2.printStackTrace();
            }
            try {
                this.mClock.update(this.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th3) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[clock, update] " + th3.toString());
                th3.printStackTrace();
            }
            try {
                this.mMusic.apply(this.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th4) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[music, update] " + th4.toString());
                th4.printStackTrace();
            }
            try {
                this.mNotification.update(this.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th5) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[notification, update] " + th5.toString());
                th5.printStackTrace();
            }
            try {
                PluginLockStatusBar pluginLockStatusBar = this.mStatusBar;
                pluginLockStatusBar.getClass();
                Log.d("PluginLockStatusBar", "update()");
                boolean isStatusBarIconVisible = dynamicLockData.isStatusBarIconVisible();
                boolean isStatusBarNetworkVisible = dynamicLockData.isStatusBarNetworkVisible();
                KeyguardStatusBarViewController.AnonymousClass6 anonymousClass6 = pluginLockStatusBar.mCallback;
                if (anonymousClass6 != null) {
                    int i3 = 4;
                    if (isStatusBarIconVisible) {
                        i = 0;
                    } else {
                        i = 4;
                    }
                    if (isStatusBarNetworkVisible) {
                        i3 = 0;
                    }
                    anonymousClass6.onVisibilityUpdated(i, i3);
                }
            } catch (Throwable th6) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[statusbar, update] " + th6.toString());
                th6.printStackTrace();
            }
            try {
                this.mShortcut.update(this.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th7) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[shortcut, update] " + th7.toString());
                th7.printStackTrace();
            }
            this.mCurrentDynamicLockData = dynamicLockData;
            this.mIsDynamicLockData = dynamicLockData.isDlsData();
            publishLockStarState();
        }
        while (true) {
            ArrayList arrayList = (ArrayList) this.mStateListenerList;
            if (i2 < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i2);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.updateDynamicLockData(str);
                }
                i2++;
            } else {
                return;
            }
        }
    }

    public final void updateWindowSecureState(boolean z) {
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("updateWindowSecureState() : ", z, "PluginLockMediatorImpl");
        this.mIsSecureWindow = z;
        if (this.mWindowListener != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1 = this.mWindowListener;
                secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1.getClass();
                String str = SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG;
                SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = secNotificationShadeWindowControllerHelperImpl$pluginLockListener$1.this$0;
                NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
                currentState.securedWindow = z;
                secNotificationShadeWindowControllerHelperImpl.apply(currentState);
                return;
            }
            this.mHandler.post(new PluginLockMediatorImpl$$ExternalSyntheticLambda0(this, z, 0));
        }
    }
}
