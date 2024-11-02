package com.android.systemui.qp;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.UserHandle;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenAirplaneController implements SubscreenQSControllerContract$Presenter {
    public static Context mContext;
    public static SubscreenAirplaneController sInstance;
    public TileReceiver mAirplaneReceiver;
    public SubscreenQSControllerContract$View mAirplaneView;
    public TileReceiver mAirplaneViewReceiver;
    public final ConnectivityManager mConnectivityManager = (ConnectivityManager) mContext.getSystemService("connectivity");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TileReceiver extends BroadcastReceiver {
        public TileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Log.d("SubscreenAirplaneController", "SAC onReceive action: " + intent.getAction());
            if ("AIRPLANE_MODE_CHANGE".equals(intent.getAction())) {
                SubscreenAirplaneController.this.getClass();
                boolean z = !((SettingsHelper) Dependency.get(SettingsHelper.class)).isAirplaneModeOn();
                SubscreenAirplaneController.this.mConnectivityManager.setAirplaneMode(z);
                SubscreenAirplaneController.this.mAirplaneView.updateView(z);
            }
        }
    }

    private SubscreenAirplaneController() {
    }

    public static SubscreenAirplaneController getInstance(Context context) {
        if (sInstance == null) {
            mContext = context;
            sInstance = new SubscreenAirplaneController();
        }
        return sInstance;
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$Presenter
    public final void registerReceiver(boolean z) {
        TileReceiver tileReceiver;
        IntentFilter m = AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("AIRPLANE_MODE_CHANGE");
        if (z) {
            this.mAirplaneViewReceiver = new TileReceiver();
        } else {
            this.mAirplaneReceiver = new TileReceiver();
        }
        Log.d("SubscreenAirplaneController", "SAC registerAirplaneReceiver mAirplaneViewReceiver: " + this.mAirplaneViewReceiver + "mAirplaneReceiver: " + this.mAirplaneReceiver);
        BroadcastDispatcher broadcastDispatcher = (BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class);
        if (z) {
            tileReceiver = this.mAirplaneViewReceiver;
        } else {
            tileReceiver = this.mAirplaneReceiver;
        }
        broadcastDispatcher.registerReceiver(tileReceiver, m, null, UserHandle.ALL, 2, "com.samsung.systemui.permission.AIRPLANE_STATE_CHANGE");
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$Presenter
    public final void unRegisterReceiver(boolean z) {
        if (z && this.mAirplaneViewReceiver != null) {
            Log.d("SubscreenAirplaneController", "SAC unRegisterReceiver mAirplaneViewReceiver: " + this.mAirplaneViewReceiver);
            ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mAirplaneViewReceiver);
            this.mAirplaneViewReceiver = null;
            return;
        }
        if (this.mAirplaneReceiver != null) {
            Log.d("SubscreenAirplaneController", "SAC unRegisterReceiver mAirplaneReceiver: " + this.mAirplaneReceiver);
            ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mAirplaneReceiver);
            this.mAirplaneReceiver = null;
        }
    }
}
