package com.android.keyguard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.android.app.animation.Interpolators;
import com.android.internal.widget.LockscreenCredential;
import com.android.internal.widget.TextViewInputDisabler;
import com.android.keyguard.KeyguardPasswordView;
import com.android.systemui.DejankUtils;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardPasswordView extends KeyguardSecAbsKeyInputView {
    public KeyguardSecurityContainer$$ExternalSyntheticLambda0 mDisappearAnimationListener;
    public TextView mPasswordEntry;
    public TextViewInputDisabler mPasswordEntryDisabler;

    public KeyguardPasswordView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public LockscreenCredential getEnteredCredential() {
        return LockscreenCredential.createPasswordOrNone(this.mPasswordEntry.getText());
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public int getPasswordTextViewId() {
        return R.id.passwordEntry;
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public final int getPromptReasonStringRes(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 6) {
                            if (i != 16) {
                                return R.string.kg_prompt_reason_timeout_password;
                            }
                            return R.string.kg_prompt_after_update_password;
                        }
                        return R.string.kg_prompt_unattended_update_password;
                    }
                    return R.string.kg_prompt_after_user_lockdown_password;
                }
                return R.string.kg_prompt_reason_device_admin;
            }
            return R.string.kg_prompt_reason_restart_password;
        }
        return 0;
    }

    @Override // com.android.keyguard.KeyguardInputView
    public CharSequence getTitle() {
        return getResources().getString(android.R.string.permlab_requestIgnoreBatteryOptimizations);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public int getWrongPasswordStringId() {
        return R.string.kg_wrong_password;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (!this.mPasswordEntry.isFocused() && isVisibleToUser()) {
            this.mPasswordEntry.requestFocus();
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView, com.android.keyguard.KeyguardInputView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mPasswordEntry = (TextView) findViewById(getPasswordTextViewId());
        this.mPasswordEntryDisabler = new TextViewInputDisabler(this.mPasswordEntry);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        return this.mPasswordEntry.requestFocus(i, rect);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public void resetPasswordText(boolean z, boolean z2) {
        this.mPasswordEntry.setText("");
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public void setPasswordEntryEnabled(boolean z) {
        this.mPasswordEntry.setEnabled(z);
    }

    @Override // com.android.keyguard.KeyguardAbsKeyInputView
    public final void setPasswordEntryInputEnabled(boolean z) {
        this.mPasswordEntryDisabler.setInputEnabled(z);
    }

    @Override // com.android.keyguard.KeyguardInputView
    public void startAppearAnimation() {
        setAlpha(0.0f);
        animate().alpha(1.0f).setDuration(300L).start();
        setTranslationY(0.0f);
    }

    @Override // com.android.keyguard.KeyguardInputView
    public boolean startDisappearAnimation(Runnable runnable) {
        getWindowInsetsController().controlWindowInsetsAnimation(WindowInsets.Type.ime(), 100L, Interpolators.LINEAR, null, new AnonymousClass1(runnable));
        return true;
    }

    public KeyguardPasswordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getResources().getDimensionPixelSize(R.dimen.disappear_y_translation);
        AnimationUtils.loadInterpolator(context, android.R.interpolator.linear_out_slow_in);
        AnimationUtils.loadInterpolator(context, android.R.interpolator.fast_out_linear_in);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardPasswordView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements WindowInsetsAnimationControlListener {
        public final /* synthetic */ Runnable val$finishRunnable;

        public AnonymousClass1(Runnable runnable) {
            this.val$finishRunnable = runnable;
        }

        @Override // android.view.WindowInsetsAnimationControlListener
        public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
            KeyguardPasswordView keyguardPasswordView = KeyguardPasswordView.this;
            Runnable runnable = keyguardPasswordView.mOnFinishImeAnimationRunnable;
            if (runnable != null) {
                runnable.run();
                keyguardPasswordView.mOnFinishImeAnimationRunnable = null;
            }
            this.val$finishRunnable.run();
        }

        @Override // android.view.WindowInsetsAnimationControlListener
        public final void onReady(final WindowInsetsAnimationController windowInsetsAnimationController, int i) {
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.keyguard.KeyguardPasswordView$1$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    KeyguardPasswordView.AnonymousClass1 anonymousClass1 = KeyguardPasswordView.AnonymousClass1.this;
                    WindowInsetsAnimationController windowInsetsAnimationController2 = windowInsetsAnimationController;
                    ValueAnimator valueAnimator2 = ofFloat;
                    anonymousClass1.getClass();
                    if (!windowInsetsAnimationController2.isCancelled()) {
                        Insets add = Insets.add(windowInsetsAnimationController2.getShownStateInsets(), Insets.of(0, 0, 0, (int) (valueAnimator2.getAnimatedFraction() * ((-r2.bottom) / 4))));
                        KeyguardSecurityContainer$$ExternalSyntheticLambda0 keyguardSecurityContainer$$ExternalSyntheticLambda0 = KeyguardPasswordView.this.mDisappearAnimationListener;
                        if (keyguardSecurityContainer$$ExternalSyntheticLambda0 != null) {
                            keyguardSecurityContainer$$ExternalSyntheticLambda0.f$0.setTranslationY(-r3);
                        }
                        windowInsetsAnimationController2.setInsetsAndAlpha(add, ((Float) valueAnimator.getAnimatedValue()).floatValue(), valueAnimator2.getAnimatedFraction());
                    }
                }
            });
            ofFloat.addListener(new C00021(windowInsetsAnimationController));
            ofFloat.setInterpolator(Interpolators.FAST_OUT_LINEAR_IN);
            ofFloat.start();
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.keyguard.KeyguardPasswordView$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00021 extends AnimatorListenerAdapter {
            public final /* synthetic */ WindowInsetsAnimationController val$controller;

            public C00021(WindowInsetsAnimationController windowInsetsAnimationController) {
                this.val$controller = windowInsetsAnimationController;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final WindowInsetsAnimationController windowInsetsAnimationController = this.val$controller;
                final Runnable runnable = AnonymousClass1.this.val$finishRunnable;
                DejankUtils.postAfterTraversal(new Runnable() { // from class: com.android.keyguard.KeyguardPasswordView$1$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardPasswordView.AnonymousClass1.C00021 c00021 = KeyguardPasswordView.AnonymousClass1.C00021.this;
                        WindowInsetsAnimationController windowInsetsAnimationController2 = windowInsetsAnimationController;
                        Runnable runnable2 = runnable;
                        c00021.getClass();
                        Trace.beginSection("KeyguardPasswordView#onAnimationEnd");
                        windowInsetsAnimationController2.finish(false);
                        KeyguardPasswordView keyguardPasswordView = KeyguardPasswordView.this;
                        Runnable runnable3 = keyguardPasswordView.mOnFinishImeAnimationRunnable;
                        if (runnable3 != null) {
                            runnable3.run();
                            keyguardPasswordView.mOnFinishImeAnimationRunnable = null;
                        }
                        runnable2.run();
                        KeyguardPasswordView.this.mDisappearAnimationListener = null;
                        Trace.endSection();
                    }
                });
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        }

        @Override // android.view.WindowInsetsAnimationControlListener
        public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        }
    }
}
