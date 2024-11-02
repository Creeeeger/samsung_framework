package com.android.systemui.volume.reducer;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumePanelReducer$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ VolumePanelReducer$$ExternalSyntheticLambda2(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((VolumePanelRow) obj).getStreamType() == this.f$0) {
                    return true;
                }
                return false;
            case 1:
                if (((VolumePanelRow) obj).getStreamType() == this.f$0) {
                    return true;
                }
                return false;
            case 2:
                if (((VolumePanelRow) obj).getStreamType() == this.f$0) {
                    return true;
                }
                return false;
            default:
                if (((VolumePanelRow) obj).getStreamType() == this.f$0) {
                    return true;
                }
                return false;
        }
    }
}
