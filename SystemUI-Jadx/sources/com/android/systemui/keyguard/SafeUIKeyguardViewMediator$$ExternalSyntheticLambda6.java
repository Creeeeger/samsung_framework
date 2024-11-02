package com.android.systemui.keyguard;

import android.media.SoundPool;
import com.android.internal.widget.LockPatternUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SafeUIKeyguardViewMediator f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6(SafeUIKeyguardViewMediator safeUIKeyguardViewMediator, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = safeUIKeyguardViewMediator;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SafeUIKeyguardViewMediator safeUIKeyguardViewMediator = this.f$0;
                int i = this.f$1;
                if (!safeUIKeyguardViewMediator.mAudioManager.isStreamMute(safeUIKeyguardViewMediator.mUiSoundsStreamType)) {
                    SoundPool soundPool = safeUIKeyguardViewMediator.mLockSounds;
                    float f = safeUIKeyguardViewMediator.mLockSoundVolume;
                    int play = soundPool.play(i, f, f, 1, 0, 1.0f);
                    synchronized (safeUIKeyguardViewMediator) {
                        safeUIKeyguardViewMediator.mLockSoundStreamId = play;
                    }
                    return;
                }
                return;
            default:
                SafeUIKeyguardViewMediator safeUIKeyguardViewMediator2 = this.f$0;
                int i2 = this.f$1;
                LockPatternUtils lockPatternUtils = safeUIKeyguardViewMediator2.mLockPatternUtils;
                if (lockPatternUtils.isSecure(i2)) {
                    lockPatternUtils.getDevicePolicyManager().reportKeyguardDismissed(i2);
                    return;
                }
                return;
        }
    }
}
