package com.android.server.location.injector;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.server.location.LocationServiceThread;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SystemEmergencyHelper extends EmergencyHelper {
    public final Context mContext;
    public boolean mIsInEmergencyCall;
    public TelephonyManager mTelephonyManager;
    public final EmergencyCallTelephonyCallback mEmergencyCallTelephonyCallback = new EmergencyCallTelephonyCallback();
    public long mEmergencyCallEndRealtimeMs = Long.MIN_VALUE;

    public SystemEmergencyHelper(Context context) {
        this.mContext = context;
    }

    public synchronized void onSystemReady() {
        if (this.mTelephonyManager != null) {
            return;
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(TelephonyManager.class);
        Objects.requireNonNull(telephonyManager);
        TelephonyManager telephonyManager2 = telephonyManager;
        this.mTelephonyManager = telephonyManager;
        telephonyManager.registerTelephonyCallback(LocationServiceThread.getExecutor(), this.mEmergencyCallTelephonyCallback);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.location.injector.SystemEmergencyHelper.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction())) {
                    synchronized (SystemEmergencyHelper.this) {
                        try {
                            SystemEmergencyHelper systemEmergencyHelper = SystemEmergencyHelper.this;
                            systemEmergencyHelper.mIsInEmergencyCall = systemEmergencyHelper.mTelephonyManager.isEmergencyNumber(intent.getStringExtra("android.intent.extra.PHONE_NUMBER"));
                        } catch (IllegalStateException e) {
                            Log.w("LocationManagerService", "Failed to call TelephonyManager.isEmergencyNumber().", e);
                        }
                    }
                }
            }
        }, new IntentFilter("android.intent.action.NEW_OUTGOING_CALL"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0033, code lost:
    
        if (r7.mTelephonyManager.isInEmergencySmsMode() != false) goto L21;
     */
    @Override // com.android.server.location.injector.EmergencyHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isInEmergency(long r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            android.telephony.TelephonyManager r0 = r7.mTelephonyManager     // Catch: java.lang.Throwable -> L38
            r1 = 0
            if (r0 != 0) goto L8
            monitor-exit(r7)
            return r1
        L8:
            long r2 = r7.mEmergencyCallEndRealtimeMs     // Catch: java.lang.Throwable -> L38
            r4 = -9223372036854775808
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r2 = 1
            if (r0 == 0) goto L1e
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L38
            long r5 = r7.mEmergencyCallEndRealtimeMs     // Catch: java.lang.Throwable -> L38
            long r3 = r3 - r5
            int r8 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r8 >= 0) goto L1e
            r8 = r2
            goto L1f
        L1e:
            r8 = r1
        L1f:
            boolean r9 = r7.mIsInEmergencyCall     // Catch: java.lang.Throwable -> L38
            if (r9 != 0) goto L35
            if (r8 != 0) goto L35
            android.telephony.TelephonyManager r8 = r7.mTelephonyManager     // Catch: java.lang.Throwable -> L38
            boolean r8 = r8.getEmergencyCallbackMode()     // Catch: java.lang.Throwable -> L38
            if (r8 != 0) goto L35
            android.telephony.TelephonyManager r8 = r7.mTelephonyManager     // Catch: java.lang.Throwable -> L38
            boolean r8 = r8.isInEmergencySmsMode()     // Catch: java.lang.Throwable -> L38
            if (r8 == 0) goto L36
        L35:
            r1 = r2
        L36:
            monitor-exit(r7)
            return r1
        L38:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.injector.SystemEmergencyHelper.isInEmergency(long):boolean");
    }

    /* loaded from: classes2.dex */
    public class EmergencyCallTelephonyCallback extends TelephonyCallback implements TelephonyCallback.CallStateListener {
        public EmergencyCallTelephonyCallback() {
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(int i) {
            if (i == 0) {
                synchronized (SystemEmergencyHelper.this) {
                    SystemEmergencyHelper systemEmergencyHelper = SystemEmergencyHelper.this;
                    if (systemEmergencyHelper.mIsInEmergencyCall) {
                        systemEmergencyHelper.mEmergencyCallEndRealtimeMs = SystemClock.elapsedRealtime();
                        SystemEmergencyHelper.this.mIsInEmergencyCall = false;
                    }
                }
            }
        }
    }
}
