package com.android.systemui.subscreen;

import android.content.Context;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import com.android.systemui.plugins.qs.QSTile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenRecordingStateProvider implements QSTile.Callback {
    public final SecPanelLogger mPanelLogger;
    public QSTile.State mTileState;

    public ScreenRecordingStateProvider(Context context, SecPanelLogger secPanelLogger) {
        this.mPanelLogger = secPanelLogger;
    }

    @Override // com.android.systemui.plugins.qs.QSTile.Callback
    public final void onStateChanged(QSTile.State state) {
        boolean z;
        this.mTileState = state;
        StringBuilder sb = new StringBuilder("ScreenRecordingStateChanged active: ");
        if (state.state == 2) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        ((SecPanelLoggerImpl) this.mPanelLogger).addCoverPanelStateLog(sb.toString());
    }
}
