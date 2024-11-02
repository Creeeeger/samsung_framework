package com.android.wm.shell.activityembedding;

import android.animation.Animator;
import android.content.Context;
import android.os.IBinder;
import android.util.ArrayMap;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActivityEmbeddingController implements Transitions.TransitionHandler {
    final ActivityEmbeddingAnimationRunner mAnimationRunner;
    public final ArrayMap mTransitionCallbacks = new ArrayMap();
    final Transitions mTransitions;

    private ActivityEmbeddingController(Context context, ShellInit shellInit, Transitions transitions) {
        Objects.requireNonNull(context);
        Objects.requireNonNull(transitions);
        this.mTransitions = transitions;
        this.mAnimationRunner = new ActivityEmbeddingAnimationRunner(context, this);
        shellInit.addInitCallback(new Runnable() { // from class: com.android.wm.shell.activityembedding.ActivityEmbeddingController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ActivityEmbeddingController activityEmbeddingController = ActivityEmbeddingController.this;
                activityEmbeddingController.mTransitions.addHandler(activityEmbeddingController);
            }
        }, this);
    }

    public static ActivityEmbeddingController create(Context context, ShellInit shellInit, Transitions transitions) {
        if (Transitions.ENABLE_SHELL_TRANSITIONS) {
            return new ActivityEmbeddingController(context, shellInit, transitions);
        }
        return null;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        return null;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        Animator animator = this.mAnimationRunner.mActiveAnimator;
        if (animator == null) {
            Log.e("ActivityEmbeddingAnimR", "No active ActivityEmbedding animator running but mergeAnimation is trying to cancel one.");
        } else {
            animator.end();
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void setAnimScaleSetting(float f) {
        this.mAnimationRunner.mAnimationSpec.mTransitionAnimationScaleSetting = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x00ee, code lost:
    
        if (r0 != false) goto L73;
     */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(final android.os.IBinder r11, android.window.TransitionInfo r12, android.view.SurfaceControl.Transaction r13, android.view.SurfaceControl.Transaction r14, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r15) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.activityembedding.ActivityEmbeddingController.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }
}
