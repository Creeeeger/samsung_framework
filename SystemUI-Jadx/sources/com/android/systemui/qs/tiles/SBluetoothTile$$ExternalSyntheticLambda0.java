package com.android.systemui.qs.tiles;

import com.android.systemui.qs.tiles.SBluetoothTile;
import com.android.systemui.statusbar.policy.SBluetoothControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SBluetoothTile$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SBluetoothTile$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SBluetoothTile sBluetoothTile = (SBluetoothTile) this.f$0;
                if (((SBluetoothControllerImpl) sBluetoothTile.mController).mState == 12) {
                    sBluetoothTile.fireToggleStateChanged(true);
                    return;
                }
                return;
            case 1:
                ((SBluetoothTile) this.f$0).handleSecondaryClick(Boolean.TRUE);
                return;
            default:
                SBluetoothTile.BluetoothDetailAdapter bluetoothDetailAdapter = (SBluetoothTile.BluetoothDetailAdapter) this.f$0;
                int i = SBluetoothTile.BluetoothDetailAdapter.$r8$clinit;
                boolean z = !bluetoothDetailAdapter.getToggleState().booleanValue();
                boolean z2 = SBluetoothTile.DEBUG;
                bluetoothDetailAdapter.this$0.onToggleStateChange(z);
                return;
        }
    }
}
