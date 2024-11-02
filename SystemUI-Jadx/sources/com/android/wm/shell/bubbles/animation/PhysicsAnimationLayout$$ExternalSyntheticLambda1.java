package com.android.wm.shell.bubbles.animation;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PhysicsAnimationLayout$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ PhysicsAnimationLayout f$0;
    public final /* synthetic */ View f$1;

    public /* synthetic */ PhysicsAnimationLayout$$ExternalSyntheticLambda1(PhysicsAnimationLayout physicsAnimationLayout, View view) {
        this.f$0 = physicsAnimationLayout;
        this.f$1 = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PhysicsAnimationLayout physicsAnimationLayout = this.f$0;
        View view = this.f$1;
        physicsAnimationLayout.cancelAnimationsOnView(view);
        physicsAnimationLayout.removeTransientView(view);
    }
}
