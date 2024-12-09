package com.sec.internal.helper;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class PreciseAlarmManager {
    protected static final String INTENT_ALARM_TIMEOUT = "com.sec.internal.ims.imsservice.alarmmanager";
    private static final int KEEPALIVE_ALARM = 0;
    private static final String LOG_TAG = "PreciseAlarmManager";
    private static final int NON_KEEPALIVE_ALARM = 1;
    private static final int PRECISION = 250;
    private static final int WAKE_LOCK_TIMEOUT = 10000;
    private static volatile PreciseAlarmManager sInstance;
    Context mContext;
    private final BroadcastReceiver mIntentReceiver;
    SimpleEventLog mLog;
    PowerManager.WakeLock mWakeLock;
    Thread mThread = null;
    private final PriorityBlockingQueue<DelayedMessage> mTimers = new PriorityBlockingQueue<>();
    private final ArrayList<DelayedMessage> mExpiredMessages = new ArrayList<>();

    public static synchronized PreciseAlarmManager getInstance(Context context) {
        PreciseAlarmManager preciseAlarmManager;
        synchronized (PreciseAlarmManager.class) {
            if (sInstance == null) {
                synchronized (PreciseAlarmManager.class) {
                    if (sInstance == null) {
                        sInstance = new PreciseAlarmManager(context);
                        if (!isRoboUnitTest()) {
                            sInstance.start();
                        }
                    }
                }
            }
            preciseAlarmManager = sInstance;
        }
        return preciseAlarmManager;
    }

    public static boolean isRoboUnitTest() {
        return "robolectric".equals(Build.FINGERPRINT);
    }

    private PreciseAlarmManager(Context context) {
        this.mContext = null;
        this.mLog = null;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sec.internal.helper.PreciseAlarmManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Log.d(PreciseAlarmManager.LOG_TAG, "sendMessageDelayed: get intent, get wake lock for 10secs.");
                PreciseAlarmManager.this.mWakeLock.acquire(10000L);
            }
        };
        this.mIntentReceiver = broadcastReceiver;
        this.mContext = context;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ALARM_TIMEOUT);
        this.mContext.registerReceiver(broadcastReceiver, intentFilter);
        createWakelock();
        this.mLog = new SimpleEventLog(context, LOG_TAG, 500);
    }

    private void registerAlarmManager() {
        synchronized (this.mTimers) {
            if (this.mTimers.size() > 0) {
                Iterator<DelayedMessage> it = this.mTimers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    DelayedMessage next = it.next();
                    Message msg = next.getMsg();
                    if (msg != null && msg.getTarget() != null) {
                        Log.d(LOG_TAG, "next the soonest timer: " + next);
                        long timeout = next.getTimeout() - SystemClock.elapsedRealtime();
                        if (timeout > 0) {
                            Intent intent = new Intent(INTENT_ALARM_TIMEOUT);
                            intent.setPackage(this.mContext.getPackageName());
                            AlarmTimer.start(this.mContext, PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432), timeout);
                            break;
                        }
                    }
                    Log.e(LOG_TAG, "message is wrong do not handle");
                }
                if (!IMSLog.isShipBuild(true)) {
                    int size = this.mTimers.size();
                    Log.d(LOG_TAG, String.format(Locale.US, "registerAlarmManager: remaining top %d(size: %d)", Integer.valueOf(Math.min(10, size)), Integer.valueOf(size)));
                    Arrays.stream((DelayedMessage[]) this.mTimers.toArray(new DelayedMessage[0])).sorted().limit(10L).forEach(new Consumer() { // from class: com.sec.internal.helper.PreciseAlarmManager$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            PreciseAlarmManager.lambda$registerAlarmManager$0((DelayedMessage) obj);
                        }
                    });
                }
            } else {
                Log.d(LOG_TAG, "No pended alarm Timer. remove the registered timer from alarmManager.");
                Intent intent2 = new Intent(INTENT_ALARM_TIMEOUT);
                intent2.setPackage(this.mContext.getPackageName());
                AlarmTimer.stop(this.mContext, PendingIntent.getBroadcast(this.mContext, 0, intent2, 33554432));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$registerAlarmManager$0(DelayedMessage delayedMessage) {
        Log.d(LOG_TAG, "registerAlarmManager: " + delayedMessage);
    }

    public synchronized DelayedMessage sendMessageDelayed(Message message, long j) {
        DelayedMessage delayedMessage;
        delayedMessage = new DelayedMessage(message, j + SystemClock.elapsedRealtime());
        this.mTimers.put(delayedMessage);
        this.mLog.logAndAdd("sendMessageDelayed: " + delayedMessage + ", remaining timers: " + this.mTimers.size());
        registerAlarmManager();
        if (message.arg2 == 0) {
            checkNonKAMessageAndReleaseWakeLock();
        }
        return delayedMessage;
    }

    public synchronized void removeMessage(Message message) {
        removeMessage(new DelayedMessage(message));
    }

    public synchronized void removeMessage(DelayedMessage delayedMessage) {
        Log.d(LOG_TAG, "removeMessage: " + delayedMessage);
        this.mTimers.remove(delayedMessage);
        registerAlarmManager();
    }

    private void start() {
        Thread thread = new Thread(new Runnable() { // from class: com.sec.internal.helper.PreciseAlarmManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PreciseAlarmManager.this.lambda$start$1();
            }
        });
        this.mThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$1() {
        while (true) {
            int size = this.mTimers.size();
            if (size > 0) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Iterator<DelayedMessage> it = this.mTimers.iterator();
                while (it.hasNext()) {
                    DelayedMessage next = it.next();
                    Message msg = next.getMsg();
                    if (msg != null && msg.getTarget() != null) {
                        if (next.getTimeout() >= elapsedRealtime) {
                            break;
                        }
                        Log.d(LOG_TAG, "Expiring " + next);
                        this.mWakeLock.acquire(10000L);
                        if (msg.arg2 == 1) {
                            this.mExpiredMessages.add(next);
                        }
                        msg.sendToTarget();
                        it.remove();
                        Log.d(LOG_TAG, "remaining timers " + this.mTimers.size());
                    } else {
                        Log.e(LOG_TAG, "message is wrong do not handle");
                        it.remove();
                    }
                }
                if (this.mTimers.size() != size) {
                    registerAlarmManager();
                }
            }
            try {
                Thread.sleep(250L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private void createWakelock() {
        this.mWakeLock = ((PowerManager) this.mContext.getSystemService("power")).newWakeLock(1, "ImsService");
    }

    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of " + getClass().getSimpleName() + ":");
        this.mLog.dump();
    }

    private void checkNonKAMessageAndReleaseWakeLock() {
        Iterator<DelayedMessage> it = this.mExpiredMessages.iterator();
        while (it.hasNext()) {
            if (it.next().getTimeout() < SystemClock.elapsedRealtime() - 10000) {
                it.remove();
            }
        }
        Log.d(LOG_TAG, "remained recently expired timers are " + this.mExpiredMessages.size());
        if (this.mExpiredMessages.size() == 0 && this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
    }
}
