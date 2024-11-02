package com.android.systemui.dreams;

import com.android.systemui.dreams.DreamOverlayStateController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DreamOverlayStateController$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((DreamOverlayStateController.Callback) obj).onExitLowLight();
                return;
            case 1:
                ((DreamOverlayStateController.Callback) obj).onStateChanged();
                return;
            default:
                ((DreamOverlayStateController.Callback) obj).onAvailableComplicationTypesChanged();
                return;
        }
    }
}
