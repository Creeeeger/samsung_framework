package com.android.systemui.qs;

import android.view.View;
import com.android.systemui.plugins.qs.DetailAdapter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSDetail$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SecQSDetail f$0;
    public final /* synthetic */ DetailAdapter f$1;

    public /* synthetic */ SecQSDetail$$ExternalSyntheticLambda2(SecQSDetail secQSDetail, DetailAdapter detailAdapter, int i) {
        this.$r8$classId = i;
        this.f$0 = secQSDetail;
        this.f$1 = detailAdapter;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                SecQSDetail.m1327$r8$lambda$1uAO_h_OA3h2MPW8fBnCc44CwE(this.f$0, this.f$1);
                return;
            case 1:
                SecQSDetail secQSDetail = this.f$0;
                DetailAdapter detailAdapter = this.f$1;
                boolean z = !secQSDetail.mQsDetailHeaderSwitch.isChecked();
                secQSDetail.mQsDetailHeaderSwitch.setChecked(z);
                detailAdapter.setToggleState(z);
                return;
            default:
                this.f$1.setToggleState(this.f$0.mQsDetailHeaderSwitch.isChecked());
                return;
        }
    }
}
