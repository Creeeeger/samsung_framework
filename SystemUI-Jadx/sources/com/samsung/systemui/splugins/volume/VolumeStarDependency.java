package com.samsung.systemui.splugins.volume;

import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface VolumeStarDependency {
    List<VolumeMiddleware<?, ?>> getDefaultMiddlewares();

    VolumePanelReducerBase getDefaultReducer();

    VolumeInfraMediator getInfraMediator();

    ExtendableVolumePanel getVolumePanel();
}
