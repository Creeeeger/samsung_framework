package com.android.systemui.qs.tiles;

import android.content.DialogInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MobileDataTile$$ExternalSyntheticLambda6 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MobileDataTile f$0;

    public /* synthetic */ MobileDataTile$$ExternalSyntheticLambda6(MobileDataTile mobileDataTile, int i) {
        this.$r8$classId = i;
        this.f$0 = mobileDataTile;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.refreshState(null);
                return;
            default:
                this.f$0.refreshState(null);
                return;
        }
    }
}
