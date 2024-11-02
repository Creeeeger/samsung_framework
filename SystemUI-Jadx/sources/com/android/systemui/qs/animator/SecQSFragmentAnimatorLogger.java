package com.android.systemui.qs.animator;

import android.util.Log;
import java.text.DecimalFormat;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQSFragmentAnimatorLogger {
    public boolean panelExpanded;
    public boolean qsExpanded;
    public boolean qsFullyExpanded;
    public float qsExpansionPosition = -1.0f;
    public float qsExpansionPositionLastLoggingValue = -1.0f;
    public float panelExpansionFraction = -1.0f;
    public float panelExpansionFractionLastLoggingValue = -1.0f;
    public float panelExpansionDragDownPxAmount = -1.0f;
    public float panelExpansionDragDownPxAmountLastLoggingValue = -1.0f;
    public int barState = -1;
    public final int userId = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public final void printLog(String str) {
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        sb.append(" qsExpanded:" + this.qsExpanded);
        sb.append(", qsFullyExpanded:" + this.qsFullyExpanded);
        sb.append(", qsExpansionPosition:" + decimalFormat.format(Float.valueOf(this.qsExpansionPosition)));
        sb.append(", qsExpandImmediate:false, qsCollapsingWhilePanelClosing:false");
        sb.append(" &&&  panelExpansionFraction:" + decimalFormat.format(Float.valueOf(this.panelExpansionFraction)));
        sb.append(", panelExpansionDragDownPxAmount:" + decimalFormat.format(Float.valueOf(this.panelExpansionDragDownPxAmount)));
        sb.append(" ***   panelExpanded:" + this.panelExpanded);
        sb.append(", panelExpanding:false");
        sb.append(" %%%   barState:" + this.barState);
        sb.append(", overScrolling:false");
        sb.append(", userId:" + this.userId);
        sb.append(", isRunningPanelOnHeightAnimation:false");
        Log.d("SecQSFragmentAnimator_QSCinema", str + sb.toString());
    }
}
