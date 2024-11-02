package android.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes4.dex */
public class SemRemoteViewsBasicAnimation extends SemRemoteViewsAnimation {
    public static final Parcelable.Creator<SemRemoteViewsBasicAnimation> CREATOR = new Parcelable.Creator<SemRemoteViewsBasicAnimation>() { // from class: android.widget.SemRemoteViewsBasicAnimation.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemRemoteViewsBasicAnimation createFromParcel(Parcel in) {
            return new SemRemoteViewsBasicAnimation(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemRemoteViewsBasicAnimation[] newArray(int size) {
            return new SemRemoteViewsBasicAnimation[size];
        }
    };
    private static final String LOG_TAG = "SemRemoteViewsBasicAnimation";
    public static final String TYPE_TEXT_SWITCHER = "text_switcher";
    private static final String TYPE_UNKNOWN = "unknown";
    private final String mAnimationType;
    private final Bundle mExtras;

    public SemRemoteViewsBasicAnimation(int viewId, String animationType, Bundle extras) {
        super(viewId);
        this.mAnimationType = animationType;
        this.mExtras = extras;
    }

    protected SemRemoteViewsBasicAnimation(Parcel in) {
        super(in);
        this.mAnimationType = in.readString();
        this.mExtras = in.readBundle(getClass().getClassLoader());
    }

    @Override // android.widget.SemRemoteViewsAnimation, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.widget.SemRemoteViewsAnimation, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.mAnimationType);
        dest.writeBundle(this.mExtras);
    }

    public static void writeToParcel(SemRemoteViewsBasicAnimation c, Parcel out) {
        if (c != null) {
            c.writeToParcel(out, 0);
        } else {
            out.writeString(null);
        }
    }

    /* renamed from: android.widget.SemRemoteViewsBasicAnimation$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemRemoteViewsBasicAnimation> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemRemoteViewsBasicAnimation createFromParcel(Parcel in) {
            return new SemRemoteViewsBasicAnimation(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemRemoteViewsBasicAnimation[] newArray(int size) {
            return new SemRemoteViewsBasicAnimation[size];
        }
    }

    @Override // android.widget.SemRemoteViewsAnimation
    protected void startAnimation(View root) {
        View targetView;
        char c;
        String text;
        if (this.mIsExpired || root == null || (targetView = root.findViewById(this.mViewId)) == null) {
            return;
        }
        String str = this.mAnimationType;
        switch (str.hashCode()) {
            case -1723845197:
                if (str.equals(TYPE_TEXT_SWITCHER)) {
                    c = 0;
                    break;
                }
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if ((targetView instanceof TextView) && (text = this.mExtras.getString("new_text")) != null) {
                    animateTextSwitcher((TextView) targetView, text);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.widget.SemRemoteViewsAnimation
    /* renamed from: endAnimation */
    public void lambda$play$0(View root) {
    }

    private void animateTextSwitcher(TextView textView, CharSequence text) {
        ObjectAnimator fadeout = ObjectAnimator.ofFloat(textView, "alpha", 1.0f, 0.0f);
        ObjectAnimator moveUp = ObjectAnimator.ofFloat(textView, "translationY", 0.0f, -50.0f);
        if (fadeout == null || moveUp == null) {
            return;
        }
        fadeout.setDuration(300L);
        moveUp.setDuration(300L);
        AnimatorSet fadeOutAndMoveUpSet = new AnimatorSet();
        fadeOutAndMoveUpSet.playTogether(fadeout, moveUp);
        fadeOutAndMoveUpSet.addListener(new AnimatorListenerAdapter() { // from class: android.widget.SemRemoteViewsBasicAnimation.2
            final /* synthetic */ CharSequence val$text;
            final /* synthetic */ TextView val$textView;

            AnonymousClass2(TextView textView2, CharSequence text2) {
                textView = textView2;
                text = text2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                textView.setText(text);
            }
        });
        ObjectAnimator fadeIn = ObjectAnimator.ofFloat(textView2, "alpha", 0.0f, 1.0f);
        ObjectAnimator moveUpFromBelow = ObjectAnimator.ofFloat(textView2, "translationY", 50.0f, 0.0f);
        if (fadeIn == null || moveUpFromBelow == null) {
            return;
        }
        fadeIn.setDuration(300L);
        moveUpFromBelow.setDuration(300L);
        AnimatorSet fadeInAndMoveUpFromBelowSet = new AnimatorSet();
        fadeInAndMoveUpFromBelowSet.playTogether(fadeIn, moveUpFromBelow);
        fadeInAndMoveUpFromBelowSet.addListener(new AnimatorListenerAdapter() { // from class: android.widget.SemRemoteViewsBasicAnimation.3
            final /* synthetic */ TextView val$textView;

            AnonymousClass3(TextView textView2) {
                textView = textView2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
                textView.setTranslationY(50.0f);
                textView.setAlpha(0.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                textView.setTranslationY(0.0f);
                SemRemoteViewsBasicAnimation.this.mIsExpired = true;
            }
        });
        AnimatorSet mAnimatorSet = new AnimatorSet();
        mAnimatorSet.playSequentially(fadeOutAndMoveUpSet, fadeInAndMoveUpFromBelowSet);
        mAnimatorSet.start();
    }

    /* renamed from: android.widget.SemRemoteViewsBasicAnimation$2 */
    /* loaded from: classes4.dex */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ CharSequence val$text;
        final /* synthetic */ TextView val$textView;

        AnonymousClass2(TextView textView2, CharSequence text2) {
            textView = textView2;
            text = text2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            textView.setText(text);
        }
    }

    /* renamed from: android.widget.SemRemoteViewsBasicAnimation$3 */
    /* loaded from: classes4.dex */
    public class AnonymousClass3 extends AnimatorListenerAdapter {
        final /* synthetic */ TextView val$textView;

        AnonymousClass3(TextView textView2) {
            textView = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            textView.setTranslationY(50.0f);
            textView.setAlpha(0.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            textView.setTranslationY(0.0f);
            SemRemoteViewsBasicAnimation.this.mIsExpired = true;
        }
    }
}
