package com.sec.internal.ims.aec.util;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.log.AECLog;

/* loaded from: classes.dex */
public class ValidityTimer {
    private static final String LOG_TAG = "ValidityTimer";
    private final Context mContext;
    private final int mPhoneId;
    BroadcastReceiver mValidityReceiver;
    PendingIntent mVersionValidityPendingIntent = null;
    PendingIntent mTokenValidityPendingIntent = null;
    PendingIntent mPollIntervalPendingIntent = null;

    public ValidityTimer(Context context, int i, final Handler handler) {
        this.mContext = context;
        this.mPhoneId = i;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.aec.util.ValidityTimer.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (ValidityTimer.this.getActionVersionValidityTimeout().equals(intent.getAction())) {
                    AECLog.i(ValidityTimer.LOG_TAG, "version validity timer is expired", ValidityTimer.this.mPhoneId);
                    ValidityTimer.this.stopVersionValidityTimer();
                    handler.sendEmptyMessage(1010);
                } else if (ValidityTimer.this.getActionTokenValidityTimeout().equals(intent.getAction())) {
                    AECLog.i(ValidityTimer.LOG_TAG, "token validity timer is expired", ValidityTimer.this.mPhoneId);
                    ValidityTimer.this.stopTokenValidityTimer();
                    handler.sendEmptyMessage(1011);
                } else if (ValidityTimer.this.getActionPollIntervalTimer().equals(intent.getAction())) {
                    AECLog.i(ValidityTimer.LOG_TAG, "poll interval timer is expired", ValidityTimer.this.mPhoneId);
                    ValidityTimer.this.stopPollIntervalTimer();
                    handler.sendEmptyMessage(1013);
                }
            }
        };
        this.mValidityReceiver = broadcastReceiver;
        context.registerReceiver(broadcastReceiver, getIntentFilter());
    }

    protected String getActionVersionValidityTimeout() {
        return AECNamespace.Action.VERSION_VALIDITY_TIMEOUT + this.mPhoneId;
    }

    protected String getActionTokenValidityTimeout() {
        return AECNamespace.Action.TOKEN_VALIDITY_TIMEOUT + this.mPhoneId;
    }

    protected String getActionPollIntervalTimer() {
        return AECNamespace.Action.POLL_INTERVAL_TIMEOUT + this.mPhoneId;
    }

    protected IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(getActionVersionValidityTimeout());
        intentFilter.addAction(getActionTokenValidityTimeout());
        intentFilter.addAction(getActionPollIntervalTimer());
        return intentFilter;
    }

    public void unregisterReceiver() {
        BroadcastReceiver broadcastReceiver = this.mValidityReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mValidityReceiver = null;
        }
    }

    public void startVersionValidityTimer(int i) {
        if (i > 0) {
            AECLog.i(LOG_TAG, "startVersionValidityTimer: " + i + " sec", this.mPhoneId);
            stopVersionValidityTimer();
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, new Intent(getActionVersionValidityTimeout()), 67108864);
            this.mVersionValidityPendingIntent = broadcast;
            AlarmTimer.start(this.mContext, broadcast, ((long) i) * 1000);
        }
    }

    public void startTokenValidityTimer(int i) {
        if (i > 0) {
            AECLog.i(LOG_TAG, "startTokenValidityTimer: " + i + " sec", this.mPhoneId);
            stopTokenValidityTimer();
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, new Intent(getActionTokenValidityTimeout()), 67108864);
            this.mTokenValidityPendingIntent = broadcast;
            AlarmTimer.start(this.mContext, broadcast, ((long) i) * 1000);
        }
    }

    public void startPollIntervalTimer(int i) {
        if (i > 0) {
            AECLog.i(LOG_TAG, "startPollIntervalTimer: " + i + " sec", this.mPhoneId);
            stopPollIntervalTimer();
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, new Intent(getActionPollIntervalTimer()), 67108864);
            this.mPollIntervalPendingIntent = broadcast;
            AlarmTimer.start(this.mContext, broadcast, ((long) i) * 1000);
        }
    }

    public void stopVersionValidityTimer() {
        PendingIntent pendingIntent = this.mVersionValidityPendingIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mVersionValidityPendingIntent = null;
        }
    }

    public void stopTokenValidityTimer() {
        PendingIntent pendingIntent = this.mTokenValidityPendingIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mTokenValidityPendingIntent = null;
        }
    }

    public void stopPollIntervalTimer() {
        PendingIntent pendingIntent = this.mPollIntervalPendingIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mPollIntervalPendingIntent = null;
        }
    }
}
