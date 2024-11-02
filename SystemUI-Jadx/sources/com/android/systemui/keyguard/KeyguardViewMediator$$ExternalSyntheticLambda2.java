package com.android.systemui.keyguard;

import android.media.SoundPool;
import android.os.SystemClock;
import android.os.Trace;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.keyguard.KeyguardViewMediator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardViewMediator$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardViewMediator f$0;

    public /* synthetic */ KeyguardViewMediator$$ExternalSyntheticLambda2(KeyguardViewMediator keyguardViewMediator, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardViewMediator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mTrustManager.reportKeyguardShowingChanged();
                return;
            case 1:
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                keyguardViewMediator.getClass();
                Log.e("KeyguardViewMediator", "mHideAnimationFinishedRunnable#run");
                keyguardViewMediator.mHideAnimationRunning = false;
                keyguardViewMediator.tryKeyguardDone();
                return;
            case 2:
                KeyguardViewMediator keyguardViewMediator2 = this.f$0;
                keyguardViewMediator2.setPendingLock(keyguardViewMediator2.doKeyguardLocked(null, true));
                return;
            case 3:
                this.f$0.setPendingLock(true);
                return;
            case 4:
                this.f$0.startKeyguardExitAnimation(0L, 0L);
                return;
            case 5:
                this.f$0.mSurfaceBehindRemoteAnimationFinishedCallback = null;
                return;
            case 6:
                KeyguardViewMediator keyguardViewMediator3 = this.f$0;
                keyguardViewMediator3.getClass();
                keyguardViewMediator3.handleStartKeyguardExitAnimation(SystemClock.uptimeMillis() + keyguardViewMediator3.mHideAnimation.getStartOffset(), keyguardViewMediator3.mHideAnimation.getDuration(), null, null, null, null);
                return;
            case 7:
                this.f$0.tryKeyguardDone();
                return;
            case 8:
                this.f$0.setPendingLock(false);
                return;
            case 9:
                this.f$0.resetStateLocked(true);
                return;
            case 10:
                KeyguardViewMediator keyguardViewMediator4 = this.f$0;
                keyguardViewMediator4.getClass();
                Trace.beginSection("KeyguardViewMediator#hideLocked");
                Log.d("KeyguardViewMediator", "hideLocked");
                KeyguardViewMediator.AnonymousClass12 anonymousClass12 = keyguardViewMediator4.mHandler;
                anonymousClass12.sendMessage(anonymousClass12.obtainMessage(2));
                Trace.endSection();
                return;
            case 11:
                this.f$0.mDelayedShowingSequence++;
                return;
            case 12:
                KeyguardViewMediator keyguardViewMediator5 = this.f$0;
                keyguardViewMediator5.getClass();
                long lockTimeout = keyguardViewMediator5.getLockTimeout(KeyguardUpdateMonitor.getCurrentUser());
                if (lockTimeout == 0) {
                    keyguardViewMediator5.doKeyguardLocked(null, false);
                    return;
                } else {
                    keyguardViewMediator5.doKeyguardLaterLocked(lockTimeout);
                    return;
                }
            case 13:
                this.f$0.mPendingReset = false;
                return;
            case 14:
                this.f$0.handleHide();
                return;
            case 15:
                this.f$0.adjustStatusBarLocked(false, false);
                return;
            default:
                KeyguardViewMediator keyguardViewMediator6 = this.f$0;
                SoundPool soundPool = keyguardViewMediator6.mLockSounds;
                int i = keyguardViewMediator6.mLockSoundId;
                int i2 = keyguardViewMediator6.mUnlockSoundId;
                int i3 = keyguardViewMediator6.mTrustedSoundId;
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediator6.mHelper;
                keyguardViewMediatorHelperImpl.getClass();
                int load = soundPool.load("/system/media/audio/ui/Unlock_VA_Mode.ogg", 1);
                keyguardViewMediatorHelperImpl.lockStaySoundId = load;
                if (load == 0) {
                    Log.w("KeyguardViewMediator", "failed to load lock stay sound from /system/media/audio/ui/Unlock_VA_Mode.ogg");
                }
                if (LsRune.KEYGUARD_LOCK_SITUATION_VOLUME) {
                    soundPool.semSetSituationType(i, "stv_lock_screen");
                    soundPool.semSetSituationType(i2, "stv_unlock_screen");
                    soundPool.semSetSituationType(i3, "stv_unlock_screen");
                    soundPool.semSetSituationType(keyguardViewMediatorHelperImpl.lockStaySoundId, "stv_unlock_screen");
                }
                keyguardViewMediatorHelperImpl.lockSounds = soundPool;
                keyguardViewMediatorHelperImpl.unlockSoundId = i2;
                return;
        }
    }
}
