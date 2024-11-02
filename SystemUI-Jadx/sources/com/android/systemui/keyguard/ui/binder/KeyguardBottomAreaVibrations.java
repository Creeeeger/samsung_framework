package com.android.systemui.keyguard.ui.binder;

import android.os.VibrationEffect;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBottomAreaVibrations {
    public static final VibrationEffect Activated;
    public static final VibrationEffect Deactivated;
    public static final KeyguardBottomAreaVibrations INSTANCE = new KeyguardBottomAreaVibrations();
    public static final VibrationEffect Shake;
    public static final long ShakeAnimationDuration;

    static {
        Duration.Companion companion = Duration.Companion;
        long duration = DurationKt.toDuration(300, DurationUnit.MILLISECONDS);
        ShakeAnimationDuration = duration;
        VibrationEffect.Composition startComposition = VibrationEffect.startComposition();
        int m2575getInWholeMillisecondsimpl = (int) (((float) Duration.m2575getInWholeMillisecondsimpl(duration)) / 10.0f);
        for (int i = 0; i < 10; i++) {
            startComposition.addPrimitive(7, 0.3f, m2575getInWholeMillisecondsimpl);
        }
        Shake = startComposition.compose();
        Activated = VibrationEffect.startComposition().addPrimitive(7, 0.6f, 0).addPrimitive(4, 0.1f, 0).compose();
        Deactivated = VibrationEffect.startComposition().addPrimitive(7, 0.6f, 0).addPrimitive(6, 0.1f, 0).compose();
    }

    private KeyguardBottomAreaVibrations() {
    }
}
