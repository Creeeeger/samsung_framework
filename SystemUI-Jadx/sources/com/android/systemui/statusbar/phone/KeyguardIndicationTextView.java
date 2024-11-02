package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.widget.TextView;
import com.android.app.animation.Interpolators;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.KeyguardIndication;
import com.android.systemui.widget.SystemUITextView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardIndicationTextView extends SystemUITextView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mAlwaysAnnounceText;
    public boolean mAnimationsEnabled;
    public KeyguardIndication mKeyguardIndicationInfo;
    public Animator mLastAnimator;
    public CharSequence mMessage;

    public KeyguardIndicationTextView(Context context) {
        super(context);
        this.mAnimationsEnabled = false;
    }

    public final void clearMessages() {
        Animator animator = this.mLastAnimator;
        if (animator != null) {
            animator.cancel();
        }
        this.mMessage = "";
        setText("");
    }

    public final AnimatorSet getOutAnimator() {
        long j;
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<KeyguardIndicationTextView, Float>) View.ALPHA, 0.0f);
        long j2 = 0;
        if (!this.mAnimationsEnabled) {
            j = 0;
        } else {
            j = 167;
        }
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(Interpolators.FAST_OUT_LINEAR_IN);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.phone.KeyguardIndicationTextView.3
            public boolean mCancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.mCancelled = true;
                KeyguardIndicationTextView.this.setAlpha(0.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!this.mCancelled) {
                    KeyguardIndicationTextView keyguardIndicationTextView = KeyguardIndicationTextView.this;
                    int i = KeyguardIndicationTextView.$r8$clinit;
                    keyguardIndicationTextView.setNextIndication();
                }
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, (Property<KeyguardIndicationTextView, Float>) View.TRANSLATION_Y, 0.0f, -((TextView) this).mContext.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_y_translation));
        if (this.mAnimationsEnabled) {
            j2 = 167;
        }
        ofFloat2.setDuration(j2);
        animatorSet.playTogether(ofFloat, ofFloat2);
        return animatorSet;
    }

    @Override // com.android.systemui.widget.SystemUITextView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Configuration configuration = getResources().getConfiguration();
        this.mOriginalFontSizeDp /= configuration.fontScale;
        updateFontSizeInKeyguardBoundary(true, configuration);
    }

    public void setAnimationsEnabled(boolean z) {
        this.mAnimationsEnabled = z;
    }

    public final void setNextIndication() {
        boolean z;
        KeyguardIndication keyguardIndication = this.mKeyguardIndicationInfo;
        if (keyguardIndication != null) {
            setOnClickListener(keyguardIndication.mOnClickListener);
            if (this.mKeyguardIndicationInfo.mOnClickListener != null) {
                z = true;
            } else {
                z = false;
            }
            setClickable(z);
            Drawable drawable = this.mKeyguardIndicationInfo.mIcon;
            if (drawable != null) {
                drawable.setTint(getCurrentTextColor());
                if (drawable instanceof AnimatedVectorDrawable) {
                    ((AnimatedVectorDrawable) drawable).start();
                }
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        setText(this.mMessage);
        if (this.mAlwaysAnnounceText) {
            announceForAccessibility(this.mMessage);
        }
    }

    public final void switchIndication(CharSequence charSequence, KeyguardIndication keyguardIndication) {
        boolean z;
        boolean z2;
        long j;
        long j2;
        if (LsRune.AOD_FULLSCREEN && ((SecUnlockedScreenOffAnimationHelper) Dependency.get(SecUnlockedScreenOffAnimationHelper.class)).shouldSkipAnimation()) {
            z = false;
        } else {
            z = true;
        }
        this.mMessage = charSequence;
        this.mKeyguardIndicationInfo = keyguardIndication;
        final Runnable runnable = null;
        if (z) {
            if (keyguardIndication != null && keyguardIndication.mIcon != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            if (TextUtils.isEmpty(this.mMessage) && !z2) {
                AnimatorSet outAnimator = getOutAnimator();
                outAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.systemui.statusbar.phone.KeyguardIndicationTextView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
                animatorSet.play(outAnimator);
            } else {
                AnimatorSet animatorSet2 = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<KeyguardIndicationTextView, Float>) View.ALPHA, 1.0f);
                long j3 = 0;
                if (!this.mAnimationsEnabled) {
                    j = 0;
                } else {
                    j = 150;
                }
                ofFloat.setStartDelay(j);
                if (!this.mAnimationsEnabled) {
                    j2 = 0;
                } else {
                    j2 = 317;
                }
                ofFloat.setDuration(j2);
                ofFloat.setInterpolator(Interpolators.LINEAR_OUT_SLOW_IN);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, (Property<KeyguardIndicationTextView, Float>) View.TRANSLATION_Y, ((TextView) this).mContext.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_y_translation), 0.0f);
                if (this.mAnimationsEnabled) {
                    j3 = 600;
                }
                ofFloat2.setDuration(j3);
                ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.phone.KeyguardIndicationTextView.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        super.onAnimationCancel(animator);
                        KeyguardIndicationTextView.this.setTranslationY(0.0f);
                        KeyguardIndicationTextView.this.setAlpha(1.0f);
                    }
                });
                animatorSet2.playTogether(ofFloat2, ofFloat);
                animatorSet2.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.systemui.statusbar.phone.KeyguardIndicationTextView.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
                animatorSet.playSequentially(getOutAnimator(), animatorSet2);
            }
            Animator animator = this.mLastAnimator;
            if (animator != null) {
                animator.cancel();
            }
            this.mLastAnimator = animatorSet;
            animatorSet.start();
            return;
        }
        setAlpha(1.0f);
        setTranslationY(0.0f);
        setNextIndication();
        Animator animator2 = this.mLastAnimator;
        if (animator2 != null) {
            animator2.cancel();
            this.mLastAnimator = null;
        }
    }

    public KeyguardIndicationTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimationsEnabled = false;
    }

    public KeyguardIndicationTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAnimationsEnabled = false;
    }

    public KeyguardIndicationTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mAnimationsEnabled = false;
    }
}
