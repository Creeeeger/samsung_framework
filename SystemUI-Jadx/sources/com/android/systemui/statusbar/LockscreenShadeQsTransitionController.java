package com.android.systemui.statusbar;

import android.content.Context;
import android.util.IndentingPrintWriter;
import android.util.MathUtils;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.statusbar.policy.ConfigurationController;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LockscreenShadeQsTransitionController extends AbstractLockscreenShadeTransitionController {
    public boolean isTransitioningToFullShade;
    public float qsDragDownAmount;
    public final Function0 qsProvider;
    public float qsSquishStartFraction;
    public int qsSquishTransitionDistance;
    public float qsSquishTransitionFraction;
    public int qsTransitionDistance;
    public float qsTransitionFraction;
    public int qsTransitionStartDelay;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        LockscreenShadeQsTransitionController create(Function0 function0);
    }

    public LockscreenShadeQsTransitionController(Context context, ConfigurationController configurationController, DumpManager dumpManager, Function0 function0) {
        super(context, configurationController, dumpManager);
        this.qsProvider = function0;
    }

    @Override // com.android.systemui.statusbar.AbstractLockscreenShadeTransitionController
    public final void dump(IndentingPrintWriter indentingPrintWriter) {
        int i = this.qsTransitionDistance;
        int i2 = this.qsTransitionStartDelay;
        int i3 = this.qsSquishTransitionDistance;
        float f = this.qsSquishStartFraction;
        float f2 = this.dragDownAmount;
        float f3 = this.qsDragDownAmount;
        float f4 = this.qsTransitionFraction;
        float f5 = this.qsSquishTransitionFraction;
        boolean z = this.isTransitioningToFullShade;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("\n            Resources:\n              qsTransitionDistance: ", i, "\n              qsTransitionStartDelay: ", i2, "\n              qsSquishTransitionDistance: ");
        m.append(i3);
        m.append("\n              qsSquishStartFraction: ");
        m.append(f);
        m.append("\n            State:\n              dragDownAmount: ");
        m.append(f2);
        m.append("\n              qsDragDownAmount: ");
        m.append(f3);
        m.append("\n              qsDragFraction: ");
        m.append(f4);
        m.append("\n              qsSquishFraction: ");
        m.append(f5);
        m.append("\n              isTransitioningToFullShade: ");
        m.append(z);
        m.append("\n        ");
        indentingPrintWriter.println(StringsKt__IndentKt.trimIndent(m.toString()));
    }

    @Override // com.android.systemui.statusbar.AbstractLockscreenShadeTransitionController
    public final void onDragDownAmountChanged(float f) {
        boolean z;
        float f2 = f - this.qsTransitionStartDelay;
        this.qsDragDownAmount = f2;
        this.qsTransitionFraction = MathUtils.saturate(f2 / this.qsTransitionDistance);
        this.qsSquishTransitionFraction = MathUtils.lerp(this.qsSquishStartFraction, 1.0f, MathUtils.saturate(this.qsDragDownAmount / this.qsSquishTransitionDistance));
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        this.isTransitioningToFullShade = z;
        ((QS) this.qsProvider.invoke()).setTransitionToFullShadeProgress(this.isTransitioningToFullShade, this.qsTransitionFraction, this.qsSquishTransitionFraction);
    }

    @Override // com.android.systemui.statusbar.AbstractLockscreenShadeTransitionController
    public final void updateResources() {
        Context context = this.context;
        this.qsTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_qs_transition_distance);
        this.qsTransitionStartDelay = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_qs_transition_delay);
        this.qsSquishTransitionDistance = context.getResources().getDimensionPixelSize(R.dimen.lockscreen_shade_qs_squish_transition_distance);
        float f = context.getResources().getFloat(R.dimen.lockscreen_shade_qs_squish_start_fraction);
        this.qsSquishStartFraction = f;
        this.qsSquishTransitionFraction = Math.max(this.qsSquishTransitionFraction, f);
    }
}
