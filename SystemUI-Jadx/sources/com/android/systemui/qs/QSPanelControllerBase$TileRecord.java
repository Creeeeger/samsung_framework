package com.android.systemui.qs;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.QSPanel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSPanelControllerBase$TileRecord {
    public QSPanel.AnonymousClass1 callback;
    public final QSTile tile;
    public final QSTileView tileView;

    public QSPanelControllerBase$TileRecord(QSTile qSTile, QSTileView qSTileView) {
        this.tile = qSTile;
        this.tileView = qSTileView;
    }
}
