package com.android.keyguard;

import android.content.Context;
import android.content.res.Resources;
import android.os.CountDownTimer;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SecCountDownTimer extends CountDownTimer {
    public final int mAttempt;
    public final int mAttemptRemainingBeforeWipe;
    public final Context mContext;
    public final boolean mIsBouncer;
    public final KeyguardTextBuilder mKeyguardTextBuilder;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public String mTimerText;

    public SecCountDownTimer(long j, long j2, Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardTextBuilder keyguardTextBuilder, boolean z) {
        super(j, j2);
        this.mTimerText = "";
        this.mContext = context;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardTextBuilder = keyguardTextBuilder;
        this.mIsBouncer = z;
        this.mAttemptRemainingBeforeWipe = keyguardUpdateMonitor.getRemainingAttempt(1);
        this.mAttempt = keyguardUpdateMonitor.getFailedUnlockAttempts(KeyguardUpdateMonitor.getCurrentUser());
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        String str;
        String quantityString;
        int round = Math.round((float) (j / 1000)) % 60;
        int floor = ((int) Math.floor(j / 60000)) % 60;
        int floor2 = (int) Math.floor(j / 3600000);
        String str2 = "\n\n";
        if (this.mAttemptRemainingBeforeWipe > 0) {
            if (this.mIsBouncer) {
                str = this.mKeyguardTextBuilder.getWarningAutoWipeMessage(this.mAttempt, this.mAttemptRemainingBeforeWipe) + "\n\n";
            } else {
                StringBuilder sb = new StringBuilder();
                Resources resources = this.mContext.getResources();
                int i = this.mAttemptRemainingBeforeWipe;
                str = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, resources.getQuantityString(R.plurals.kg_attempt_left, i, Integer.valueOf(i)), "\n");
            }
        } else if (this.mIsBouncer) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.mContext.getString(R.string.kg_too_many_failed_attempts_warning));
            if (this.mKeyguardUpdateMonitor.isRemoteLockMode()) {
                str2 = "\n";
            }
            sb2.append(str2);
            str = sb2.toString();
        } else {
            str = "";
        }
        StringBuilder m = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
        int i2 = floor + 1;
        int i3 = round + 1;
        if (floor2 > 0) {
            if (i2 == 60) {
                int i4 = floor2 + 1;
                quantityString = this.mContext.getResources().getQuantityString(R.plurals.kg_too_many_failed_attempts_countdown_hour, i4, Integer.valueOf(i4));
            } else if (floor2 == 1) {
                quantityString = this.mContext.getResources().getQuantityString(R.plurals.kg_too_many_failed_attempts_countdown_1_hour_and_min, i2, Integer.valueOf(i2));
            } else if (floor2 > 1 && i2 == 1) {
                quantityString = this.mContext.getResources().getQuantityString(R.plurals.kg_too_many_failed_attempts_countdown_hour_and_1_min, floor2, Integer.valueOf(floor2));
            } else {
                quantityString = this.mContext.getString(R.string.kg_too_many_failed_attempts_countdown_hour_and_min, Integer.valueOf(floor2), Integer.valueOf(i2));
            }
        } else if (i2 > 1) {
            quantityString = this.mContext.getResources().getQuantityString(R.plurals.kg_too_many_failed_attempts_countdown_min, i2, Integer.valueOf(i2));
        } else {
            quantityString = this.mContext.getResources().getQuantityString(R.plurals.kg_too_many_failed_attempts_countdown_sec, i3, Integer.valueOf(i3));
        }
        m.append(quantityString);
        this.mTimerText = m.toString();
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
    }
}
