package com.android.systemui.searcle;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Choreographer;
import android.view.Display;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.LinearLayout;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.shared.system.InputChannelCompat$InputEventListener;
import com.android.systemui.shared.system.InputChannelCompat$InputEventReceiver;
import com.android.systemui.shared.system.InputMonitorCompat;
import com.android.systemui.util.SettingsHelper;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SearcleTipPopup {
    public static final int BUBBLE_ALPHA_DURATION;
    public static final float DEST_SCALE;
    public static final Interpolator ELASTIC_CUSTOM_INTERPOLATOR;
    public static final float INIT_SCALE;
    public static final int POSITION_DURATION;
    public static final int SCALE_DURATION;
    public static final Interpolator SINE_IN_OUT_33_INTERPOLATOR;
    public static final Interpolator SINE_IN_OUT_70_INTERPOLATOR;
    public static final int TEXT_ALPHA_DURATION;
    public final ArrayList closeAnimList;
    public AnimatorSet closeAnimSet;
    public final Context context;
    public final Display defaultDisplay;
    public final Handler handler = new Handler(Looper.getMainLooper());
    public InputChannelCompat$InputEventReceiver inputEventReceiver;
    public InputMonitorCompat inputMonitor;
    public boolean isTipPopupShowing;
    public NavBarStateManager navBarStateManager;
    public final SearcleTipPopup$onAttachStateChangeListener$1 onAttachStateChangeListener;
    public final ArrayList openAnimList;
    public AnimatorSet openAnimSet;
    public final SettingsHelper settingsHelper;
    public SearcleTipView tipLayout;
    public final WindowManager windowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CloseAnimatorListener extends BaseAnimatorListener {
        public CloseAnimatorListener(String str) {
            super(SearcleTipPopup.this, str);
        }

        @Override // com.android.systemui.searcle.SearcleTipPopup.BaseAnimatorListener, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            float f = SearcleTipPopup.INIT_SCALE;
            SearcleTipPopup.this.hideImmediate();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OpenAnimatorListener extends BaseAnimatorListener {
        public OpenAnimatorListener(String str) {
            super(SearcleTipPopup.this, str);
        }

        @Override // com.android.systemui.searcle.SearcleTipPopup.BaseAnimatorListener, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            float f = SearcleTipPopup.INIT_SCALE;
            SearcleTipPopup searcleTipPopup = SearcleTipPopup.this;
            WindowManager windowManager = searcleTipPopup.windowManager;
            if (windowManager != null) {
                SearcleTipView searcleTipView = searcleTipPopup.tipLayout;
                searcleTipPopup.getClass();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 0, 0, 2038, 0, -3);
                layoutParams.semAddPrivateFlags(16);
                layoutParams.setTitle("SearcleTip");
                windowManager.addView(searcleTipView, layoutParams);
            }
        }
    }

    static {
        new Companion(null);
        INIT_SCALE = 0.32f;
        DEST_SCALE = 1.0f;
        POSITION_DURATION = 167;
        SCALE_DURATION = 167;
        BUBBLE_ALPHA_DURATION = 83;
        TEXT_ALPHA_DURATION = 167;
        ELASTIC_CUSTOM_INTERPOLATOR = new PathInterpolator(1.0f, 1.3f);
        SINE_IN_OUT_70_INTERPOLATOR = new PathInterpolator(0.33f, 0.0f, 0.3f, 1.0f);
        SINE_IN_OUT_33_INTERPOLATOR = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [com.android.systemui.searcle.SearcleTipPopup$onAttachStateChangeListener$1] */
    public SearcleTipPopup(Context context) {
        WindowManager windowManager;
        this.context = context;
        Object systemService = context.getSystemService("window");
        if (systemService instanceof WindowManager) {
            windowManager = (WindowManager) systemService;
        } else {
            windowManager = null;
        }
        this.windowManager = windowManager;
        this.defaultDisplay = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).getDisplay(0);
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.openAnimList = new ArrayList();
        this.closeAnimList = new ArrayList();
        this.onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.android.systemui.searcle.SearcleTipPopup$onAttachStateChangeListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                final SearcleTipPopup searcleTipPopup = SearcleTipPopup.this;
                if (view == searcleTipPopup.tipLayout) {
                    searcleTipPopup.isTipPopupShowing = true;
                    InputMonitorCompat inputMonitorCompat = searcleTipPopup.inputMonitor;
                    if (inputMonitorCompat != null) {
                        inputMonitorCompat.mInputMonitor.dispose();
                        searcleTipPopup.inputMonitor = null;
                    }
                    InputChannelCompat$InputEventReceiver inputChannelCompat$InputEventReceiver = searcleTipPopup.inputEventReceiver;
                    if (inputChannelCompat$InputEventReceiver != null) {
                        inputChannelCompat$InputEventReceiver.dispose();
                        searcleTipPopup.inputEventReceiver = null;
                    }
                    InputMonitorCompat inputMonitorCompat2 = new InputMonitorCompat("SearcleTip", searcleTipPopup.defaultDisplay.getDisplayId());
                    searcleTipPopup.inputMonitor = inputMonitorCompat2;
                    searcleTipPopup.inputEventReceiver = new InputChannelCompat$InputEventReceiver(inputMonitorCompat2.mInputMonitor.getInputChannel(), Looper.getMainLooper(), Choreographer.getInstance(), new InputChannelCompat$InputEventListener() { // from class: com.android.systemui.searcle.SearcleTipPopup$startInputListening$1
                        @Override // com.android.systemui.shared.system.InputChannelCompat$InputEventListener
                        public final void onInputEvent(InputEvent inputEvent) {
                            boolean z;
                            Log.d("SearcleTipPopup", "startInputListening ev = " + inputEvent);
                            if (inputEvent instanceof MotionEvent) {
                                MotionEvent motionEvent = (MotionEvent) inputEvent;
                                if (motionEvent.getActionMasked() == 0) {
                                    float f = SearcleTipPopup.INIT_SCALE;
                                    SearcleTipPopup searcleTipPopup2 = SearcleTipPopup.this;
                                    searcleTipPopup2.getClass();
                                    Rect rect = new Rect();
                                    LinearLayout bubbleLayout = searcleTipPopup2.getBubbleLayout();
                                    if (bubbleLayout != null) {
                                        bubbleLayout.getGlobalVisibleRect(rect);
                                    }
                                    Context context2 = searcleTipPopup2.context;
                                    int dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
                                    if (QpRune.QUICK_TABLET) {
                                        rect.top += dimensionPixelSize;
                                        rect.bottom += dimensionPixelSize;
                                    } else {
                                        if (context2.getResources().getConfiguration().orientation == 2 && !searcleTipPopup2.settingsHelper.isNavigationBarGestureWhileHidden()) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (z) {
                                            rect.right += dimensionPixelSize;
                                            rect.left += dimensionPixelSize;
                                        } else {
                                            rect.top += dimensionPixelSize;
                                            rect.bottom += dimensionPixelSize;
                                        }
                                    }
                                    if (!rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                                        searcleTipPopup2.hide();
                                    }
                                }
                            }
                        }
                    });
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                SearcleTipPopup searcleTipPopup = SearcleTipPopup.this;
                if (view == searcleTipPopup.tipLayout) {
                    searcleTipPopup.isTipPopupShowing = false;
                    InputMonitorCompat inputMonitorCompat = searcleTipPopup.inputMonitor;
                    if (inputMonitorCompat != null) {
                        inputMonitorCompat.mInputMonitor.dispose();
                        searcleTipPopup.inputMonitor = null;
                    }
                    InputChannelCompat$InputEventReceiver inputChannelCompat$InputEventReceiver = searcleTipPopup.inputEventReceiver;
                    if (inputChannelCompat$InputEventReceiver != null) {
                        inputChannelCompat$InputEventReceiver.dispose();
                        searcleTipPopup.inputEventReceiver = null;
                    }
                }
            }
        };
    }

    public static void initProperty(int i, View... viewArr) {
        for (View view : viewArr) {
            if (view != null) {
                updateProperty(0.0f, i, view);
            }
        }
    }

    public static void updateProperty(float f, int i, View view) {
        switch (i) {
            case 1:
                view.setAlpha(f);
                return;
            case 2:
                view.setScaleX(f);
                view.setScaleY(f);
                return;
            case 3:
                view.setTranslationY(f);
                return;
            case 4:
                view.setTranslationY(f);
                return;
            case 5:
                view.setTranslationY(f);
                return;
            case 6:
                view.setTranslationX(f);
                return;
            case 7:
                view.setTranslationX(-f);
                return;
            default:
                return;
        }
    }

    public final LinearLayout getBubbleLayout() {
        SearcleTipView searcleTipView = this.tipLayout;
        if (searcleTipView != null) {
            return (LinearLayout) searcleTipView.findViewById(com.android.systemui.R.id.searcle_tip_bubble);
        }
        return null;
    }

    public final void hide() {
        AnimatorSet animatorSet;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("hide isTipPopupShowing = ", this.isTipPopupShowing, "SearcleTipPopup");
        if (this.isTipPopupShowing && (animatorSet = this.closeAnimSet) != null && animatorSet != null) {
            animatorSet.start();
        }
    }

    public final void hideImmediate() {
        View view;
        if (this.tipLayout != null) {
            View[] viewArr = new View[2];
            viewArr[0] = getBubbleLayout();
            SearcleTipView searcleTipView = this.tipLayout;
            if (searcleTipView != null) {
                view = searcleTipView.findViewById(com.android.systemui.R.id.searcle_tip_content);
            } else {
                view = null;
            }
            viewArr[1] = view;
            initProperty(1, viewArr);
            initProperty(3, getBubbleLayout());
            initProperty(6, getBubbleLayout());
            initProperty(2, getBubbleLayout());
            if (this.isTipPopupShowing) {
                WindowManager windowManager = this.windowManager;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.tipLayout);
                }
                this.openAnimList.clear();
                this.closeAnimList.clear();
                this.openAnimSet = null;
                this.closeAnimSet = null;
                this.tipLayout = null;
            }
        }
    }

    public final Animator makeAnimator(final View view, final int i, int i2, float f, float f2, Interpolator interpolator) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        if (view != null) {
            ofFloat.setDuration(i2);
            ofFloat.setStartDelay(0);
            ofFloat.setInterpolator(interpolator);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.searcle.SearcleTipPopup$makeAnimator$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SearcleTipPopup searcleTipPopup = SearcleTipPopup.this;
                    View view2 = view;
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    int i3 = i;
                    float f3 = SearcleTipPopup.INIT_SCALE;
                    searcleTipPopup.getClass();
                    SearcleTipPopup.updateProperty(floatValue, i3, view2);
                }
            });
        }
        return ofFloat;
    }

    public final void showSearcleTip(final boolean z) {
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("showSearcleTip isRetryShowing = ", z, "SearcleTipPopup");
        this.handler.post(new Runnable() { // from class: com.android.systemui.searcle.SearcleTipPopup$showSearcleTip$1
            /* JADX WARN: Code restructure failed: missing block: B:138:0x016a, code lost:
            
                if (r6 == false) goto L103;
             */
            /* JADX WARN: Code restructure failed: missing block: B:155:0x00da, code lost:
            
                if (r9.isTaskBarEnabled(false) == true) goto L51;
             */
            /* JADX WARN: Code restructure failed: missing block: B:156:0x00de, code lost:
            
                if (r2 != false) goto L52;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
            
                if (r14 != 2) goto L59;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00e0, code lost:
            
                r4 = 4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:60:0x0157, code lost:
            
                if (r6 != 2) goto L103;
             */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x016c, code lost:
            
                r6 = 8388693;
             */
            /* JADX WARN: Removed duplicated region for block: B:102:0x02b5  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x02c3  */
            /* JADX WARN: Removed duplicated region for block: B:108:0x02e6  */
            /* JADX WARN: Removed duplicated region for block: B:111:0x02ff  */
            /* JADX WARN: Removed duplicated region for block: B:114:0x0306  */
            /* JADX WARN: Removed duplicated region for block: B:124:0x02eb  */
            /* JADX WARN: Removed duplicated region for block: B:125:0x0295  */
            /* JADX WARN: Removed duplicated region for block: B:126:0x01ff  */
            /* JADX WARN: Removed duplicated region for block: B:127:0x01e8  */
            /* JADX WARN: Removed duplicated region for block: B:129:0x01b5  */
            /* JADX WARN: Removed duplicated region for block: B:142:0x0174  */
            /* JADX WARN: Removed duplicated region for block: B:150:0x0142  */
            /* JADX WARN: Removed duplicated region for block: B:151:0x0101  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x0111  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0146  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x018f  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x01e3  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x01ec  */
            /* JADX WARN: Removed duplicated region for block: B:74:0x01f2  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x01fa  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0220  */
            /* JADX WARN: Removed duplicated region for block: B:89:0x023c  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x0290  */
            /* JADX WARN: Removed duplicated region for block: B:99:0x02ae  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 817
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.searcle.SearcleTipPopup$showSearcleTip$1.run():void");
            }
        });
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class BaseAnimatorListener implements Animator.AnimatorListener {
        public BaseAnimatorListener(SearcleTipPopup searcleTipPopup, String str) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            float f = SearcleTipPopup.INIT_SCALE;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            float f = SearcleTipPopup.INIT_SCALE;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            float f = SearcleTipPopup.INIT_SCALE;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }
    }
}
