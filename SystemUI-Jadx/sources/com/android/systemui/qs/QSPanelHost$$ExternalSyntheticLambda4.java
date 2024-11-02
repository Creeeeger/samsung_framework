package com.android.systemui.qs;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.qs.SecQSPanelControllerBase;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSPanelHost$$ExternalSyntheticLambda4 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QSPanelHost f$0;

    public /* synthetic */ QSPanelHost$$ExternalSyntheticLambda4(QSPanelHost qSPanelHost, int i) {
        this.$r8$classId = i;
        this.f$0 = qSPanelHost;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                QSPanelHost qSPanelHost = this.f$0;
                QSTile qSTile = (QSTile) obj;
                boolean isHeader = qSPanelHost.isHeader();
                SecQSPanelControllerBase.TileRecord tileRecord = new SecQSPanelControllerBase.TileRecord(qSTile, qSPanelHost.mQsHost.createTileView(qSPanelHost.mTargetView.getContext(), qSTile, isHeader));
                qSPanelHost.addCallbackAndInit(tileRecord);
                SecQSPanel.QSTileLayout qSTileLayout = qSPanelHost.mTileLayout;
                if (qSTileLayout != null) {
                    qSTileLayout.addTile(tileRecord);
                }
                return tileRecord;
            default:
                QSPanelHost qSPanelHost2 = this.f$0;
                QSTile qSTile2 = (QSTile) obj;
                return new SecQSPanelControllerBase.TileRecord(qSTile2, qSPanelHost2.mQsHost.createTileView(qSPanelHost2.mTargetView.getContext(), qSTile2, qSPanelHost2.isHeader()));
        }
    }
}
