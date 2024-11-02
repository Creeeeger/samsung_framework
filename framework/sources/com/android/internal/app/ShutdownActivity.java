package com.android.internal.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.IPowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Slog;

/* loaded from: classes4.dex */
public class ShutdownActivity extends Activity {
    private static final String TAG = "ShutdownActivity";
    private boolean mConfirm;
    private boolean mReboot;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        this.mReboot = Intent.ACTION_REBOOT.equals(intent.getAction());
        this.mConfirm = intent.getBooleanExtra(Intent.EXTRA_KEY_CONFIRM, false);
        String reason = intent.getStringExtra(Intent.SEM_EXTRA_REBOOT_REASON);
        Slog.i(TAG, "onCreate(): reason = " + reason);
        Thread thr = new Thread(TAG) { // from class: com.android.internal.app.ShutdownActivity.1
            final /* synthetic */ String val$reason;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(String name, String reason2) {
                super(name);
                reason = reason2;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                IPowerManager pm = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
                try {
                    if (ShutdownActivity.this.mReboot) {
                        pm.reboot(ShutdownActivity.this.mConfirm, reason, false);
                    } else {
                        pm.shutdown(ShutdownActivity.this.mConfirm, reason, false);
                    }
                } catch (RemoteException e) {
                }
            }
        };
        thr.start();
        finish();
        try {
            thr.join();
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: com.android.internal.app.ShutdownActivity$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends Thread {
        final /* synthetic */ String val$reason;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String name, String reason2) {
            super(name);
            reason = reason2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            IPowerManager pm = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
            try {
                if (ShutdownActivity.this.mReboot) {
                    pm.reboot(ShutdownActivity.this.mConfirm, reason, false);
                } else {
                    pm.shutdown(ShutdownActivity.this.mConfirm, reason, false);
                }
            } catch (RemoteException e) {
            }
        }
    }
}
