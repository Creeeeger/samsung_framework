package com.android.systemui.qs.tiles;

import android.content.DialogInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MobileDataTile$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MobileDataTile f$0;

    public /* synthetic */ MobileDataTile$$ExternalSyntheticLambda0(MobileDataTile mobileDataTile, int i) {
        this.$r8$classId = i;
        this.f$0 = mobileDataTile;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.refreshState(null);
                return;
            case 1:
                this.f$0.refreshState(null);
                return;
            case 2:
                this.f$0.refreshState(null);
                return;
            case 3:
                MobileDataTile mobileDataTile = this.f$0;
                mobileDataTile.mDataController.setMobileDataEnabled(false);
                mobileDataTile.refreshState(null);
                return;
            case 4:
                this.f$0.refreshState(null);
                return;
            case 5:
                MobileDataTile mobileDataTile2 = this.f$0;
                mobileDataTile2.mDataController.setMobileDataEnabled(true);
                mobileDataTile2.refreshState(null);
                return;
            case 6:
                this.f$0.refreshState(null);
                return;
            case 7:
                this.f$0.refreshState(null);
                return;
            case 8:
                MobileDataTile mobileDataTile3 = this.f$0;
                mobileDataTile3.mDataController.setMobileDataEnabled(false);
                mobileDataTile3.refreshState(null);
                return;
            default:
                this.f$0.refreshState(null);
                return;
        }
    }
}
