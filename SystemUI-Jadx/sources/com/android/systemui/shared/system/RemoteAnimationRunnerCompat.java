package com.android.systemui.shared.system;

import android.os.Build;
import android.os.IBinder;
import android.util.ArrayMap;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.RemoteAnimationRunnerHelper;
import android.window.TransitionInfo;
import android.window.WindowContainerTransaction;
import com.samsung.android.rune.CoreRune;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class RemoteAnimationRunnerCompat extends IRemoteAnimationRunner.Stub {
    public static final boolean ONE_UI_6_1;
    public static final HashMap sAnimCallbacks;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.shared.system.RemoteAnimationRunnerCompat$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends IRemoteTransition.Stub {
        public final ArrayMap mFinishRunnables = new ArrayMap();
        public ArrayMap mLeashMap = null;
        public final /* synthetic */ IRemoteAnimationRunner val$runner;

        public AnonymousClass1(IRemoteAnimationRunner iRemoteAnimationRunner) {
            this.val$runner = iRemoteAnimationRunner;
        }

        public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            Runnable runnable;
            if (RemoteAnimationRunnerCompat.ONE_UI_6_1) {
                if (RemoteAnimationRunnerHelper.mergeAnimation(iBinder, transitionInfo, transaction, iBinder2, iRemoteTransitionFinishedCallback, RemoteAnimationRunnerCompat.sAnimCallbacks, this.mLeashMap)) {
                    return;
                }
            } else if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_MERGE && transitionInfo.canMergeAnimation() && RemoteAnimationRunnerCompat.sAnimCallbacks.get(1) != null) {
                for (int i = 0; i < transitionInfo.getChanges().size(); i++) {
                    TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(i);
                    if (change.getParent() == null || (change.getFlags() & 2) == 0) {
                        transaction.show(change.getLeash());
                        transaction.setAlpha(change.getLeash(), 1.0f);
                    }
                }
                transaction.apply();
                transitionInfo.releaseAnimSurfaces();
                ((Runnable) RemoteAnimationRunnerCompat.sAnimCallbacks.get(1)).run();
                iRemoteTransitionFinishedCallback.onTransitionFinished((WindowContainerTransaction) null, (SurfaceControl.Transaction) null);
                return;
            }
            synchronized (this.mFinishRunnables) {
                runnable = (Runnable) this.mFinishRunnables.remove(iBinder2);
            }
            transaction.close();
            transitionInfo.releaseAllSurfaces();
            if (runnable == null) {
                return;
            }
            this.val$runner.onAnimationCancelled();
            runnable.run();
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x02a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void startAnimation(final android.os.IBinder r27, final android.window.TransitionInfo r28, android.view.SurfaceControl.Transaction r29, final android.window.IRemoteTransitionFinishedCallback r30) {
            /*
                Method dump skipped, instructions count: 700
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.system.RemoteAnimationRunnerCompat.AnonymousClass1.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.window.IRemoteTransitionFinishedCallback):void");
        }
    }

    static {
        boolean z;
        if (Build.VERSION.SEM_PLATFORM_INT >= 150100) {
            z = true;
        } else {
            z = false;
        }
        ONE_UI_6_1 = z;
        sAnimCallbacks = new HashMap();
    }

    public abstract void onAnimationStart();

    public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        onAnimationStart();
    }
}
