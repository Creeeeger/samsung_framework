package com.android.systemui.statusbar.phone;

import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.os.RemoteException;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.graphics.ColorUtils;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.aod.AODAmbientWallpaperHelper;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.statusbar.LightRevealScrim;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CentralSurfacesImpl f$0;

    public /* synthetic */ CentralSurfacesImpl$$ExternalSyntheticLambda5(CentralSurfacesImpl centralSurfacesImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = centralSurfacesImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf;
        boolean z;
        ComponentName component;
        boolean z2;
        String str;
        boolean z3;
        boolean z4;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.checkBarModes();
                return;
            case 1:
                final CentralSurfacesImpl centralSurfacesImpl = this.f$0;
                WallpaperInfo wallpaperInfoForUser = centralSurfacesImpl.mWallpaperManager.getWallpaperInfoForUser(((UserTrackerImpl) centralSurfacesImpl.mUserTracker).getUserId());
                centralSurfacesImpl.mWallpaperController.wallpaperInfo = wallpaperInfoForUser;
                AODAmbientWallpaperHelper aODAmbientWallpaperHelper = centralSurfacesImpl.mAODAmbientWallpaperHelper;
                aODAmbientWallpaperHelper.getClass();
                boolean z5 = LsRune.AOD_SUB_DISPLAY_LOCK;
                final boolean z6 = false;
                UserTracker userTracker = aODAmbientWallpaperHelper.userTracker;
                WallpaperManager wallpaperManager = aODAmbientWallpaperHelper.wallpaperManager;
                SettingsHelper settingsHelper = aODAmbientWallpaperHelper.settingsHelper;
                String str2 = null;
                String str3 = "";
                if (z5) {
                    if (aODAmbientWallpaperHelper.isFolded) {
                        ComponentName semGetWallpaperComponent = wallpaperManager.semGetWallpaperComponent(17, ((UserTrackerImpl) userTracker).getUserId());
                        if (semGetWallpaperComponent != null) {
                            str2 = semGetWallpaperComponent.getClassName();
                        }
                        str = String.valueOf(str2);
                        if (Intrinsics.areEqual("com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedSubService", str) && settingsHelper.isLiveWallpaperEnabled()) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        aODAmbientWallpaperHelper.isSubWonderLandWallpaper = z4;
                        boolean z7 = aODAmbientWallpaperHelper.isFolded;
                        boolean z8 = aODAmbientWallpaperHelper.isMainWonderLandWallpaper;
                        boolean z9 = aODAmbientWallpaperHelper.isSubWonderLandWallpaper;
                        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("updateWonderLandWallpaperState: isFolded=", z7, ", isMainWonderLandWallpaper=", z8, ", isSubWonderLandWallpaper=");
                        m.append(z9);
                        m.append(" mainWallpaperClassName=");
                        m.append(str3);
                        m.append(", subWallpaperClassName=");
                        ExifInterface$$ExternalSyntheticOutline0.m(m, str, "AODAmbientWallpaperHelper");
                        if (centralSurfacesImpl.mContext.getResources().getBoolean(17891636) && wallpaperInfoForUser != null && wallpaperInfoForUser.supportsAmbientMode() && centralSurfacesImpl.mAODAmbientWallpaperHelper.isWonderLandAmbientWallpaper()) {
                            z6 = true;
                        }
                        centralSurfacesImpl.mMainHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda14
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i;
                                float f;
                                CentralSurfacesImpl centralSurfacesImpl2 = CentralSurfacesImpl.this;
                                boolean z10 = z6;
                                centralSurfacesImpl2.getClass();
                                if (LsRune.AOD_LIGHT_REVEAL) {
                                    if (z10) {
                                        i = 4;
                                    } else {
                                        i = 0;
                                    }
                                    LightRevealScrim lightRevealScrim = centralSurfacesImpl2.mLightRevealScrim;
                                    lightRevealScrim.setVisibility(i);
                                    if (z10) {
                                        f = 0.0f;
                                    } else {
                                        f = 1.0f;
                                    }
                                    lightRevealScrim.setAlpha(f);
                                }
                                NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) centralSurfacesImpl2.mNotificationShadeWindowController;
                                NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
                                notificationShadeWindowState.wallpaperSupportsAmbientMode = z10;
                                notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
                                ScrimController scrimController = centralSurfacesImpl2.mScrimController;
                                scrimController.getClass();
                                Log.i("ScrimController", "setWallpaperSupportsAmbientMode: wallpaperSupportsAmbientMode=" + z10);
                                scrimController.mWallpaperSupportsAmbientMode = z10;
                                for (ScrimState scrimState : ScrimState.values()) {
                                    scrimState.mWallpaperSupportsAmbientMode = z10;
                                }
                                centralSurfacesImpl2.mKeyguardViewMediator.setWallpaperSupportsAmbientMode(z10);
                            }
                        });
                        return;
                    }
                    ComponentName semGetWallpaperComponent2 = wallpaperManager.semGetWallpaperComponent(5, ((UserTrackerImpl) userTracker).getUserId());
                    if (semGetWallpaperComponent2 != null) {
                        str2 = semGetWallpaperComponent2.getClassName();
                    }
                    valueOf = String.valueOf(str2);
                    if (Intrinsics.areEqual("com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedService", valueOf) && settingsHelper.isLiveWallpaperEnabled()) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    aODAmbientWallpaperHelper.isMainWonderLandWallpaper = z3;
                } else if (LsRune.AOD_SUB_DISPLAY_COVER) {
                    ComponentName semGetWallpaperComponent3 = wallpaperManager.semGetWallpaperComponent(5, ((UserTrackerImpl) userTracker).getUserId());
                    if (semGetWallpaperComponent3 != null) {
                        str2 = semGetWallpaperComponent3.getClassName();
                    }
                    valueOf = String.valueOf(str2);
                    if (Intrinsics.areEqual("com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedService", valueOf) && settingsHelper.isLiveWallpaperEnabled(false)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    aODAmbientWallpaperHelper.isMainWonderLandWallpaper = z2;
                } else {
                    if (wallpaperInfoForUser != null && (component = wallpaperInfoForUser.getComponent()) != null) {
                        str2 = component.getClassName();
                    }
                    valueOf = String.valueOf(str2);
                    if (Intrinsics.areEqual(valueOf, "com.samsung.android.wonderland.wallpaper.service.WonderLandWallpaperReloadedService") && settingsHelper.isLiveWallpaperEnabled()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    aODAmbientWallpaperHelper.isMainWonderLandWallpaper = z;
                }
                str3 = valueOf;
                str = "";
                boolean z72 = aODAmbientWallpaperHelper.isFolded;
                boolean z82 = aODAmbientWallpaperHelper.isMainWonderLandWallpaper;
                boolean z92 = aODAmbientWallpaperHelper.isSubWonderLandWallpaper;
                StringBuilder m2 = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("updateWonderLandWallpaperState: isFolded=", z72, ", isMainWonderLandWallpaper=", z82, ", isSubWonderLandWallpaper=");
                m2.append(z92);
                m2.append(" mainWallpaperClassName=");
                m2.append(str3);
                m2.append(", subWallpaperClassName=");
                ExifInterface$$ExternalSyntheticOutline0.m(m2, str, "AODAmbientWallpaperHelper");
                if (centralSurfacesImpl.mContext.getResources().getBoolean(17891636)) {
                    z6 = true;
                }
                centralSurfacesImpl.mMainHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        float f;
                        CentralSurfacesImpl centralSurfacesImpl2 = CentralSurfacesImpl.this;
                        boolean z10 = z6;
                        centralSurfacesImpl2.getClass();
                        if (LsRune.AOD_LIGHT_REVEAL) {
                            if (z10) {
                                i = 4;
                            } else {
                                i = 0;
                            }
                            LightRevealScrim lightRevealScrim = centralSurfacesImpl2.mLightRevealScrim;
                            lightRevealScrim.setVisibility(i);
                            if (z10) {
                                f = 0.0f;
                            } else {
                                f = 1.0f;
                            }
                            lightRevealScrim.setAlpha(f);
                        }
                        NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) centralSurfacesImpl2.mNotificationShadeWindowController;
                        NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
                        notificationShadeWindowState.wallpaperSupportsAmbientMode = z10;
                        notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
                        ScrimController scrimController = centralSurfacesImpl2.mScrimController;
                        scrimController.getClass();
                        Log.i("ScrimController", "setWallpaperSupportsAmbientMode: wallpaperSupportsAmbientMode=" + z10);
                        scrimController.mWallpaperSupportsAmbientMode = z10;
                        for (ScrimState scrimState : ScrimState.values()) {
                            scrimState.mWallpaperSupportsAmbientMode = z10;
                        }
                        centralSurfacesImpl2.mKeyguardViewMediator.setWallpaperSupportsAmbientMode(z10);
                    }
                });
                return;
            case 2:
                CentralSurfacesImpl centralSurfacesImpl2 = this.f$0;
                centralSurfacesImpl2.getClass();
                try {
                    centralSurfacesImpl2.mBarService.onPanelHidden();
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            case 3:
                CentralSurfacesImpl centralSurfacesImpl3 = this.f$0;
                centralSurfacesImpl3.getClass();
                try {
                    centralSurfacesImpl3.mDreamManager.awaken();
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            case 4:
                final CentralSurfacesImpl centralSurfacesImpl4 = this.f$0;
                centralSurfacesImpl4.getClass();
                ((ExecutorImpl) centralSurfacesImpl4.mMainExecutor).execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScrimController scrimController = CentralSurfacesImpl.this.mScrimController;
                        scrimController.getClass();
                        float compositeAlpha = ColorUtils.compositeAlpha((int) 0.0f, 51) / 255.0f;
                        scrimController.mScrimBehindAlphaKeyguard = compositeAlpha;
                        for (ScrimState scrimState : ScrimState.values()) {
                            scrimState.mScrimBehindAlphaKeyguard = compositeAlpha;
                        }
                        scrimController.scheduleUpdate();
                    }
                });
                return;
            case 5:
                this.f$0.updateScrimController();
                return;
            default:
                CentralSurfacesImpl centralSurfacesImpl5 = this.f$0;
                LightRevealScrim lightRevealScrim = centralSurfacesImpl5.mLightRevealScrim;
                boolean z10 = lightRevealScrim.isScrimOpaque;
                NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) centralSurfacesImpl5.mNotificationShadeWindowController;
                NotificationShadeWindowState notificationShadeWindowState = notificationShadeWindowControllerImpl.mCurrentState;
                if (notificationShadeWindowState.lightRevealScrimOpaque != z10) {
                    notificationShadeWindowState.lightRevealScrimOpaque = z10;
                    notificationShadeWindowControllerImpl.apply(notificationShadeWindowState);
                }
                boolean z11 = lightRevealScrim.isScrimOpaque;
                Iterator it = ((ArrayList) centralSurfacesImpl5.mScreenOffAnimationController.animations).iterator();
                while (it.hasNext()) {
                    ((ScreenOffAnimation) it.next()).onScrimOpaqueChanged(z11);
                }
                return;
        }
    }
}
