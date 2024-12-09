package com.sec.internal.ims.cmstore.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;

/* loaded from: classes.dex */
public class NetworkChangeReceiver extends BroadcastReceiver {
    private final String TAG = NetworkChangeReceiver.class.getSimpleName();
    private final IWorkingStatusProvisionListener mIWorkingStatusProvisionListener;

    public NetworkChangeReceiver(IWorkingStatusProvisionListener iWorkingStatusProvisionListener) {
        this.mIWorkingStatusProvisionListener = iWorkingStatusProvisionListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.i(this.TAG, "receive intent==" + intent.getAction());
        this.mIWorkingStatusProvisionListener.onNetworkChangeDetected();
    }
}
