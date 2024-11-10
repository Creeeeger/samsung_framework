package com.android.server.remoteappmode;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.IBinder;
import com.android.internal.os.BackgroundThread;
import com.android.server.remoteappmode.RFCommServiceLauncher;

/* loaded from: classes3.dex */
public class RFCommServiceLauncher {
    public final Context mContext;
    public final Handler mHandler = BackgroundThread.getHandler();
    public boolean mBounded = false;
    public final ServiceConnection mConnection = new AnonymousClass1();

    public RFCommServiceLauncher(Context context) {
        this.mContext = context;
    }

    public void bindService(Context context) {
        Log.i("RFCommServiceLauncher", "bindService - mBounded : " + this.mBounded);
        if (this.mBounded) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.samsung.android.mdx", "com.samsung.android.mdx.windowslink.interactor.instanthotspot.HotspotRFCommService"));
            context.bindService(intent, this.mConnection, 1);
        } catch (RuntimeException e) {
            Log.e("RFCommServiceLauncher", "bindService failed," + e);
        }
    }

    public void unbindService(Context context) {
        Log.i("RFCommServiceLauncher", "unbindService - mBounded : " + this.mBounded);
        if (this.mBounded) {
            context.unbindService(this.mConnection);
            this.mBounded = false;
        }
    }

    /* renamed from: com.android.server.remoteappmode.RFCommServiceLauncher$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ServiceConnection {
        public AnonymousClass1() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i("RFCommServiceLauncher", "HotspotRFCommService is connected");
            RFCommServiceLauncher.this.mBounded = true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i("RFCommServiceLauncher", "HotspotRFCommService is disconnected");
            RFCommServiceLauncher.this.mBounded = false;
            RFCommServiceLauncher.this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.remoteappmode.RFCommServiceLauncher$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RFCommServiceLauncher.AnonymousClass1.this.lambda$onServiceDisconnected$0();
                }
            }, 3000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onServiceDisconnected$0() {
            Intent intent = new Intent("com.samsung.android.mdx.instanthotspot.action.RFCOMM_SERVICE_DISCONNECTED");
            RFCommServiceLauncher rFCommServiceLauncher = RFCommServiceLauncher.this;
            rFCommServiceLauncher.sendBroadcast(rFCommServiceLauncher.mContext, intent);
        }
    }

    public final void sendBroadcast(Context context, Intent intent) {
        for (ResolveInfo resolveInfo : context.getPackageManager().queryBroadcastReceivers(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.equals("com.samsung.android.mdx")) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                context.sendBroadcast(intent);
            }
        }
    }
}
