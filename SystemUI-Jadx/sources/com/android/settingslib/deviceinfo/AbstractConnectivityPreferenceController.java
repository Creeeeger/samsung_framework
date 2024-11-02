package com.android.settingslib.deviceinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import com.android.internal.util.ArrayUtils;
import com.android.settingslib.core.AbstractPreferenceController;
import com.android.settingslib.core.lifecycle.Lifecycle;
import com.android.settingslib.core.lifecycle.LifecycleObserver;
import com.android.settingslib.core.lifecycle.events.OnStart;
import com.android.settingslib.core.lifecycle.events.OnStop;
import com.sec.ims.volte2.data.VolteConstants;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbstractConnectivityPreferenceController extends AbstractPreferenceController implements LifecycleObserver, OnStart, OnStop {
    public final AnonymousClass1 mConnectivityReceiver;
    public ConnectivityEventHandler mHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ConnectivityEventHandler extends Handler {
        public final WeakReference mPreferenceController;

        public ConnectivityEventHandler(AbstractConnectivityPreferenceController abstractConnectivityPreferenceController) {
            this.mPreferenceController = new WeakReference(abstractConnectivityPreferenceController);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            AbstractConnectivityPreferenceController abstractConnectivityPreferenceController = (AbstractConnectivityPreferenceController) this.mPreferenceController.get();
            if (abstractConnectivityPreferenceController == null) {
                return;
            }
            if (message.what == 600) {
                abstractConnectivityPreferenceController.updateConnectivity();
            } else {
                throw new IllegalStateException("Unknown message " + message.what);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.settingslib.deviceinfo.AbstractConnectivityPreferenceController$1] */
    public AbstractConnectivityPreferenceController(Context context, Lifecycle lifecycle) {
        super(context);
        this.mConnectivityReceiver = new BroadcastReceiver() { // from class: com.android.settingslib.deviceinfo.AbstractConnectivityPreferenceController.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if (ArrayUtils.contains(AbstractConnectivityPreferenceController.this.getConnectivityIntents(), intent.getAction())) {
                    AbstractConnectivityPreferenceController abstractConnectivityPreferenceController = AbstractConnectivityPreferenceController.this;
                    if (abstractConnectivityPreferenceController.mHandler == null) {
                        abstractConnectivityPreferenceController.mHandler = new ConnectivityEventHandler(abstractConnectivityPreferenceController);
                    }
                    abstractConnectivityPreferenceController.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.BUSY_EVERYWHERE);
                }
            }
        };
        if (lifecycle != null) {
            lifecycle.addObserver(this);
        }
    }

    public abstract String[] getConnectivityIntents();

    @Override // com.android.settingslib.core.lifecycle.events.OnStart
    public final void onStart() {
        IntentFilter intentFilter = new IntentFilter();
        for (String str : getConnectivityIntents()) {
            intentFilter.addAction(str);
        }
        this.mContext.registerReceiver(this.mConnectivityReceiver, intentFilter, "android.permission.CHANGE_NETWORK_STATE", null, 2);
    }

    @Override // com.android.settingslib.core.lifecycle.events.OnStop
    public final void onStop() {
        this.mContext.unregisterReceiver(this.mConnectivityReceiver);
    }

    public abstract void updateConnectivity();
}
