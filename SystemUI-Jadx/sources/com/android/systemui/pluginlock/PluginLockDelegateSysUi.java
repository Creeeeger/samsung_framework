package com.android.systemui.pluginlock;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.pluginlock.component.PluginLockStatusBar;
import com.android.systemui.pluginlock.listener.PluginLockListener$State;
import com.android.systemui.pluginlock.model.DynamicLockData;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.phone.KeyguardStatusBarViewController;
import com.android.systemui.util.LogUtil;
import com.google.gson.Gson;
import com.samsung.systemui.splugins.pluginlock.PluginLock;
import com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockDelegateSysUi implements PluginLockBasicManager.Callback {
    public final PluginLockMediator mMediator;

    public PluginLockDelegateSysUi(PluginLockMediator pluginLockMediator) {
        this.mMediator = pluginLockMediator;
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void dispatchEvent(Bundle bundle) {
        PluginLockMediator pluginLockMediator;
        String string = bundle.getString("action");
        Log.d("PluginLockDelegateSysUi", "dispatchEvent() event: " + string);
        string.getClass();
        if (string.equals(PluginLock.ACTION_DATA_CLEAR) && (pluginLockMediator = this.mMediator) != null) {
            ((PluginLockMediatorImpl) pluginLockMediator).onDataCleared();
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final String getDynamicLockData() {
        return null;
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void goToLockedShade() {
        PluginLockListener$State pluginLockListener$State;
        Log.d("PluginLockDelegateSysUi", "goToLockedShade");
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) pluginLockMediatorImpl.mStateListenerList;
            if (i < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.goToLockedShade();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final boolean isSecure() {
        PluginLockListener$State pluginLockListener$State;
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) pluginLockMediatorImpl.mStateListenerList;
            if (i >= arrayList.size()) {
                return false;
            }
            WeakReference weakReference = (WeakReference) arrayList.get(i);
            if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                return pluginLockListener$State.isSecure();
            }
            i++;
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void makeExpandedInvisible() {
        PluginLockListener$State pluginLockListener$State;
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) pluginLockMediatorImpl.mStateListenerList;
            if (i < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.makeExpandedInvisible();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void requestDismissKeyguard(Intent intent) {
        boolean z;
        int i;
        PluginLockListener$State pluginLockListener$State;
        PluginLockListener$State pluginLockListener$State2;
        Log.d("PluginLockDelegateSysUi", "requestDismissKeyguard() " + intent);
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) pluginLockMediator;
            pluginLockMediatorImpl.getClass();
            if (intent != null) {
                if (intent.getData() != null || intent.getComponent() != null || intent.getAction() != null) {
                    ComponentName component = intent.getComponent();
                    List list = pluginLockMediatorImpl.mStateListenerList;
                    int i2 = 0;
                    if (component != null) {
                        int i3 = 0;
                        z = false;
                        while (true) {
                            ArrayList arrayList = (ArrayList) list;
                            if (i3 >= arrayList.size()) {
                                break;
                            }
                            WeakReference weakReference = (WeakReference) arrayList.get(i3);
                            if (weakReference != null && (pluginLockListener$State2 = (PluginLockListener$State) weakReference.get()) != null && (pluginLockListener$State2 instanceof NotificationPanelViewController)) {
                                z = pluginLockListener$State2.isNoUnlockNeed(component.getPackageName());
                            }
                            i3++;
                        }
                    } else {
                        z = false;
                    }
                    LogUtil.d("PluginLockMediatorImpl", KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("requestDismissKeyguard isNoUnlockNeedApp: ", z), new Object[0]);
                    if (z) {
                        while (true) {
                            ArrayList arrayList2 = (ArrayList) list;
                            if (i2 < arrayList2.size()) {
                                WeakReference weakReference2 = (WeakReference) arrayList2.get(i2);
                                if (weakReference2 != null) {
                                    PluginLockListener$State pluginLockListener$State3 = (PluginLockListener$State) weakReference2.get();
                                    if (pluginLockListener$State3 instanceof NotificationPanelViewController) {
                                        pluginLockListener$State3.onUnNeedLockAppStarted(component);
                                    }
                                }
                                i2++;
                            } else {
                                return;
                            }
                        }
                    } else {
                        if (intent.getComponent() != null) {
                            i = intent.getComponent().getClassName().hashCode();
                        } else if (intent.getAction() != null) {
                            i = intent.getAction().hashCode();
                        } else {
                            i = 0;
                        }
                        PendingIntent activity = PendingIntent.getActivity(pluginLockMediatorImpl.mContext, i, intent, 201326592);
                        KeyguardUnlockInfo.setUnlockTrigger(KeyguardUnlockInfo.UnlockTrigger.TRIGGER_PLUGIN_LOCK);
                        while (true) {
                            ArrayList arrayList3 = (ArrayList) list;
                            if (i2 < arrayList3.size()) {
                                WeakReference weakReference3 = (WeakReference) arrayList3.get(i2);
                                if (weakReference3 != null && (pluginLockListener$State = (PluginLockListener$State) weakReference3.get()) != null) {
                                    pluginLockListener$State.startPendingIntentDismissingKeyguard(activity);
                                }
                                i2++;
                            } else {
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setBiometricRecognition(boolean z) {
        Log.d("PluginLockDelegateSysUi", "setBiometricRecognition");
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) pluginLockMediator;
            if (pluginLockMediatorImpl.mWindowListener != null) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    pluginLockMediatorImpl.mWindowListener.updateBiometricRecognition(z);
                } else {
                    pluginLockMediatorImpl.mHandler.post(new PluginLockMediatorImpl$$ExternalSyntheticLambda0(pluginLockMediatorImpl, z, 2));
                }
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setDynamicLockData(String str) {
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setDynamicLockData : ", str, "PluginLockDelegateSysUi");
        if (str == null) {
            Log.w("PluginLockDelegateSysUi", "wrong request");
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            setDynamicLockDataInternal(str);
        } else {
            new Handler(Looper.getMainLooper()).post(new PluginLockDelegateSysUi$$ExternalSyntheticLambda0(this, str, 0));
        }
    }

    public final void setDynamicLockDataInternal(String str) {
        DynamicLockData dynamicLockData;
        int i;
        PluginLockListener$State pluginLockListener$State;
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        pluginLockMediatorImpl.mDynamicLockData = str;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) pluginLockMediatorImpl.mStateListenerList;
            if (i3 >= arrayList.size()) {
                break;
            }
            WeakReference weakReference = (WeakReference) arrayList.get(i3);
            if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                pluginLockListener$State.setDynamicLockData(str);
            }
            i3++;
        }
        PluginLockUtils pluginLockUtils = pluginLockMediatorImpl.mUtils;
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("setPluginLockItem() mDynamicLockData:"), pluginLockMediatorImpl.mDynamicLockData, "PluginLockMediatorImpl");
        try {
            dynamicLockData = (DynamicLockData) new Gson().fromJson(DynamicLockData.class, pluginLockMediatorImpl.mDynamicLockData);
        } catch (Throwable th) {
            pluginLockUtils.addDump("PluginLockMediatorImpl", "[parse, apply] " + th.toString());
            th.printStackTrace();
            dynamicLockData = null;
        }
        Log.d("PluginLockMediatorImpl", "setPluginLockItem() currData:" + pluginLockMediatorImpl.mCurrentDynamicLockData);
        Log.d("PluginLockMediatorImpl", "setPluginLockItem() newData:" + dynamicLockData);
        if (dynamicLockData != null) {
            try {
                pluginLockMediatorImpl.mSwipe.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
                pluginLockMediatorImpl.mSecure.getClass();
                Log.d("PluginLockSecure", "apply()");
                dynamicLockData.getCaptureData().getType().intValue();
                pluginLockMediatorImpl.mLockWallpaper.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
                pluginLockMediatorImpl.mHelpText.getClass();
                Log.d("PluginLockHelpText", "apply()");
                pluginLockMediatorImpl.mLockIcon.getClass();
            } catch (Throwable th2) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[basic, apply] " + th2.toString());
                th2.printStackTrace();
            }
            try {
                pluginLockMediatorImpl.mClock.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th3) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[clock, apply] " + th3.toString());
                th3.printStackTrace();
            }
            try {
                pluginLockMediatorImpl.mMusic.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th4) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[music, apply] " + th4.toString());
                th4.printStackTrace();
            }
            try {
                pluginLockMediatorImpl.mNotification.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th5) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[notification, apply] " + th5.toString());
                th5.printStackTrace();
            }
            try {
                pluginLockMediatorImpl.mShortcut.apply(pluginLockMediatorImpl.mCurrentDynamicLockData, dynamicLockData);
            } catch (Throwable th6) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[shortcut, apply] " + th6.toString());
                th6.printStackTrace();
            }
            try {
                PluginLockStatusBar pluginLockStatusBar = pluginLockMediatorImpl.mStatusBar;
                pluginLockStatusBar.getClass();
                Log.d("PluginLockStatusBar", "apply()");
                boolean isStatusBarIconVisible = dynamicLockData.isStatusBarIconVisible();
                boolean isStatusBarNetworkVisible = dynamicLockData.isStatusBarNetworkVisible();
                KeyguardStatusBarViewController.AnonymousClass6 anonymousClass6 = pluginLockStatusBar.mCallback;
                if (anonymousClass6 != null) {
                    if (isStatusBarIconVisible) {
                        i = 0;
                    } else {
                        i = 4;
                    }
                    if (!isStatusBarNetworkVisible) {
                        i2 = 4;
                    }
                    anonymousClass6.onVisibilityUpdated(i, i2);
                }
            } catch (Throwable th7) {
                pluginLockUtils.addDump("PluginLockMediatorImpl", "[statusbar, apply] " + th7.toString());
                th7.printStackTrace();
            }
            pluginLockMediatorImpl.mCurrentDynamicLockData = dynamicLockData;
            pluginLockMediatorImpl.mIsDynamicLockData = dynamicLockData.isDlsData();
            pluginLockMediatorImpl.publishLockStarState();
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setLockscreenTimer(final long j) {
        Log.d("PluginLockDelegateSysUi", "setLockscreenTimer() sec: " + j);
        final PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        if (pluginLockMediatorImpl.mWindowListener != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                pluginLockMediatorImpl.mWindowListener.onScreenTimeoutChanged(j);
            } else {
                pluginLockMediatorImpl.mHandler.post(new Runnable() { // from class: com.android.systemui.pluginlock.PluginLockMediatorImpl$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginLockMediatorImpl pluginLockMediatorImpl2 = PluginLockMediatorImpl.this;
                        pluginLockMediatorImpl2.mWindowListener.onScreenTimeoutChanged(j);
                    }
                });
            }
        }
    }

    public final void setPluginLockInstanceState(int i, PluginLockInstanceState pluginLockInstanceState) {
        PluginLockMediator pluginLockMediator;
        if (pluginLockInstanceState == null && (pluginLockMediator = this.mMediator) != null) {
            setViewMode(0);
            ((PluginLockMediatorImpl) pluginLockMediator).setInstanceState(i, null);
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setPluginLockWallpaper(int i, int i2, String str) {
        ListPopupWindow$$ExternalSyntheticOutline0.m("setPluginLockWallpaper() wallpaperType:", i, "PluginLockDelegateSysUi");
        ((PluginLockMediatorImpl) this.mMediator).setPluginWallpaper(PluginLockMediatorImpl.sScreenType, i, i2, str, null);
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setPluginWallpaper(int i, int i2, int i3, String str) {
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("setPluginWallpaper() screen: ", i, ", wallpaperType:", i2, "PluginLockDelegateSysUi");
        ((PluginLockMediatorImpl) this.mMediator).setPluginWallpaper(i, i2, i3, str, null);
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setPluginWallpaperHints(int i, String str) {
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setPluginWallpaperHints() screen: ", i, ", hints: ");
        StringBuilder sb = new StringBuilder();
        Scanner scanner = new Scanner(str);
        while (scanner.hasNextLine()) {
            String trim = scanner.nextLine().trim();
            if (trim.contains("</Version>") || trim.contains("</Which>") || trim.contains("</FontColor>")) {
                sb.append(trim.replace("</Version>", "").replace("</Which>", "").replace("</FontColor>", ""));
                sb.append(",");
            }
        }
        scanner.close();
        m.append(sb.toString());
        Log.d("PluginLockDelegateSysUi", m.toString());
        ((PluginLockMediatorImpl) this.mMediator).setPluginWallpaperHint(str);
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setScreenOrientation(boolean z, boolean z2) {
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            ((PluginLockMediatorImpl) pluginLockMediator).setScreenOrientation(z, z2);
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setTimeOut(boolean z) {
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        if (pluginLockMediatorImpl.mWindowListener != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                pluginLockMediatorImpl.mWindowListener.updateOverlayUserTimeout(z);
            } else {
                pluginLockMediatorImpl.mHandler.post(new PluginLockMediatorImpl$$ExternalSyntheticLambda0(pluginLockMediatorImpl, z, 1));
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setViewMode(int i) {
        ListPopupWindow$$ExternalSyntheticOutline0.m("setViewMode : ", i, "PluginLockDelegateSysUi");
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            ((PluginLockMediatorImpl) pluginLockMediator).onViewModeChanged(i);
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setWallpaperHints(String str) {
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setWallpaperHints() : ", str, "PluginLockDelegateSysUi");
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            ((PluginLockMediatorImpl) pluginLockMediator).setPluginWallpaperHint(str);
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void updateDynamicLockData(String str) {
        PluginLockMediator pluginLockMediator = this.mMediator;
        ((PluginLockMediatorImpl) pluginLockMediator).getClass();
        int i = PluginLockMediatorImpl.sScreenType;
        Log.d("PluginLockDelegateSysUi", "updateDynamicLockData() screenType: " + i + ", dynamicLockData: " + str);
        if (str == null) {
            Log.w("PluginLockDelegateSysUi", "updateDynamicLockData() wrong request");
            return;
        }
        int i2 = 1;
        if ((LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY) && i == 1) {
            LogUtil.w("PluginLockDelegateSysUi", "updateDynamicLockData() skip", new Object[0]);
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            ((PluginLockMediatorImpl) pluginLockMediator).updateDynamicLockData(str);
        } else {
            new Handler(Looper.getMainLooper()).post(new PluginLockDelegateSysUi$$ExternalSyntheticLambda0(this, str, i2));
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void updateWindowSecureState(boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("updateWindowSecureState : ", z, "PluginLockDelegateSysUi");
        PluginLockMediator pluginLockMediator = this.mMediator;
        if (pluginLockMediator != null) {
            ((PluginLockMediatorImpl) pluginLockMediator).updateWindowSecureState(z);
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void userActivity() {
        PluginLockListener$State pluginLockListener$State;
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) pluginLockMediatorImpl.mStateListenerList;
            if (i < arrayList.size()) {
                WeakReference weakReference = (WeakReference) arrayList.get(i);
                if (weakReference != null && (pluginLockListener$State = (PluginLockListener$State) weakReference.get()) != null) {
                    pluginLockListener$State.onUserActivity();
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setPluginWallpaper(int i, int i2, int i3, String str, String str2) {
        ExifInterface$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("setPluginWallpaper() screen: ", i, ", wallpaperType:", i2, ", iCrops = "), str2, "PluginLockDelegateSysUi");
        ((PluginLockMediatorImpl) this.mMediator).setPluginWallpaper(i, i2, i3, str, str2);
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void setRotationAllowed(boolean z) {
    }

    @Override // com.samsung.systemui.splugins.pluginlock.PluginLockBasicManager.Callback
    public final void onLaunchTransitionFadingEnded() {
    }
}
