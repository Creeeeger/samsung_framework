package com.android.systemui.keyguard;

import android.os.Handler;
import android.os.SystemClock;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.internal.policy.IKeyguardDrawnCallback;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.util.LogUtil;
import java.util.function.LongConsumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardFastBioUnlockController$onFrameRequest$1 extends FunctionReferenceImpl implements Function0 {
    public KeyguardFastBioUnlockController$onFrameRequest$1(Object obj) {
        super(0, obj, KeyguardFastBioUnlockController.class, "onFrameCommit", "onFrameCommit()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        final KeyguardFastBioUnlockController keyguardFastBioUnlockController = (KeyguardFastBioUnlockController) this.receiver;
        KeyguardFastBioUnlockController.Companion companion = KeyguardFastBioUnlockController.Companion;
        keyguardFastBioUnlockController.getClass();
        KeyguardFastBioUnlockController.logD("onFrameCommit");
        if (keyguardFastBioUnlockController.isEnabled()) {
            keyguardFastBioUnlockController.setMode(keyguardFastBioUnlockController.getMode() | KeyguardFastBioUnlockController.MODE_FLAG_FRAME_COMMIT);
            boolean z = false;
            LogUtil.internalLapTime(10000, new LongConsumer() { // from class: com.android.systemui.keyguard.KeyguardFastBioUnlockController$onFrameCommit$1
                @Override // java.util.function.LongConsumer
                public final void accept(long j) {
                    String sb;
                    KeyguardFastBioUnlockController keyguardFastBioUnlockController2 = KeyguardFastBioUnlockController.this;
                    long j2 = keyguardFastBioUnlockController2.startKeyguardExitAnimationTime - keyguardFastBioUnlockController2.goingAwayTime;
                    long nanoTime = System.nanoTime();
                    KeyguardFastBioUnlockController keyguardFastBioUnlockController3 = KeyguardFastBioUnlockController.this;
                    long j3 = (nanoTime - keyguardFastBioUnlockController3.waitStartTime) / 1000000;
                    if ((keyguardFastBioUnlockController3.isFastUnlockMode() || (KeyguardFastBioUnlockController.this.isFastWakeAndUnlockMode() && KeyguardFastBioUnlockController.this.isInvisibleAfterGoingAwayTransStarted)) && j2 > 0) {
                        long j4 = j2 / 1000000;
                        StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("foreground is shown / vis=", j3, "ms, goingAway=");
                        m.append(j4);
                        m.append("ms, keyguard=");
                        m.append(j - j4);
                        m.append("ms, end=");
                        m.append(j);
                        m.append("ms");
                        sb = m.toString();
                    } else if (KeyguardFastBioUnlockController.this.needsBlankScreen) {
                        StringBuilder m2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("foreground is shown / blankScreen, vis=", j3, "ms, end=");
                        m2.append(j);
                        m2.append("ms");
                        sb = m2.toString();
                    } else {
                        StringBuilder m3 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("foreground is shown / vis=", j3, "ms, end=");
                        m3.append(j);
                        m3.append("ms");
                        sb = m3.toString();
                    }
                    Log.d("BioUnlock", sb);
                }
            }, null, null, new Object[0]);
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = (KeyguardViewMediatorHelperImpl) ((KeyguardViewMediatorHelper) keyguardFastBioUnlockController.viewMediatorHelperLazy.get());
            if (keyguardViewMediatorHelperImpl.drawnCallback != null) {
                z = true;
            }
            Log.d("BioUnlock", "onForegroundShown hasDrawnCb=" + z);
            IKeyguardDrawnCallback iKeyguardDrawnCallback = keyguardViewMediatorHelperImpl.drawnCallback;
            if (iKeyguardDrawnCallback != null) {
                synchronized (keyguardViewMediatorHelperImpl.getLock()) {
                    keyguardViewMediatorHelperImpl.notifyDrawn(iKeyguardDrawnCallback);
                    keyguardViewMediatorHelperImpl.drawnCallback = null;
                    Unit unit = Unit.INSTANCE;
                }
            }
            keyguardFastBioUnlockController.mainHandler.post(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardFastBioUnlockController$onFrameCommit$2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2;
                    KeyguardFastBioUnlockController keyguardFastBioUnlockController2 = KeyguardFastBioUnlockController.this;
                    KeyguardFastBioUnlockController.Companion companion2 = KeyguardFastBioUnlockController.Companion;
                    Runnable runnable = keyguardFastBioUnlockController2.scrimUpdater;
                    if (runnable != null && keyguardFastBioUnlockController2.scrimVisibility != 0) {
                        runnable.run();
                    }
                    KeyguardFastBioUnlockController.this.runPendingRunnable();
                    KeyguardFastBioUnlockController.DelayedActionParams delayedActionParams = KeyguardFastBioUnlockController.this.delayedActionParams;
                    if (delayedActionParams != null) {
                        boolean z3 = delayedActionParams.isDiscard;
                        Handler handler = delayedActionParams.handler;
                        KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1 keyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1 = delayedActionParams.runnableWrapper;
                        if (!z3 && handler.hasCallbacks(keyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1) && delayedActionParams.atTime - SystemClock.uptimeMillis() > 10) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            if (handler.hasCallbacks(keyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1)) {
                                handler.removeCallbacks(keyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1);
                            }
                            delayedActionParams.start(false);
                        }
                    }
                    if (KeyguardFastBioUnlockController.this.isFastWakeAndUnlockMode()) {
                        final KeyguardFastBioUnlockController keyguardFastBioUnlockController3 = KeyguardFastBioUnlockController.this;
                        if (keyguardFastBioUnlockController3.needsBlankScreen) {
                            keyguardFastBioUnlockController3.mainHandler.post(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardFastBioUnlockController$onFrameCommit$2.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    KeyguardFastBioUnlockController.this.reset();
                                }
                            });
                        }
                    }
                }
            });
        }
        return Unit.INSTANCE;
    }
}
