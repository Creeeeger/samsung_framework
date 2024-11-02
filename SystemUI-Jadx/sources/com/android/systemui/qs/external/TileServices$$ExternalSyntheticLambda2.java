package com.android.systemui.qs.external;

import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TileServices$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ TileServices$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                TileServices tileServices = (TileServices) this.f$0;
                CustomTile customTile = (CustomTile) obj;
                tileServices.getClass();
                if (customTile.isSecActiveTile()) {
                    tileServices.requestListening(customTile.mComponent);
                    return;
                }
                return;
            default:
                ((ArrayList) this.f$0).add((CustomTile) obj);
                return;
        }
    }
}
