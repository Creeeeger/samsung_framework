package com.android.systemui.wallpaper;

import android.util.Log;
import android.view.ViewGroup;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.pluginlock.PluginWallpaperManagerImpl;
import com.android.systemui.wallpaper.view.KeyguardTransitionWallpaper;
import com.android.systemui.wallpaper.view.SystemUIWallpaper;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardWallpaperController$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardWallpaperController f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ KeyguardWallpaperController$$ExternalSyntheticLambda9(KeyguardWallpaperController keyguardWallpaperController, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardWallpaperController;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                KeyguardWallpaperController keyguardWallpaperController = this.f$0;
                boolean z2 = this.f$1;
                keyguardWallpaperController.mRunnableCleanUp = null;
                Log.i("KeyguardWallpaperController", "cleanUpOnUiThread(), view = " + keyguardWallpaperController.mWallpaperView);
                ViewGroup viewGroup = keyguardWallpaperController.mRootView;
                if (viewGroup != null && viewGroup.getChildCount() > 0 && z2) {
                    keyguardWallpaperController.removeAllChildViews(keyguardWallpaperController.mRootView, true);
                }
                SystemUIWallpaperBase systemUIWallpaperBase = keyguardWallpaperController.mWallpaperView;
                if (systemUIWallpaperBase != null) {
                    systemUIWallpaperBase.cleanUp();
                    keyguardWallpaperController.mWallpaperView = null;
                    return;
                }
                return;
            default:
                KeyguardWallpaperController keyguardWallpaperController2 = this.f$0;
                boolean z3 = this.f$1;
                if (keyguardWallpaperController2.mWallpaperView != null) {
                    KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onTransitionAod: isScreenOff = ", z3, "KeyguardWallpaperController");
                    if (!z3 || keyguardWallpaperController2.mDozeParameters.mControlScreenOffAnimation) {
                        if (((PluginWallpaperManagerImpl) keyguardWallpaperController2.mPluginWallpaperManager).isDynamicWallpaperEnabled()) {
                            if (z3) {
                                if (keyguardWallpaperController2.mTransitionView == null) {
                                    KeyguardTransitionWallpaper keyguardTransitionWallpaper = new KeyguardTransitionWallpaper(keyguardWallpaperController2.mContext, keyguardWallpaperController2.mUpdateMonitor, null, keyguardWallpaperController2.mPluginWallpaperManager, keyguardWallpaperController2.mExecutor, keyguardWallpaperController2.mWcgConsumer, false, keyguardWallpaperController2.mWallpaperView, keyguardWallpaperController2.mOccluded);
                                    keyguardWallpaperController2.mTransitionView = keyguardTransitionWallpaper;
                                    keyguardTransitionWallpaper.mUpdateListener = keyguardWallpaperController2.mTransitionListener;
                                    ViewGroup viewGroup2 = keyguardWallpaperController2.mRootView;
                                    if (viewGroup2 != null) {
                                        viewGroup2.addView(keyguardTransitionWallpaper);
                                    }
                                }
                                SystemUIWallpaperBase systemUIWallpaperBase2 = keyguardWallpaperController2.mWallpaperView;
                                if (((SystemUIWallpaper) systemUIWallpaperBase2).mTransitionAnimationListener == null) {
                                    z = false;
                                }
                                if (!z) {
                                    systemUIWallpaperBase2.setTransitionAnimationListener(keyguardWallpaperController2.mTransitionAnimationListener);
                                }
                            } else if (keyguardWallpaperController2.mPendingRotationForTransitionView) {
                                keyguardWallpaperController2.disableRotateIfNeeded();
                                keyguardWallpaperController2.mPendingRotationForTransitionView = false;
                            }
                            SystemUIWallpaperBase systemUIWallpaperBase3 = keyguardWallpaperController2.mTransitionView;
                            if (systemUIWallpaperBase3 != null) {
                                if (z3) {
                                    ((KeyguardTransitionWallpaper) systemUIWallpaperBase3).mWallpaperView = keyguardWallpaperController2.mWallpaperView;
                                } else {
                                    ((KeyguardTransitionWallpaper) systemUIWallpaperBase3).mValueAnimator.start();
                                }
                            }
                        }
                        if (!((PluginWallpaperManagerImpl) keyguardWallpaperController2.mPluginWallpaperManager).isDynamicWallpaperEnabled() && WallpaperUtils.getWallpaperType() == 8) {
                            Log.d("KeyguardWallpaperController", "onTransitionAod: Ignore transition animation.");
                            return;
                        }
                        SystemUIWallpaper systemUIWallpaper = (SystemUIWallpaper) keyguardWallpaperController2.mWallpaperView;
                        systemUIWallpaper.mIsScreenOffAnimation = z3;
                        if (z3) {
                            systemUIWallpaper.animate().setDuration(800L).scaleX(1.02f).scaleY(1.02f).setListener(systemUIWallpaper.mAnimatorListener).start();
                            return;
                        } else {
                            systemUIWallpaper.animate().setDuration(500L).scaleX(1.0f).scaleY(1.0f).setListener(systemUIWallpaper.mAnimatorListener).start();
                            return;
                        }
                    }
                    return;
                }
                return;
        }
    }
}
