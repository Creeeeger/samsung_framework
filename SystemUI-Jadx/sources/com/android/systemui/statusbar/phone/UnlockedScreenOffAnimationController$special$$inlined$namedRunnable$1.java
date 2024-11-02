package com.android.systemui.statusbar.phone;

import android.os.TraceNameSupplier;
import com.android.systemui.LsRune;
import com.android.systemui.Rune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1 implements Runnable, TraceNameSupplier {
    public final /* synthetic */ String $tag;
    public final /* synthetic */ UnlockedScreenOffAnimationController this$0;

    public UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1(String str, UnlockedScreenOffAnimationController unlockedScreenOffAnimationController) {
        this.$tag = str;
        this.this$0 = unlockedScreenOffAnimationController;
    }

    public final String getTraceName() {
        return this.$tag;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.lightRevealAnimator.start();
        boolean z = LsRune.AOD_FULLSCREEN;
        final SecUnlockedScreenOffAnimationHelper secUnlockedScreenOffAnimationHelper = this.this$0.helper;
        Rune.runIf(new Runnable() { // from class: com.android.systemui.statusbar.phone.UnlockedScreenOffAnimationController$startLightRevealCallback$1$1
            @Override // java.lang.Runnable
            public final void run() {
                SecUnlockedScreenOffAnimationHelper.this.getClass();
                SecUnlockedScreenOffAnimationHelper.logD("onStartAnimation");
            }
        }, z);
    }
}
