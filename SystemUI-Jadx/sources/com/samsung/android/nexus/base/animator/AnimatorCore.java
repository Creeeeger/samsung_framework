package com.samsung.android.nexus.base.animator;

import android.view.Choreographer;
import com.samsung.android.nexus.base.DrawRequester;
import com.samsung.android.nexus.base.utils.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AnimatorCore {
    public final Choreographer mChoreographer;
    public DrawRequester mDrawRequester;
    public int mFrameRate;
    public long mFrameTime;
    public int mRenderMode = 2;
    public long mFrameStartTime = 0;
    public final List mAnimatorList = new ArrayList();
    public final AnonymousClass1 mFrameCallback = new Choreographer.FrameCallback() { // from class: com.samsung.android.nexus.base.animator.AnimatorCore.1
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            Method method;
            AnimatorCore animatorCore = AnimatorCore.this;
            if (j - animatorCore.mFrameStartTime >= animatorCore.mFrameTime) {
                animatorCore.mFrameStartTime = j;
                int i = animatorCore.mRenderMode;
                if (i != 2 && (i != 1 || ((ArrayList) animatorCore.mAnimatorList).isEmpty())) {
                    AnimatorCore.this.getClass();
                    return;
                }
                for (int size = ((ArrayList) AnimatorCore.this.mAnimatorList).size() - 1; size >= 0; size--) {
                    if (!((Animator) ((ArrayList) AnimatorCore.this.mAnimatorList).get(size)).mAlive) {
                        ((ArrayList) AnimatorCore.this.mAnimatorList).remove(size);
                    }
                }
                AnimatorCore.this.mChoreographer.postFrameCallbackDelayed(this, 1L);
                DrawRequester drawRequester = AnimatorCore.this.mDrawRequester;
                if (drawRequester != null && (method = drawRequester.mInvalidateMethod) != null) {
                    try {
                        method.invoke(drawRequester.mInvalidatorInstance, new Object[0]);
                        return;
                    } catch (IllegalAccessException | InvocationTargetException unused) {
                        return;
                    }
                }
            }
            animatorCore.mChoreographer.postFrameCallbackDelayed(this, 1L);
        }
    };

    /* JADX WARN: Type inference failed for: r1v4, types: [com.samsung.android.nexus.base.animator.AnimatorCore$1] */
    public AnimatorCore() {
        this.mFrameRate = 60;
        this.mChoreographer = null;
        Log.i("AnimatorCore", "AnimatorCore() : create AnimatorCore");
        this.mFrameRate = this.mFrameRate;
        this.mFrameTime = 1000000000 / (r1 + 1);
        this.mChoreographer = Choreographer.getInstance();
        if (this.mRenderMode == 2) {
            startAnimator();
        }
    }

    public final void startAnimator() {
        StringBuilder sb = new StringBuilder("startAnimator() : ");
        AnonymousClass1 anonymousClass1 = this.mFrameCallback;
        sb.append(anonymousClass1);
        Log.i("AnimatorCore", sb.toString());
        Choreographer choreographer = this.mChoreographer;
        choreographer.removeFrameCallback(anonymousClass1);
        choreographer.postFrameCallback(anonymousClass1);
    }
}
