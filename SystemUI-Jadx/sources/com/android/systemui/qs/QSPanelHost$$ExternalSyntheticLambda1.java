package com.android.systemui.qs;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.SecQSPanelControllerBase;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSPanelHost$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ QSPanelHost$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SecQSPanelControllerBase.TileRecord) obj).tile.removeCallbacks();
                return;
            case 1:
                ((QSTile) obj).refreshState();
                return;
            case 2:
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                throw null;
            case 3:
                ((QSTileView) obj).onPanelModeChanged();
                return;
            default:
                ((QSTile) obj).click(null);
                return;
        }
    }
}
