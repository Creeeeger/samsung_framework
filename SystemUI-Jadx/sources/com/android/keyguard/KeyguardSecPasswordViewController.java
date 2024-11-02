package com.android.keyguard;

import android.app.SemWallpaperColors;
import android.content.res.Resources;
import android.hardware.biometrics.BiometricSourceType;
import android.net.Uri;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.vibrate.VibrationUtil;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUITextView;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSecPasswordViewController extends KeyguardPasswordViewController {
    public boolean mIsShownSIP;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public final KeyguardSecPasswordViewController$$ExternalSyntheticLambda1 mOnLayoutChangeListener;
    public final KeyguardSecPasswordViewController$$ExternalSyntheticLambda2 mOnWindowFocusChangeListener;
    public KeyguardSecPasswordViewController$$ExternalSyntheticLambda4 mSettingsListener;
    public final SystemUIImageView mShowPasswordButton;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallbacks;

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda2] */
    public KeyguardSecPasswordViewController(KeyguardSecPasswordView keyguardSecPasswordView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, InputMethodManager inputMethodManager, EmergencyButtonController emergencyButtonController, DelayableExecutor delayableExecutor, Resources resources, FalsingCollector falsingCollector, KeyguardViewController keyguardViewController, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager) {
        super(keyguardSecPasswordView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, inputMethodManager, emergencyButtonController, delayableExecutor, resources, falsingCollector, keyguardViewController, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager);
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9;
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                InputMethodManager inputMethodManager2 = keyguardSecPasswordViewController.mInputMethodManager;
                if (i4 != i8 || inputMethodManager2.semIsInputMethodShown() != keyguardSecPasswordViewController.mIsShownSIP) {
                    keyguardSecPasswordViewController.mIsShownSIP = inputMethodManager2.semIsInputMethodShown();
                    keyguardSecPasswordViewController.setMessageAreaLandscapeAdditionalPadding();
                    if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowKeyboardButton()) {
                        if (!keyguardSecPasswordViewController.mIsShownSIP) {
                            keyguardSecPasswordViewController.mSwitchImeButton.setVisibility(8);
                        }
                        keyguardSecPasswordViewController.updateSwitchImeButton();
                    }
                    LinearLayout linearLayout = keyguardSecPasswordViewController.mPrevInfoTextContainer;
                    if (linearLayout != null) {
                        KeyguardUpdateMonitor keyguardUpdateMonitor2 = ((KeyguardAbsKeyInputViewController) keyguardSecPasswordViewController).mKeyguardUpdateMonitor;
                        if (keyguardUpdateMonitor2.isForgotPasswordView() && !keyguardUpdateMonitor2.isDualDisplayPolicyAllowed()) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
                            marginLayoutParams.bottomMargin = keyguardSecPasswordViewController.getResources().getDimensionPixelSize(R.dimen.kg_prev_message_area_margin_bottom);
                            if (keyguardSecPasswordViewController.mIsShownSIP && keyguardSecPasswordViewController.getResources().getConfiguration().orientation == 2) {
                                i9 = keyguardSecPasswordViewController.getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_height);
                            } else {
                                i9 = 0;
                            }
                            marginLayoutParams.topMargin = i9;
                            linearLayout.setLayoutParams(marginLayoutParams);
                        }
                    }
                    keyguardSecPasswordViewController.updateForgotTextMargin();
                }
            }
        };
        this.mOnWindowFocusChangeListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda2
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public final void onWindowFocusChanged(boolean z) {
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                keyguardSecPasswordViewController.getClass();
                if (z && ((KeyguardFoldControllerImpl) ((KeyguardFoldController) Dependency.get(KeyguardFoldController.class))).isBouncerOnFoldOpened()) {
                    ((KeyguardSecPasswordView) keyguardSecPasswordViewController.mView).postDelayed(new KeyguardSecPasswordViewController$$ExternalSyntheticLambda5(keyguardSecPasswordViewController, 0), 100L);
                }
            }
        };
        this.mUpdateMonitorCallbacks = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardSecPasswordViewController.1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricAuthenticated(int i, BiometricSourceType biometricSourceType, boolean z) {
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                if (keyguardSecPasswordViewController.mInputMethodManager != null && ((KeyguardAbsKeyInputViewController) keyguardSecPasswordViewController).mKeyguardUpdateMonitor.isUnlockingWithBiometricAllowed(z)) {
                    keyguardSecPasswordViewController.mInputMethodManager.hideSoftInputFromWindow(keyguardSecPasswordViewController.mPasswordEntry.getWindowToken(), 0);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricLockoutChanged(boolean z) {
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                keyguardSecPasswordViewController.setMessageAreaLandscapeAdditionalPadding();
                keyguardSecPasswordViewController.updateForgotTextMargin();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                if (((KeyguardAbsKeyInputViewController) keyguardSecPasswordViewController).mKeyguardUpdateMonitor.is2StepVerification() && biometricSourceType == BiometricSourceType.FINGERPRINT && keyguardSecPasswordViewController.mBouncerShowing && !z && keyguardSecPasswordViewController.mPasswordEntry.isEnabled()) {
                    keyguardSecPasswordViewController.mPasswordEntry.requestFocus();
                    keyguardSecPasswordViewController.mInputMethodManager.showSoftInput(keyguardSecPasswordViewController.mPasswordEntry, 1);
                }
            }
        };
        this.mKnoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
        this.mContainer = (LinearLayout) ((KeyguardSecPasswordView) this.mView).findViewById(R.id.container);
        this.mShowPasswordButton = (SystemUIImageView) ((KeyguardSecPasswordView) this.mView).findViewById(R.id.password_show_button);
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public void displayDefaultSecurityMessage() {
        KeyguardSecMessageAreaController keyguardSecMessageAreaController = this.mMessageAreaController;
        if (keyguardSecMessageAreaController == null) {
            Log.e("KeyguardSecPasswordViewController", "displayDefaultSecurityMessage mMessageAreaController is null");
            return;
        }
        KeyguardUpdateMonitor keyguardUpdateMonitor = ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor;
        if (!keyguardUpdateMonitor.isFingerprintLockedOut() && !keyguardUpdateMonitor.mFaceLockedOutPermanent && !keyguardUpdateMonitor.isKeyguardUnlocking()) {
            boolean z = true;
            setMessageTimeout(true);
            int strongAuthPrompt = SecurityUtils.getStrongAuthPrompt();
            if (strongAuthPrompt == 0) {
                z = false;
            }
            if (z) {
                this.mPromptReason = strongAuthPrompt;
                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(new StringBuilder("displayDefaultSecurityMessage - strongAuth ( "), this.mPromptReason, " )", "KeyguardSecPasswordViewController");
                showPromptReason(this.mPromptReason);
            } else {
                String defaultSecurityMessage = this.mKeyguardTextBuilder.getDefaultSecurityMessage(KeyguardSecurityModel.SecurityMode.Password);
                if (this.mBouncerMessage.isEmpty() || !this.mBouncerMessage.equals(defaultSecurityMessage)) {
                    this.mBouncerMessage = defaultSecurityMessage;
                    KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("displayDefaultSecurityMessage( ", defaultSecurityMessage, " )", "KeyguardSecPasswordViewController");
                    keyguardSecMessageAreaController.setMessage(defaultSecurityMessage, false);
                    keyguardSecMessageAreaController.announceForAccessibility(defaultSecurityMessage);
                    if (LsRune.SECURITY_VZW_INSTRUCTION) {
                        setSubSecurityMessage(R.string.kg_password_sub_instructions_vzw);
                    } else {
                        setSubSecurityMessage(R.string.kg_password_sub_instructions);
                    }
                }
            }
            if (keyguardUpdateMonitor.is2StepVerification()) {
                int currentUser = KeyguardUpdateMonitor.getCurrentUser();
                if (keyguardUpdateMonitor.getLockoutBiometricAttemptDeadline() > 0) {
                    keyguardSecMessageAreaController.setMessage("", false);
                }
                if (keyguardUpdateMonitor.getUserUnlockedWithBiometric(currentUser)) {
                    setSubSecurityMessage(R.string.kg_biometrics_has_confirmed);
                } else {
                    setSubSecurityMessage(0);
                }
            }
        }
    }

    public final void enableHidingPassword(boolean z) {
        SystemUIImageView systemUIImageView;
        int i;
        int i2;
        EditText editText = this.mPasswordEntry;
        if (editText != null && (systemUIImageView = this.mShowPasswordButton) != null) {
            boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("background");
            if (z) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                if (isWhiteKeyguardWallpaper) {
                    i2 = R.drawable.lock_whitebg_password_hide_btn;
                } else {
                    i2 = R.drawable.lock_password_hide_btn;
                }
                systemUIImageView.setImageResource(i2);
                systemUIImageView.setStateDescription(getResources().getString(R.string.kg_show_password_accessibility_off));
                return;
            }
            editText.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            if (isWhiteKeyguardWallpaper) {
                i = R.drawable.lock_whitebg_password_show_btn;
            } else {
                i = R.drawable.lock_password_show_btn;
            }
            systemUIImageView.setImageResource(i);
            systemUIImageView.setStateDescription(getResources().getString(R.string.kg_show_password_accessibility_on));
            return;
        }
        Log.e("KeyguardSecPasswordViewController", "enableHidingPassword() view is null");
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardInputViewController
    public final int getInitialMessageResId() {
        return 0;
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final int getSecurityViewId() {
        return R.id.keyguard_password_view;
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController
    public final boolean hasMultipleEnabledIMEsOrSubtypes(InputMethodManager inputMethodManager) {
        int i = 0;
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodListAsUser(KeyguardUpdateMonitor.getCurrentUser())) {
            if (i > 1) {
                return true;
            }
            List<InputMethodSubtype> enabledInputMethodSubtypeList = inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true);
            enabledInputMethodSubtypeList.size();
            if (!"com.sec.android.inputmethod/.SamsungKeypad".equals(inputMethodInfo.getId()) && !"com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad".equals(inputMethodInfo.getId())) {
                "com.samsung.android.honeyboard/.SamsungKeypad".equals(inputMethodInfo.getId());
            }
            if (!enabledInputMethodSubtypeList.isEmpty()) {
                Iterator<InputMethodSubtype> it = enabledInputMethodSubtypeList.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    if (it.next().isAuxiliary()) {
                        i2++;
                    }
                }
                if (enabledInputMethodSubtypeList.size() - i2 <= 0) {
                }
            }
            i++;
        }
        if (i <= 1) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardSecurityView
    public final boolean needsInput() {
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    public void onPasswordChecked(int i, int i2, boolean z, boolean z2) {
        if (z) {
            this.mInputMethodManager.forceHideSoftInput();
        }
        super.onPasswordChecked(i, i2, z, z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
    
        if (r3.mPasswordVisibilityEnabled != false) goto L27;
     */
    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onResume(int r8) {
        /*
            r7 = this;
            super.onResume(r8)
            android.view.ViewGroup r0 = r7.mPasswordEntryBoxLayout
            if (r0 == 0) goto L19
            java.lang.String r1 = "background"
            boolean r1 = com.android.systemui.wallpaper.WallpaperUtils.isWhiteKeyguardWallpaper(r1)
            if (r1 == 0) goto L13
            r1 = 2131233606(0x7f080b46, float:1.8083354E38)
            goto L16
        L13:
            r1 = 2131233605(0x7f080b45, float:1.8083352E38)
        L16:
            r0.setBackgroundResource(r1)
        L19:
            r0 = 1
            r1 = 0
            android.widget.EditText r2 = r7.mPasswordEntry
            if (r2 == 0) goto L46
            android.content.res.Resources r3 = r7.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.getLayoutDirection()
            if (r3 != r0) goto L46
            android.content.res.Resources r3 = r7.getResources()
            r4 = 2131166521(0x7f070539, float:1.794729E38)
            int r3 = r3.getDimensionPixelSize(r4)
            android.content.res.Resources r4 = r7.getResources()
            r5 = 2131166523(0x7f07053b, float:1.7947294E38)
            int r4 = r4.getDimensionPixelSize(r5)
            r2.setPaddingRelative(r3, r1, r4, r1)
        L46:
            java.lang.Class<com.android.systemui.util.SettingsHelper> r3 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r3 = com.android.systemui.Dependency.get(r3)
            com.android.systemui.util.SettingsHelper r3 = (com.android.systemui.util.SettingsHelper) r3
            boolean r3 = r3.isShowKeyboardButton()
            r4 = 8
            if (r3 == 0) goto L5c
            boolean r3 = r7.isHideKeyboardByDefault()
            if (r3 == 0) goto L61
        L5c:
            android.widget.ImageView r3 = r7.mSwitchImeButton
            r3.setVisibility(r4)
        L61:
            com.android.systemui.knox.KnoxStateMonitor r3 = r7.mKnoxStateMonitor
            if (r3 == 0) goto L91
            com.android.systemui.knox.KnoxStateMonitorImpl r3 = (com.android.systemui.knox.KnoxStateMonitorImpl) r3
            com.android.systemui.knox.EdmMonitor r3 = r3.mEdmMonitor
            if (r3 == 0) goto L77
            java.lang.String r5 = "EdmMonitor"
            java.lang.String r6 = "isPasswordVisibilityEnabled "
            android.util.Log.d(r5, r6)
            boolean r3 = r3.mPasswordVisibilityEnabled
            if (r3 == 0) goto L77
            goto L78
        L77:
            r0 = r1
        L78:
            if (r0 != 0) goto L91
            java.lang.String r0 = "KeyguardSecPasswordViewController"
            java.lang.String r1 = "<<<--->>> hide button"
            android.util.Log.d(r0, r1)
            com.android.systemui.widget.SystemUIImageView r0 = r7.mShowPasswordButton
            if (r0 == 0) goto L88
            r0.setVisibility(r4)
        L88:
            if (r2 == 0) goto L91
            android.text.method.PasswordTransformationMethod r0 = android.text.method.PasswordTransformationMethod.getInstance()
            r2.setTransformationMethod(r0)
        L91:
            android.view.View r0 = r7.mView
            com.android.keyguard.KeyguardSecPasswordView r0 = (com.android.keyguard.KeyguardSecPasswordView) r0
            com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda5 r1 = new com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda5
            r1.<init>(r7, r8)
            r7 = 100
            r0.postDelayed(r1, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecPasswordViewController.onResume(int):void");
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardSecurityView
    public final void onStartingToHide() {
        this.mInputMethodManager.hideSoftInputFromWindow(((KeyguardSecPasswordView) this.mView).getWindowToken(), 0);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda4] */
    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        super.onViewAttached();
        ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallbacks);
        ((KeyguardSecPasswordView) this.mView).addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((KeyguardSecPasswordView) this.mView).getViewTreeObserver().addOnWindowFocusChangeListener(this.mOnWindowFocusChangeListener);
        }
        final int i = 0;
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda3
            public final /* synthetic */ KeyguardSecPasswordViewController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z;
                switch (i) {
                    case 0:
                        this.f$0.getKeyguardSecurityCallback().userActivity();
                        return;
                    default:
                        KeyguardSecPasswordViewController keyguardSecPasswordViewController = this.f$0;
                        keyguardSecPasswordViewController.getKeyguardSecurityCallback().userActivity();
                        EditText editText = keyguardSecPasswordViewController.mPasswordEntry;
                        if (editText.getTransformationMethod() == HideReturnsTransformationMethod.getInstance()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        keyguardSecPasswordViewController.enableHidingPassword(z);
                        editText.setAccessibilitySelection(editText.getText().length(), editText.getText().length());
                        return;
                }
            }
        };
        EditText editText = this.mPasswordEntry;
        editText.setOnClickListener(onClickListener);
        editText.setLongClickable(false);
        SystemUIImageView systemUIImageView = this.mShowPasswordButton;
        if (systemUIImageView != null) {
            systemUIImageView.setContentDescription(getResources().getString(R.string.kg_show_password_accessibility));
            systemUIImageView.setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1000));
            final int i2 = 1;
            systemUIImageView.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda3
                public final /* synthetic */ KeyguardSecPasswordViewController f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z;
                    switch (i2) {
                        case 0:
                            this.f$0.getKeyguardSecurityCallback().userActivity();
                            return;
                        default:
                            KeyguardSecPasswordViewController keyguardSecPasswordViewController = this.f$0;
                            keyguardSecPasswordViewController.getKeyguardSecurityCallback().userActivity();
                            EditText editText2 = keyguardSecPasswordViewController.mPasswordEntry;
                            if (editText2.getTransformationMethod() == HideReturnsTransformationMethod.getInstance()) {
                                z = true;
                            } else {
                                z = false;
                            }
                            keyguardSecPasswordViewController.enableHidingPassword(z);
                            editText2.setAccessibilitySelection(editText2.getText().length(), editText2.getText().length());
                            return;
                    }
                }
            });
        }
        if (this.mAccessibilityManager.isTouchExplorationEnabled()) {
            editText.setSelected(false);
        }
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticLambda4
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                KeyguardSecPasswordViewController keyguardSecPasswordViewController = KeyguardSecPasswordViewController.this;
                keyguardSecPasswordViewController.getClass();
                if (uri.equals(Settings.Secure.getUriFor("show_keyboard_button")) && !((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowKeyboardButton()) {
                    SystemUIImageView systemUIImageView2 = keyguardSecPasswordViewController.mShowPasswordButton;
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) systemUIImageView2.getLayoutParams();
                    marginLayoutParams.setMarginEnd(keyguardSecPasswordViewController.getResources().getDimensionPixelSize(R.dimen.kg_security_show_password_side_margin));
                    systemUIImageView2.setLayoutParams(marginLayoutParams);
                    keyguardSecPasswordViewController.mSwitchImeButton.setVisibility(8);
                }
            }
        };
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(this.mSettingsListener, Settings.Secure.getUriFor("show_keyboard_button"));
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor.removeCallback(this.mUpdateMonitorCallbacks);
        ((KeyguardSecPasswordView) this.mView).removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).unregisterCallback(this.mSettingsListener);
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            ((KeyguardSecPasswordView) this.mView).getViewTreeObserver().removeOnWindowFocusChangeListener(this.mOnWindowFocusChangeListener);
        }
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public void reset() {
        super.reset();
        enableHidingPassword(true);
    }

    @Override // com.android.keyguard.KeyguardPasswordViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    public void resetState() {
        displayDefaultSecurityMessage();
        resetFor2StepVerification();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        if (r7 != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setMessageAreaLandscapeAdditionalPadding() {
        /*
            r7 = this;
            android.content.res.Resources r0 = r7.getResources()
            int r1 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
            com.android.keyguard.KeyguardUpdateMonitor r2 = r7.mKeyguardUpdateMonitor
            boolean r1 = r2.isUnlockingWithBiometricsPossible(r1)
            if (r1 == 0) goto L64
            com.android.keyguard.KeyguardSecMessageAreaController r1 = r7.mMessageAreaController
            if (r1 == 0) goto L64
            boolean r3 = r7.mIsShownSIP
            r4 = 0
            if (r3 == 0) goto L5c
            boolean r3 = r7.isLandscapeDisplay()
            if (r3 == 0) goto L5c
            com.android.systemui.widget.SystemUITextView r7 = r7.mForgotPasswordText
            if (r7 == 0) goto L29
            boolean r7 = r7.isShown()
            if (r7 != 0) goto L5c
        L29:
            boolean r7 = com.android.systemui.util.DeviceType.isTablet()
            if (r7 != 0) goto L5c
            boolean r7 = r2.isDualDisplayPolicyAllowed()
            if (r7 != 0) goto L5c
            long r2 = r2.getLockoutBiometricAttemptDeadline()
            r5 = 0
            int r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r7 > 0) goto L4a
            int r7 = com.android.keyguard.SecurityUtils.getStrongAuthPrompt()
            if (r7 == 0) goto L47
            r7 = 1
            goto L48
        L47:
            r7 = r4
        L48:
            if (r7 == 0) goto L5c
        L4a:
            r7 = 2131166367(0x7f07049f, float:1.7946977E38)
            int r7 = r0.getDimensionPixelSize(r7)
            r2 = 2131166457(0x7f0704f9, float:1.794716E38)
            int r0 = r0.getDimensionPixelSize(r2)
            int r0 = r0 * 4
            int r0 = r0 + r7
            goto L5d
        L5c:
            r0 = r4
        L5d:
            android.view.View r7 = r1.mView
            com.android.keyguard.BouncerKeyguardMessageArea r7 = (com.android.keyguard.BouncerKeyguardMessageArea) r7
            r7.setPadding(r4, r0, r4, r4)
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecPasswordViewController.setMessageAreaLandscapeAdditionalPadding():void");
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public void showPromptReason(int i) {
        KeyguardSecMessageAreaController keyguardSecMessageAreaController = this.mMessageAreaController;
        if (keyguardSecMessageAreaController == null) {
            Log.d("KeyguardSecPasswordViewController", "showPromptReason mMessageAreaController is null");
            return;
        }
        this.mPromptReason = i;
        if (i != 0) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor;
            if (keyguardUpdateMonitor.getLockoutAttemptDeadline() > 0) {
                return;
            }
            KeyguardSecurityModel.SecurityMode securityMode = KeyguardSecurityModel.SecurityMode.Password;
            KeyguardTextBuilder keyguardTextBuilder = this.mKeyguardTextBuilder;
            String promptSecurityMessage = keyguardTextBuilder.getPromptSecurityMessage(securityMode, i);
            if (!shouldLockout(keyguardUpdateMonitor.getLockoutAttemptDeadline())) {
                if (LsRune.SECURITY_VZW_INSTRUCTION) {
                    setSubSecurityMessage(R.string.kg_password_sub_instructions_vzw);
                } else {
                    setSubSecurityMessage(R.string.kg_password_sub_instructions);
                }
            }
            SpannableStringBuilder strongAuthPopupString = SecurityUtils.getStrongAuthPopupString(getContext(), securityMode, this.mPasswordEntry, i);
            if (strongAuthPopupString != null) {
                keyguardSecMessageAreaController.setMovementMethod(LinkMovementMethod.getInstance());
                keyguardSecMessageAreaController.setMessage(strongAuthPopupString, false);
                ((BouncerKeyguardMessageArea) keyguardSecMessageAreaController.mView).scrollTo(0, 0);
            } else {
                if (promptSecurityMessage.isEmpty() || SecurityUtils.isEmptyStrongAuthPopupMessage(getContext(), securityMode)) {
                    promptSecurityMessage = keyguardTextBuilder.getDefaultSecurityMessage(securityMode);
                }
                keyguardSecMessageAreaController.setMessage(promptSecurityMessage, false);
            }
        }
    }

    public final void updateForgotTextMargin() {
        boolean z;
        boolean z2;
        boolean z3 = true;
        KeyguardUpdateMonitor keyguardUpdateMonitor = ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor;
        int i = 0;
        SystemUITextView systemUITextView = this.mForgotPasswordText;
        if (systemUITextView != null && systemUITextView.isShown() && !DeviceType.isTablet() && !keyguardUpdateMonitor.isDualDisplayPolicyAllowed()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (keyguardUpdateMonitor.getLockoutBiometricAttemptDeadline() <= 0) {
                if (SecurityUtils.getStrongAuthPrompt() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    z3 = false;
                }
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) systemUITextView.getLayoutParams();
            if (this.mIsShownSIP && z3 && getResources().getConfiguration().orientation == 2) {
                i = (getResources().getDimensionPixelSize(R.dimen.kg_message_area_font_size) * 4) + getResources().getDimensionPixelSize(R.dimen.kg_biometric_view_height);
            }
            marginLayoutParams.topMargin = i;
            systemUITextView.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        ViewGroup viewGroup;
        int i;
        if (!skipUpdateWhenCloseFolder() && (viewGroup = this.mPasswordEntryBoxLayout) != null) {
            if (WallpaperUtils.isWhiteKeyguardWallpaper("background")) {
                i = R.drawable.keyguard_security_input_box_whitebg;
            } else {
                i = R.drawable.keyguard_security_input_box;
            }
            viewGroup.setBackgroundResource(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // com.android.keyguard.KeyguardPasswordViewController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSwitchImeButton() {
        /*
            r10 = this;
            java.lang.String r0 = "KeyguardSecPasswordViewController"
            android.widget.ImageView r1 = r10.mSwitchImeButton
            if (r1 != 0) goto Ld
            java.lang.String r10 = "mSwitchImeButton is null"
            android.util.Log.e(r0, r10)
            return
        Ld:
            android.view.inputmethod.InputMethodManager r2 = r10.mInputMethodManager
            boolean r2 = r10.hasMultipleEnabledIMEsOrSubtypes(r2)
            int r3 = r1.getVisibility()
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L1d
            r3 = r5
            goto L1e
        L1d:
            r3 = r4
        L1e:
            boolean r6 = r10.mIsShownSIP
            if (r6 == 0) goto L26
            if (r2 == 0) goto L26
            r6 = r5
            goto L27
        L26:
            r6 = r4
        L27:
            java.lang.String r7 = "updateSwitchImeButton, wasVisible = "
            java.lang.String r8 = ", shouldBeVisible = "
            java.lang.String r9 = ", needImeBtn = "
            java.lang.StringBuilder r7 = com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m(r7, r3, r8, r6, r9)
            r7.append(r2)
            java.lang.String r2 = r7.toString()
            android.util.Log.i(r0, r2)
            java.lang.Class<com.android.systemui.util.DesktopManager> r0 = com.android.systemui.util.DesktopManager.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.DesktopManager r0 = (com.android.systemui.util.DesktopManager) r0
            com.android.systemui.util.DesktopManagerImpl r0 = (com.android.systemui.util.DesktopManagerImpl) r0
            boolean r0 = r0.isDesktopMode()
            r2 = 8
            if (r0 != 0) goto L58
            if (r3 == r6) goto L58
            if (r6 == 0) goto L54
            r0 = r4
            goto L55
        L54:
            r0 = r2
        L55:
            r1.setVisibility(r0)
        L58:
            java.lang.Class<com.android.systemui.util.SettingsHelper> r0 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.SettingsHelper r0 = (com.android.systemui.util.SettingsHelper) r0
            boolean r0 = r0.isShowKeyboardButton()
            if (r0 != 0) goto L69
            r1.setVisibility(r2)
        L69:
            com.android.systemui.widget.SystemUIImageView r0 = r10.mShowPasswordButton
            if (r0 == 0) goto Lb4
            android.content.res.Resources r10 = r10.getResources()
            android.view.ViewGroup$LayoutParams r2 = r0.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r2 = (android.view.ViewGroup.MarginLayoutParams) r2
            r3 = 2131166529(0x7f070541, float:1.7947306E38)
            int r3 = r10.getDimensionPixelSize(r3)
            int r1 = r1.getVisibility()
            if (r1 != 0) goto La5
            int r1 = r2.getMarginEnd()
            if (r1 != r3) goto Laf
            r1 = 2131166513(0x7f070531, float:1.7947273E38)
            int r1 = r10.getDimensionPixelSize(r1)
            r3 = 2131166530(0x7f070542, float:1.7947308E38)
            int r3 = r10.getDimensionPixelSize(r3)
            int r3 = r3 + r1
            r1 = 2131166511(0x7f07052f, float:1.794727E38)
            int r10 = r10.getDimensionPixelSize(r1)
            int r10 = r10 + r3
            r2.setMarginEnd(r10)
            goto Lae
        La5:
            int r10 = r2.getMarginEnd()
            if (r10 == r3) goto Laf
            r2.setMarginEnd(r3)
        Lae:
            r4 = r5
        Laf:
            if (r4 == 0) goto Lb4
            r0.setLayoutParams(r2)
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecPasswordViewController.updateSwitchImeButton():void");
    }
}
