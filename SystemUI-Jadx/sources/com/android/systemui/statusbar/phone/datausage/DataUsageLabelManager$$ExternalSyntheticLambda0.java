package com.android.systemui.statusbar.phone.datausage;

import android.view.ViewGroup;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DataUsageLabelManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DataUsageLabelManager f$0;
    public final /* synthetic */ ViewGroup f$1;

    public /* synthetic */ DataUsageLabelManager$$ExternalSyntheticLambda0(DataUsageLabelManager dataUsageLabelManager, ViewGroup viewGroup, int i) {
        this.$r8$classId = i;
        this.f$0 = dataUsageLabelManager;
        this.f$1 = viewGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$1.setPadding(0, 0, 0, this.f$0.mInsetNavigationBarBottomHeight);
                return;
            default:
                DataUsageLabelManager dataUsageLabelManager = this.f$0;
                ViewGroup viewGroup = this.f$1;
                dataUsageLabelManager.getClass();
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                int i = dataUsageLabelManager.mInsetNavigationBarBottomHeight;
                DataUsageLabelView dataUsageLabelView = dataUsageLabelManager.mLabelView;
                if (dataUsageLabelView != null) {
                    i += dataUsageLabelView.mContext.getResources().getDimensionPixelSize(R.dimen.notification_panel_carrier_label_height);
                }
                if (layoutParams.height != i) {
                    layoutParams.height = i;
                    if (DataUsageLabelManager.DEBUG) {
                        ListPopupWindow$$ExternalSyntheticOutline0.m("updateLayoutParamHeight() newHeight:", i, "DataUsageLabelManager");
                    }
                    viewGroup.setLayoutParams(layoutParams);
                    return;
                }
                return;
        }
    }
}
