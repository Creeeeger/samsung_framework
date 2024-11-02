package com.android.systemui.qs.cinema;

import android.content.Context;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.QSTileHost;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQuickQSPanel;
import com.android.systemui.qs.SecQuickQSPanelController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSCinemaProvider {
    public final SecQSPanelController mQSPanelController;
    public final QSTileHost mQSTileHost;
    public final QS mQs;
    public int mCurrentOrientation = 0;
    public int mCurrentLayoutDirection = -1;

    public QSCinemaProvider(Context context, QS qs, SecQuickQSPanel secQuickQSPanel, SecQSPanelController secQSPanelController, SecQuickQSPanelController secQuickQSPanelController, QSTileHost qSTileHost) {
        context.getResources().getConfiguration();
        this.mQs = qs;
        this.mQSPanelController = secQSPanelController;
        this.mQSTileHost = qSTileHost;
    }
}
