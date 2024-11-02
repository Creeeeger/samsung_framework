package com.android.systemui.volume.middleware;

import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.VolumeDependencyBase;
import com.samsung.systemui.splugins.volume.VolumeInfraMediator;
import com.samsung.systemui.splugins.volume.VolumeMiddleware;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartViewInteractor implements VolumeMiddleware {
    public final VolumeInfraMediator infraMediator;
    public final LogWrapper log;
    public boolean panelShowing;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[VolumePanelAction.ActionType.values().length];
            try {
                iArr[VolumePanelAction.ActionType.ACTION_PANEL_SHOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelAction.ActionType.ACTION_STATE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[VolumePanelState.StateType.values().length];
            try {
                iArr2[VolumePanelState.StateType.STATE_SMART_VIEW_ICON_CLICKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    public SmartViewInteractor(VolumeDependencyBase volumeDependencyBase) {
        VolumeDependency volumeDependency = (VolumeDependency) volumeDependencyBase;
        this.infraMediator = (VolumeInfraMediator) volumeDependency.get(VolumeInfraMediator.class);
        this.log = (LogWrapper) volumeDependency.get(LogWrapper.class);
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    public final Object apply(Object obj) {
        boolean z;
        VolumePanelAction build;
        VolumePanelAction volumePanelAction = (VolumePanelAction) obj;
        int i = WhenMappings.$EnumSwitchMapping$0[volumePanelAction.getActionType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                VolumePanelAction.Builder builder = new VolumePanelAction.Builder(volumePanelAction);
                VolumeInfraMediator volumeInfraMediator = this.infraMediator;
                String m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isSmartView=", volumeInfraMediator.isSmartView());
                LogWrapper logWrapper = this.log;
                logWrapper.d("SmartViewInteractor", m);
                if (volumeInfraMediator.isSmartView()) {
                    z = volumeInfraMediator.isSupportTvVolumeSync();
                    logWrapper.d("SmartViewInteractor", "isSupportTvVolumeSync=" + z);
                    builder.setStringValue(VolumePanelAction.StringStateKey.SMART_VIEW_DEVICE_NAME, volumeInfraMediator.getSmartViewDeviceName()).isSupportTvVolumeSync(z);
                } else {
                    z = false;
                }
                if (z) {
                    List<Integer> importantStreamList = volumePanelAction.getImportantStreamList();
                    importantStreamList.add(20);
                    build = builder.setImportantStreamList(importantStreamList).build();
                } else {
                    List<Integer> unImportantStreamList = volumePanelAction.getUnImportantStreamList();
                    unImportantStreamList.add(20);
                    build = builder.setUnImportantStreamList(unImportantStreamList).build();
                }
                return build;
            }
            return volumePanelAction;
        }
        if (!this.panelShowing) {
            this.panelShowing = true;
            return volumePanelAction;
        }
        return volumePanelAction;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    public final void applyState(Object obj) {
        int i = WhenMappings.$EnumSwitchMapping$1[((VolumePanelState) obj).getStateType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.panelShowing = false;
            }
        } else {
            VolumeInfraMediator volumeInfraMediator = this.infraMediator;
            if (volumeInfraMediator.isSmartView()) {
                volumeInfraMediator.toggleWifiDisplayMute();
            }
        }
    }
}
