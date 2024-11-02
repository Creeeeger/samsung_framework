package com.android.systemui.volume.view.expand;

import com.android.systemui.volume.store.StoreInteractor;
import com.samsung.systemui.splugins.volume.VolumePanelAction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0 {
    public static void m(VolumePanelAction.Builder builder, boolean z, StoreInteractor storeInteractor, boolean z2) {
        storeInteractor.sendAction(builder.isFromOutside(z).build(), z2);
    }
}
