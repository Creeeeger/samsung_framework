package com.android.systemui.multishade.data.repository;

import android.content.Context;
import com.android.systemui.R;
import com.android.systemui.multishade.data.remoteproxy.MultiShadeInputProxy;
import com.android.systemui.multishade.shared.model.ShadeConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MultiShadeRepository {
    public final StateFlowImpl _forceCollapseAll;
    public final StateFlowImpl _shadeInteraction;
    public final ReadonlyStateFlow forceCollapseAll;
    public final ReadonlySharedFlow proxiedInput;
    public final ReadonlyStateFlow shadeConfig;
    public final ReadonlyStateFlow shadeInteraction;
    public final Map stateByShade;

    public MultiShadeRepository(Context context, MultiShadeInputProxy multiShadeInputProxy) {
        Object singleShadeConfig;
        this.proxiedInput = multiShadeInputProxy.proxiedInput;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.left_shade_width);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.right_shade_width);
        float f = context.getResources().getFloat(R.dimen.shade_swipe_collapse_threshold);
        checkInBounds(f);
        float f2 = context.getResources().getFloat(R.dimen.shade_swipe_expand_threshold);
        checkInBounds(f2);
        float f3 = context.getResources().getFloat(R.dimen.dual_shade_scrim_alpha);
        checkInBounds(f3);
        if (context.getResources().getBoolean(R.bool.dual_shade_enabled)) {
            singleShadeConfig = new ShadeConfig.DualShadeConfig(dimensionPixelSize, dimensionPixelSize2, f, f2, context.getResources().getFloat(R.dimen.dual_shade_split_fraction), f3);
        } else {
            singleShadeConfig = new ShadeConfig.SingleShadeConfig(f, f2);
        }
        this.shadeConfig = FlowKt.asStateFlow(StateFlowKt.MutableStateFlow(singleShadeConfig));
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this._forceCollapseAll = MutableStateFlow;
        this.forceCollapseAll = FlowKt.asStateFlow(MutableStateFlow);
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(null);
        this._shadeInteraction = MutableStateFlow2;
        this.shadeInteraction = FlowKt.asStateFlow(MutableStateFlow2);
        this.stateByShade = new LinkedHashMap();
    }

    public static void checkInBounds(float f) {
        boolean z;
        if (0.0f <= f && f <= 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        throw new IllegalStateException((f + " isn't between 0 and 1.").toString());
    }
}
