package com.android.systemui.volume.reducer;

import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumeStreamState;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class VolumePanelReducer$$ExternalSyntheticLambda3 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ VolumePanelReducer$$ExternalSyntheticLambda3(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                VolumePanelRow volumePanelRow = (VolumePanelRow) obj;
                if (volumePanelRow.getRealLevel() == VolumePanelReducer.getImpliedLevel(volumePanelRow.getStreamType(), volumePanelRow.getLevelMax(), this.f$0)) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                VolumePanelRow volumePanelRow2 = (VolumePanelRow) obj;
                if (volumePanelRow2.getRealLevel() != VolumePanelReducer.getImpliedLevel(volumePanelRow2.getStreamType(), volumePanelRow2.getLevelMax(), this.f$0)) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                int i = this.f$0;
                VolumePanelRow volumePanelRow3 = (VolumePanelRow) obj;
                if (volumePanelRow3.isVisible() && volumePanelRow3.getStreamType() == 10) {
                    return new VolumePanelRow.Builder(volumePanelRow3).priority(i).build();
                }
                return volumePanelRow3;
            case 3:
                return new VolumePanelRow.Builder().setStreamType(((VolumeStreamState) obj).getStreamType()).isImportant(true).isDynamic(true).originalPriority(this.f$0).build();
            default:
                VolumePanelRow volumePanelRow4 = (VolumePanelRow) obj;
                if (volumePanelRow4.getStreamType() == this.f$0) {
                    return new VolumePanelRow.Builder(volumePanelRow4).isActiveShow(true).build();
                }
                return volumePanelRow4;
        }
    }
}
