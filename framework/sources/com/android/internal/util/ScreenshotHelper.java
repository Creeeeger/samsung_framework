package com.android.internal.util;

import android.app.job.JobInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.R;
import com.android.internal.util.ScreenshotRequest;
import java.util.function.Consumer;

/* loaded from: classes5.dex */
public class ScreenshotHelper {
    public static final int SCREENSHOT_MSG_PROCESS_COMPLETE = 2;
    public static final int SCREENSHOT_MSG_URI = 1;
    private static final String TAG = "ScreenshotHelper";
    private final BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private final int SCREENSHOT_TIMEOUT_MS = 10000;
    private final Object mScreenshotLock = new Object();
    private IBinder mScreenshotService = null;
    private ServiceConnection mScreenshotConnection = null;

    public ScreenshotHelper(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.internal.util.ScreenshotHelper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (ScreenshotHelper.this.mScreenshotLock) {
                    if ("android.intent.action.USER_SWITCHED".equals(intent.getAction())) {
                        ScreenshotHelper.this.resetConnection();
                    }
                }
            }
        };
        this.mBroadcastReceiver = broadcastReceiver;
        this.mContext = context;
        IntentFilter filter = new IntentFilter("android.intent.action.USER_SWITCHED");
        context.registerReceiver(broadcastReceiver, filter, 2);
    }

    public void takeScreenshot(int source, Handler handler, Consumer<Uri> completionConsumer) {
        ScreenshotRequest request = new ScreenshotRequest.Builder(1, source).build();
        takeScreenshot(request, handler, completionConsumer);
    }

    public void takeScreenshot(ScreenshotRequest request, Handler handler, Consumer<Uri> completionConsumer) {
        takeScreenshotInternal(request, handler, completionConsumer, JobInfo.MIN_BACKOFF_MILLIS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0070, code lost:            resetConnection();     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void takeScreenshotInternal(com.android.internal.util.ScreenshotRequest r20, final android.os.Handler r21, final java.util.function.Consumer<android.net.Uri> r22, long r23) {
        /*
            r19 = this;
            r7 = r19
            r8 = r21
            r9 = r22
            r10 = r23
            java.lang.Object r12 = r7.mScreenshotLock
            monitor-enter(r12)
            com.android.internal.util.ScreenshotHelper$$ExternalSyntheticLambda0 r0 = new com.android.internal.util.ScreenshotHelper$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> Lbe
            r0.<init>()     // Catch: java.lang.Throwable -> Lbe
            r13 = r0
            r0 = 0
            r14 = 0
            r15 = r20
            android.os.Message r0 = android.os.Message.obtain(r14, r0, r15)     // Catch: java.lang.Throwable -> Lc3
            r6 = r0
            com.android.internal.util.ScreenshotHelper$2 r0 = new com.android.internal.util.ScreenshotHelper$2     // Catch: java.lang.Throwable -> Lc3
            android.os.Looper r3 = r21.getLooper()     // Catch: java.lang.Throwable -> Lc3
            r1 = r0
            r2 = r19
            r4 = r22
            r5 = r21
            r14 = r6
            r6 = r13
            r1.<init>(r3)     // Catch: java.lang.Throwable -> Lc3
            r6 = r0
            android.os.Messenger r0 = new android.os.Messenger     // Catch: java.lang.Throwable -> Lc3
            r0.<init>(r6)     // Catch: java.lang.Throwable -> Lc3
            r14.replyTo = r0     // Catch: java.lang.Throwable -> Lc3
            android.content.ServiceConnection r0 = r7.mScreenshotConnection     // Catch: java.lang.Throwable -> Lc3
            if (r0 == 0) goto L6e
            android.os.IBinder r1 = r7.mScreenshotService     // Catch: java.lang.Throwable -> Lc3
            if (r1 != 0) goto L3d
            goto L6e
        L3d:
            android.os.Messenger r0 = new android.os.Messenger     // Catch: java.lang.Throwable -> Lc3
            android.os.IBinder r1 = r7.mScreenshotService     // Catch: java.lang.Throwable -> Lc3
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lc3
            r1 = r0
            r1.send(r14)     // Catch: android.os.RemoteException -> L49 java.lang.Throwable -> Lc3
            goto L6a
        L49:
            r0 = move-exception
            r2 = r0
            r0 = r2
            java.lang.String r2 = "ScreenshotHelper"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3
            r3.<init>()     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r4 = "Couldn't take screenshot: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lc3
            java.lang.StringBuilder r3 = r3.append(r0)     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lc3
            android.util.Log.e(r2, r3)     // Catch: java.lang.Throwable -> Lc3
            if (r9 == 0) goto L6a
            r2 = 0
            r9.accept(r2)     // Catch: java.lang.Throwable -> Lc3
        L6a:
            r8.postDelayed(r13, r10)     // Catch: java.lang.Throwable -> Lc3
            goto Lbc
        L6e:
            if (r0 == 0) goto L73
            r19.resetConnection()     // Catch: java.lang.Throwable -> Lc3
        L73:
            android.content.Context r0 = r7.mContext     // Catch: java.lang.Throwable -> Lc3
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> Lc3
            r1 = 17040263(0x1040387, float:2.4247102E-38)
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> Lc3
            android.content.ComponentName r0 = android.content.ComponentName.unflattenFromString(r0)     // Catch: java.lang.Throwable -> Lc3
            android.content.Intent r1 = new android.content.Intent     // Catch: java.lang.Throwable -> Lc3
            r1.<init>()     // Catch: java.lang.Throwable -> Lc3
            r5 = r1
            r5.setComponent(r0)     // Catch: java.lang.Throwable -> Lc3
            com.android.internal.util.ScreenshotHelper$3 r16 = new com.android.internal.util.ScreenshotHelper$3     // Catch: java.lang.Throwable -> Lc3
            r1 = r16
            r2 = r19
            r3 = r14
            r4 = r22
            r17 = r0
            r0 = r5
            r5 = r21
            r18 = r6
            r6 = r13
            r1.<init>()     // Catch: java.lang.Throwable -> Lc3
            r1 = r16
            android.content.Context r2 = r7.mContext     // Catch: java.lang.Throwable -> Lc3
            android.os.UserHandle r3 = android.os.UserHandle.CURRENT     // Catch: java.lang.Throwable -> Lc3
            r4 = 67108865(0x4000001, float:1.504633E-36)
            boolean r2 = r2.bindServiceAsUser(r0, r1, r4, r3)     // Catch: java.lang.Throwable -> Lc3
            if (r2 == 0) goto Lb6
            r7.mScreenshotConnection = r1     // Catch: java.lang.Throwable -> Lc3
            r8.postDelayed(r13, r10)     // Catch: java.lang.Throwable -> Lc3
            goto Lbb
        Lb6:
            android.content.Context r2 = r7.mContext     // Catch: java.lang.Throwable -> Lc3
            r2.unbindService(r1)     // Catch: java.lang.Throwable -> Lc3
        Lbb:
        Lbc:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lc3
            return
        Lbe:
            r0 = move-exception
            r15 = r20
        Lc1:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lc3
            throw r0
        Lc3:
            r0 = move-exception
            goto Lc1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.ScreenshotHelper.takeScreenshotInternal(com.android.internal.util.ScreenshotRequest, android.os.Handler, java.util.function.Consumer, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$takeScreenshotInternal$0(Consumer completionConsumer) {
        synchronized (this.mScreenshotLock) {
            if (this.mScreenshotConnection != null) {
                Log.e(TAG, "Timed out before getting screenshot capture response");
                resetConnection();
                notifyScreenshotError();
            }
        }
        if (completionConsumer != null) {
            completionConsumer.accept(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetConnection() {
        ServiceConnection serviceConnection = this.mScreenshotConnection;
        if (serviceConnection != null) {
            this.mContext.unbindService(serviceConnection);
            this.mScreenshotConnection = null;
            this.mScreenshotService = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyScreenshotError() {
        ComponentName errorComponent = ComponentName.unflattenFromString(this.mContext.getResources().getString(R.string.config_screenshotErrorReceiverComponent));
        Intent errorIntent = new Intent(Intent.ACTION_USER_PRESENT);
        errorIntent.setComponent(errorComponent);
        errorIntent.addFlags(335544320);
        this.mContext.sendBroadcastAsUser(errorIntent, UserHandle.CURRENT);
    }
}
