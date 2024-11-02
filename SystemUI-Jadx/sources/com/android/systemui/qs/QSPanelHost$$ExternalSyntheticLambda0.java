package com.android.systemui.qs;

import android.metrics.LogMaker;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.bar.BarItemImpl;
import com.android.systemui.qs.bar.TileHostable;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSPanelHost$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ QSPanelHost$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((SecQSPanelControllerBase.TileRecord) obj).tile.getTileSpec();
            case 1:
                return ((SecQSPanelControllerBase.TileRecord) obj).tile;
            case 2:
                QSTile qSTile = (QSTile) obj;
                return qSTile.populate(new LogMaker(qSTile.getMetricsCategory()).setType(1));
            case 3:
                return ((SecQSPanelControllerBase.TileRecord) obj).tile;
            case 4:
                return ((SecQSPanelControllerBase.TileRecord) obj).tileView;
            case 5:
                return ((SecQSPanelControllerBase.TileRecord) obj).tile;
            case 6:
                return (TileHostable) ((BarItemImpl) obj);
            case 7:
                return ((SecQSPanelControllerBase.TileRecord) obj).tile;
            default:
                return ((SecQSPanelControllerBase.TileRecord) obj).tileView;
        }
    }
}
