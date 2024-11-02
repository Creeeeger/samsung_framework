package com.android.systemui.unfold;

import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import com.android.systemui.unfold.UnfoldTransitionProgressProvider;
import com.android.systemui.unfold.updates.FoldProvider;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldHapticsPlayer implements UnfoldTransitionProgressProvider.TransitionProgressListener {
    public final Lazy effect$delegate;
    public boolean isFirstAnimationAfterUnfold;
    public float lastTransitionProgress;
    public final Executor mainExecutor;
    public final VibrationAttributes touchVibrationAttributes = VibrationAttributes.createForUsage(50);
    public final Vibrator vibrator;

    public UnfoldHapticsPlayer(UnfoldTransitionProgressProvider unfoldTransitionProgressProvider, FoldProvider foldProvider, Executor executor, Vibrator vibrator) {
        this.mainExecutor = executor;
        this.vibrator = vibrator;
        if (vibrator != null) {
            unfoldTransitionProgressProvider.addCallback(this);
        }
        foldProvider.registerCallback(new FoldProvider.FoldCallback() { // from class: com.android.systemui.unfold.UnfoldHapticsPlayer.1
            @Override // com.android.systemui.unfold.updates.FoldProvider.FoldCallback
            public final void onFoldUpdated(boolean z) {
                if (z) {
                    UnfoldHapticsPlayer.this.isFirstAnimationAfterUnfold = true;
                }
            }
        }, executor);
        this.lastTransitionProgress = 1.0f;
        this.effect$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.unfold.UnfoldHapticsPlayer$effect$2
            {
                super(0);
            }

            /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00c4  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
            @Override // kotlin.jvm.functions.Function0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invoke() {
                /*
                    r14 = this;
                    android.os.VibrationEffect$Composition r0 = android.os.VibrationEffect.startComposition()
                    r1 = 7
                    r2 = 0
                    r3 = 0
                    android.os.VibrationEffect$Composition r0 = r0.addPrimitive(r1, r2, r3)
                    com.android.systemui.unfold.UnfoldHapticsPlayer r2 = com.android.systemui.unfold.UnfoldHapticsPlayer.this
                    r2.getClass()
                    java.lang.String r2 = "persist.unfold.primitives_count"
                    java.lang.String r4 = "18"
                    java.lang.String r2 = android.os.SystemProperties.get(r2, r4)
                    r4 = 10
                    kotlin.text.CharsKt__CharJVMKt.checkRadix(r4)
                    int r5 = r2.length()
                    if (r5 != 0) goto L25
                    goto L69
                L25:
                    char r6 = r2.charAt(r3)
                    r7 = 48
                    int r7 = kotlin.jvm.internal.Intrinsics.compare(r6, r7)
                    r8 = -2147483647(0xffffffff80000001, float:-1.4E-45)
                    if (r7 >= 0) goto L46
                    r7 = 1
                    if (r5 != r7) goto L38
                    goto L69
                L38:
                    r9 = 45
                    if (r6 != r9) goto L40
                    r8 = -2147483648(0xffffffff80000000, float:-0.0)
                    r6 = r7
                    goto L48
                L40:
                    r9 = 43
                    if (r6 != r9) goto L69
                    r6 = r3
                    goto L48
                L46:
                    r6 = r3
                    r7 = r6
                L48:
                    r9 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
                    r10 = r3
                    r11 = r9
                L4d:
                    if (r7 >= r5) goto L6f
                    char r12 = r2.charAt(r7)
                    int r12 = java.lang.Character.digit(r12, r4)
                    if (r12 >= 0) goto L5a
                    goto L69
                L5a:
                    if (r10 >= r11) goto L63
                    if (r11 != r9) goto L69
                    int r11 = r8 / 10
                    if (r10 >= r11) goto L63
                    goto L69
                L63:
                    int r10 = r10 * 10
                    int r13 = r8 + r12
                    if (r10 >= r13) goto L6b
                L69:
                    r2 = 0
                    goto L7b
                L6b:
                    int r10 = r10 - r12
                    int r7 = r7 + 1
                    goto L4d
                L6f:
                    if (r6 == 0) goto L76
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r10)
                    goto L7b
                L76:
                    int r2 = -r10
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                L7b:
                    if (r2 == 0) goto L82
                    int r2 = r2.intValue()
                    goto L84
                L82:
                    r2 = 18
                L84:
                    com.android.systemui.unfold.UnfoldHapticsPlayer r4 = com.android.systemui.unfold.UnfoldHapticsPlayer.this
                    r5 = r3
                L87:
                    if (r5 >= r2) goto Lab
                    r4.getClass()
                    java.lang.String r6 = "persist.unfold.haptics_scale"
                    java.lang.String r7 = "0.1"
                    java.lang.String r6 = android.os.SystemProperties.get(r6, r7)
                    java.lang.Float r6 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(r6)
                    if (r6 == 0) goto La0
                    float r6 = r6.floatValue()
                    goto La3
                La0:
                    r6 = 1036831949(0x3dcccccd, float:0.1)
                La3:
                    r7 = 8
                    r0.addPrimitive(r7, r6, r3)
                    int r5 = r5 + 1
                    goto L87
                Lab:
                    com.android.systemui.unfold.UnfoldHapticsPlayer r14 = com.android.systemui.unfold.UnfoldHapticsPlayer.this
                    r14.getClass()
                    java.lang.String r14 = "persist.unfold.haptics_scale_end_tick"
                    java.lang.String r2 = "0.6"
                    java.lang.String r14 = android.os.SystemProperties.get(r14, r2)
                    java.lang.Float r14 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(r14)
                    if (r14 == 0) goto Lc4
                    float r14 = r14.floatValue()
                    goto Lc7
                Lc4:
                    r14 = 1058642330(0x3f19999a, float:0.6)
                Lc7:
                    android.os.VibrationEffect$Composition r14 = r0.addPrimitive(r1, r14)
                    android.os.VibrationEffect r14 = r14.compose()
                    return r14
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.unfold.UnfoldHapticsPlayer$effect$2.invoke():java.lang.Object");
            }
        });
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionFinished() {
        this.lastTransitionProgress = 1.0f;
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionFinishing() {
        Vibrator vibrator;
        if (!this.isFirstAnimationAfterUnfold) {
            return;
        }
        this.isFirstAnimationAfterUnfold = false;
        if (this.lastTransitionProgress < 0.9f && (vibrator = this.vibrator) != null) {
            vibrator.vibrate((VibrationEffect) this.effect$delegate.getValue(), this.touchVibrationAttributes);
        }
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionProgress(float f) {
        this.lastTransitionProgress = f;
    }

    @Override // com.android.systemui.unfold.UnfoldTransitionProgressProvider.TransitionProgressListener
    public final void onTransitionStarted() {
        this.lastTransitionProgress = 0.0f;
    }
}
