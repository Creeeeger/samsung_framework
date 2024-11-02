package com.android.systemui.blur;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import android.view.Choreographer;
import android.view.animation.PathInterpolator;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationShadeWindowView;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.statusbar.phone.CapturedBlurContainer;
import com.android.systemui.statusbar.phone.CapturedBlurContainerController;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.SecPanelBackgroundController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.ConfigurationState;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecQpBlurController implements ShadeExpansionListener, StatusBarStateController.StateListener, ConfigurationController.ConfigurationListener, SettingsHelper.OnChangedCallback, PanelScreenShotLogger.LogProvider, DisplayLifecycle.Observer {
    public final int backgroundColorId;
    public float mAnimatedFraction;
    public SecPanelBackgroundController mBackgroundController;
    public ValueAnimator mBlurAnimator;
    public final AnonymousClass2 mBlurUtils;
    public final PathInterpolator mCaptureInterpolator;
    public CapturedBlurContainerController mCapturedBlurController;
    public final Choreographer mChoreographer;
    public final QSColorCurve mColorCurve;
    public final Context mContext;
    public final PathInterpolator mInterpolator;
    public boolean mIsBlurReduced;
    public boolean mIsBouncerShowing;
    public boolean mIsMirrorVisible;
    public boolean mIsWakingUp;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardWallpaper mKeyguardWallpaper;
    public final ConfigurationState mLastConfigurationState;
    public final Lazy mLazyUnlockedScreenOffAnimationController;
    public boolean mNeedToUpdateByConfig;
    public final ConfigurationState mPanelCollapseConfig;
    public float mPanelExpandedFraction;
    public boolean mQsExpanded;
    public NotificationShadeWindowView mRoot;
    public final SettingsHelper mSettingsHelper;
    public final ShadeControllerImpl mShadeControllerImpl;
    public boolean mShouldUseBlurFilter;
    public final StatusBarStateController mStatusBarStateController;
    public final SecQpBlurController$$ExternalSyntheticLambda0 mUpdateBlurCallback;
    public float mWallpaperBlurRadius;
    public float mWindowBlurRadius;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.blur.SecQpBlurController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x003e, code lost:
        
            if (r5 != false) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean hasCustomColorForPanelBG() {
            /*
                r5 = this;
                com.android.systemui.blur.SecQpBlurController r5 = com.android.systemui.blur.SecQpBlurController.this
                int r0 = r5.backgroundColorId
                android.content.Context r1 = r5.mContext
                int r0 = r1.getColor(r0)
                java.lang.String r0 = java.lang.Integer.toHexString(r0)
                java.lang.String r2 = "ff5d5d5d"
                boolean r0 = r0.equals(r2)
                r2 = 1
                r0 = r0 ^ r2
                com.android.systemui.util.SettingsHelper r5 = r5.mSettingsHelper
                boolean r5 = r5.isUltraPowerSavingMode()
                android.content.res.Resources r3 = r1.getResources()
                r4 = 2131034235(0x7f05007b, float:1.7678982E38)
                boolean r3 = r3.getBoolean(r4)
                r3 = r3 ^ r2
                r4 = 0
                if (r5 != 0) goto L43
                if (r3 == 0) goto L41
                android.content.res.Resources r5 = r1.getResources()
                android.content.res.Configuration r5 = r5.getConfiguration()
                int r5 = r5.uiMode
                r5 = r5 & 32
                if (r5 == 0) goto L3d
                r5 = r2
                goto L3e
            L3d:
                r5 = r4
            L3e:
                if (r5 == 0) goto L41
                goto L43
            L41:
                r5 = r4
                goto L44
            L43:
                r5 = r2
            L44:
                if (r0 == 0) goto L49
                if (r5 != 0) goto L49
                goto L4a
            L49:
                r2 = r4
            L4a:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.blur.SecQpBlurController.AnonymousClass2.hasCustomColorForPanelBG():boolean");
        }
    }

    /* JADX WARN: Type inference failed for: r5v14, types: [com.android.systemui.blur.SecQpBlurController$$ExternalSyntheticLambda0] */
    public SecQpBlurController(Context context, ShadeExpansionStateManager shadeExpansionStateManager, StatusBarStateController statusBarStateController, Choreographer choreographer, KeyguardStateController keyguardStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardWallpaper keyguardWallpaper, SettingsHelper settingsHelper, ConfigurationController configurationController, ShadeControllerImpl shadeControllerImpl, Lazy lazy, WakefulnessLifecycle wakefulnessLifecycle) {
        ConfigurationState.ConfigurationField configurationField = ConfigurationState.ConfigurationField.THEME_SEQ;
        ConfigurationState.ConfigurationField configurationField2 = ConfigurationState.ConfigurationField.ASSET_SEQ;
        ConfigurationState.ConfigurationField configurationField3 = ConfigurationState.ConfigurationField.UI_MODE;
        this.mLastConfigurationState = new ConfigurationState(Arrays.asList(configurationField, configurationField2, configurationField3));
        this.mPanelCollapseConfig = new ConfigurationState(Arrays.asList(configurationField3, ConfigurationState.ConfigurationField.ORIENTATION));
        this.backgroundColorId = R.color.open_theme_qp_bg_color;
        this.mInterpolator = new PathInterpolator(0.63f, 0.0f, 0.63f, 0.83f);
        this.mCaptureInterpolator = new PathInterpolator(0.29f, 0.08f, 0.69f, 0.98f);
        this.mAnimatedFraction = 0.0f;
        this.mIsMirrorVisible = false;
        this.mIsBouncerShowing = false;
        this.mIsWakingUp = false;
        this.mContext = context;
        this.mStatusBarStateController = statusBarStateController;
        this.mChoreographer = choreographer;
        this.mKeyguardStateController = keyguardStateController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardWallpaper = keyguardWallpaper;
        this.mSettingsHelper = settingsHelper;
        this.mColorCurve = new QSColorCurve(context);
        this.mBlurUtils = new AnonymousClass2();
        this.mUpdateBlurCallback = new Choreographer.FrameCallback() { // from class: com.android.systemui.blur.SecQpBlurController$$ExternalSyntheticLambda0
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                SecQpBlurController.this.doFrame();
            }
        };
        settingsHelper.registerCallback(this, Settings.System.getUriFor("accessibility_reduce_transparency"), Settings.System.getUriFor("minimal_battery_use"), Settings.System.getUriFor("ultra_powersaving_mode"));
        shadeExpansionStateManager.addExpansionListener(this);
        statusBarStateController.addCallback(this);
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
        this.mShadeControllerImpl = shadeControllerImpl;
        PanelScreenShotLogger.INSTANCE.addLogProvider("SecQpBlurController", this);
        this.mLazyUnlockedScreenOffAnimationController = lazy;
        wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.blur.SecQpBlurController.1
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedWakingUp() {
                SecQpBlurController.this.mIsWakingUp = false;
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                SecQpBlurController.this.mIsWakingUp = true;
            }
        });
        this.mIsBlurReduced = Settings.System.getInt(context.getContentResolver(), "accessibility_reduce_transparency", 0) != 0;
    }

    public final void doCaptureContainerAlpha(float f, CapturedBlurContainerController.BlurType blurType) {
        boolean z;
        CapturedBlurContainerController.BlurType blurType2;
        CapturedBlurContainerController capturedBlurContainerController = this.mCapturedBlurController;
        if (capturedBlurContainerController == null) {
            Log.w("SecQpBlurController", "doCapturedBlur: mCapturedBlurController is null");
            return;
        }
        boolean z2 = true;
        if (((CapturedBlurContainer) capturedBlurContainerController.mView).getVisibility() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (f == 0.0f) {
                ((CapturedBlurContainer) capturedBlurContainerController.mView).setBackground(null);
            }
            if (f > 0.0f) {
                if (((CapturedBlurContainer) capturedBlurContainerController.mView).getBackground() != null && (blurType2 = capturedBlurContainerController.mLastBlurType) != null && blurType2 == blurType) {
                    z2 = false;
                }
                if (z2) {
                    capturedBlurContainerController.captureAndSetBackground(blurType);
                }
            }
            ((CapturedBlurContainer) capturedBlurContainerController.mView).setAlpha(f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void doFrame() {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.blur.SecQpBlurController.doFrame():void");
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("SecQpBlurController =================================================================================== ");
        arrayList.add("  radius = " + this.mColorCurve.radius + " custom_blur_level = " + getCustomBlurPercentage() + " mWindowBlurRadius = " + this.mWindowBlurRadius + " mWallpaperBlurRadius = " + this.mWallpaperBlurRadius);
        arrayList.add("  mIsMirrorVisible = " + this.mIsMirrorVisible + " mIsBouncerShowing = " + this.mIsBouncerShowing + " shouldUseBlurFilter = " + shouldUseBlurFilter() + " bgColor = " + Integer.toHexString(this.mContext.getColor(this.backgroundColorId)));
        arrayList.add("======================================================================================================= ");
        return arrayList;
    }

    public final float getCustomBlurPercentage() {
        return this.mContext.getResources().getInteger(R.integer.theme_designer_quick_star_blur_level) / 100.0f;
    }

    public final void makeAnimationAndRun(float f, float f2, int i) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.blur.SecQpBlurController$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SecQpBlurController secQpBlurController = SecQpBlurController.this;
                secQpBlurController.getClass();
                secQpBlurController.mAnimatedFraction = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                secQpBlurController.mChoreographer.postFrameCallback(secQpBlurController.mUpdateBlurCallback);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.blur.SecQpBlurController.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                SecQpBlurController.this.mBlurAnimator = null;
            }
        });
        ValueAnimator valueAnimator = this.mBlurAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ofFloat.start();
        this.mBlurAnimator = ofFloat;
    }

    public final void notifyWallpaper(boolean z) {
        boolean z2;
        if (this.mStatusBarStateController.getState() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean isVideoWallpaper = WallpaperUtils.isVideoWallpaper();
        if (z2 && isVideoWallpaper && !this.mIsBouncerShowing) {
            Log.d("SecQpBlurController", "notifyWallpaper(" + z + ")");
            SystemUIWallpaperBase systemUIWallpaperBase = ((KeyguardWallpaperController) this.mKeyguardWallpaper).mWallpaperView;
            if (systemUIWallpaperBase != null) {
                systemUIWallpaperBase.updateDrawState(!z);
            }
        }
    }

    @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
    public final void onChanged(Uri uri) {
        if (uri == null) {
            return;
        }
        boolean equals = Settings.System.getUriFor("accessibility_reduce_transparency").equals(uri);
        boolean z = true;
        Context context = this.mContext;
        if (equals) {
            if (Settings.System.getInt(context.getContentResolver(), "accessibility_reduce_transparency", 0) == 0) {
                z = false;
            }
            this.mIsBlurReduced = z;
            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onChanged: accessibility_reduce_transparency: "), this.mIsBlurReduced, "SecQpBlurController");
            SecPanelBackgroundController secPanelBackgroundController = this.mBackgroundController;
            if (secPanelBackgroundController != null) {
                secPanelBackgroundController.mMaxAlpha = 0.3f;
                AnonymousClass2 anonymousClass2 = secPanelBackgroundController.mBlurUtils;
                if (anonymousClass2 != null) {
                    SecQpBlurController secQpBlurController = SecQpBlurController.this;
                    if (secQpBlurController.mIsBlurReduced) {
                        secPanelBackgroundController.mMaxAlpha = 1.0f;
                    } else if (secQpBlurController.mSettingsHelper.isUltraPowerSavingMode()) {
                        secPanelBackgroundController.mMaxAlpha = 1.0f;
                    }
                }
                secPanelBackgroundController.updatePanel();
            }
            CapturedBlurContainerController capturedBlurContainerController = this.mCapturedBlurController;
            if (capturedBlurContainerController != null) {
                capturedBlurContainerController.updateContainerVisibility();
                return;
            }
            return;
        }
        if (Settings.System.getUriFor("minimal_battery_use").equals(uri) || Settings.System.getUriFor("ultra_powersaving_mode").equals(uri)) {
            Log.d("SecQpBlurController", "onChanged: minimal_battery_use || ultra_powersaving_mode");
            if ((context.getResources().getConfiguration().uiMode & 32) == 0) {
                z = false;
            }
            if (z) {
                SecPanelBackgroundController secPanelBackgroundController2 = this.mBackgroundController;
                if (secPanelBackgroundController2 != null) {
                    secPanelBackgroundController2.updatePanel();
                }
                CapturedBlurContainerController capturedBlurContainerController2 = this.mCapturedBlurController;
                if (capturedBlurContainerController2 != null) {
                    capturedBlurContainerController2.updateContainerVisibility();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        ConfigurationState configurationState = this.mLastConfigurationState;
        if (configurationState.needToUpdate(configuration)) {
            this.mNeedToUpdateByConfig = true;
            SecPanelBackgroundController secPanelBackgroundController = this.mBackgroundController;
            if (secPanelBackgroundController != null) {
                secPanelBackgroundController.updatePanel();
            }
            CapturedBlurContainerController capturedBlurContainerController = this.mCapturedBlurController;
            if (capturedBlurContainerController != null) {
                capturedBlurContainerController.updateContainerVisibility();
            }
            doFrame();
            configurationState.update(configuration);
        }
        ConfigurationState configurationState2 = this.mPanelCollapseConfig;
        if (configurationState2.needToUpdate(configuration)) {
            if (QpRune.QUICK_PANEL_BLUR_MASSIVE) {
                int state = this.mStatusBarStateController.getState();
                ShadeControllerImpl shadeControllerImpl = this.mShadeControllerImpl;
                if (state == 1) {
                    shadeControllerImpl.mNotificationPanelViewController.animateCollapseQs(true);
                } else if (this.mPanelExpandedFraction > 0.0f) {
                    shadeControllerImpl.instantCollapseShade();
                }
            }
            configurationState2.update(configuration);
        }
    }

    @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
    public final void onFolderStateChanged(boolean z) {
        SecPanelBackgroundController secPanelBackgroundController = this.mBackgroundController;
        if (secPanelBackgroundController != null) {
            secPanelBackgroundController.updatePanel();
        }
    }

    @Override // com.android.systemui.shade.ShadeExpansionListener
    public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z;
        float f;
        float f2;
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        boolean z2 = false;
        if (statusBarStateController.getState() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        float screenHeight = DeviceState.getScreenHeight(this.mContext);
        boolean z3 = QpRune.QUICK_PANEL_BLUR_MASSIVE;
        if (z3) {
            f = 0.35f;
        } else {
            f = 0.6f;
        }
        float max = Math.max(Math.min(1.0f, shadeExpansionChangeEvent.dragDownPxAmount / (screenHeight * f)), shadeExpansionChangeEvent.fraction);
        if (this.mPanelExpandedFraction != max) {
            this.mPanelExpandedFraction = max;
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("onPanelExpansionChanged mPanelExpandedFraction: "), this.mPanelExpandedFraction, "SecQpBlurController");
            if (this.mColorCurve.isCoverDisplay()) {
                f2 = 348.0f;
            } else if (z3) {
                f2 = 70.0f;
            } else if (QpRune.QUICK_TABLET) {
                f2 = 200.0f;
            } else {
                f2 = 400.0f;
            }
            float customBlurPercentage = getCustomBlurPercentage() * f2;
            if (statusBarStateController.getState() == 0) {
                z2 = true;
            }
            if (z2) {
                float f3 = this.mPanelExpandedFraction;
                if ((f3 == 1.0f && this.mWindowBlurRadius != customBlurPercentage) || (f3 == 0.0f && this.mWindowBlurRadius != 0.0f)) {
                    doFrame();
                }
            }
        }
        this.mChoreographer.postFrameCallback(this.mUpdateBlurCallback);
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        SecPanelBackgroundController secPanelBackgroundController = this.mBackgroundController;
        if (secPanelBackgroundController != null && secPanelBackgroundController.mStatusBarState != i) {
            secPanelBackgroundController.mStatusBarState = i;
            secPanelBackgroundController.updatePanel();
        }
        if (i == 2) {
            this.mPanelExpandedFraction = 1.0f;
        }
        this.mChoreographer.postFrameCallback(this.mUpdateBlurCallback);
    }

    public final void setBrightnessMirrorVisible(boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setBrightnessMirrorVisible: ", z, "SecQpBlurController");
        this.mIsMirrorVisible = z;
        if (z) {
            makeAnimationAndRun(1.0f, 0.0f, 150);
        } else {
            makeAnimationAndRun(0.0f, 1.0f, 200);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean shouldUseBlurFilter() {
        byte b;
        byte b2;
        boolean z = true;
        if (this.mStatusBarStateController.getState() == 0) {
            b = true;
        } else {
            b = false;
        }
        if (b != false) {
            return false;
        }
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) this.mKeyguardStateController;
        if (!keyguardStateControllerImpl.mOccluded && this.mSettingsHelper.isUltraPowerSavingMode()) {
            return true;
        }
        int i = this.mContext.getResources().getConfiguration().semDisplayDeviceType;
        if (WallpaperUtils.sWallpaperType[WallpaperUtils.isSubDisplay() ? 1 : 0] == 7) {
            b2 = true;
        } else {
            b2 = false;
        }
        if (keyguardStateControllerImpl.mOccluded || !this.mKeyguardUpdateMonitor.hasLockscreenWallpaper() || WallpaperUtils.isVideoWallpaper() || b2 != false) {
            z = false;
        }
        if (z != this.mShouldUseBlurFilter) {
            this.mShouldUseBlurFilter = z;
            SecPanelBackgroundController secPanelBackgroundController = this.mBackgroundController;
            if (secPanelBackgroundController != null) {
                secPanelBackgroundController.updatePanel();
            }
        }
        return z;
    }
}
