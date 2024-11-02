package com.samsung.systemui.splugins.volume;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ExtendableVolumePanel {
    VolumePanelState getVolumePanelCurrentState();

    void recreateVolumePanelForNewConfig();

    void restoreToDefaultStore();

    void setActionObserver(VolumeObserver<VolumePanelAction> volumeObserver);

    void setStateObservable(VolumeObservable<VolumePanelState> volumeObservable);
}
