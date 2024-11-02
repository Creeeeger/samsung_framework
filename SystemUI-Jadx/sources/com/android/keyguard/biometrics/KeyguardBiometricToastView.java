package com.android.keyguard.biometrics;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.SimpleColorFilter;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.LottieValueCallback;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import java.util.Objects;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardBiometricToastView extends FrameLayout {
    public static final PathInterpolator INTERPOLATOR = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
    public static float mToastIconFrom = 1.28f;
    public final AnonymousClass1 mAnimHandler;
    public AnimatorSet mAnimatorSet;
    public String mAssetName;
    public Consumer mBiometricToastViewStateUpdater;
    public ValueAnimator mBodyAnimator;
    public int mCurrentToastViewWidth;
    public boolean mIsAnimating;
    public boolean mIsBackgroundAuth;
    public boolean mIsShowing;
    public LinearLayout mToastBodyView;
    public TextView mToastGuideText;
    public LottieAnimationView mToastIcon;
    public int mToastLockIconWidth;
    public FrameLayout mToastRoot;
    public int mToastViewMinWidth;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.biometrics.KeyguardBiometricToastView$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType;

        static {
            int[] iArr = new int[ToastType.values().length];
            $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType = iArr;
            try {
                iArr[ToastType.Authenticating.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.AuthenticationSuccess.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FingerprintAuthenticationSuccess.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FingerprintAuthenticationFail.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.AuthenticationFail.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FingerprintAuthenticationError.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FingerprintAuthenticationHelp.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FaceAuthenticationError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FaceAuthenticationHelp.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[ToastType.FaceAuthenticationFail.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum ToastType {
        Authenticating,
        AuthenticationSuccess,
        AuthenticationFail,
        FingerprintAuthenticationSuccess,
        FingerprintAuthenticationFail,
        FingerprintAuthenticationError,
        FingerprintAuthenticationHelp,
        FaceAuthenticationFail,
        FaceAuthenticationError,
        FaceAuthenticationHelp
    }

    public KeyguardBiometricToastView(Context context) {
        this(context, null);
    }

    public final void changeTextAnim(float f, float f2, final ToastType toastType) {
        final int i = this.mCurrentToastViewWidth - this.mToastViewMinWidth;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.mBodyAnimator = ofFloat;
        ofFloat.setStartDelay(0L);
        this.mBodyAnimator.setDuration(350L);
        this.mBodyAnimator.setInterpolator(INTERPOLATOR);
        this.mBodyAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricToastView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                KeyguardBiometricToastView keyguardBiometricToastView = KeyguardBiometricToastView.this;
                float f3 = i;
                keyguardBiometricToastView.mToastRoot.getLayoutParams().width = keyguardBiometricToastView.mToastViewMinWidth + ((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * f3));
                keyguardBiometricToastView.mToastBodyView.getLayoutParams().width = keyguardBiometricToastView.mToastViewMinWidth + ((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * f3));
                keyguardBiometricToastView.mToastRoot.requestLayout();
            }
        });
        this.mBodyAnimator.addListener(new Animator.AnimatorListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricToastView.3
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (toastType != ToastType.Authenticating) {
                    if (hasMessages(4)) {
                        removeMessages(4);
                    }
                    sendEmptyMessageDelayed(4, 3000L);
                } else {
                    Log.d("KeyguardBiometricToastView", "disappearAnimation end");
                    KeyguardBiometricToastView keyguardBiometricToastView = KeyguardBiometricToastView.this;
                    float f3 = KeyguardBiometricToastView.mToastIconFrom;
                    keyguardBiometricToastView.reset();
                    KeyguardBiometricToastView.this.setVisibility(8);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (hasMessages(4)) {
                    removeMessages(4);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }
        });
        this.mBodyAnimator.start();
    }

    public final void dismiss(boolean z) {
        float f;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("dismiss() , force = ", z, "KeyguardBiometricToastView");
        AnimatorSet animatorSet = this.mAnimatorSet;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.mAnimatorSet.cancel();
        }
        ValueAnimator valueAnimator = this.mBodyAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mBodyAnimator.cancel();
        }
        if (z) {
            reset();
            setVisibility(8);
            return;
        }
        this.mIsShowing = false;
        if (hasGuideText()) {
            if (shouldDisappearLockIcon()) {
                f = 0.0f;
            } else {
                f = mToastIconFrom;
            }
            scaleIconAnim(1.0f, f);
            changeTextAnim(1.0f, 0.0f, ToastType.Authenticating);
        }
        this.mIsBackgroundAuth = false;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mToastRoot, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(INTERPOLATOR);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mToastGuideText, "alpha", 1.0f, 0.0f);
        ofFloat2.setDuration(100L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mAnimatorSet = animatorSet2;
        animatorSet2.setStartDelay(0L);
        this.mAnimatorSet.playTogether(ofFloat, ofFloat2);
        this.mAnimatorSet.start();
    }

    public final boolean hasGuideText() {
        TextView textView = this.mToastGuideText;
        if (textView != null && textView.getText() != null && this.mToastGuideText.getText().length() > 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mToastRoot = (FrameLayout) findViewById(R.id.toast_root);
        this.mToastBodyView = (LinearLayout) findViewById(R.id.toast_body_view);
        this.mToastGuideText = (TextView) findViewById(R.id.biometric_toast_text);
        this.mToastIcon = (LottieAnimationView) findViewById(R.id.biometric_toast_icon);
        this.mToastGuideText.setText(getResources().getString(R.string.kg_background_auth_unlock_instruction_text));
        Resources resources = getResources();
        int dimensionPixelSize = (resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_image_margin_start_end) * 2) + resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_image_height);
        this.mToastLockIconWidth = dimensionPixelSize;
        this.mToastViewMinWidth = (resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_inner_start_margin) * 2) + dimensionPixelSize;
        mToastIconFrom = resources.getDimensionPixelSize(R.dimen.kg_biometric_view_min_height) / resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_image_height);
        setViewAttribution(false);
        reset();
        setVisibility(8);
    }

    public final void reset() {
        Consumer consumer = this.mBiometricToastViewStateUpdater;
        if (consumer != null) {
            consumer.accept(Boolean.FALSE);
        }
        this.mToastRoot.setAlpha(0.0f);
        AnimatorSet animatorSet = this.mAnimatorSet;
        if (animatorSet != null && (this.mIsAnimating || animatorSet.isRunning())) {
            this.mAnimatorSet.removeAllListeners();
            this.mAnimatorSet.cancel();
            this.mAnimatorSet = null;
        }
        ValueAnimator valueAnimator = this.mBodyAnimator;
        if (valueAnimator != null && (this.mIsAnimating || valueAnimator.isRunning())) {
            this.mBodyAnimator.removeAllListeners();
            this.mBodyAnimator.cancel();
            this.mBodyAnimator = null;
        }
        this.mIsAnimating = false;
    }

    public final void scaleIconAnim(float f, float f2) {
        long j;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mToastIcon, (Property<LottieAnimationView, Float>) View.SCALE_X, f, f2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mToastIcon, (Property<LottieAnimationView, Float>) View.SCALE_Y, f, f2);
        AnimatorSet animatorSet = new AnimatorSet();
        if (shouldDisappearLockIcon()) {
            j = 200;
        } else {
            j = 350;
        }
        animatorSet.setDuration(j);
        animatorSet.setInterpolator(INTERPOLATOR);
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.start();
    }

    public final void setViewAttribution(boolean z) {
        int i;
        int i2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mToastRoot.getLayoutParams();
        Resources resources = getResources();
        int i3 = 0;
        this.mToastGuideText.measure(0, 0);
        int measuredWidth = this.mToastGuideText.getMeasuredWidth();
        Resources resources2 = getResources();
        int screenWidth = DeviceState.getScreenWidth(getContext());
        if (!DeviceType.isTablet() && (!LsRune.SECURITY_SUB_DISPLAY_LOCK || !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened)) {
            i = screenWidth - (resources2.getDimensionPixelSize(R.dimen.kg_biometric_toast_outer_margin) * 2);
        } else {
            i = (int) (screenWidth * 0.7d);
        }
        int min = Math.min(measuredWidth, ((i - this.mToastLockIconWidth) - resources2.getDimensionPixelSize(R.dimen.kg_biometric_toast_inner_start_margin)) - resources2.getDimensionPixelSize(R.dimen.kg_biometric_toast_inner_end_margin));
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_inner_end_margin) + resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_inner_start_margin) + this.mToastLockIconWidth + min;
        this.mCurrentToastViewWidth = dimensionPixelSize;
        layoutParams.width = dimensionPixelSize;
        this.mToastGuideText.measure(0, 0);
        int measuredWidth2 = this.mToastGuideText.getMeasuredWidth();
        boolean z2 = true;
        if (measuredWidth2 > min) {
            i2 = (measuredWidth2 / min) + 1;
            if (i2 > this.mToastGuideText.getMaxLines()) {
                i2 = this.mToastGuideText.getMaxLines();
            }
        } else {
            i2 = 1;
        }
        layoutParams.height = (getResources().getDimensionPixelSize(R.dimen.kg_biometric_toast_text_view_margin) * 2) + (getResources().getDimensionPixelSize(R.dimen.kg_biometric_toast_text_view_height) * i2);
        float dimensionPixelSize2 = ((resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_image_height) / 2.0f) + resources.getDimensionPixelSize(R.dimen.kg_biometric_toast_image_view_margin)) - (resources.getDimensionPixelSize(R.dimen.kg_biometric_view_min_height) / 2.0f);
        if (getResources().getConfiguration().orientation != 2) {
            z2 = false;
        }
        if (!z2) {
            i3 = resources.getDimensionPixelSize(R.dimen.kg_lock_icon_top_margin);
        }
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.status_bar_height) + (i3 - ((int) dimensionPixelSize2));
        layoutParams.topMargin = dimensionPixelSize3;
        if (z) {
            layoutParams.topMargin = resources.getDimensionPixelSize(R.dimen.kg_extend_lock_view_padding) + dimensionPixelSize3;
        }
        this.mToastRoot.setLayoutParams(layoutParams);
        this.mToastBodyView.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.mToastGuideText.getLayoutParams();
        layoutParams2.width = min;
        this.mToastGuideText.setLayoutParams(layoutParams2);
    }

    public final boolean shouldDisappearLockIcon() {
        if (!this.mIsBackgroundAuth && (!LsRune.SECURITY_BIOMETRICS_TABLET || DeviceState.getRotation(getResources().getConfiguration().windowConfiguration.getRotation()) != 2)) {
            return false;
        }
        return true;
    }

    public final void update(final ToastType toastType, String str, boolean z, boolean z2, boolean z3) {
        int i;
        StringBuilder sb = new StringBuilder("Update toast contents = ");
        sb.append(toastType);
        sb.append(" , already showing = ");
        sb.append(this.mIsShowing);
        sb.append(" , text = ");
        sb.append(str);
        sb.append(" , backgroundAuth = ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, z3, "KeyguardBiometricToastView");
        final String str2 = "unlock_icon.json";
        boolean z4 = false;
        switch (AnonymousClass4.$SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType[toastType.ordinal()]) {
            case 2:
                if (DeviceType.isTablet()) {
                    i = R.string.kg_background_auth_tablet_unlock_succeeded_text;
                    break;
                } else {
                    i = R.string.kg_background_auth_unlock_succeeded_text;
                    break;
                }
            case 3:
                if (DeviceType.isTablet()) {
                    i = R.string.kg_background_auth_tablet_fingerprint_unlock_succeeded_text;
                    break;
                } else {
                    i = R.string.kg_background_auth_fingerprint_unlock_succeeded_text;
                    break;
                }
            case 4:
                i = R.string.kg_fingerprint_no_match;
                str2 = "unlock_fail_icon.json";
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str2 = "unlock_fail_icon.json";
                i = 0;
                break;
            case 10:
                i = R.string.kg_face_no_match;
                str2 = "unlock_fail_icon.json";
                break;
            default:
                str2 = "";
                i = 0;
                break;
        }
        if (z2 && "unlock_fail_icon.json".equals(str2)) {
            str2 = "unlock_fail_icon_lock_stay.json";
        }
        this.mIsBackgroundAuth = z3;
        if (toastType != ToastType.Authenticating) {
            if (i != 0) {
                str = getResources().getString(i);
            }
            reset();
            this.mIsShowing = true;
            setVisibility(0);
            FrameLayout frameLayout = this.mToastRoot;
            if (frameLayout == null) {
                Log.d("KeyguardBiometricToastView", "Root view is null");
            } else {
                frameLayout.getBackground().setColorFilter(new PorterDuffColorFilter(getResources().getColor(R.color.biometric_toast_bg_color, null), PorterDuff.Mode.SRC_ATOP));
            }
            if (this.mToastGuideText == null) {
                Log.d("KeyguardBiometricToastView", "Text view is null");
            } else {
                if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                    if (((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
                        this.mToastGuideText.setMaxLines(2);
                    } else {
                        this.mToastGuideText.setMaxLines(4);
                    }
                } else {
                    if (getResources().getConfiguration().orientation == 2) {
                        z4 = true;
                    }
                    if (z4) {
                        this.mToastGuideText.setMaxLines(2);
                    }
                }
                this.mToastGuideText.setTextColor(getResources().getColor(R.color.biometric_toast_text_color, null));
                this.mToastGuideText.setText(str);
            }
            if (hasGuideText()) {
                setViewAttribution(z);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mToastRoot, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(200L);
            ofFloat.setInterpolator(INTERPOLATOR);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mToastGuideText, "alpha", 0.0f, 1.0f);
            ofFloat2.setDuration(100L);
            AnimatorSet animatorSet = new AnimatorSet();
            this.mAnimatorSet = animatorSet;
            animatorSet.playTogether(ofFloat, ofFloat2);
            this.mAnimatorSet.addListener(new Animator.AnimatorListener() { // from class: com.android.keyguard.biometrics.KeyguardBiometricToastView.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    KeyguardBiometricToastView keyguardBiometricToastView = KeyguardBiometricToastView.this;
                    keyguardBiometricToastView.mIsAnimating = true;
                    Consumer consumer = keyguardBiometricToastView.mBiometricToastViewStateUpdater;
                    if (consumer != null) {
                        consumer.accept(Boolean.TRUE);
                    }
                    KeyguardBiometricToastView keyguardBiometricToastView2 = KeyguardBiometricToastView.this;
                    String str3 = str2;
                    if (keyguardBiometricToastView2.mToastIcon == null) {
                        Log.d("KeyguardBiometricToastView", "Icon view is null");
                    } else {
                        if (!Objects.equals(keyguardBiometricToastView2.mAssetName, str3)) {
                            keyguardBiometricToastView2.mAssetName = str3;
                            keyguardBiometricToastView2.mToastIcon.setAnimation(str3);
                        }
                        keyguardBiometricToastView2.mToastIcon.addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER, new LottieValueCallback(new SimpleColorFilter(keyguardBiometricToastView2.getResources().getColor(R.color.biometric_toast_text_color, null))));
                    }
                    KeyguardBiometricToastView.this.scaleIconAnim(KeyguardBiometricToastView.mToastIconFrom, 1.0f);
                    LottieAnimationView lottieAnimationView = KeyguardBiometricToastView.this.mToastIcon;
                    if (lottieAnimationView != null) {
                        lottieAnimationView.setVisibility(0);
                    }
                    LottieAnimationView lottieAnimationView2 = KeyguardBiometricToastView.this.mToastIcon;
                    if (lottieAnimationView2 == null) {
                        Log.d("KeyguardBiometricToastView", "Icon view is null");
                    } else {
                        lottieAnimationView2.playAnimation();
                    }
                    if (KeyguardBiometricToastView.this.hasGuideText()) {
                        KeyguardBiometricToastView.this.changeTextAnim(0.0f, 1.0f, toastType);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }
            });
            this.mAnimatorSet.start();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.keyguard.biometrics.KeyguardBiometricToastView$1] */
    public KeyguardBiometricToastView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mToastLockIconWidth = 0;
        this.mToastViewMinWidth = 0;
        this.mCurrentToastViewWidth = 0;
        this.mAnimHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.keyguard.biometrics.KeyguardBiometricToastView.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == 4) {
                    KeyguardBiometricToastView.this.dismiss(false);
                }
            }
        };
    }
}
