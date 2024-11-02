package com.android.systemui.common.ui.data.repository;

import android.content.Context;
import android.util.DisplayUtils;
import android.view.Display;
import android.view.DisplayInfo;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.wrapper.DisplayUtilsWrapper;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ConfigurationRepositoryImpl implements ConfigurationRepository {
    public final ConfigurationController configurationController;
    public final Context context;
    public final StateFlowImpl displayInfo = StateFlowKt.MutableStateFlow(new DisplayInfo());
    public final DisplayUtilsWrapper displayUtils;
    public final ReadonlyStateFlow scaleForResolution;

    public ConfigurationRepositoryImpl(ConfigurationController configurationController, Context context, CoroutineScope coroutineScope, DisplayUtilsWrapper displayUtilsWrapper) {
        this.configurationController = configurationController;
        this.context = context;
        this.displayUtils = displayUtilsWrapper;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        ConfigurationRepositoryImpl$onAnyConfigurationChange$1 configurationRepositoryImpl$onAnyConfigurationChange$1 = new ConfigurationRepositoryImpl$onAnyConfigurationChange$1(this, null);
        conflatedCallbackFlow.getClass();
        ConflatedCallbackFlow.conflatedCallbackFlow(configurationRepositoryImpl$onAnyConfigurationChange$1);
        this.scaleForResolution = FlowKt.stateIn(FlowKt.distinctUntilChanged(FlowKt.mapLatest(ConflatedCallbackFlow.conflatedCallbackFlow(new ConfigurationRepositoryImpl$configurationChange$1(this, null)), new ConfigurationRepositoryImpl$scaleForResolution$1(this, null))), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.Companion), Float.valueOf(getResolutionScale()));
    }

    public final float getResolutionScale() {
        boolean z;
        Display display = this.context.getDisplay();
        StateFlowImpl stateFlowImpl = this.displayInfo;
        display.getDisplayInfo((DisplayInfo) stateFlowImpl.getValue());
        Display.Mode[] modeArr = ((DisplayInfo) stateFlowImpl.getValue()).supportedModes;
        this.displayUtils.getClass();
        Display.Mode maximumResolutionDisplayMode = DisplayUtils.getMaximumResolutionDisplayMode(modeArr);
        if (maximumResolutionDisplayMode != null) {
            float physicalPixelDisplaySizeRatio = DisplayUtils.getPhysicalPixelDisplaySizeRatio(maximumResolutionDisplayMode.getPhysicalWidth(), maximumResolutionDisplayMode.getPhysicalHeight(), ((DisplayInfo) stateFlowImpl.getValue()).getNaturalWidth(), ((DisplayInfo) stateFlowImpl.getValue()).getNaturalHeight());
            if (physicalPixelDisplaySizeRatio == Float.POSITIVE_INFINITY) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return physicalPixelDisplaySizeRatio;
            }
        }
        return 1.0f;
    }
}
