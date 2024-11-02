package com.android.wm.shell.back;

import android.view.IRemoteAnimationRunner;
import android.window.IOnBackInvokedCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BackAnimationRunner {
    public boolean mAnimationCancelled;
    public final IOnBackInvokedCallback mCallback;
    public final IRemoteAnimationRunner mRunner;
    public boolean mWaitingAnimation;

    public BackAnimationRunner(IOnBackInvokedCallback iOnBackInvokedCallback, IRemoteAnimationRunner iRemoteAnimationRunner) {
        this.mCallback = iOnBackInvokedCallback;
        this.mRunner = iRemoteAnimationRunner;
    }
}
