package com.android.systemui.volume.reducer;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumeStreamState;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumePanelReducer$$ExternalSyntheticLambda13 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VolumePanelRow f$0;

    public /* synthetic */ VolumePanelReducer$$ExternalSyntheticLambda13(VolumePanelRow volumePanelRow, int i) {
        this.$r8$classId = i;
        this.f$0 = volumePanelRow;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((VolumeStreamState) obj).getStreamType() == this.f$0.getStreamType()) {
                    return true;
                }
                return false;
            case 1:
                if (((Integer) obj).intValue() == this.f$0.getStreamType()) {
                    return true;
                }
                return false;
            case 2:
                if (((Integer) obj).intValue() == this.f$0.getStreamType()) {
                    return true;
                }
                return false;
            default:
                if (((VolumeStreamState) obj).getStreamType() == this.f$0.getStreamType()) {
                    return true;
                }
                return false;
        }
    }
}
