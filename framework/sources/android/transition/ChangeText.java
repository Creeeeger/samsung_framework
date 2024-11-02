package android.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: classes4.dex */
public class ChangeText extends Transition {
    public static final int CHANGE_BEHAVIOR_IN = 2;
    public static final int CHANGE_BEHAVIOR_KEEP = 0;
    public static final int CHANGE_BEHAVIOR_OUT = 1;
    public static final int CHANGE_BEHAVIOR_OUT_IN = 3;
    private static final String LOG_TAG = "TextChange";
    private static final String PROPNAME_TEXT_COLOR = "android:textchange:textColor";
    private int mChangeBehavior = 0;
    private static final String PROPNAME_TEXT = "android:textchange:text";
    private static final String PROPNAME_TEXT_SELECTION_START = "android:textchange:textSelectionStart";
    private static final String PROPNAME_TEXT_SELECTION_END = "android:textchange:textSelectionEnd";
    private static final String[] sTransitionProperties = {PROPNAME_TEXT, PROPNAME_TEXT_SELECTION_START, PROPNAME_TEXT_SELECTION_END};

    public ChangeText setChangeBehavior(int changeBehavior) {
        if (changeBehavior >= 0 && changeBehavior <= 3) {
            this.mChangeBehavior = changeBehavior;
        }
        return this;
    }

    @Override // android.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public int getChangeBehavior() {
        return this.mChangeBehavior;
    }

    private void captureValues(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            TextView textview = (TextView) transitionValues.view;
            transitionValues.values.put(PROPNAME_TEXT, textview.getText());
            if (textview instanceof EditText) {
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_START, Integer.valueOf(textview.getSelectionStart()));
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_END, Integer.valueOf(textview.getSelectionEnd()));
            }
            if (this.mChangeBehavior > 0) {
                transitionValues.values.put(PROPNAME_TEXT_COLOR, Integer.valueOf(textview.getCurrentTextColor()));
            }
        }
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019d  */
    @Override // android.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator createAnimator(android.view.ViewGroup r27, android.transition.TransitionValues r28, android.transition.TransitionValues r29) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.transition.ChangeText.createAnimator(android.view.ViewGroup, android.transition.TransitionValues, android.transition.TransitionValues):android.animation.Animator");
    }

    /* renamed from: android.transition.ChangeText$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$endSelectionEnd;
        final /* synthetic */ int val$endSelectionStart;
        final /* synthetic */ CharSequence val$endText;
        final /* synthetic */ CharSequence val$startText;
        final /* synthetic */ TextView val$view;

        AnonymousClass1(CharSequence charSequence, TextView textView, CharSequence charSequence2, int i, int i2) {
            r2 = charSequence;
            r3 = textView;
            r4 = charSequence2;
            r5 = i;
            r6 = i2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (r2.equals(r3.getText())) {
                r3.setText(r4);
                TextView textView = r3;
                if (textView instanceof EditText) {
                    ChangeText.this.setSelection((EditText) textView, r5, r6);
                }
            }
        }
    }

    /* renamed from: android.transition.ChangeText$2 */
    /* loaded from: classes4.dex */
    class AnonymousClass2 implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ int val$startColor;
        final /* synthetic */ TextView val$view;

        AnonymousClass2(TextView textView, int i) {
            r2 = textView;
            r3 = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            int currAlpha = ((Integer) animation.getAnimatedValue()).intValue();
            r2.setTextColor((currAlpha << 24) | (r3 & 16777215));
        }
    }

    /* renamed from: android.transition.ChangeText$3 */
    /* loaded from: classes4.dex */
    class AnonymousClass3 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$endColor;
        final /* synthetic */ int val$endSelectionEnd;
        final /* synthetic */ int val$endSelectionStart;
        final /* synthetic */ CharSequence val$endText;
        final /* synthetic */ CharSequence val$startText;
        final /* synthetic */ TextView val$view;

        AnonymousClass3(CharSequence charSequence, TextView textView, CharSequence charSequence2, int i, int i2, int i3) {
            r2 = charSequence;
            r3 = textView;
            r4 = charSequence2;
            r5 = i;
            r6 = i2;
            r7 = i3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (r2.equals(r3.getText())) {
                r3.setText(r4);
                TextView textView = r3;
                if (textView instanceof EditText) {
                    ChangeText.this.setSelection((EditText) textView, r5, r6);
                }
            }
            r3.setTextColor(r7);
        }
    }

    /* renamed from: android.transition.ChangeText$4 */
    /* loaded from: classes4.dex */
    class AnonymousClass4 implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ int val$endColor;
        final /* synthetic */ TextView val$view;

        AnonymousClass4(TextView textView, int i) {
            r2 = textView;
            r3 = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            int currAlpha = ((Integer) animation.getAnimatedValue()).intValue();
            r2.setTextColor((currAlpha << 24) | (r3 & 16777215));
        }
    }

    /* renamed from: android.transition.ChangeText$5 */
    /* loaded from: classes4.dex */
    class AnonymousClass5 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$endColor;
        final /* synthetic */ TextView val$view;

        AnonymousClass5(TextView textView, int i) {
            r2 = textView;
            r3 = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            r2.setTextColor(r3);
        }
    }

    /* renamed from: android.transition.ChangeText$6 */
    /* loaded from: classes4.dex */
    class AnonymousClass6 extends TransitionListenerAdapter {
        int mPausedColor = 0;
        final /* synthetic */ int val$endColor;
        final /* synthetic */ int val$endSelectionEnd;
        final /* synthetic */ int val$endSelectionStart;
        final /* synthetic */ CharSequence val$endText;
        final /* synthetic */ int val$startSelectionEnd;
        final /* synthetic */ int val$startSelectionStart;
        final /* synthetic */ CharSequence val$startText;
        final /* synthetic */ TextView val$view;

        AnonymousClass6(TextView textView, CharSequence charSequence, int i, int i2, int i3, CharSequence charSequence2, int i4, int i5) {
            r2 = textView;
            r3 = charSequence;
            r4 = i;
            r5 = i2;
            r6 = i3;
            r7 = charSequence2;
            r8 = i4;
            r9 = i5;
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
            if (ChangeText.this.mChangeBehavior != 2) {
                r2.setText(r3);
                TextView textView = r2;
                if (textView instanceof EditText) {
                    ChangeText.this.setSelection((EditText) textView, r4, r5);
                }
            }
            if (ChangeText.this.mChangeBehavior > 0) {
                this.mPausedColor = r2.getCurrentTextColor();
                r2.setTextColor(r6);
            }
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
            if (ChangeText.this.mChangeBehavior != 2) {
                r2.setText(r7);
                TextView textView = r2;
                if (textView instanceof EditText) {
                    ChangeText.this.setSelection((EditText) textView, r8, r9);
                }
            }
            if (ChangeText.this.mChangeBehavior > 0) {
                r2.setTextColor(this.mPausedColor);
            }
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }
    }

    public void setSelection(EditText editText, int start, int end) {
        if (start >= 0 && end >= 0) {
            editText.setSelection(start, end);
        }
    }
}
