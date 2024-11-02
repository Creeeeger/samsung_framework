package com.android.keyguard;

import android.app.SemWallpaperColors;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.PinResult;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecSimPinViewController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSimPinViewController;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.vibrate.VibrationUtil;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUITextView;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecSimPinViewController extends KeyguardSimPinViewController {
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass1 mConfigurationListener;
    public final KeyguardSecESimArea mESimSkipArea;
    public final InputMethodManager mInputMethodManager;
    public Locale mLocale;
    public int mOrientation;
    public final ProgressBar mProgressBar;
    public final SettingsHelper mSettingsHelper;
    public final KeyguardSecSimPinViewController$$ExternalSyntheticLambda0 mSettingsListener;
    public final Uri[] mSettingsValueList;
    public final SystemUITextView mSimCardName;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSimPinViewController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends KeyguardUpdateMonitorCallback {
        public AnonymousClass2() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onSimStateChanged(int i, int i2, int i3) {
            Log.i("KeyguardSecSimPinViewController", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("onSimStateChanged(subId=", i, ",state=", i3, ")"));
            KeyguardSecSimPinViewController keyguardSecSimPinViewController = KeyguardSecSimPinViewController.this;
            KeyguardSecurityCallback keyguardSecurityCallback = keyguardSecSimPinViewController.getKeyguardSecurityCallback();
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 4) {
                            if (i3 != 5) {
                                keyguardSecSimPinViewController.resetState();
                                return;
                            }
                        } else if (keyguardSecurityCallback != null) {
                            keyguardSecurityCallback.dismiss(KeyguardUpdateMonitor.getCurrentUser(), keyguardSecSimPinViewController.mSecurityMode, true);
                            return;
                        } else {
                            keyguardSecSimPinViewController.resetState();
                            return;
                        }
                    } else {
                        ProgressBar progressBar = keyguardSecSimPinViewController.mProgressBar;
                        if (progressBar != null && progressBar.isAnimating()) {
                            KeyguardSimPinViewController.CheckSimPin checkSimPin = keyguardSecSimPinViewController.mCheckSimPinThread;
                            if (checkSimPin != null) {
                                checkSimPin.interrupt();
                                keyguardSecSimPinViewController.mCheckSimPinThread = null;
                                keyguardSecSimPinViewController.mOkButton.setVisibility(0);
                                keyguardSecSimPinViewController.mProgressBar.setVisibility(8);
                                keyguardSecSimPinViewController.resetState();
                                keyguardSecSimPinViewController.verifyPasswordAndUnlock();
                                return;
                            }
                            return;
                        }
                        keyguardSecSimPinViewController.resetState();
                        return;
                    }
                }
                if (i3 == 1) {
                    Log.i("KeyguardSecSimPinViewController", "Card Remove during SIM PIN ");
                } else if (i3 == 5) {
                    Log.i("KeyguardSecSimPinViewController", "Card READY during SIM PIN ");
                }
                if (keyguardSecurityCallback != null && !((KeyguardSimPinViewController) keyguardSecSimPinViewController).mKeyguardUpdateMonitor.isSimState(2)) {
                    Log.i("KeyguardSecSimPinViewController", "Dismiss SIM PIN View");
                    keyguardSecurityCallback.dismiss(KeyguardUpdateMonitor.getCurrentUser(), keyguardSecSimPinViewController.mSecurityMode, true);
                    return;
                } else if (i3 == 5 && SubscriptionManager.isValidSubscriptionId(i) && keyguardSecSimPinViewController.mSubId != i) {
                    Log.d("KeyguardSecSimPinViewController", "READY already came. Skip this");
                    return;
                } else {
                    keyguardSecSimPinViewController.resetState();
                    return;
                }
            }
            if (LsRune.SECURITY_ESIM && ((KeyguardSimPinViewController) keyguardSecSimPinViewController).mKeyguardUpdateMonitor.isESimRemoveButtonClicked() && keyguardSecurityCallback != null) {
                ((ActivityStarter) Dependency.get(ActivityStarter.class)).executeRunnableDismissingKeyguard(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardSecSimPinViewController keyguardSecSimPinViewController2 = KeyguardSecSimPinViewController.this;
                        if (keyguardSecSimPinViewController2.mESimSkipArea != null) {
                            Log.d("KeyguardSecSimPinViewController", "eraseSubscriptions");
                            keyguardSecSimPinViewController2.mESimSkipArea.eraseSubscriptions();
                        }
                    }
                }, null, false, false, false);
            } else {
                keyguardSecSimPinViewController.resetState();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSimPinViewController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends SecCheckSimPin {
        public final /* synthetic */ KeyguardSecurityCallback val$keyguardSecurityCallback;
        public final /* synthetic */ int val$subId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(String str, int i, int i2, KeyguardSecurityCallback keyguardSecurityCallback) {
            super(str, i);
            this.val$subId = i2;
            this.val$keyguardSecurityCallback = keyguardSecurityCallback;
        }

        @Override // com.android.keyguard.KeyguardSimPinViewController.CheckSimPin
        public final void onSimCheckResponse(final PinResult pinResult) {
            KeyguardSecSimPinView keyguardSecSimPinView = (KeyguardSecSimPinView) KeyguardSecSimPinViewController.this.mView;
            final int i = this.val$subId;
            final KeyguardSecurityCallback keyguardSecurityCallback = this.val$keyguardSecurityCallback;
            keyguardSecSimPinView.post(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    String string;
                    KeyguardSecSimPinViewController.AnonymousClass3 anonymousClass3 = KeyguardSecSimPinViewController.AnonymousClass3.this;
                    PinResult pinResult2 = pinResult;
                    int i2 = i;
                    KeyguardSecurityCallback keyguardSecurityCallback2 = keyguardSecurityCallback;
                    KeyguardSecSimPinView keyguardSecSimPinView2 = (KeyguardSecSimPinView) KeyguardSecSimPinViewController.this.mView;
                    if (pinResult2.getResult() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    keyguardSecSimPinView2.resetPasswordText(true, z);
                    KeyguardSecSimPinViewController.this.setEnabledKeypad(true);
                    View view = KeyguardSecSimPinViewController.this.mOkButton;
                    if (view != null) {
                        view.setVisibility(0);
                    }
                    KeyguardSecSimPinViewController.this.mProgressBar.setVisibility(8);
                    Log.d("KeyguardSecSimPinViewController", "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: " + pinResult2 + " attemptsRemaining=" + pinResult2.getAttemptsRemaining());
                    if (pinResult2.getResult() == 0) {
                        ((KeyguardSimPinViewController) KeyguardSecSimPinViewController.this).mKeyguardUpdateMonitor.reportSimUnlocked(i2);
                        KeyguardSecSimPinViewController keyguardSecSimPinViewController = KeyguardSecSimPinViewController.this;
                        keyguardSecSimPinViewController.mShowDefaultMessage = true;
                        if (LsRune.SECURITY_SIM_UNLOCK_TOAST) {
                            Toast.makeText(keyguardSecSimPinViewController.getContext(), R.string.kg_sim_lock_verified, 1).show();
                        }
                        KeyguardSecSimPinViewController.this.getKeyguardSecurityCallback().dismiss(KeyguardUpdateMonitor.getCurrentUser(), KeyguardSecSimPinViewController.this.mSecurityMode, true);
                        if (((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).isDesktopMode()) {
                            Log.d("KeyguardSecSimPinViewController", "ForceHideSoftInput");
                            KeyguardSecSimPinViewController.this.mInputMethodManager.semForceHideSoftInput();
                        }
                    } else {
                        KeyguardSecSimPinViewController.this.mShowDefaultMessage = false;
                        if (pinResult2.getResult() == 1) {
                            Log.i("KeyguardSecSimPinViewController", "verifyPasswordAndUnlock : PIN_RESULT_TYPE_INCORRECT");
                            if (pinResult2.getAttemptsRemaining() == 0) {
                                KeyguardSecSimPinViewController.this.mMessageAreaController.setMessage("", false);
                            } else if (LsRune.SECURITY_LGU_USIM_TEXT && !((KeyguardSimPinViewController) KeyguardSecSimPinViewController.this).mKeyguardUpdateMonitor.isESimEmbedded()) {
                                int attemptsRemaining = 3 - pinResult2.getAttemptsRemaining();
                                KeyguardSecSimPinViewController keyguardSecSimPinViewController2 = KeyguardSecSimPinViewController.this;
                                KeyguardSecMessageAreaController keyguardSecMessageAreaController = keyguardSecSimPinViewController2.mMessageAreaController;
                                if (attemptsRemaining == 1) {
                                    string = keyguardSecSimPinViewController2.getContext().getString(R.string.kg_lgu_sim_puk_1st_attempts);
                                } else {
                                    string = keyguardSecSimPinViewController2.getContext().getString(R.string.kg_lgu_sim_puk_2nd_attempts);
                                }
                                keyguardSecMessageAreaController.setMessage(string, false);
                            } else if (LsRune.SECURITY_KTT_USIM_TEXT) {
                                KeyguardSecSimPinViewController.this.mMessageAreaController.formatMessage(R.string.kg_kor_password_wrong_pin_code, Integer.valueOf(pinResult2.getAttemptsRemaining()));
                            } else if (pinResult2.getAttemptsRemaining() == 1) {
                                if (LsRune.SECURITY_USE_CDMA_CARD_TEXT) {
                                    KeyguardSecSimPinViewController keyguardSecSimPinViewController3 = KeyguardSecSimPinViewController.this;
                                    keyguardSecSimPinViewController3.mMessageAreaController.setMessage(keyguardSecSimPinViewController3.getContext().getString(R.string.kg_ctc_password_wrong_pin_code_one), false);
                                } else {
                                    KeyguardSecSimPinViewController keyguardSecSimPinViewController4 = KeyguardSecSimPinViewController.this;
                                    keyguardSecSimPinViewController4.mMessageAreaController.setMessage(keyguardSecSimPinViewController4.getContext().getString(R.string.kg_password_wrong_pin_code_one), false);
                                }
                            } else if (LsRune.SECURITY_USE_CDMA_CARD_TEXT) {
                                KeyguardSecSimPinViewController.this.mMessageAreaController.formatMessage(R.string.kg_ctc_password_wrong_pin_code_other, Integer.valueOf(pinResult2.getAttemptsRemaining()));
                            } else {
                                KeyguardSecSimPinViewController.this.mMessageAreaController.formatMessage(R.string.kg_password_wrong_pin_code_other, Integer.valueOf(pinResult2.getAttemptsRemaining()));
                            }
                        } else {
                            KeyguardSecSimPinViewController keyguardSecSimPinViewController5 = KeyguardSecSimPinViewController.this;
                            keyguardSecSimPinViewController5.mMessageAreaController.setMessage(keyguardSecSimPinViewController5.getContext().getString(R.string.kg_password_pin_failed), false);
                        }
                    }
                    if (keyguardSecurityCallback2 != null) {
                        keyguardSecurityCallback2.userActivity();
                    }
                    KeyguardSecSimPinViewController.this.mCheckSimPinThread = null;
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class SecCheckSimPin extends KeyguardSimPinViewController.CheckSimPin {
        public static final /* synthetic */ int $r8$clinit = 0;

        public SecCheckSimPin(String str, int i) {
            super(str, i);
        }

        @Override // com.android.keyguard.KeyguardSimPinViewController.CheckSimPin, java.lang.Thread, java.lang.Runnable
        public final void run() {
            Log.i("KeyguardSecSimPinViewController", "call supplyPinReportResultForSubscriber(subid=" + this.mSubId + ")");
            TelephonyManager createForSubscriptionId = KeyguardSecSimPinViewController.this.mTelephonyManager.createForSubscriptionId(this.mSubId);
            SystemClock.elapsedRealtime();
            final PinResult supplyIccLockPin = createForSubscriptionId.supplyIccLockPin(this.mPin);
            SystemClock.elapsedRealtime();
            if (supplyIccLockPin == null) {
                Log.e("KeyguardSecSimPinViewController", "Error result for supplyPinReportResult.");
                ((KeyguardSecSimPinView) KeyguardSecSimPinViewController.this.mView).post(new KeyguardSecSimPinViewController$$ExternalSyntheticLambda1(this, 1));
            } else {
                Log.i("KeyguardSecSimPinViewController", "supplyPinReportResult returned: " + supplyIccLockPin.toString());
                ((KeyguardSecSimPinView) KeyguardSecSimPinViewController.this.mView).post(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardSecSimPinViewController.SecCheckSimPin.this.onSimCheckResponse(supplyIccLockPin);
                    }
                });
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.keyguard.KeyguardSecSimPinViewController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.keyguard.KeyguardSecSimPinViewController$1] */
    public KeyguardSecSimPinViewController(KeyguardSecSimPinView keyguardSecSimPinView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, LiftToActivateListener liftToActivateListener, TelephonyManager telephonyManager, FalsingCollector falsingCollector, EmergencyButtonController emergencyButtonController, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager, ConfigurationController configurationController, InputMethodManager inputMethodManager) {
        super(keyguardSecSimPinView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, liftToActivateListener, telephonyManager, falsingCollector, emergencyButtonController, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager, configurationController);
        this.mOrientation = 1;
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.KeyguardSecSimPinViewController$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                KeyguardSecSimPinViewController.this.updateSimIconImage();
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardSecSimPinViewController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                boolean z;
                KeyguardSecSimPinViewController keyguardSecSimPinViewController = KeyguardSecSimPinViewController.this;
                int i = keyguardSecSimPinViewController.mOrientation;
                int i2 = configuration.orientation;
                boolean z2 = true;
                if (i != i2) {
                    keyguardSecSimPinViewController.mOrientation = i2;
                    z = true;
                } else {
                    z = false;
                }
                Locale locale = configuration.getLocales().get(0);
                if (locale != null && !locale.equals(keyguardSecSimPinViewController.mLocale)) {
                    keyguardSecSimPinViewController.mLocale = locale;
                } else {
                    z2 = z;
                }
                if (z2) {
                    keyguardSecSimPinViewController.resetState();
                }
            }
        };
        this.mSettingsValueList = new Uri[]{Settings.System.getUriFor("emergency_mode"), Settings.Global.getUriFor("select_name_1"), Settings.Global.getUriFor("select_name_2")};
        this.mUpdateMonitorCallback = new AnonymousClass2();
        this.mConfigurationController = configurationController;
        this.mInputMethodManager = inputMethodManager;
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        KeyguardSecESimArea keyguardSecESimArea = (KeyguardSecESimArea) ((KeyguardSecSimPinView) this.mView).findViewById(R.id.keyguard_sec_esim_area);
        this.mESimSkipArea = keyguardSecESimArea;
        if (keyguardSecESimArea != null) {
            keyguardSecESimArea.mCallback = getKeyguardSecurityCallback();
            keyguardSecESimArea.mSecurityMode = this.mSecurityMode;
        }
        ProgressBar progressBar = (ProgressBar) ((KeyguardSecSimPinView) this.mView).findViewById(R.id.progress);
        this.mProgressBar = progressBar;
        progressBar.setIndeterminate(true);
        updateProgressBarDrawable();
        this.mSimImageView = (ImageView) ((KeyguardSecSimPinView) this.mView).findViewById(R.id.keyguard_sim_icon);
        this.mSimCardName = (SystemUITextView) ((KeyguardSecSimPinView) this.mView).findViewById(R.id.keyguard_sim_name);
        View findViewById = ((KeyguardSecSimPinView) this.mView).findViewById(R.id.keyguard_sec_sim_info_view_container);
        if (findViewById != null) {
            findViewById.setVisibility(4);
        }
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final int getSecurityViewId() {
        return R.id.keyguard_sim_pin_view;
    }

    @Override // com.android.keyguard.KeyguardSimPinViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public final void onPause() {
        super.onPause();
    }

    @Override // com.android.keyguard.KeyguardSimPinViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public final void onResume(int i) {
        super.onResume(i);
    }

    @Override // com.android.keyguard.KeyguardSimPinViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        super.onViewAttached();
        ((KeyguardSecSimPinView) this.mView).post(new KeyguardSecSimPinViewController$$ExternalSyntheticLambda1(this, 0));
        ((KeyguardSimPinViewController) this).mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        this.mSettingsHelper.registerCallback(this.mSettingsListener, this.mSettingsValueList);
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        ((KeyguardSimPinViewController) this).mKeyguardUpdateMonitor.removeCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        this.mSettingsHelper.unregisterCallback(this.mSettingsListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0189  */
    @Override // com.android.keyguard.KeyguardSimPinViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void resetState() {
        /*
            Method dump skipped, instructions count: 475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSimPinViewController.resetState():void");
    }

    public final void updateESimLayout() {
        KeyguardSecMessageAreaController keyguardSecMessageAreaController;
        KeyguardSecESimArea keyguardSecESimArea = this.mESimSkipArea;
        if (keyguardSecESimArea != null && keyguardSecESimArea.getVisibility() != 8 && (keyguardSecMessageAreaController = this.mMessageAreaController) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) keyguardSecMessageAreaController.getLayoutParams();
            if (this.mOrientation == 1) {
                marginLayoutParams.bottomMargin = (getResources().getDimensionPixelSize(R.dimen.keyguard_hint_text_padding_top) * 2) + this.mESimSkipArea.getHeight();
            } else {
                marginLayoutParams.bottomMargin = this.mESimSkipArea.getHeight();
            }
            keyguardSecMessageAreaController.setLayoutParams(marginLayoutParams);
        }
    }

    public final void updateProgressBarDrawable() {
        int i;
        boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("background");
        ProgressBar progressBar = this.mProgressBar;
        Context context = getContext();
        if (isWhiteKeyguardWallpaper) {
            i = R.drawable.keyguard_progress_material_whitebg;
        } else {
            i = R.drawable.keyguard_progress_material;
        }
        progressBar.setIndeterminateDrawable(context.getDrawable(i));
    }

    public final void updateSimIconImage() {
        String str;
        if (TelephonyManager.getDefault().getSimCount() > 1 && SubscriptionManager.isValidSubscriptionId(this.mSubId)) {
            int simSlotNum = SecurityUtils.getSimSlotNum(this.mSubId);
            if (simSlotNum == -1) {
                Log.d("KeyguardSecSimPinViewController", "updateSimIconImage - skip update");
                return;
            }
            ImageView imageView = this.mSimImageView;
            int i = 0;
            if (imageView instanceof SystemUIImageView) {
                SystemUIImageView systemUIImageView = (SystemUIImageView) imageView;
                if (LsRune.SECURITY_ESIM && DeviceState.isESIM(simSlotNum, getContext()) && ((KeyguardSimPinViewController) this).mKeyguardUpdateMonitor.isESimEmbedded()) {
                    Log.d("KeyguardSecSimPinViewController", "this is e-SIM");
                    KeyguardSecESimArea keyguardSecESimArea = this.mESimSkipArea;
                    if (keyguardSecESimArea != null) {
                        keyguardSecESimArea.setVisibility(0);
                    }
                    if (simSlotNum == 0) {
                        systemUIImageView.setOriginImage("lock_ic_pin_attempt_esim_01");
                        systemUIImageView.setWhiteBgImage("lock_ic_pin_attempt_esim_01_whitebg");
                    } else if (simSlotNum == 1) {
                        systemUIImageView.setOriginImage("lock_ic_pin_attempt_esim_02");
                        systemUIImageView.setWhiteBgImage("lock_ic_pin_attempt_esim_02_whitebg");
                    }
                } else {
                    KeyguardSecESimArea keyguardSecESimArea2 = this.mESimSkipArea;
                    if (keyguardSecESimArea2 != null) {
                        keyguardSecESimArea2.setVisibility(8);
                    }
                    if (simSlotNum == 0) {
                        systemUIImageView.setOriginImage("lock_ic_pin_attempt_sim_01");
                        systemUIImageView.setWhiteBgImage("lock_ic_pin_attempt_sim_01_whitebg");
                    } else if (simSlotNum == 1) {
                        systemUIImageView.setOriginImage("lock_ic_pin_attempt_sim_02");
                        systemUIImageView.setWhiteBgImage("lock_ic_pin_attempt_sim_02_whitebg");
                    }
                }
                systemUIImageView.updateImage();
            }
            SystemUITextView systemUITextView = this.mSimCardName;
            if (systemUITextView instanceof SystemUITextView) {
                ContentResolver contentResolver = getContext().getContentResolver();
                if (simSlotNum == 0) {
                    str = "select_name_1";
                } else {
                    str = "select_name_2";
                }
                String string = Settings.Global.getString(contentResolver, str);
                boolean isEmpty = TextUtils.isEmpty(string);
                if (!isEmpty) {
                    systemUITextView.setText(string);
                }
                if (isEmpty) {
                    i = 8;
                }
                systemUITextView.setVisibility(i);
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        initializeBottomContainerView();
        updateProgressBarDrawable();
    }

    @Override // com.android.keyguard.KeyguardSimPinViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final void verifyPasswordAndUnlock() {
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView == null || !(passwordTextView instanceof SecPasswordTextView)) {
            return;
        }
        verifyPasswordAndUnlock(((SecPasswordTextView) passwordTextView).mText);
    }

    public final void verifyPasswordAndUnlock(String str) {
        KeyguardSecurityCallback keyguardSecurityCallback = getKeyguardSecurityCallback();
        boolean z = LsRune.SECURITY_KOR_USIM_TEXT;
        KeyguardSecMessageAreaController keyguardSecMessageAreaController = this.mMessageAreaController;
        if (z && str.length() == 0) {
            keyguardSecMessageAreaController.setMessage(getContext().getString(R.string.kg_empty_sim_perso_hint), false);
            ((KeyguardSecSimPinView) this.mView).resetPasswordText(true, true);
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.userActivity();
                return;
            }
            return;
        }
        if (str.length() < 4) {
            if (z) {
                keyguardSecMessageAreaController.setMessage(getContext().getString(R.string.kg_kor_sim_pin_instructions), false);
            } else {
                keyguardSecMessageAreaController.setMessage(getContext().getString(R.string.kg_invalid_sim_pin_hint, 4, 8), false);
            }
            ((KeyguardSecSimPinView) this.mView).resetPasswordText(true, true);
            if (keyguardSecurityCallback != null) {
                keyguardSecurityCallback.userActivity();
                return;
            }
            return;
        }
        setEnabledKeypad(false);
        View view = this.mOkButton;
        if (view != null) {
            view.setVisibility(8);
        }
        this.mProgressBar.setVisibility(0);
        if (keyguardSecurityCallback != null) {
            keyguardSecurityCallback.userActivity();
        }
        if (this.mCheckSimPinThread == null) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(str, this.mSubId, this.mSubId, keyguardSecurityCallback);
            this.mCheckSimPinThread = anonymousClass3;
            anonymousClass3.start();
        }
    }
}
