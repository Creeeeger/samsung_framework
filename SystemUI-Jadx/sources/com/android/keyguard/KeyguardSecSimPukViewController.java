package com.android.keyguard;

import android.app.AlertDialog;
import android.app.SemWallpaperColors;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.net.Uri;
import android.provider.Settings;
import android.telephony.PinResult;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecSimPukViewController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSimPukViewController;
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
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecSimPukViewController extends KeyguardSimPukViewController {
    public AlertDialog mCarrierDialog;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass1 mConfigurationListener;
    public final KeyguardSecESimArea mESimSkipArea;
    public final InputMethodManager mInputMethodManager;
    public Locale mLocale;
    public int mOrientation;
    public final ProgressBar mProgressBar;
    public final SettingsHelper mSettingsHelper;
    public final KeyguardSecSimPukViewController$$ExternalSyntheticLambda1 mSettingsListener;
    public final Uri[] mSettingsValueList;
    public final SystemUITextView mSimCardName;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSimPukViewController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends KeyguardUpdateMonitorCallback {
        public AnonymousClass2() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onSimStateChanged(int i, int i2, int i3) {
            Log.i("KeyguardSecSimPukViewController", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("onSimStateChanged(subId=", i, ",state=", i3, ")"));
            KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
            KeyguardSecurityCallback keyguardSecurityCallback = keyguardSecSimPukViewController.getKeyguardSecurityCallback();
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            if (i3 != 5) {
                                keyguardSecSimPukViewController.resetState();
                                return;
                            }
                        } else if (keyguardSecurityCallback != null) {
                            keyguardSecurityCallback.dismiss(KeyguardUpdateMonitor.getCurrentUser(), keyguardSecSimPukViewController.mSecurityMode, true);
                            return;
                        } else {
                            keyguardSecSimPukViewController.resetState();
                            return;
                        }
                    } else {
                        ProgressBar progressBar = keyguardSecSimPukViewController.mProgressBar;
                        if (progressBar != null && progressBar.isAnimating()) {
                            KeyguardSimPukViewController.CheckSimPuk checkSimPuk = keyguardSecSimPukViewController.mCheckSimPukThread;
                            if (checkSimPuk != null) {
                                checkSimPuk.interrupt();
                                keyguardSecSimPukViewController.mCheckSimPukThread = null;
                                keyguardSecSimPukViewController.mOkButton.setVisibility(0);
                                keyguardSecSimPukViewController.mProgressBar.setVisibility(8);
                                keyguardSecSimPukViewController.resetState();
                                keyguardSecSimPukViewController.verifyPasswordAndUnlock();
                                return;
                            }
                            return;
                        }
                        keyguardSecSimPukViewController.resetState();
                        return;
                    }
                }
                if (i3 == 1) {
                    Log.i("KeyguardSecSimPukViewController", "Card Remove during SIM PUK ");
                } else if (i3 == 5) {
                    Log.i("KeyguardSecSimPukViewController", "Card READY during SIM PUK ");
                }
                if (keyguardSecurityCallback != null && !((KeyguardSimPukViewController) keyguardSecSimPukViewController).mKeyguardUpdateMonitor.isSimState(3)) {
                    Log.i("KeyguardSecSimPukViewController", "Dismiss SIM PUK View");
                    keyguardSecurityCallback.dismiss(KeyguardUpdateMonitor.getCurrentUser(), keyguardSecSimPukViewController.mSecurityMode, true);
                    return;
                } else if (i3 == 5 && SubscriptionManager.isValidSubscriptionId(i) && keyguardSecSimPukViewController.mSubId != i) {
                    Log.d("KeyguardSecSimPukViewController", "READY already came. Skip this");
                    return;
                } else {
                    keyguardSecSimPukViewController.resetState();
                    return;
                }
            }
            if (LsRune.SECURITY_ESIM && ((KeyguardSimPukViewController) keyguardSecSimPukViewController).mKeyguardUpdateMonitor.isESimRemoveButtonClicked() && keyguardSecurityCallback != null) {
                ((ActivityStarter) Dependency.get(ActivityStarter.class)).executeRunnableDismissingKeyguard(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPukViewController$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardSecSimPukViewController keyguardSecSimPukViewController2 = KeyguardSecSimPukViewController.this;
                        if (keyguardSecSimPukViewController2.mESimSkipArea != null) {
                            Log.d("KeyguardSecSimPukViewController", "eraseSubscriptions");
                            keyguardSecSimPukViewController2.mESimSkipArea.eraseSubscriptions();
                        }
                    }
                }, null, false, false, false);
            } else {
                keyguardSecSimPukViewController.resetState();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecSimPukViewController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends KeyguardSimPukViewController.CheckSimPuk {
        public AnonymousClass3(String str, String str2, int i) {
            super(str, str2, i);
        }

        @Override // com.android.keyguard.KeyguardSimPukViewController.CheckSimPuk
        public final void onSimLockChangedResponse(final PinResult pinResult) {
            ((KeyguardSecSimPukView) KeyguardSecSimPukViewController.this.mView).post(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    String string;
                    KeyguardSecSimPukViewController.AnonymousClass3 anonymousClass3 = KeyguardSecSimPukViewController.AnonymousClass3.this;
                    PinResult pinResult2 = pinResult;
                    KeyguardSecSimPukView keyguardSecSimPukView = (KeyguardSecSimPukView) KeyguardSecSimPukViewController.this.mView;
                    if (pinResult2.getResult() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    keyguardSecSimPukView.resetPasswordText(true, z);
                    KeyguardSecSimPukViewController.this.setEnabledKeypad(true);
                    KeyguardSecSimPukViewController.this.mOkButton.setVisibility(0);
                    KeyguardSecSimPukViewController.this.mProgressBar.setVisibility(8);
                    if (pinResult2.getResult() == 0) {
                        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).reportSimUnlocked(anonymousClass3.mSubId);
                        KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
                        keyguardSecSimPukViewController.mRemainingAttempts = -1;
                        keyguardSecSimPukViewController.mShowDefaultMessage = true;
                        if (LsRune.SECURITY_SIM_UNLOCK_TOAST) {
                            Toast.makeText(keyguardSecSimPukViewController.getContext(), R.string.kg_sim_lock_accepted, 1).show();
                        } else if (LsRune.SECURITY_KOR_USIM_TEXT) {
                            String string2 = keyguardSecSimPukViewController.getContext().getString(R.string.kg_kor_success_pin_message);
                            AlertDialog alertDialog = keyguardSecSimPukViewController.mCarrierDialog;
                            if (alertDialog == null) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(keyguardSecSimPukViewController.getContext(), 2132018526);
                                builder.setMessage(string2);
                                builder.setCancelable(false);
                                builder.setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
                                AlertDialog create = builder.create();
                                keyguardSecSimPukViewController.mCarrierDialog = create;
                                Window window = create.getWindow();
                                Objects.requireNonNull(window);
                                window.setType(2009);
                            } else {
                                alertDialog.setMessage(string2);
                            }
                            keyguardSecSimPukViewController.mCarrierDialog.show();
                        }
                        if (KeyguardSecSimPukViewController.this.getKeyguardSecurityCallback() != null) {
                            if (((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).isDesktopMode()) {
                                Log.d("KeyguardSecSimPukViewController", "ForceHideSoftInput");
                                KeyguardSecSimPukViewController.this.mInputMethodManager.semForceHideSoftInput();
                            }
                            KeyguardSecSimPukViewController.this.getKeyguardSecurityCallback().dismiss(KeyguardUpdateMonitor.getCurrentUser(), KeyguardSecSimPukViewController.this.mSecurityMode, true);
                        }
                    } else {
                        KeyguardSecSimPukViewController.this.mShowDefaultMessage = false;
                        if (pinResult2.getResult() == 1) {
                            KeyguardSecSimPukViewController keyguardSecSimPukViewController2 = KeyguardSecSimPukViewController.this;
                            KeyguardSecMessageAreaController keyguardSecMessageAreaController = keyguardSecSimPukViewController2.mMessageAreaController;
                            KeyguardSecSimPukView keyguardSecSimPukView2 = (KeyguardSecSimPukView) keyguardSecSimPukViewController2.mView;
                            int attemptsRemaining = pinResult2.getAttemptsRemaining();
                            keyguardSecSimPukView2.getClass();
                            boolean isESimEmbedded = ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isESimEmbedded();
                            if (attemptsRemaining == 0) {
                                string = keyguardSecSimPukView2.getContext().getString(R.string.kg_password_wrong_puk_code_dead);
                            } else if (attemptsRemaining > 1) {
                                if (LsRune.SECURITY_LGU_USIM_TEXT && !isESimEmbedded) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_lgu_sim_puk_remaining_attempts, Integer.valueOf(10 - attemptsRemaining), 10);
                                } else if (LsRune.SECURITY_KOR_USIM_TEXT) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_kor_sim_puk_remaining_attempts, Integer.valueOf(10 - attemptsRemaining), Integer.valueOf(attemptsRemaining));
                                } else if (LsRune.SECURITY_USE_CDMA_CARD_TEXT) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_ctc_sim_puk_remaining_attempts, Integer.valueOf(attemptsRemaining));
                                } else {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_sim_puk_remaining_attempts, Integer.valueOf(attemptsRemaining));
                                }
                            } else if (attemptsRemaining == 1) {
                                if (LsRune.SECURITY_LGU_USIM_TEXT && !isESimEmbedded) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_lgu_sim_puk_remaining_attempts, Integer.valueOf(10 - attemptsRemaining), 10);
                                } else if (LsRune.SECURITY_KOR_USIM_TEXT) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_kor_sim_puk_remaining_attempts, Integer.valueOf(10 - attemptsRemaining), Integer.valueOf(attemptsRemaining));
                                } else if (LsRune.SECURITY_USE_CDMA_CARD_TEXT) {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_ctc_sim_puk_remaining_1_attempt);
                                } else {
                                    string = keyguardSecSimPukView2.getContext().getString(R.string.kg_sim_puk_remaining_1_attempt);
                                }
                            } else {
                                string = keyguardSecSimPukView2.getContext().getString(R.string.kg_password_puk_failed);
                            }
                            Log.d("KeyguardSimPukView", "getPukPasswordErrorMessage: attemptsRemaining=" + attemptsRemaining + " displayMessage=" + string);
                            keyguardSecMessageAreaController.setMessage(string, false);
                        } else {
                            KeyguardSecSimPukViewController keyguardSecSimPukViewController3 = KeyguardSecSimPukViewController.this;
                            keyguardSecSimPukViewController3.mMessageAreaController.setMessage(keyguardSecSimPukViewController3.getContext().getString(R.string.kg_password_puk_failed), false);
                        }
                        Log.d("KeyguardSecSimPukViewController", "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining=" + pinResult2.getAttemptsRemaining());
                        KeyguardSecSimPukViewController.this.mStateMachine.reset();
                    }
                    KeyguardSecSimPukViewController.this.mCheckSimPukThread = null;
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SecStateMachine extends KeyguardSimPukViewController.StateMachine {
        public /* synthetic */ SecStateMachine(KeyguardSecSimPukViewController keyguardSecSimPukViewController, int i) {
            this();
        }

        @Override // com.android.keyguard.KeyguardSimPukViewController.StateMachine
        public final void next() {
            int i;
            int i2 = this.mState;
            KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
            if (i2 != 0) {
                i = R.string.kg_empty_sim_perso_hint;
                if (i2 != 1) {
                    if (i2 != 2) {
                        i = 0;
                    } else if (keyguardSecSimPukViewController.confirmPin()) {
                        this.mState = 3;
                        keyguardSecSimPukViewController.setEnabledKeypad(false);
                        keyguardSecSimPukViewController.mOkButton.setVisibility(8);
                        keyguardSecSimPukViewController.mProgressBar.setVisibility(0);
                        keyguardSecSimPukViewController.updateSim();
                        i = R.string.keyguard_sim_unlock_progress_dialog_message;
                    } else {
                        this.mState = 1;
                        if (LsRune.SECURITY_KOR_USIM_TEXT) {
                            if (keyguardSecSimPukViewController.getPasswordText() != null && keyguardSecSimPukViewController.getPasswordText().length != 0) {
                                i = R.string.kg_kor_invalid_confirm_pin_hint;
                            }
                        } else {
                            i = R.string.kg_invalid_confirm_pin_hint;
                        }
                    }
                } else if (keyguardSecSimPukViewController.checkPin()) {
                    this.mState = 2;
                    i = LsRune.SECURITY_KOR_USIM_TEXT ? R.string.kg_kor_enter_confirm_pin_hint : LsRune.SECURITY_USE_CDMA_CARD_TEXT ? R.string.kg_ctc_enter_confirm_pin_hint : R.string.kg_sec_puk_enter_confirm_pin_hint;
                } else if (LsRune.SECURITY_KOR_USIM_TEXT) {
                    if (keyguardSecSimPukViewController.getPasswordText() != null && keyguardSecSimPukViewController.getPasswordText().length != 0) {
                        i = R.string.kg_kor_sim_pin_instructions;
                    }
                } else {
                    i = R.string.kg_invalid_sim_pin_hint;
                }
            } else if (keyguardSecSimPukViewController.checkPuk()) {
                this.mState = 1;
                i = LsRune.SECURITY_KOR_USIM_TEXT ? R.string.kg_kor_puk_enter_pin_hint : LsRune.SECURITY_USE_CDMA_CARD_TEXT ? R.string.kg_ctc_puk_enter_pin_hint : R.string.kg_sec_puk_enter_pin_hint;
            } else {
                i = LsRune.SECURITY_KOR_USIM_TEXT ? (keyguardSecSimPukViewController.getPasswordText() == null || keyguardSecSimPukViewController.getPasswordText().length == 0) ? R.string.kg_kor_empty_sim_puk_hint : R.string.kg_kor_invalid_sim_puk_hint : R.string.kg_sec_invalid_sim_puk_hint;
            }
            ((KeyguardSecSimPukView) keyguardSecSimPukViewController.mView).resetPasswordText(true, true);
            if (i != 0) {
                if (i != R.string.kg_invalid_sim_pin_hint) {
                    keyguardSecSimPukViewController.mMessageAreaController.setMessage(keyguardSecSimPukViewController.getContext().getString(i), false);
                } else {
                    keyguardSecSimPukViewController.mMessageAreaController.setMessage(keyguardSecSimPukViewController.getContext().getString(R.string.kg_invalid_sim_pin_hint, 4, 8), false);
                }
            }
        }

        @Override // com.android.keyguard.KeyguardSimPukViewController.StateMachine
        public final void reset() {
            Log.d("KeyguardSecSimPukViewController", "reset()");
            KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
            keyguardSecSimPukViewController.mPinText = "";
            keyguardSecSimPukViewController.mPukText = "";
            this.mState = 0;
            int nextSubIdForState = ((KeyguardSimPukViewController) keyguardSecSimPukViewController).mKeyguardUpdateMonitor.getNextSubIdForState(3);
            if (nextSubIdForState != keyguardSecSimPukViewController.mSubId && SubscriptionManager.isValidSubscriptionId(nextSubIdForState)) {
                keyguardSecSimPukViewController.mSubId = nextSubIdForState;
                keyguardSecSimPukViewController.mShowDefaultMessage = true;
                keyguardSecSimPukViewController.mRemainingAttempts = -1;
            }
            KeyguardSecESimArea keyguardSecESimArea = keyguardSecSimPukViewController.mESimSkipArea;
            if (keyguardSecESimArea != null) {
                keyguardSecESimArea.mSubscriptionId = keyguardSecSimPukViewController.mSubId;
            }
            PasswordTextView passwordTextView = keyguardSecSimPukViewController.mPasswordEntry;
            if (passwordTextView != null) {
                passwordTextView.requestFocus();
            }
        }

        private SecStateMachine() {
            super();
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.keyguard.KeyguardSecSimPukViewController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.keyguard.KeyguardSecSimPukViewController$1] */
    public KeyguardSecSimPukViewController(KeyguardSecSimPukView keyguardSecSimPukView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, LiftToActivateListener liftToActivateListener, TelephonyManager telephonyManager, FalsingCollector falsingCollector, EmergencyButtonController emergencyButtonController, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager, ConfigurationController configurationController, InputMethodManager inputMethodManager) {
        super(keyguardSecSimPukView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, liftToActivateListener, telephonyManager, falsingCollector, emergencyButtonController, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager, configurationController);
        this.mOrientation = 1;
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.KeyguardSecSimPukViewController$$ExternalSyntheticLambda1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                KeyguardSecSimPukViewController.this.updateSimIconImage();
            }
        };
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardSecSimPukViewController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                boolean z;
                KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
                int i = keyguardSecSimPukViewController.mOrientation;
                int i2 = configuration.orientation;
                boolean z2 = true;
                if (i != i2) {
                    keyguardSecSimPukViewController.mOrientation = i2;
                    z = true;
                } else {
                    z = false;
                }
                Locale locale = configuration.getLocales().get(0);
                if (locale != null && !locale.equals(keyguardSecSimPukViewController.mLocale)) {
                    keyguardSecSimPukViewController.mLocale = locale;
                } else {
                    z2 = z;
                }
                if (z2) {
                    keyguardSecSimPukViewController.resetState();
                }
            }
        };
        this.mSettingsValueList = new Uri[]{Settings.System.getUriFor("emergency_mode"), Settings.Global.getUriFor("select_name_1"), Settings.Global.getUriFor("select_name_2")};
        this.mUpdateMonitorCallback = new AnonymousClass2();
        this.mConfigurationController = configurationController;
        this.mInputMethodManager = inputMethodManager;
        this.mStateMachine = new SecStateMachine(this, 0);
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        KeyguardSecESimArea keyguardSecESimArea = (KeyguardSecESimArea) ((KeyguardSecSimPukView) this.mView).findViewById(R.id.keyguard_sec_esim_area);
        this.mESimSkipArea = keyguardSecESimArea;
        if (keyguardSecESimArea != null) {
            keyguardSecESimArea.mCallback = getKeyguardSecurityCallback();
            keyguardSecESimArea.mSecurityMode = this.mSecurityMode;
        }
        ProgressBar progressBar = (ProgressBar) ((KeyguardSecSimPukView) this.mView).findViewById(R.id.progress);
        this.mProgressBar = progressBar;
        progressBar.setIndeterminate(true);
        updateProgressBarDrawable();
        this.mSimImageView = (ImageView) ((KeyguardSecSimPukView) this.mView).findViewById(R.id.keyguard_sim_icon);
        this.mSimCardName = (SystemUITextView) ((KeyguardSecSimPukView) this.mView).findViewById(R.id.keyguard_sim_name);
        View findViewById = ((KeyguardSecSimPukView) this.mView).findViewById(R.id.keyguard_sec_sim_info_view_container);
        if (findViewById != null) {
            findViewById.setVisibility(4);
        }
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController
    public final boolean checkPin() {
        int length;
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView == null || !(passwordTextView instanceof SecPasswordTextView) || (length = ((SecPasswordTextView) passwordTextView).mText.length()) < 4 || length > 8) {
            return false;
        }
        this.mPinText = ((SecPasswordTextView) passwordTextView).mText;
        return true;
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController
    public final boolean checkPuk() {
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView != null && (passwordTextView instanceof SecPasswordTextView) && ((SecPasswordTextView) passwordTextView).mText.length() == 8) {
            this.mPukText = ((SecPasswordTextView) passwordTextView).mText;
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController
    public final boolean confirmPin() {
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView == null) {
            return false;
        }
        if (passwordTextView instanceof SecPasswordTextView) {
            return this.mPinText.equals(((SecPasswordTextView) passwordTextView).mText);
        }
        return this.mPinText.equals(passwordTextView.getText().toString());
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final int getSecurityViewId() {
        return R.id.keyguard_sim_puk_view;
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        super.onViewAttached();
        ((KeyguardSecSimPukView) this.mView).post(new Runnable() { // from class: com.android.keyguard.KeyguardSecSimPukViewController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSecSimPukViewController keyguardSecSimPukViewController = KeyguardSecSimPukViewController.this;
                View findViewById = ((KeyguardSecSimPukView) keyguardSecSimPukViewController.mView).findViewById(R.id.keyguard_sec_sim_info_view_container);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                keyguardSecSimPukViewController.updateESimLayout();
            }
        });
        ((KeyguardSimPukViewController) this).mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
        this.mSettingsHelper.registerCallback(this.mSettingsListener, this.mSettingsValueList);
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        ((KeyguardSimPukViewController) this).mKeyguardUpdateMonitor.removeCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
        this.mSettingsHelper.unregisterCallback(this.mSettingsListener);
    }

    @Override // com.android.keyguard.KeyguardSimPukViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    public final void resetState() {
        super.resetState();
        showDefaultMessage();
        if (this.mSimImageView != null) {
            updateSimIconImage();
        }
        updateESimLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0112  */
    @Override // com.android.keyguard.KeyguardSimPukViewController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showDefaultMessage() {
        /*
            Method dump skipped, instructions count: 397
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecSimPukViewController.showDefaultMessage():void");
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

    @Override // com.android.keyguard.KeyguardSimPukViewController
    public final void updateSim() {
        if (this.mCheckSimPukThread == null) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.mPukText, this.mPinText, this.mSubId);
            this.mCheckSimPukThread = anonymousClass3;
            anonymousClass3.start();
        }
    }

    public final void updateSimIconImage() {
        String str;
        if (TelephonyManager.getDefault().getSimCount() > 1 && SubscriptionManager.isValidSubscriptionId(this.mSubId)) {
            int simSlotNum = SecurityUtils.getSimSlotNum(this.mSubId);
            if (simSlotNum == -1) {
                Log.d("KeyguardSecSimPukViewController", "updateSimIconImage - skip update");
                return;
            }
            ImageView imageView = this.mSimImageView;
            int i = 0;
            if (imageView instanceof SystemUIImageView) {
                SystemUIImageView systemUIImageView = (SystemUIImageView) imageView;
                if (LsRune.SECURITY_ESIM && DeviceState.isESIM(simSlotNum, getContext()) && ((KeyguardSimPukViewController) this).mKeyguardUpdateMonitor.isESimEmbedded()) {
                    Log.d("KeyguardSecSimPukViewController", "this is e-SIM");
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

    @Override // com.android.keyguard.KeyguardSimPukViewController, com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final void verifyPasswordAndUnlock() {
        Log.d("KeyguardSecSimPukViewController", "verifyPasswordAndUnlock next");
        super.verifyPasswordAndUnlock();
    }
}
