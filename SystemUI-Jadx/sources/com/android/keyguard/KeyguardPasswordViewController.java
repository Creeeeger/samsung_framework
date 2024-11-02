package com.android.keyguard;

import android.content.res.Resources;
import android.os.UserHandle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.TextKeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.vibrate.VibrationUtil;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardPasswordViewController extends KeyguardSecAbsKeyInputViewController {
    public final InputMethodManager mInputMethodManager;
    public final KeyguardSecurityCallback mKeyguardSecurityCallback;
    public final KeyguardViewController mKeyguardViewController;
    public final DelayableExecutor mMainExecutor;
    public final KeyguardPasswordViewController$$ExternalSyntheticLambda1 mOnEditorActionListener;
    public final EditText mPasswordEntry;
    public boolean mPaused;
    public final boolean mShowImeAtScreenOn;
    public final ImageView mSwitchImeButton;
    public final AnonymousClass1 mTextWatcher;

    public static /* synthetic */ void $r8$lambda$LhbF6YAKV9pHtOhdlBcgE_uPvik(KeyguardPasswordViewController keyguardPasswordViewController) {
        keyguardPasswordViewController.mPasswordEntry.clearFocus();
        super.onPause();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.keyguard.KeyguardPasswordViewController$$ExternalSyntheticLambda1] */
    public KeyguardPasswordViewController(KeyguardPasswordView keyguardPasswordView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, InputMethodManager inputMethodManager, EmergencyButtonController emergencyButtonController, DelayableExecutor delayableExecutor, Resources resources, FalsingCollector falsingCollector, KeyguardViewController keyguardViewController, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager) {
        super(keyguardPasswordView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, falsingCollector, emergencyButtonController, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager);
        this.mOnEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.android.keyguard.KeyguardPasswordViewController$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z;
                boolean z2;
                KeyguardPasswordViewController keyguardPasswordViewController = KeyguardPasswordViewController.this;
                keyguardPasswordViewController.getClass();
                if (keyEvent == null && (i == 0 || i == 6 || i == 5)) {
                    z = true;
                } else {
                    z = false;
                }
                if (keyEvent != null && KeyEvent.isConfirmKey(keyEvent.getKeyCode()) && keyEvent.getAction() == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z && !z2) {
                    return false;
                }
                keyguardPasswordViewController.verifyPasswordAndUnlock();
                return true;
            }
        };
        this.mTextWatcher = new TextWatcher() { // from class: com.android.keyguard.KeyguardPasswordViewController.1
            public AnonymousClass1() {
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                if (!TextUtils.isEmpty(editable)) {
                    KeyguardPasswordViewController.this.onUserInput();
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                KeyguardPasswordViewController.this.mKeyguardSecurityCallback.userActivity();
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        this.mKeyguardSecurityCallback = keyguardSecurityCallback;
        this.mInputMethodManager = inputMethodManager;
        this.mMainExecutor = delayableExecutor;
        this.mKeyguardViewController = keyguardViewController;
        this.mShowImeAtScreenOn = resources.getBoolean(R.bool.kg_show_ime_at_screen_on);
        KeyguardPasswordView keyguardPasswordView2 = (KeyguardPasswordView) this.mView;
        this.mPasswordEntry = (EditText) keyguardPasswordView2.findViewById(keyguardPasswordView2.getPasswordTextViewId());
        this.mSwitchImeButton = (ImageView) ((KeyguardPasswordView) this.mView).findViewById(R.id.switch_ime_button);
    }

    @Override // com.android.keyguard.KeyguardInputViewController
    public int getInitialMessageResId() {
        return R.string.keyguard_enter_your_password;
    }

    public boolean hasMultipleEnabledIMEsOrSubtypes(InputMethodManager inputMethodManager) {
        int i = 0;
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodListAsUser(KeyguardUpdateMonitor.getCurrentUser())) {
            if (i > 1) {
                return true;
            }
            List<InputMethodSubtype> enabledInputMethodSubtypeList = inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true);
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
        if (i <= 1 && inputMethodManager.getEnabledInputMethodSubtypeList(null, false).size() <= 1) {
            return false;
        }
        return true;
    }

    public final boolean isHideKeyboardByDefault() {
        boolean z;
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        boolean z2 = LsRune.SECURITY_FINGERPRINT_IN_DISPLAY;
        KeyguardUpdateMonitor keyguardUpdateMonitor = ((KeyguardAbsKeyInputViewController) this).mKeyguardUpdateMonitor;
        if (z2 && keyguardUpdateMonitor.isFingerprintOptionEnabled()) {
            z = true;
        } else {
            z = false;
        }
        boolean userUnlockedWithBiometric = keyguardUpdateMonitor.getUserUnlockedWithBiometric(currentUser);
        if (keyguardUpdateMonitor.is2StepVerification()) {
            if (!z || userUnlockedWithBiometric) {
                return false;
            }
            return true;
        }
        if ((!z || !keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) && !userUnlockedWithBiometric) {
            if (!LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                return false;
            }
            if (!keyguardUpdateMonitor.isFingerprintDetectionRunning() && !keyguardUpdateMonitor.isFaceDetectionRunning()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardSecurityView
    public boolean needsInput() {
        return true;
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public final void onPause() {
        if (this.mPaused) {
            return;
        }
        this.mPaused = true;
        if (!this.mPasswordEntry.isVisibleToUser()) {
            super.onPause();
        } else {
            ((KeyguardPasswordView) this.mView).mOnFinishImeAnimationRunnable = new KeyguardPasswordViewController$$ExternalSyntheticLambda0(this, 2);
        }
        KeyguardPasswordView keyguardPasswordView = (KeyguardPasswordView) this.mView;
        keyguardPasswordView.getClass();
        keyguardPasswordView.post(new KeyguardPasswordView$$ExternalSyntheticLambda0(keyguardPasswordView));
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController
    public void onResume(int i) {
        super.onResume(i);
        this.mPaused = false;
        if (!isHideKeyboardByDefault()) {
            if (i != 1 || this.mShowImeAtScreenOn) {
                showInput();
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecurityView
    public void onStartingToHide() {
        KeyguardPasswordView keyguardPasswordView = (KeyguardPasswordView) this.mView;
        keyguardPasswordView.getClass();
        keyguardPasswordView.post(new KeyguardPasswordView$$ExternalSyntheticLambda0(keyguardPasswordView));
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public void onViewAttached() {
        super.onViewAttached();
        UserHandle of = UserHandle.of(KeyguardUpdateMonitor.getCurrentUser());
        EditText editText = this.mPasswordEntry;
        editText.setTextOperationUser(of);
        editText.setKeyListener(TextKeyListener.getInstance());
        editText.setInputType(129);
        final int i = 1;
        editText.setSelected(true);
        editText.setOnEditorActionListener(this.mOnEditorActionListener);
        editText.addTextChangedListener(this.mTextWatcher);
        final int i2 = 0;
        editText.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardPasswordViewController$$ExternalSyntheticLambda2
            public final /* synthetic */ KeyguardPasswordViewController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.f$0.mKeyguardSecurityCallback.userActivity();
                        return;
                    case 1:
                        KeyguardPasswordViewController keyguardPasswordViewController = this.f$0;
                        keyguardPasswordViewController.mKeyguardSecurityCallback.userActivity();
                        keyguardPasswordViewController.mInputMethodManager.showInputMethodPickerFromSystem(false, ((KeyguardPasswordView) keyguardPasswordViewController.mView).getContext().getDisplayId());
                        return;
                    default:
                        KeyguardSecurityCallback keyguardSecurityCallback = this.f$0.mKeyguardSecurityCallback;
                        keyguardSecurityCallback.reset();
                        keyguardSecurityCallback.onCancelClicked();
                        return;
                }
            }
        });
        this.mSwitchImeButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardPasswordViewController$$ExternalSyntheticLambda2
            public final /* synthetic */ KeyguardPasswordViewController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.f$0.mKeyguardSecurityCallback.userActivity();
                        return;
                    case 1:
                        KeyguardPasswordViewController keyguardPasswordViewController = this.f$0;
                        keyguardPasswordViewController.mKeyguardSecurityCallback.userActivity();
                        keyguardPasswordViewController.mInputMethodManager.showInputMethodPickerFromSystem(false, ((KeyguardPasswordView) keyguardPasswordViewController.mView).getContext().getDisplayId());
                        return;
                    default:
                        KeyguardSecurityCallback keyguardSecurityCallback = this.f$0.mKeyguardSecurityCallback;
                        keyguardSecurityCallback.reset();
                        keyguardSecurityCallback.onCancelClicked();
                        return;
                }
            }
        });
        View findViewById = ((KeyguardPasswordView) this.mView).findViewById(R.id.cancel_button);
        if (findViewById != null) {
            final int i3 = 2;
            findViewById.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardPasswordViewController$$ExternalSyntheticLambda2
                public final /* synthetic */ KeyguardPasswordViewController f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i3) {
                        case 0:
                            this.f$0.mKeyguardSecurityCallback.userActivity();
                            return;
                        case 1:
                            KeyguardPasswordViewController keyguardPasswordViewController = this.f$0;
                            keyguardPasswordViewController.mKeyguardSecurityCallback.userActivity();
                            keyguardPasswordViewController.mInputMethodManager.showInputMethodPickerFromSystem(false, ((KeyguardPasswordView) keyguardPasswordViewController.mView).getContext().getDisplayId());
                            return;
                        default:
                            KeyguardSecurityCallback keyguardSecurityCallback = this.f$0.mKeyguardSecurityCallback;
                            keyguardSecurityCallback.reset();
                            keyguardSecurityCallback.onCancelClicked();
                            return;
                    }
                }
            });
        }
        updateSwitchImeButton();
        this.mMainExecutor.executeDelayed(500L, new KeyguardPasswordViewController$$ExternalSyntheticLambda0(this, 1));
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public void onViewDetached() {
        super.onViewDetached();
        this.mPasswordEntry.setOnEditorActionListener(null);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputViewController
    public void resetState() {
        UserHandle of = UserHandle.of(KeyguardUpdateMonitor.getCurrentUser());
        EditText editText = this.mPasswordEntry;
        editText.setTextOperationUser(of);
        this.mMessageAreaController.setMessage(getInitialMessageResId());
        boolean isEnabled = editText.isEnabled();
        ((KeyguardPasswordView) this.mView).setPasswordEntryEnabled(true);
        ((KeyguardPasswordView) this.mView).setPasswordEntryInputEnabled(true);
        if (this.mResumed && editText.isVisibleToUser() && isEnabled) {
            showInput();
        }
    }

    public final void showInput() {
        if (!this.mKeyguardViewController.isBouncerShowing() || !((KeyguardPasswordView) this.mView).isShown() || !this.mPasswordEntry.isEnabled()) {
            return;
        }
        ((KeyguardPasswordView) this.mView).post(new KeyguardPasswordViewController$$ExternalSyntheticLambda0(this, 0));
    }

    public void updateSwitchImeButton() {
        boolean z;
        int i;
        ImageView imageView = this.mSwitchImeButton;
        if (imageView.getVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        boolean hasMultipleEnabledIMEsOrSubtypes = hasMultipleEnabledIMEsOrSubtypes(this.mInputMethodManager);
        if (z != hasMultipleEnabledIMEsOrSubtypes) {
            if (hasMultipleEnabledIMEsOrSubtypes) {
                i = 0;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
        }
        if (imageView.getVisibility() != 0) {
            EditText editText = this.mPasswordEntry;
            ViewGroup.LayoutParams layoutParams = editText.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(0);
                editText.setLayoutParams(layoutParams);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardPasswordViewController$1 */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements TextWatcher {
        public AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (!TextUtils.isEmpty(editable)) {
                KeyguardPasswordViewController.this.onUserInput();
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            KeyguardPasswordViewController.this.mKeyguardSecurityCallback.userActivity();
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }
}
