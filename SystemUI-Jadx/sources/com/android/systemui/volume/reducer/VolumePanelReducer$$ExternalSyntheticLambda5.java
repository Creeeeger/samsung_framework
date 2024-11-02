package com.android.systemui.volume.reducer;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumePanelReducer$$ExternalSyntheticLambda5 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new VolumePanelRow.Builder((VolumePanelRow) obj).isActiveShow(false).build();
            case 1:
                return Boolean.valueOf(((VolumePanelRow) obj).isTracking());
            case 2:
                return Integer.valueOf(((VolumePanelRow) obj).getPriority());
            default:
                return Integer.valueOf(((VolumePanelRow) obj).getOriginalPriority());
        }
    }
}
