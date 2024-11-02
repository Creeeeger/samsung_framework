package com.android.systemui.qs.tiles;

import com.android.systemui.qs.tiles.WifiTile;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WifiTile$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WifiTile$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                WifiTile wifiTile = (WifiTile) this.f$0;
                if (wifiTile.mExpectDisabled) {
                    wifiTile.mExpectDisabled = false;
                    wifiTile.refreshState(null);
                    return;
                }
                return;
            default:
                WifiTile.WifiDetailAdapter wifiDetailAdapter = (WifiTile.WifiDetailAdapter) this.f$0;
                int i = WifiTile.WifiDetailAdapter.$r8$clinit;
                wifiDetailAdapter.setToggleState(!wifiDetailAdapter.getToggleState().booleanValue());
                return;
        }
    }
}
