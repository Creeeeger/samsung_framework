package com.android.wm.shell.transition;

import android.R;
import android.content.Context;
import android.util.RotationUtils;
import android.view.SurfaceControl;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenRotationAnimation {
    public final int mAnimHint;
    public final SurfaceControl mAnimLeash;
    public final SurfaceControl mBackColorSurface;
    public final Context mContext;
    public final int mEndHeight;
    public final int mEndRotation;
    public final int mEndWidth;
    public boolean mFadeInOutAnimationNeeded;
    public Animation mRotateAlphaAnimation;
    public Animation mRotateEnterAnimation;
    public Animation mRotateExitAnimation;
    public final SurfaceControl mScreenshotLayer;
    public final int mStartHeight;
    public final float mStartLuma;
    public final int mStartRotation;
    public final int mStartWidth;
    public final SurfaceControl mSurfaceControl;
    public final float[] mTmpFloats = new float[9];
    public final TransactionPool mTransactionPool;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0141 A[Catch: OutOfResourcesException -> 0x019b, TRY_LEAVE, TryCatch #2 {OutOfResourcesException -> 0x019b, blocks: (B:6:0x0123, B:13:0x0141, B:64:0x00ab, B:66:0x00c5, B:68:0x00cb, B:71:0x00f2, B:78:0x0116, B:79:0x0120), top: B:63:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0116 A[Catch: OutOfResourcesException -> 0x019b, TryCatch #2 {OutOfResourcesException -> 0x019b, blocks: (B:6:0x0123, B:13:0x0141, B:64:0x00ab, B:66:0x00c5, B:68:0x00cb, B:71:0x00f2, B:78:0x0116, B:79:0x0120), top: B:63:0x00ab }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ScreenRotationAnimation(android.content.Context r18, android.view.SurfaceSession r19, com.android.wm.shell.common.TransactionPool r20, android.view.SurfaceControl.Transaction r21, android.window.TransitionInfo.Change r22, android.view.SurfaceControl r23, int r24) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.ScreenRotationAnimation.<init>(android.content.Context, android.view.SurfaceSession, com.android.wm.shell.common.TransactionPool, android.view.SurfaceControl$Transaction, android.window.TransitionInfo$Change, android.view.SurfaceControl, int):void");
    }

    public final boolean buildAnimation(ArrayList arrayList, DefaultTransitionHandler$$ExternalSyntheticLambda4 defaultTransitionHandler$$ExternalSyntheticLambda4, float f, ShellExecutor shellExecutor, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        if (this.mScreenshotLayer == null) {
            return false;
        }
        int i8 = this.mAnimHint;
        if (i8 != 1 && i8 != 2) {
            z = false;
        } else {
            z = true;
        }
        Context context = this.mContext;
        if (z) {
            if (i8 == 2) {
                i6 = R.anim.submenu_enter;
            } else {
                i6 = R.anim.submenu_exit;
            }
            this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, i6);
            this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, R.anim.slow_fade_in);
            this.mRotateAlphaAnimation = AnimationUtils.loadAnimation(context, R.anim.ft_avd_tooverflow_rectangle_path_2_animation);
        } else if ((CoreRune.MW_SHELL_DISPLAY_CHANGE_TRANSITION || CoreRune.FW_CUSTOM_SHELL_TRANSITION_DISPLAY_CHANGE) && i2 != -1 && i != -1) {
            this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, i);
            this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, i2);
        } else {
            int deltaRotation = RotationUtils.deltaRotation(this.mEndRotation, this.mStartRotation);
            if (!this.mFadeInOutAnimationNeeded) {
                i7 = deltaRotation;
            }
            if (i7 != 0) {
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 == 3) {
                            this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, R.anim.ic_bluetooth_transient_animation_0);
                            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION) {
                                i5 = R.anim.voice_layer_exit;
                            } else {
                                i5 = R.anim.grow_fade_in_from_bottom;
                            }
                            this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, i5);
                        }
                    } else {
                        this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, R.anim.ft_avd_tooverflow_rectangle_3_pivot_animation);
                        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION) {
                            i4 = R.anim.voice_layer_enter;
                        } else {
                            i4 = R.anim.ft_avd_tooverflow_rectangle_3_animation;
                        }
                        this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, i4);
                    }
                } else {
                    this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, R.anim.ic_bluetooth_transient_animation_2);
                    if (CoreRune.FW_CUSTOM_SHELL_TRANSITION) {
                        i3 = R.anim.wallpaper_close_enter;
                    } else {
                        i3 = R.anim.ic_bluetooth_transient_animation_1;
                    }
                    this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, i3);
                }
            } else {
                this.mRotateExitAnimation = AnimationUtils.loadAnimation(context, R.anim.ft_avd_tooverflow_rectangle_2_pivot_animation);
                this.mRotateEnterAnimation = AnimationUtils.loadAnimation(context, R.anim.slow_fade_in);
            }
        }
        Animation animation = this.mRotateExitAnimation;
        int i9 = this.mEndWidth;
        int i10 = this.mEndHeight;
        int i11 = this.mStartWidth;
        int i12 = this.mStartHeight;
        animation.initialize(i9, i10, i11, i12);
        this.mRotateExitAnimation.restrictDuration(10000L);
        this.mRotateExitAnimation.scaleCurrentDuration(f);
        this.mRotateEnterAnimation.initialize(i9, i10, i11, i12);
        this.mRotateEnterAnimation.restrictDuration(10000L);
        this.mRotateEnterAnimation.scaleCurrentDuration(f);
        if (z) {
            this.mRotateAlphaAnimation.initialize(i9, i10, i11, i12);
            this.mRotateAlphaAnimation.restrictDuration(10000L);
            this.mRotateAlphaAnimation.scaleCurrentDuration(f);
            DefaultTransitionHandler.buildSurfaceAnimation(arrayList, this.mRotateAlphaAnimation, this.mAnimLeash, defaultTransitionHandler$$ExternalSyntheticLambda4, this.mTransactionPool, shellExecutor, null, 0.0f, null);
            DefaultTransitionHandler.buildSurfaceAnimation(arrayList, this.mRotateEnterAnimation, this.mSurfaceControl, defaultTransitionHandler$$ExternalSyntheticLambda4, this.mTransactionPool, shellExecutor, null, 0.0f, null);
        } else {
            DefaultTransitionHandler.buildSurfaceAnimation(arrayList, this.mRotateEnterAnimation, this.mSurfaceControl, defaultTransitionHandler$$ExternalSyntheticLambda4, this.mTransactionPool, shellExecutor, null, 0.0f, null);
            DefaultTransitionHandler.buildSurfaceAnimation(arrayList, this.mRotateExitAnimation, this.mAnimLeash, defaultTransitionHandler$$ExternalSyntheticLambda4, this.mTransactionPool, shellExecutor, null, 0.0f, null);
        }
        return true;
    }
}
