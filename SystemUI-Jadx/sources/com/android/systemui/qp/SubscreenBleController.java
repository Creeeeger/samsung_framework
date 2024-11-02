package com.android.systemui.qp;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.UserHandle;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.statusbar.policy.BluetoothController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.SBluetoothController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenBleController implements SubscreenQSControllerContract$Presenter {
    public static Context mContext;
    public static SubscreenBleController sInstance;
    public TileReceiver mBleReceiver;
    public SubscreenQSControllerContract$View mBleView;
    public TileReceiver mBleViewReceiver;
    public final AnonymousClass1 mCallback = new SBluetoothController.SCallback() { // from class: com.android.systemui.qp.SubscreenBleController.1
        @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
        public final void onBluetoothStateChange(boolean z) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onBluetoothStateChange = ", z, "SubscreenBleController");
            SubscreenBleController subscreenBleController = SubscreenBleController.this;
            if (subscreenBleController.mBleView != null && !subscreenBleController.isTransient()) {
                subscreenBleController.mBleView.updateView(z);
            }
        }

        @Override // com.android.systemui.statusbar.policy.SBluetoothController.SCallback
        public final void onBluetoothScanStateChanged(boolean z) {
        }

        @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
        public final void onBluetoothDevicesChanged() {
        }
    };
    public final BluetoothController mBluetoothController = (BluetoothController) Dependency.get(BluetoothController.class);
    public final KeyguardStateController mKeyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TileReceiver extends BroadcastReceiver {
        public TileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            boolean isEnabled = SubscreenBleController.this.isEnabled();
            Log.d("SubscreenBleController", "SBC onReceive action: " + intent.getAction() + ",enabled = " + isEnabled);
            if ("BLUETOOTH_STATE_CHANGE".equals(intent.getAction())) {
                SubscreenBleController subscreenBleController = SubscreenBleController.this;
                if (subscreenBleController.mBleView != null && !subscreenBleController.isTransient()) {
                    boolean z = !isEnabled;
                    SubscreenBleController.this.mBluetoothController.setBluetoothEnabled(z);
                    SubscreenBleController.this.mBleView.updateView(z);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.qp.SubscreenBleController$1] */
    private SubscreenBleController() {
    }

    public static SubscreenBleController getInstance(Context context) {
        if (sInstance == null) {
            mContext = context;
            sInstance = new SubscreenBleController();
        }
        return sInstance;
    }

    public final boolean isEnabled() {
        boolean isBluetoothEnabled = this.mBluetoothController.isBluetoothEnabled();
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("SBC isEnabled enabled: ", isBluetoothEnabled, "SubscreenBleController");
        return isBluetoothEnabled;
    }

    public final boolean isTransient() {
        StringBuilder sb = new StringBuilder("isTransient ");
        BluetoothController bluetoothController = this.mBluetoothController;
        sb.append(bluetoothController.getBluetoothState());
        Log.d("SubscreenBleController", sb.toString());
        if (bluetoothController.getBluetoothState() != 11 && bluetoothController.getBluetoothState() != 13) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$Presenter
    public final void registerReceiver(boolean z) {
        TileReceiver tileReceiver;
        IntentFilter m = AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("BLUETOOTH_STATE_CHANGE");
        if (z) {
            this.mBleViewReceiver = new TileReceiver();
        } else {
            this.mBleReceiver = new TileReceiver();
        }
        Log.d("SubscreenBleController", "SBC registerBleReceiver mBleViewReceiver: " + this.mBleViewReceiver + "mBleReceiver: " + this.mBleReceiver);
        BroadcastDispatcher broadcastDispatcher = (BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class);
        if (z) {
            tileReceiver = this.mBleViewReceiver;
        } else {
            tileReceiver = this.mBleReceiver;
        }
        broadcastDispatcher.registerReceiver(tileReceiver, m, null, UserHandle.ALL, 2, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE");
        this.mBluetoothController.addCallback(this.mCallback);
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$Presenter
    public final void unRegisterReceiver(boolean z) {
        if (z && this.mBleViewReceiver != null) {
            Log.d("SubscreenBleController", "SBC unRegisterReceiver mBleViewReceiver: " + this.mBleViewReceiver);
            ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mBleViewReceiver);
            this.mBleViewReceiver = null;
        } else if (this.mBleReceiver != null) {
            Log.d("SubscreenBleController", "SBC unRegisterReceiver mBleReceiver: " + this.mBleReceiver);
            ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mBleReceiver);
            this.mBleReceiver = null;
        }
        AnonymousClass1 anonymousClass1 = this.mCallback;
        if (anonymousClass1 != null) {
            this.mBluetoothController.removeCallback(anonymousClass1);
        }
    }
}
