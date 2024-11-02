package com.android.keyguard.biometrics;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.hardware.biometrics.BiometricSourceType;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.view.OneShotPreDrawListener;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.SecLockIconView;
import com.android.keyguard.SecLockIconView$$ExternalSyntheticOutline0;
import com.android.keyguard.SecRotationWatcher;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.lockstar.PluginLockStarManager;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.ViewController;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUITextView;
import com.android.systemui.widget.SystemUIWidgetCallback;
import com.samsung.systemui.splugins.lockstar.PluginLockStar;
import com.sec.ims.configuration.DATA;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBiometricViewController extends ViewController implements SystemUIWidgetCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AccessibilityManager accessibilityManager;
    public PluginLockStar.Modifier alphaModifier;
    public KeyguardBiometricsCountDownTimer biometricCountDownTimer;
    public final SystemUITextView biometricErrorText;
    public final SystemUITextView biometricLockOutMessage;
    public final FrameLayout biometricRetryContainer;
    public final SystemUIImageView biometricRetryIcon;
    public boolean bouncerShowing;
    public PluginLockStar.Modifier colorModifier;
    public final ConfigurationController configurationController;
    public final KeyguardBiometricViewController$configurationListener$1 configurationListener;
    public CountDownTimer countDownTimer;
    public int debugCount;
    public int displayDeviceType;
    public int drawableResId;
    public String errorString;
    public boolean isHiddenRetry;
    public boolean isLockOut;
    public boolean isLockStarEnabled;
    public boolean isRunning;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback;
    public final SystemUIImageView lockIcon;
    public PluginLockStar.Modifier lockIconDrawableModifier;
    public final SecLockIconView lockIconView;
    public final KeyguardBiometricViewController$lockStarCallback$1 lockStarCallback;
    public final PluginLockStarManager pluginLockStarManager;
    public final PowerManager powerManager;
    public final KeyguardBiometricViewController$rotationConsumer$1 rotationConsumer;
    public final SecRotationWatcher rotationWatcher;
    public final KeyguardBiometricViewController$settingsListener$1 settingsListener;
    public PluginLockStar.Modifier visibilityModifier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v26, types: [com.android.keyguard.biometrics.KeyguardBiometricViewController$lockStarCallback$1] */
    /* JADX WARN: Type inference failed for: r1v27, types: [com.android.keyguard.biometrics.KeyguardBiometricViewController$settingsListener$1] */
    /* JADX WARN: Type inference failed for: r1v28, types: [com.android.keyguard.biometrics.KeyguardBiometricViewController$rotationConsumer$1] */
    /* JADX WARN: Type inference failed for: r1v29, types: [com.android.keyguard.biometrics.KeyguardBiometricViewController$configurationListener$1] */
    public KeyguardBiometricViewController(KeyguardBiometricView keyguardBiometricView, KeyguardUpdateMonitor keyguardUpdateMonitor, AccessibilityManager accessibilityManager, PowerManager powerManager, SecRotationWatcher secRotationWatcher, ConfigurationController configurationController, PluginLockStarManager pluginLockStarManager) {
        super(keyguardBiometricView);
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.accessibilityManager = accessibilityManager;
        this.powerManager = powerManager;
        this.rotationWatcher = secRotationWatcher;
        this.configurationController = configurationController;
        this.pluginLockStarManager = pluginLockStarManager;
        this.biometricRetryContainer = (FrameLayout) ((KeyguardBiometricView) this.mView).findViewById(R.id.keyguard_biometric_retry_container);
        this.biometricErrorText = (SystemUITextView) ((KeyguardBiometricView) this.mView).findViewById(R.id.keyguard_biometric_error_text);
        this.biometricRetryIcon = (SystemUIImageView) ((KeyguardBiometricView) this.mView).findViewById(R.id.keyguard_biometric_retry_icon);
        this.lockIcon = (SystemUIImageView) ((KeyguardBiometricView) this.mView).findViewById(R.id.bouncer_lock_icon);
        this.lockIconView = (SecLockIconView) ((KeyguardBiometricView) this.mView).findViewById(R.id.bouncer_lock_icon_view);
        this.biometricLockOutMessage = (SystemUITextView) ((KeyguardBiometricView) this.mView).findViewById(R.id.biometric_timeout_message);
        this.errorString = "";
        this.lockStarCallback = new PluginLockStarManager.LockStarCallback() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$lockStarCallback$1
            @Override // com.android.systemui.lockstar.PluginLockStarManager.LockStarCallback
            public final void onChangedLockStarEnabled(boolean z) {
                boolean z2 = LsRune.SECURITY_SUB_DISPLAY_LOCK;
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                if (z2) {
                    keyguardBiometricViewController.isLockStarEnabled = z;
                }
                int i = KeyguardBiometricViewController.$r8$clinit;
                keyguardBiometricViewController.initLockStarLockIcon(z);
            }
        };
        this.settingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$settingsListener$1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                int i = KeyguardBiometricViewController.$r8$clinit;
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                keyguardBiometricViewController.getClass();
                keyguardBiometricViewController.lockIconView.mIsOneHandModeEnabled = ((SettingsHelper) Dependency.get(SettingsHelper.class)).isOneHandModeRunning();
                keyguardBiometricViewController.updateLockIcon();
                keyguardBiometricViewController.lockIconView.updateScanningFaceAnimation(keyguardBiometricViewController.lockIcon);
            }
        };
        this.rotationConsumer = new IntConsumer() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$rotationConsumer$1
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                boolean z;
                KeyguardBiometricViewController.this.updateBiometricViewLayout();
                KeyguardBiometricViewController.this.clearView();
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                keyguardBiometricViewController.updateLockIconVisibility(keyguardBiometricViewController.bouncerShowing);
                if (KeyguardBiometricViewController.this.errorString.length() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    KeyguardBiometricViewController keyguardBiometricViewController2 = KeyguardBiometricViewController.this;
                    KeyguardBiometricViewController.access$updateErrorText(keyguardBiometricViewController2, keyguardBiometricViewController2.errorString);
                } else {
                    KeyguardBiometricViewController.this.updateLockIcon();
                }
            }
        };
        this.configurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$configurationListener$1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                boolean z;
                int i = configuration.semDisplayDeviceType;
                if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                    KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                    if (keyguardBiometricViewController.displayDeviceType != i) {
                        keyguardBiometricViewController.displayDeviceType = i;
                        PluginLockStar pluginLockStar = keyguardBiometricViewController.pluginLockStarManager.mPluginLockStar;
                        if (pluginLockStar != null) {
                            z = pluginLockStar.isLockStarEnabled();
                        } else {
                            z = false;
                        }
                        keyguardBiometricViewController.isLockStarEnabled = z;
                        keyguardBiometricViewController.initLockStarLockIcon(z);
                        keyguardBiometricViewController.updateBiometricViewLayout();
                        keyguardBiometricViewController.updateLayout();
                        keyguardBiometricViewController.updateVisibility();
                    }
                }
            }
        };
        this.keyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricAuthFailed(BiometricSourceType biometricSourceType) {
                if (biometricSourceType == BiometricSourceType.FACE) {
                    int i = KeyguardBiometricViewController.$r8$clinit;
                    KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                    keyguardBiometricViewController.errorString = keyguardBiometricViewController.getContext().getString(R.string.kg_face_no_match);
                    KeyguardBiometricViewController.access$updateErrorText(keyguardBiometricViewController, keyguardBiometricViewController.errorString);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricError(int i, String str, BiometricSourceType biometricSourceType) {
                boolean z;
                if (biometricSourceType == BiometricSourceType.FACE) {
                    if (i != 10002 && i != 10003 && i != 10005) {
                        if (i != 100001) {
                            z = false;
                        } else {
                            return;
                        }
                    } else {
                        z = true;
                    }
                    KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                    keyguardBiometricViewController.isHiddenRetry = z;
                    if (str != null) {
                        keyguardBiometricViewController.errorString = str;
                    }
                    if (i == 3) {
                        keyguardBiometricViewController.errorString = "";
                    }
                    KeyguardBiometricViewController.access$updateErrorText(keyguardBiometricViewController, keyguardBiometricViewController.errorString);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricLockoutChanged(boolean z) {
                Log.d("KeyguardBiometricView", "onBiometricsLockoutChanged( " + z + " )");
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                long lockoutAttemptDeadline = keyguardBiometricViewController.keyguardUpdateMonitor.getLockoutAttemptDeadline();
                KeyguardUpdateMonitor keyguardUpdateMonitor2 = keyguardBiometricViewController.keyguardUpdateMonitor;
                if (keyguardUpdateMonitor2.mDeviceInteractive && z && lockoutAttemptDeadline == 0) {
                    int failedBiometricUnlockAttempts = keyguardUpdateMonitor2.getFailedBiometricUnlockAttempts(KeyguardUpdateMonitor.getCurrentUser());
                    if (failedBiometricUnlockAttempts != 0 && failedBiometricUnlockAttempts % 5 == 0) {
                        keyguardBiometricViewController.handleBiometricAttemptLockout(keyguardUpdateMonitor2.getLockoutBiometricAttemptDeadline());
                    } else {
                        Log.d("KeyguardBiometricView", "onBiometricsLockoutChanged( mCountdownTimer is working. )");
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
                if (biometricSourceType == BiometricSourceType.FACE) {
                    KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                    if (keyguardBiometricViewController.isRunning != z) {
                        keyguardBiometricViewController.isRunning = z;
                        if (z) {
                            keyguardBiometricViewController.errorString = "";
                            keyguardBiometricViewController.clearView();
                        }
                        keyguardBiometricViewController.updateLockIcon();
                        keyguardBiometricViewController.lockIconView.updateScanningFaceAnimation(keyguardBiometricViewController.lockIcon);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDualDarInnerLockScreenStateChanged(boolean z) {
                int i;
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                SystemUIImageView systemUIImageView = keyguardBiometricViewController.lockIcon;
                Context context = keyguardBiometricViewController.getContext();
                if (z) {
                    i = R.drawable.lock_ic_lock_ddar;
                } else {
                    i = R.drawable.lock_ic_lock_mtrl_00;
                }
                systemUIImageView.setImageDrawable(context.getDrawable(i));
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                if (keyguardBiometricViewController.bouncerShowing != z) {
                    keyguardBiometricViewController.bouncerShowing = z;
                    keyguardBiometricViewController.errorString = "";
                    long j = WallpaperEventNotifier.getInstance().mCurStatusFlag;
                    WallpaperEventNotifier.getInstance().getSemWallpaperColors(false);
                    keyguardBiometricViewController.getClass();
                    keyguardBiometricViewController.updateVisibility();
                    if (z) {
                        keyguardBiometricViewController.updateLayout();
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onLockModeChanged() {
                final KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                keyguardBiometricViewController.isLockOut = keyguardBiometricViewController.keyguardUpdateMonitor.isTimerRunning();
                if (keyguardBiometricViewController.isRunning || keyguardBiometricViewController.isLockOut) {
                    keyguardBiometricViewController.clearView();
                    keyguardBiometricViewController.updateLockIcon();
                    keyguardBiometricViewController.updateLockIconVisibility(keyguardBiometricViewController.bouncerShowing);
                    keyguardBiometricViewController.resetBiometricLockOutTimer();
                    long lockoutAttemptDeadline = keyguardBiometricViewController.keyguardUpdateMonitor.getLockoutAttemptDeadline();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    CountDownTimer countDownTimer = keyguardBiometricViewController.countDownTimer;
                    if (countDownTimer != null) {
                        countDownTimer.cancel();
                    }
                    keyguardBiometricViewController.countDownTimer = null;
                    keyguardBiometricViewController.countDownTimer = new CountDownTimer(lockoutAttemptDeadline - elapsedRealtime) { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$handleAttemptLockout$1
                        @Override // android.os.CountDownTimer
                        public final void onFinish() {
                            KeyguardBiometricViewController.this.updateBiometricViewLayout();
                        }

                        @Override // android.os.CountDownTimer
                        public final void onTick(long j) {
                        }
                    }.start();
                    keyguardBiometricViewController.updateBiometricViewLayout();
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onRemoteLockInfoChanged() {
                int i;
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                if (keyguardBiometricViewController.keyguardUpdateMonitor.isRemoteLockEnabled()) {
                    i = 8;
                } else {
                    i = 0;
                }
                keyguardBiometricViewController.lockIconView.setVisibility(i);
                keyguardBiometricViewController.biometricRetryIcon.setVisibility(i);
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSecurityViewChanged(KeyguardSecurityModel.SecurityMode securityMode) {
                int i = KeyguardBiometricViewController.$r8$clinit;
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                keyguardBiometricViewController.clearView();
                keyguardBiometricViewController.updateLayout();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onStrongAuthStateChanged(int i) {
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                int strongAuthForUser = keyguardBiometricViewController.keyguardUpdateMonitor.mStrongAuthTracker.getStrongAuthForUser(i);
                if ((strongAuthForUser & 1) != 0 || (strongAuthForUser & 2) != 0 || (strongAuthForUser & 4) != 0 || (strongAuthForUser & 8) != 0 || (strongAuthForUser & 16) != 0 || (strongAuthForUser & 32) != 0) {
                    keyguardBiometricViewController.clearView();
                    keyguardBiometricViewController.updateLayout();
                }
            }
        };
    }

    public static final void access$onClickRetryButton(KeyguardBiometricViewController keyguardBiometricViewController) {
        if (!keyguardBiometricViewController.isHiddenRetry) {
            Log.d("KeyguardBiometricView", "onClick - Retry icon");
            keyguardBiometricViewController.powerManager.userActivity(SystemClock.uptimeMillis(), true);
            KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardBiometricViewController.keyguardUpdateMonitor;
            if (keyguardUpdateMonitor.isFaceOptionEnabled()) {
                keyguardUpdateMonitor.requestFaceAuth("Face auth triggered due to retry button click.");
                keyguardBiometricViewController.updateVisibility();
                SystemUIAnalytics.sendEventLog(DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW, "1013", "2");
            }
        }
    }

    public static final void access$updateErrorText(final KeyguardBiometricViewController keyguardBiometricViewController, String str) {
        if (keyguardBiometricViewController.bouncerShowing && !keyguardBiometricViewController.isLockOut) {
            keyguardBiometricViewController.clearView();
            int i = 0;
            keyguardBiometricViewController.biometricRetryContainer.setVisibility(0);
            SystemUITextView systemUITextView = keyguardBiometricViewController.biometricErrorText;
            systemUITextView.setText(str);
            systemUITextView.setVisibility(0);
            OneShotPreDrawListener.add(systemUITextView, new Runnable() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$setErrorText$1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    KeyguardBiometricViewController keyguardBiometricViewController2 = KeyguardBiometricViewController.this;
                    SystemUITextView systemUITextView2 = keyguardBiometricViewController2.biometricErrorText;
                    if (systemUITextView2.getText().length() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    SystemUITextView systemUITextView3 = keyguardBiometricViewController2.biometricErrorText;
                    if (z) {
                        systemUITextView3.setAlpha(0.0f);
                        systemUITextView3.setScaleX(0.7f);
                        systemUITextView3.setScaleY(0.7f);
                        return;
                    }
                    if (!keyguardBiometricViewController2.isLockOut) {
                        systemUITextView3.setAlpha(0.0f);
                        systemUITextView3.setScaleX(0.7f);
                        systemUITextView3.setScaleY(0.7f);
                        SpringForce springForce = new SpringForce(1.0f);
                        springForce.setStiffness(350.0f);
                        springForce.setDampingRatio(0.78f);
                        DynamicAnimation.AnonymousClass4 anonymousClass4 = DynamicAnimation.SCALE_X;
                        SpringAnimation springAnimation = new SpringAnimation(systemUITextView3, anonymousClass4);
                        springAnimation.mSpring = springForce;
                        springAnimation.start();
                        DynamicAnimation.AnonymousClass5 anonymousClass5 = DynamicAnimation.SCALE_Y;
                        SpringAnimation springAnimation2 = new SpringAnimation(systemUITextView3, anonymousClass5);
                        springAnimation2.mSpring = springForce;
                        springAnimation2.start();
                        SpringAnimation springAnimation3 = new SpringAnimation(systemUITextView3, DynamicAnimation.ALPHA);
                        springAnimation3.mSpring = springForce;
                        springAnimation3.start();
                        float x = systemUITextView2.getX();
                        SecLockIconView secLockIconView = keyguardBiometricViewController2.lockIconView;
                        SystemUIImageView systemUIImageView = keyguardBiometricViewController2.lockIcon;
                        if (systemUIImageView == null) {
                            secLockIconView.getClass();
                            return;
                        }
                        secLockIconView.initBiometricErrorIndicationAnimationValue(systemUIImageView, false);
                        int x2 = (int) ((systemUIImageView.getX() + secLockIconView.getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_text_margin)) - x);
                        int displayWidth = (DeviceState.getDisplayWidth(secLockIconView.getContext()) - secLockIconView.getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_min_height)) / 2;
                        if (x2 > displayWidth) {
                            x2 = displayWidth;
                        }
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(systemUIImageView, (Property<SystemUIImageView, Float>) View.TRANSLATION_X, x2 * (-1));
                        secLockIconView.mAnimTranslationX = ofFloat;
                        SecLockIconView$$ExternalSyntheticOutline0.m(0.4f, 0.5f, 0.0f, 1.0f, ofFloat);
                        secLockIconView.mAnimTranslationX.setDuration(400L);
                        secLockIconView.mAnimTranslationX.start();
                        SpringForce springForce2 = new SpringForce(0.72f);
                        springForce2.setStiffness(150.0f);
                        springForce2.setDampingRatio(0.48f);
                        SpringAnimation springAnimation4 = new SpringAnimation(systemUIImageView, anonymousClass4);
                        springAnimation4.mSpring = springForce2;
                        secLockIconView.mScaleXAnim = springAnimation4;
                        SpringAnimation springAnimation5 = new SpringAnimation(systemUIImageView, anonymousClass5);
                        springAnimation5.mSpring = springForce2;
                        secLockIconView.mScaleYAnim = springAnimation5;
                        secLockIconView.mScaleXAnim.start();
                        secLockIconView.mScaleYAnim.start();
                    }
                }
            });
            if (!keyguardBiometricViewController.bouncerShowing || keyguardBiometricViewController.isHiddenRetry) {
                i = 8;
            }
            keyguardBiometricViewController.biometricRetryIcon.setVisibility(i);
            keyguardBiometricViewController.updateLockIcon();
        }
        if (((KeyguardBiometricView) keyguardBiometricViewController.mView).getVisibility() == 0 && keyguardBiometricViewController.accessibilityManager.isEnabled()) {
            ((KeyguardBiometricView) keyguardBiometricViewController.mView).announceForAccessibility(str);
        }
    }

    public final void clearView() {
        SystemUITextView systemUITextView = this.biometricErrorText;
        systemUITextView.setText("");
        systemUITextView.setVisibility(8);
        this.biometricRetryIcon.setVisibility(8);
        this.biometricRetryContainer.setVisibility(8);
        this.lockIconView.initBiometricErrorIndicationAnimationValue(this.lockIcon, true);
    }

    public final void handleBiometricAttemptLockout(long j) {
        long elapsedRealtime = j - SystemClock.elapsedRealtime();
        KeyguardBiometricsCountDownTimer keyguardBiometricsCountDownTimer = this.biometricCountDownTimer;
        if (keyguardBiometricsCountDownTimer != null) {
            keyguardBiometricsCountDownTimer.stop();
        }
        this.biometricCountDownTimer = null;
        SystemUITextView systemUITextView = this.biometricLockOutMessage;
        systemUITextView.setVisibility(8);
        Log.d("KeyguardBiometricView", "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = " + j + " )");
        this.biometricCountDownTimer = new KeyguardBiometricsCountDownTimer(getContext(), elapsedRealtime, 1000L, this.biometricLockOutMessage);
        systemUITextView.setVisibility(0);
        KeyguardBiometricsCountDownTimer keyguardBiometricsCountDownTimer2 = this.biometricCountDownTimer;
        if (keyguardBiometricsCountDownTimer2 != null) {
            keyguardBiometricsCountDownTimer2.start();
        }
    }

    public final void initLockStarLockIcon(boolean z) {
        SecLockIconView secLockIconView = this.lockIconView;
        secLockIconView.mIsLockStarEnabled = z;
        updateLockIconDrawable(false, true);
        if (!z) {
            secLockIconView.setAlpha(1.0f);
            this.lockIcon.updateImage();
        }
    }

    public final boolean isLandscape() {
        int rotation = DeviceState.getRotation(DeviceState.getRotation(((KeyguardBiometricView) this.mView).defaultDisplay.getRotation()));
        if (rotation == 1 || rotation == 3) {
            return true;
        }
        return false;
    }

    public final boolean needsToChangeRetryButton() {
        if (this.biometricRetryIcon.getVisibility() != 0) {
            return false;
        }
        if (isLandscape()) {
            if (DeviceType.isTablet() && !getResources().getBoolean(R.bool.small_tablet_landscape_lock_icon_policy)) {
                return false;
            }
        } else if (!LsRune.SECURITY_FINGERPRINT_IN_DISPLAY || !this.keyguardUpdateMonitor.isFingerprintOptionEnabled() || !getResources().getBoolean(R.bool.max_screen_zoom_lock_icon_policy)) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.util.ViewController
    public final void onInit() {
        ((KeyguardBiometricView) this.mView).bringToFront();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        int i;
        this.keyguardUpdateMonitor.registerCallback(this.keyguardUpdateMonitorCallback);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$inflateRetryView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                view.getVisibility();
                KeyguardBiometricViewController.access$onClickRetryButton(KeyguardBiometricViewController.this);
            }
        };
        FrameLayout frameLayout = this.biometricRetryContainer;
        frameLayout.setOnClickListener(onClickListener);
        frameLayout.setVisibility(8);
        Resources resources = getResources();
        if (WallpaperUtils.isWhiteKeyguardWallpaper("background")) {
            i = R.drawable.retry_container_ripple_whitebg_drawable;
        } else {
            i = R.drawable.retry_container_ripple_drawable;
        }
        frameLayout.setBackground(resources.getDrawable(i));
        this.biometricErrorText.setMaxFontScale(1.1f);
        this.biometricLockOutMessage.setMaxFontScale(1.0f);
        updateLayout();
        updateLockContainerMargin();
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$setLockIconOnClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                KeyguardBiometricViewController keyguardBiometricViewController = KeyguardBiometricViewController.this;
                int i2 = KeyguardBiometricViewController.$r8$clinit;
                if (keyguardBiometricViewController.needsToChangeRetryButton()) {
                    KeyguardBiometricViewController.access$onClickRetryButton(KeyguardBiometricViewController.this);
                }
                if (KeyguardBiometricViewController.this.isLandscape() && KeyguardBiometricViewController.this.keyguardUpdateMonitor.isFaceOptionEnabled()) {
                    KeyguardBiometricViewController.this.updateLockIcon();
                }
                KeyguardBiometricViewController keyguardBiometricViewController2 = KeyguardBiometricViewController.this;
                int i3 = keyguardBiometricViewController2.debugCount + 1;
                keyguardBiometricViewController2.debugCount = i3;
                if (i3 == 10) {
                    keyguardBiometricViewController2.keyguardUpdateMonitor.enableSecurityDebug();
                    KeyguardBiometricViewController.this.debugCount = 0;
                }
            }
        };
        SecLockIconView secLockIconView = this.lockIconView;
        secLockIconView.setOnClickListener(onClickListener2);
        SystemUIImageView systemUIImageView = this.lockIcon;
        boolean z = false;
        systemUIImageView.setClickable(false);
        systemUIImageView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.keyguard.biometrics.KeyguardBiometricViewController$setLockIconOnClickListener$2
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                if (accessibilityNodeInfo != null) {
                    accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                }
            }
        });
        secLockIconView.mIsOneHandModeEnabled = ((SettingsHelper) Dependency.get(SettingsHelper.class)).isOneHandModeRunning();
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(this.settingsListener, Settings.System.getUriFor("any_screen_running"));
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((ConfigurationControllerImpl) this.configurationController).addCallback(this.configurationListener);
            this.displayDeviceType = getContext().getResources().getConfiguration().semDisplayDeviceType;
        }
        PluginLockStarManager pluginLockStarManager = this.pluginLockStarManager;
        PluginLockStar pluginLockStar = pluginLockStarManager.mPluginLockStar;
        if (pluginLockStar != null) {
            z = pluginLockStar.isLockStarEnabled();
        }
        this.isLockStarEnabled = z;
        secLockIconView.mIsLockStarEnabled = z;
        pluginLockStarManager.registerCallback("KeyguardBiometricView", this.lockStarCallback);
        this.rotationWatcher.addCallback(this.rotationConsumer);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        KeyguardBiometricsCountDownTimer keyguardBiometricsCountDownTimer = this.biometricCountDownTimer;
        if (keyguardBiometricsCountDownTimer != null) {
            keyguardBiometricsCountDownTimer.stop();
        }
        this.biometricCountDownTimer = null;
        this.keyguardUpdateMonitor.removeCallback(this.keyguardUpdateMonitorCallback);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).unregisterCallback(this.settingsListener);
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((ConfigurationControllerImpl) this.configurationController).removeCallback(this.configurationListener);
        }
        this.pluginLockStarManager.unregisterCallback("KeyguardBiometricView");
        this.rotationWatcher.removeCallback(this.rotationConsumer);
    }

    public final void resetBiometricLockOutTimer() {
        if (this.keyguardUpdateMonitor.getLockoutAttemptDeadline() != 0) {
            KeyguardBiometricsCountDownTimer keyguardBiometricsCountDownTimer = this.biometricCountDownTimer;
            if (keyguardBiometricsCountDownTimer != null) {
                keyguardBiometricsCountDownTimer.stop();
            }
            this.biometricCountDownTimer = null;
            this.biometricLockOutMessage.setVisibility(8);
        }
    }

    public final void startLockIconAnimation(boolean z) {
        ObjectAnimator ofFloat;
        ((KeyguardBiometricView) this.mView).setAlpha(0.0f);
        if (z) {
            ofFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
            SecLockIconView$$ExternalSyntheticOutline0.m(0.22f, 0.25f, 0.0f, 1.0f, ofFloat);
            ofFloat.setDuration(350L);
        } else {
            ofFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
            SecLockIconView$$ExternalSyntheticOutline0.m(0.33f, 0.0f, 0.1f, 1.0f, ofFloat);
            ofFloat.setDuration(200L);
        }
        ofFloat.start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x010d, code lost:
    
        if (com.android.systemui.util.DeviceState.isSmartViewFitToActiveDisplay() == false) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateBiometricViewLayout() {
        /*
            Method dump skipped, instructions count: 481
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.biometrics.KeyguardBiometricViewController.updateBiometricViewLayout():void");
    }

    public final void updateLayout() {
        if (!this.bouncerShowing) {
            return;
        }
        updateLockIcon();
        updateBiometricViewLayout();
        resetBiometricLockOutTimer();
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        long lockoutAttemptDeadline = keyguardUpdateMonitor.getLockoutAttemptDeadline();
        long lockoutBiometricAttemptDeadline = keyguardUpdateMonitor.getLockoutBiometricAttemptDeadline();
        if (lockoutAttemptDeadline == 0 && lockoutBiometricAttemptDeadline != 0) {
            handleBiometricAttemptLockout(lockoutBiometricAttemptDeadline);
            return;
        }
        SystemUITextView systemUITextView = this.biometricLockOutMessage;
        systemUITextView.setText("");
        systemUITextView.setVisibility(8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
    
        if (r5 != 3) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateLockContainerMargin() {
        /*
            r6 = this;
            android.content.res.Resources r0 = r6.getResources()
            r1 = 2131169867(0x7f07124b, float:1.7954076E38)
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r6.getResources()
            r2 = 2131166455(0x7f0704f7, float:1.7947156E38)
            int r1 = r1.getDimensionPixelSize(r2)
            android.content.res.Resources r2 = r6.getResources()
            r3 = 2131166456(0x7f0704f8, float:1.7947158E38)
            int r2 = r2.getDimensionPixelSize(r3)
            com.android.keyguard.SecLockIconView r3 = r6.lockIconView
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r4 = (android.widget.LinearLayout.LayoutParams) r4
            boolean r5 = com.android.systemui.LsRune.SECURITY_BIOMETRICS_TABLET
            if (r5 == 0) goto L62
            android.view.View r5 = r6.mView
            com.android.keyguard.biometrics.KeyguardBiometricView r5 = (com.android.keyguard.biometrics.KeyguardBiometricView) r5
            android.view.Display r5 = r5.defaultDisplay
            int r5 = r5.getRotation()
            int r5 = com.android.systemui.util.DeviceState.getRotation(r5)
            int r5 = com.android.systemui.util.DeviceState.getRotation(r5)
            if (r5 == 0) goto L5e
            r1 = 1
            if (r5 == r1) goto L58
            r1 = 2
            if (r5 == r1) goto L4b
            r6 = 3
            if (r5 == r6) goto L58
            goto L6e
        L4b:
            com.android.keyguard.KeyguardUpdateMonitor r6 = r6.keyguardUpdateMonitor
            boolean r6 = r6.isInDisplayFingerprintMarginAccepted()
            if (r6 == 0) goto L55
            int r0 = com.android.systemui.util.DeviceState.sInDisplayFingerprintHeight
        L55:
            r4.topMargin = r0
            goto L6e
        L58:
            if (r2 == 0) goto L5b
            r0 = r2
        L5b:
            r4.topMargin = r0
            goto L6e
        L5e:
            int r0 = r0 + r1
            r4.topMargin = r0
            goto L6e
        L62:
            r4.topMargin = r0
            boolean r6 = r6.isLandscape()
            if (r6 == 0) goto L6b
            r1 = 0
        L6b:
            int r0 = r0 + r1
            r4.topMargin = r0
        L6e:
            r3.setLayoutParams(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.biometrics.KeyguardBiometricViewController.updateLockContainerMargin():void");
    }

    public final void updateLockIcon() {
        boolean z;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.keyguardUpdateMonitor;
        if (keyguardUpdateMonitor.isFaceOptionEnabled() && keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(keyguardUpdateMonitor.getFaceStrongBiometric()) && !this.isHiddenRetry && !this.isRunning && !this.isLockOut && !keyguardUpdateMonitor.isFullscreenBouncer()) {
            z = true;
        } else {
            z = false;
        }
        boolean isRemoteLockEnabled = keyguardUpdateMonitor.isRemoteLockEnabled();
        FrameLayout frameLayout = this.biometricRetryContainer;
        int i = 8;
        if (isRemoteLockEnabled && !keyguardUpdateMonitor.isFMMLock()) {
            this.lockIconView.setVisibility(8);
            frameLayout.setVisibility(8);
        } else if (needsToChangeRetryButton()) {
            updateLockIconDrawable(z, false);
            frameLayout.setVisibility(8);
        } else {
            updateLockIconDrawable(false, false);
            if (z) {
                i = 0;
            }
            frameLayout.setVisibility(i);
        }
        this.debugCount = 0;
    }

    public final void updateLockIconDrawable(boolean z, boolean z2) {
        int i;
        int dimensionPixelSize;
        boolean z3;
        PluginLockStar.Modifier modifier;
        PluginLockStar.Modifier modifier2;
        PluginLockStar.Modifier modifier3;
        if (z) {
            i = R.drawable.ic_biometric_retry_button;
        } else {
            i = R.drawable.lock_ic_lock_mtrl_00;
        }
        if (z) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_retry_icon_size);
        } else {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_height);
        }
        if (i != this.drawableResId || z2) {
            this.drawableResId = i;
            Drawable drawable = getResources().getDrawable(this.drawableResId);
            SystemUIImageView systemUIImageView = this.lockIcon;
            systemUIImageView.setImageDrawable(drawable);
            ViewGroup.LayoutParams layoutParams = systemUIImageView.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = dimensionPixelSize;
            systemUIImageView.setLayoutParams(layoutParams);
            if (!z) {
                boolean z4 = LsRune.SECURITY_SUB_DISPLAY_LOCK;
                PluginLockStarManager pluginLockStarManager = this.pluginLockStarManager;
                if (z4) {
                    z3 = this.isLockStarEnabled;
                } else {
                    PluginLockStar pluginLockStar = pluginLockStarManager.mPluginLockStar;
                    if (pluginLockStar != null) {
                        z3 = pluginLockStar.isLockStarEnabled();
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    PluginLockStar pluginLockStar2 = pluginLockStarManager.mPluginLockStar;
                    PluginLockStar.Modifier modifier4 = null;
                    if (pluginLockStar2 != null) {
                        modifier = pluginLockStar2.getModifier("lockIconVisibility");
                    } else {
                        modifier = null;
                    }
                    this.visibilityModifier = modifier;
                    if (pluginLockStar2 != null) {
                        modifier2 = pluginLockStar2.getModifier("lockIconAlpha");
                    } else {
                        modifier2 = null;
                    }
                    this.alphaModifier = modifier2;
                    if (pluginLockStar2 != null) {
                        modifier3 = pluginLockStar2.getModifier("lockIconColor");
                    } else {
                        modifier3 = null;
                    }
                    this.colorModifier = modifier3;
                    if (pluginLockStar2 != null) {
                        modifier4 = pluginLockStar2.getModifier("lockIconDrawable");
                    }
                    this.lockIconDrawableModifier = modifier4;
                    PluginLockStar.Modifier modifier5 = this.visibilityModifier;
                    if (modifier5 != null) {
                        modifier5.accept(this.lockIconView);
                    }
                    PluginLockStar.Modifier modifier6 = this.alphaModifier;
                    if (modifier6 != null) {
                        modifier6.accept(systemUIImageView);
                    }
                    PluginLockStar.Modifier modifier7 = this.colorModifier;
                    if (modifier7 != null) {
                        modifier7.accept(systemUIImageView);
                    }
                    PluginLockStar.Modifier modifier8 = this.lockIconDrawableModifier;
                    if (modifier8 != null) {
                        modifier8.accept(systemUIImageView);
                    }
                }
            }
        }
    }

    public final void updateLockIconVisibility(boolean z) {
        int i;
        boolean z2;
        boolean z3 = false;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        this.lockIconView.setVisibility(i);
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            z2 = this.isLockStarEnabled;
        } else {
            PluginLockStar pluginLockStar = this.pluginLockStarManager.mPluginLockStar;
            if (pluginLockStar != null) {
                z3 = pluginLockStar.isLockStarEnabled();
            }
            z2 = z3;
        }
        initLockStarLockIcon(z2);
    }

    public final void updateVisibility() {
        int i;
        clearView();
        boolean z = this.bouncerShowing;
        updateLockIconVisibility(z);
        KeyguardBiometricView keyguardBiometricView = (KeyguardBiometricView) this.mView;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        keyguardBiometricView.setVisibility(i);
    }
}
