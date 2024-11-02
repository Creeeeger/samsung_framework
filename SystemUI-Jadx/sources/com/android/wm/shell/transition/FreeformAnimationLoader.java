package com.android.wm.shell.transition;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayController;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformAnimationLoader extends AnimationLoader {
    public FreeformAnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        super(multiTaskingTransitionState);
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final float getCornerRadius() {
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        if (multiTaskingTransitionState.mDisplayController.getDisplayContext(multiTaskingTransitionState.mDisplayId) == null) {
            return 0.0f;
        }
        return (int) TypedValue.applyDimension(1, 14, r2.getResources().getDisplayMetrics());
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final boolean isAvailable() {
        if (this.mState.mWindowingMode == 5) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final void loadAnimationIfPossible() {
        boolean z;
        int i;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        Animation animation;
        boolean z5;
        boolean z6;
        boolean z7 = CoreRune.MW_FREEFORM_MINIMIZE_SHELL_TRANSITION;
        boolean z8 = false;
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        if (z7) {
            int i3 = multiTaskingTransitionState.mMinimizeAnimState;
            if (i3 == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            PointF pointF = multiTaskingTransitionState.mMinimizePoint;
            DisplayController displayController = multiTaskingTransitionState.mDisplayController;
            if (z3) {
                Rect rect = new Rect(multiTaskingTransitionState.getBounds());
                PointF pointF2 = new PointF(rect.centerX(), rect.centerY());
                if (CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER) {
                    pointF2.set(pointF);
                }
                Rect rect2 = new Rect();
                displayController.getDisplayLayout(multiTaskingTransitionState.mDisplayId).getStableBounds(rect2, false);
                if (rect.left < rect2.left && multiTaskingTransitionState.mFreeformStashScale < 1.0f) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                animation = multiTaskingTransitionState.createMinimizeAnimation(false, pointF2, rect, multiTaskingTransitionState.mFreeformStashScale, z6);
                animation.setAnimationListener(new Animation.AnimationListener(multiTaskingTransitionState, multiTaskingTransitionState.mTaskId, pointF2) { // from class: com.android.wm.shell.transition.MultiTaskingTransitionState.1
                    public final /* synthetic */ PointF val$targetPoint;
                    public final /* synthetic */ int val$taskId;

                    public AnonymousClass1(MultiTaskingTransitionState multiTaskingTransitionState2, int i4, PointF pointF22) {
                        this.val$taskId = i4;
                        this.val$targetPoint = pointF22;
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationEnd(Animation animation2) {
                        MultiWindowManager.getInstance().notifyFreeformMinimizeAnimationEnd(this.val$taskId, this.val$targetPoint);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationRepeat(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationStart(Animation animation2) {
                    }
                });
            } else {
                if (i3 == 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    Rect rect3 = new Rect(multiTaskingTransitionState2.getBounds());
                    PointF pointF3 = new PointF();
                    if (CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER) {
                        pointF3.set(pointF);
                    } else {
                        pointF3.set(rect3.centerX(), rect3.centerY());
                    }
                    Rect rect4 = new Rect();
                    displayController.getDisplayLayout(multiTaskingTransitionState2.mDisplayId).getStableBounds(rect4, false);
                    if (rect3.left < rect4.left && multiTaskingTransitionState2.mFreeformStashScale < 1.0f) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    animation = multiTaskingTransitionState2.createMinimizeAnimation(true, pointF3, rect3, multiTaskingTransitionState2.mFreeformStashScale, z5);
                } else {
                    animation = null;
                }
            }
            if (animation != null) {
                multiTaskingTransitionState2.setAnimation(animation);
            }
            if (multiTaskingTransitionState2.mAnimationLoaded) {
                return;
            }
        }
        if (CoreRune.MW_FREEFORM_FORCE_HIDING_TRANSITION) {
            int i4 = multiTaskingTransitionState2.mForceHidingTransit;
            if (i4 != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (multiTaskingTransitionState2.mFreeformStashScale != 1.0f) {
                    multiTaskingTransitionState2.setAnimation(AnimationLoader.NO_ANIMATION);
                    return;
                }
                if (i4 == 1) {
                    i2 = R.anim.freeform_window_force_hide_enter;
                } else {
                    i2 = R.anim.freeform_window_force_hide_exit;
                }
                Animation loadAnimationFromResources = multiTaskingTransitionState2.loadAnimationFromResources(i2);
                loadAnimationFromResources.setInterpolator(InterpolatorUtils.SINE_OUT_60);
                if (i2 == R.anim.freeform_open_enter || i2 == R.anim.freeform_close_exit) {
                    z8 = true;
                }
                if (z8 && (loadAnimationFromResources instanceof AnimationSet)) {
                    addRoundedClipAnimation(multiTaskingTransitionState2.getBounds(), (AnimationSet) loadAnimationFromResources);
                }
                multiTaskingTransitionState2.setAnimation(loadAnimationFromResources);
                return;
            }
        }
        if (CoreRune.MT_NEW_DEX_SHELL_TRANSITION && multiTaskingTransitionState2.mIsFreeformMovingBehindSplitScreen) {
            multiTaskingTransitionState2.setAnimation(new AlphaAnimation(0.0f, 0.0f));
            return;
        }
        boolean z9 = multiTaskingTransitionState2.mIsEnter;
        int i5 = multiTaskingTransitionState2.mTransitionType;
        if (i5 != 1 && i5 != 3) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (z9) {
                i = R.anim.freeform_open_enter;
            } else {
                i = R.anim.freeform_open_exit;
            }
        } else if (multiTaskingTransitionState2.isClosingTransitionType()) {
            if (z9) {
                i = R.anim.freeform_close_enter;
            } else {
                i = R.anim.freeform_close_exit;
            }
        } else {
            i = -1;
        }
        if (i != -1) {
            Animation loadAnimationFromResources2 = multiTaskingTransitionState2.loadAnimationFromResources(i);
            if (i == R.anim.freeform_open_enter || i == R.anim.freeform_close_exit) {
                z8 = true;
            }
            if (z8 && (loadAnimationFromResources2 instanceof AnimationSet)) {
                addRoundedClipAnimation(multiTaskingTransitionState2.getBounds(), (AnimationSet) loadAnimationFromResources2);
            }
            multiTaskingTransitionState2.setAnimation(loadAnimationFromResources2);
        }
    }

    public final String toString() {
        return "FreeformAnimationLoader";
    }
}
