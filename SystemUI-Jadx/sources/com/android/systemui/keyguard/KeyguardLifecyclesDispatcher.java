package com.android.systemui.keyguard;

import android.app.IWallpaperManager;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.util.DisplayMetrics;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.LinkedList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardLifecyclesDispatcher {
    public final AnonymousClass1 mHandler = new Handler() { // from class: com.android.systemui.keyguard.KeyguardLifecyclesDispatcher.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            final int i2 = 1;
            final int i3 = 3;
            if (i != 11) {
                final int i4 = 2;
                if (i != 12) {
                    final int i5 = 4;
                    final int i6 = 0;
                    switch (i) {
                        case 0:
                            Trace.beginSection("KeyguardLifecyclesDispatcher#SCREEN_TURNING_ON");
                            ScreenLifecycle screenLifecycle = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                            screenLifecycle.mScreenState = 1;
                            Trace.traceCounter(4096L, "screenState", 1);
                            screenLifecycle.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    switch (i6) {
                                        case 0:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                            return;
                                        case 1:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                            return;
                                        case 2:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                            return;
                                        case 3:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                            return;
                                        case 4:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                            return;
                                        default:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                            return;
                                    }
                                }
                            });
                            Trace.endSection();
                            break;
                        case 1:
                            ScreenLifecycle screenLifecycle2 = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                            screenLifecycle2.mScreenState = 2;
                            Trace.traceCounter(4096L, "screenState", 2);
                            screenLifecycle2.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    switch (i3) {
                                        case 0:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                            return;
                                        case 1:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                            return;
                                        case 2:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                            return;
                                        case 3:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                            return;
                                        case 4:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                            return;
                                        default:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                            return;
                                    }
                                }
                            });
                            break;
                        case 2:
                            ScreenLifecycle screenLifecycle3 = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                            screenLifecycle3.mScreenState = 3;
                            Trace.traceCounter(4096L, "screenState", 3);
                            screenLifecycle3.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    switch (i5) {
                                        case 0:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                            return;
                                        case 1:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                            return;
                                        case 2:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                            return;
                                        case 3:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                            return;
                                        case 4:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                            return;
                                        default:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                            return;
                                    }
                                }
                            });
                            break;
                        case 3:
                            ScreenLifecycle screenLifecycle4 = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                            screenLifecycle4.mScreenState = 0;
                            Trace.traceCounter(4096L, "screenState", 0);
                            final int i7 = 5;
                            screenLifecycle4.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    switch (i7) {
                                        case 0:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                            return;
                                        case 1:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                            return;
                                        case 2:
                                            ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                            return;
                                        case 3:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                            return;
                                        case 4:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                            return;
                                        default:
                                            ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                            return;
                                    }
                                }
                            });
                            break;
                        case 4:
                            WakefulnessLifecycle wakefulnessLifecycle = KeyguardLifecyclesDispatcher.this.mWakefulnessLifecycle;
                            int i8 = message.arg1;
                            if (wakefulnessLifecycle.mWakefulness != 1) {
                                wakefulnessLifecycle.mWakefulness = 1;
                                Trace.traceCounter(4096L, "wakefulness", 1);
                                wakefulnessLifecycle.mLastWakeReason = i8;
                                ((SystemClockImpl) wakefulnessLifecycle.mSystemClock).getClass();
                                SystemClock.uptimeMillis();
                                wakefulnessLifecycle.mLastWakeOriginLocation = null;
                                if (wakefulnessLifecycle.mLastWakeReason != 1) {
                                    DisplayMetrics displayMetrics = wakefulnessLifecycle.mDisplayMetrics;
                                    wakefulnessLifecycle.mLastWakeOriginLocation = new Point(displayMetrics.widthPixels / 2, displayMetrics.heightPixels);
                                } else {
                                    wakefulnessLifecycle.mLastWakeOriginLocation = wakefulnessLifecycle.getPowerButtonOrigin();
                                }
                                IWallpaperManager iWallpaperManager = wakefulnessLifecycle.mWallpaperManagerService;
                                if (iWallpaperManager != null) {
                                    try {
                                        Point point = wakefulnessLifecycle.mLastWakeOriginLocation;
                                        iWallpaperManager.notifyWakingUp(point.x, point.y, new Bundle());
                                    } catch (RemoteException e) {
                                        e.printStackTrace();
                                    }
                                }
                                wakefulnessLifecycle.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.WakefulnessLifecycle$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        switch (i5) {
                                            case 0:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedGoingToSleep();
                                                return;
                                            case 1:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedGoingToSleep();
                                                return;
                                            case 2:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedWakingUp();
                                                return;
                                            case 3:
                                                ((WakefulnessLifecycle.Observer) obj).onPostFinishedWakingUp();
                                                return;
                                            default:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedWakingUp();
                                                return;
                                        }
                                    }
                                });
                                break;
                            }
                            break;
                        case 5:
                            WakefulnessLifecycle wakefulnessLifecycle2 = KeyguardLifecyclesDispatcher.this.mWakefulnessLifecycle;
                            if (wakefulnessLifecycle2.mWakefulness != 2) {
                                wakefulnessLifecycle2.mWakefulness = 2;
                                Trace.traceCounter(4096L, "wakefulness", 2);
                                wakefulnessLifecycle2.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.WakefulnessLifecycle$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        switch (i4) {
                                            case 0:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedGoingToSleep();
                                                return;
                                            case 1:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedGoingToSleep();
                                                return;
                                            case 2:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedWakingUp();
                                                return;
                                            case 3:
                                                ((WakefulnessLifecycle.Observer) obj).onPostFinishedWakingUp();
                                                return;
                                            default:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedWakingUp();
                                                return;
                                        }
                                    }
                                });
                                wakefulnessLifecycle2.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.WakefulnessLifecycle$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        switch (i3) {
                                            case 0:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedGoingToSleep();
                                                return;
                                            case 1:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedGoingToSleep();
                                                return;
                                            case 2:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedWakingUp();
                                                return;
                                            case 3:
                                                ((WakefulnessLifecycle.Observer) obj).onPostFinishedWakingUp();
                                                return;
                                            default:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedWakingUp();
                                                return;
                                        }
                                    }
                                });
                                break;
                            }
                            break;
                        case 6:
                            WakefulnessLifecycle wakefulnessLifecycle3 = KeyguardLifecyclesDispatcher.this.mWakefulnessLifecycle;
                            int i9 = message.arg1;
                            if (wakefulnessLifecycle3.mWakefulness != 3) {
                                wakefulnessLifecycle3.mWakefulness = 3;
                                Trace.traceCounter(4096L, "wakefulness", 3);
                                wakefulnessLifecycle3.mLastSleepReason = i9;
                                wakefulnessLifecycle3.mLastSleepOriginLocation = null;
                                if (i9 != 4) {
                                    DisplayMetrics displayMetrics2 = wakefulnessLifecycle3.mDisplayMetrics;
                                    wakefulnessLifecycle3.mLastSleepOriginLocation = new Point(displayMetrics2.widthPixels / 2, displayMetrics2.heightPixels);
                                } else {
                                    wakefulnessLifecycle3.mLastSleepOriginLocation = wakefulnessLifecycle3.getPowerButtonOrigin();
                                }
                                IWallpaperManager iWallpaperManager2 = wakefulnessLifecycle3.mWallpaperManagerService;
                                if (iWallpaperManager2 != null) {
                                    try {
                                        Point point2 = wakefulnessLifecycle3.mLastSleepOriginLocation;
                                        iWallpaperManager2.notifyGoingToSleep(point2.x, point2.y, new Bundle());
                                    } catch (RemoteException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                wakefulnessLifecycle3.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.WakefulnessLifecycle$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        switch (i6) {
                                            case 0:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedGoingToSleep();
                                                return;
                                            case 1:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedGoingToSleep();
                                                return;
                                            case 2:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedWakingUp();
                                                return;
                                            case 3:
                                                ((WakefulnessLifecycle.Observer) obj).onPostFinishedWakingUp();
                                                return;
                                            default:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedWakingUp();
                                                return;
                                        }
                                    }
                                });
                                break;
                            }
                            break;
                        case 7:
                            WakefulnessLifecycle wakefulnessLifecycle4 = KeyguardLifecyclesDispatcher.this.mWakefulnessLifecycle;
                            if (wakefulnessLifecycle4.mWakefulness != 0) {
                                wakefulnessLifecycle4.mWakefulness = 0;
                                Trace.traceCounter(4096L, "wakefulness", 0);
                                wakefulnessLifecycle4.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.WakefulnessLifecycle$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        switch (i2) {
                                            case 0:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedGoingToSleep();
                                                return;
                                            case 1:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedGoingToSleep();
                                                return;
                                            case 2:
                                                ((WakefulnessLifecycle.Observer) obj).onFinishedWakingUp();
                                                return;
                                            case 3:
                                                ((WakefulnessLifecycle.Observer) obj).onPostFinishedWakingUp();
                                                return;
                                            default:
                                                ((WakefulnessLifecycle.Observer) obj).onStartedWakingUp();
                                                return;
                                        }
                                    }
                                });
                                break;
                            }
                            break;
                        default:
                            throw new IllegalArgumentException("Unknown message: " + message);
                    }
                } else {
                    ScreenLifecycle screenLifecycle5 = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                    screenLifecycle5.getClass();
                    screenLifecycle5.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i4) {
                                case 0:
                                    ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                    return;
                                case 1:
                                    ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                    return;
                                case 2:
                                    ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                    return;
                                case 3:
                                    ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                    return;
                                case 4:
                                    ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                    return;
                                default:
                                    ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                    return;
                            }
                        }
                    });
                }
            } else {
                ScreenLifecycle screenLifecycle6 = KeyguardLifecyclesDispatcher.this.mScreenLifecycle;
                screenLifecycle6.getClass();
                screenLifecycle6.dispatch(new Consumer() { // from class: com.android.systemui.keyguard.ScreenLifecycle$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (i2) {
                            case 0:
                                ((ScreenLifecycle.Observer) obj).onScreenTurningOn();
                                return;
                            case 1:
                                ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOn();
                                return;
                            case 2:
                                ((ScreenLifecycle.Observer) obj).onScreenInternalTurningOff();
                                return;
                            case 3:
                                ((ScreenLifecycle.Observer) obj).onScreenTurnedOn();
                                return;
                            case 4:
                                ((ScreenLifecycle.Observer) obj).onScreenTurningOff();
                                return;
                            default:
                                ((ScreenLifecycle.Observer) obj).onScreenTurnedOff();
                                return;
                        }
                    }
                });
            }
            if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK || LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
                KeyguardLifecyclesDispatcher keyguardLifecyclesDispatcher = KeyguardLifecyclesDispatcher.this;
                if (message.what <= 3) {
                    ScreenLifecycle screenLifecycle7 = keyguardLifecyclesDispatcher.mScreenLifecycle;
                    synchronized (screenLifecycle7.mMsgForLifecycle) {
                        ((LinkedList) screenLifecycle7.mMsgForLifecycle).poll();
                    }
                    return;
                }
                WakefulnessLifecycle wakefulnessLifecycle5 = keyguardLifecyclesDispatcher.mWakefulnessLifecycle;
                synchronized (wakefulnessLifecycle5.mMsgForLifecycle) {
                    ((LinkedList) wakefulnessLifecycle5.mMsgForLifecycle).poll();
                }
            }
        }
    };
    public int mLastWakeReason = -1;
    public final ScreenLifecycle mScreenLifecycle;
    public final WakefulnessLifecycle mWakefulnessLifecycle;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.keyguard.KeyguardLifecyclesDispatcher$1] */
    public KeyguardLifecyclesDispatcher(ScreenLifecycle screenLifecycle, WakefulnessLifecycle wakefulnessLifecycle) {
        this.mScreenLifecycle = screenLifecycle;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
    }

    public final void dispatch(int i) {
        boolean z = LsRune.KEYGUARD_PERFORMANCE_SCREEN_ON;
        AnonymousClass1 anonymousClass1 = this.mHandler;
        if (!z || !dispatchLowPriorityStartedWakingUp(anonymousClass1.obtainMessage(i))) {
            anonymousClass1.obtainMessage(i).sendToTarget();
        }
        if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK || LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
            generateWakefulnessOrScreenStateByLastMsg(i, -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchLowPriorityStartedWakingUp(android.os.Message r6) {
        /*
            r5 = this;
            int r0 = r6.what
            com.android.systemui.keyguard.KeyguardLifecyclesDispatcher$1 r1 = r5.mHandler
            r2 = 4
            if (r0 != r2) goto L19
            com.android.systemui.keyguard.ScreenLifecycle r0 = r5.mScreenLifecycle
            int r0 = r0.mScreenState
            if (r0 != 0) goto L19
            r6.obj = r5
            int r0 = r6.arg1
            r5.mLastWakeReason = r0
            r2 = 100
            r1.sendMessageDelayed(r6, r2)
            goto L3b
        L19:
            boolean r0 = r1.hasMessages(r2, r5)
            r3 = 0
            if (r0 == 0) goto L3c
            int r0 = r6.what
            r4 = 5
            if (r0 == r4) goto L2c
            r4 = 6
            if (r0 == r4) goto L2c
            r4 = 7
            if (r0 == r4) goto L2c
            goto L3c
        L2c:
            r1.removeMessages(r2)
            int r5 = r5.mLastWakeReason
            android.os.Message r5 = r1.obtainMessage(r2, r5, r3)
            r1.sendMessage(r5)
            r6.sendToTarget()
        L3b:
            r3 = 1
        L3c:
            if (r3 != 0) goto L41
            r6.recycle()
        L41:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardLifecyclesDispatcher.dispatchLowPriorityStartedWakingUp(android.os.Message):boolean");
    }

    public final void generateWakefulnessOrScreenStateByLastMsg(int i, int i2) {
        if (i <= 3) {
            this.mScreenLifecycle.setLifecycle(i, i2);
        } else {
            this.mWakefulnessLifecycle.setLifecycle(i, i2);
        }
    }

    public final void dispatch(int i, int i2) {
        boolean z = LsRune.KEYGUARD_PERFORMANCE_SCREEN_ON;
        AnonymousClass1 anonymousClass1 = this.mHandler;
        if (!z || !dispatchLowPriorityStartedWakingUp(anonymousClass1.obtainMessage(i, i2, 0))) {
            Message obtainMessage = anonymousClass1.obtainMessage(i);
            obtainMessage.arg1 = i2;
            obtainMessage.sendToTarget();
        }
        if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK || LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
            generateWakefulnessOrScreenStateByLastMsg(i, i2);
        }
    }

    public final void dispatch(Object obj) {
        boolean z = LsRune.KEYGUARD_PERFORMANCE_SCREEN_ON;
        AnonymousClass1 anonymousClass1 = this.mHandler;
        if (!z || !dispatchLowPriorityStartedWakingUp(anonymousClass1.obtainMessage(0, obj))) {
            anonymousClass1.obtainMessage(0, obj).sendToTarget();
        }
        if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK || LsRune.KEYGUARD_SUB_DISPLAY_LARGE_FRONT) {
            generateWakefulnessOrScreenStateByLastMsg(0, -1);
        }
    }
}
