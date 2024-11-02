package com.android.systemui.volume.view.context;

import android.content.Context;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.store.VolumePanelStore;
import com.samsung.systemui.splugins.volume.VolumePanelState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ViewContext {
    Context getContext();

    VolumePanelState getPanelState();

    VolumePanelStore getStore();

    VolumeDependencyBase getVolDeps();
}
