package com.samsung.android.hardware.secinputdev.taas;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.SystemClock;
import android.os.UEventObserver;
import android.text.format.Time;
import android.util.Log;
import android.util.PerfLog;
import android.view.MotionEvent;
import android.view.SemSurfaceControl;
import android.view.SurfaceControl;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService;
import com.samsung.android.hardware.secinputdev.SemInputMotionEventDispatcher;
import java.io.PrintWriter;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class SemInputMonitorMotionEvent implements SemInputTaasInterface {
    private static final String TAAS_UEVENT = "DEVPATH=/devices/virtual/sec/tsp";
    private static final String TAG = "SemInputMonitorMotionEvent";
    private static final int TIMEOUT_MILLISECONDS = 1000;
    private boolean addedLogsFlag;
    private final StringBuilder bootingDump;
    private final long criteria;
    private long currentTime;
    private long deltaTime;
    private boolean detected;
    private boolean detectedUeventTaas;
    private SemInputMotionEventDispatcher dispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;
    private long hwDefectCnt;
    private long hwDefectTime;
    private final long idleTimeTotal;
    private final Context mContext;
    private final SemInputDeviceHqmHelper mHqmHelper;
    private final SemInputDeviceHqmData mHqmLoggingData;
    private final UEventObserver mTaasObserver;
    private SemInputMotionEventDispatcher.SemInputMotionEventListener motionEventListener;
    private long oldSurfaceBeginTime;
    private int prv_tool_type;
    private final ExecutorService threadPool;
    private final long touchInterval;
    private static long beginTime = 0;
    private static long endTime = 0;
    private static int touchCount = 0;
    private static int detectedUeventTaasCount = 0;

    public SemInputMonitorMotionEvent(Context context) {
        StringBuilder sb = new StringBuilder();
        this.bootingDump = sb;
        this.dispatcher = null;
        this.motionEventListener = new SemInputMotionEventDispatcher.SemInputMotionEventListener() { // from class: com.samsung.android.hardware.secinputdev.taas.SemInputMonitorMotionEvent.1
            @Override // com.samsung.android.hardware.secinputdev.SemInputMotionEventDispatcher.SemInputMotionEventListener
            public void onMotionEvent(MotionEvent event) {
                SemInputMonitorMotionEvent.this.monitorMotionEvent(event);
            }
        };
        this.hwDefectTime = 0L;
        this.hwDefectCnt = 0L;
        this.currentTime = 0L;
        this.touchInterval = 2000L;
        this.criteria = 1000L;
        this.idleTimeTotal = 12000L;
        this.deltaTime = 0L;
        this.detected = false;
        this.oldSurfaceBeginTime = 0L;
        this.addedLogsFlag = false;
        this.detectedUeventTaas = false;
        this.prv_tool_type = 1;
        this.mTaasObserver = new UEventObserver() { // from class: com.samsung.android.hardware.secinputdev.taas.SemInputMonitorMotionEvent.2
            public void onUEvent(UEventObserver.UEvent event) {
                Log.d(SemInputMonitorMotionEvent.TAG, "onUEvent(TAAS): " + event.toString());
                String result = event.get("RESULT");
                if ("RESET".equals(result) || "I2C".equals(result)) {
                    Time time = new Time();
                    time.setToNow();
                    SemInputMonitorMotionEvent.this.hwDefectTime = time.toMillis(true);
                    SemInputMonitorMotionEvent.this.hwDefectCnt++;
                }
                String taasResult = event.get("TAAS");
                if ("CASB".equals(taasResult) && !SemInputMonitorMotionEvent.this.detectedUeventTaas) {
                    SemInputMonitorMotionEvent.this.detectedUeventTaas = true;
                    SemInputMonitorMotionEvent.detectedUeventTaasCount++;
                    String case2Str = result + " count:" + Integer.toString(SemInputMonitorMotionEvent.detectedUeventTaasCount);
                    SemInputMonitorMotionEvent.this.trackCase2(case2Str);
                    Log.d(SemInputMonitorMotionEvent.TAG, "mTaasObserver thread casb start" + case2Str);
                    SemInputMonitorMotionEvent.detectedUeventTaasCount = 0;
                    Thread t = new Thread(new Runnable() { // from class: com.samsung.android.hardware.secinputdev.taas.SemInputMonitorMotionEvent.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Log.d(SemInputMonitorMotionEvent.TAG, "mTaasObserver thread casb start");
                                TimeUnit.MINUTES.sleep(30L);
                                Log.d(SemInputMonitorMotionEvent.TAG, "mTaasObserver thread casb end," + Integer.toString(SemInputMonitorMotionEvent.detectedUeventTaasCount));
                                SemInputMonitorMotionEvent.this.detectedUeventTaas = false;
                            } catch (InterruptedException e) {
                                Log.d(SemInputMonitorMotionEvent.TAG, "mTaasObserver thread: InterruptedException e:" + e.getMessage());
                            }
                        }
                    });
                    t.start();
                    return;
                }
                if ("CASB".equals(taasResult)) {
                    SemInputMonitorMotionEvent.detectedUeventTaasCount++;
                    Log.d(SemInputMonitorMotionEvent.TAG, "detectedUeventcnt(TAAS): " + Integer.toString(SemInputMonitorMotionEvent.detectedUeventTaasCount));
                }
            }
        };
        this.mHqmLoggingData = new SemInputDeviceHqmData();
        this.mContext = context;
        this.mHqmHelper = SemInputDeviceHqmHelper.getInstance(context);
        sendDataToHqm();
        HandlerThread handlerThread = new HandlerThread("TaasHandlerThread", -8);
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.threadPool = Executors.newSingleThreadExecutor();
        SemInputMotionEventDispatcher semInputMotionEventDispatcher = SemInputMotionEventDispatcher.getInstance(context);
        this.dispatcher = semInputMotionEventDispatcher;
        try {
            semInputMotionEventDispatcher.registerMotionEventListener(this.motionEventListener);
            sb.append("- SemInputMotionEventDispatcher registered\n");
        } catch (Exception e) {
            SemInputDeviceManagerService.loggingException(TAG, "register", e);
            this.bootingDump.append("- SemInputMotionEventDispatcher exception: " + e + "\n");
        }
        this.mTaasObserver.startObserving(TAAS_UEVENT);
        Log.d(TAG, "done");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void monitorMotionEvent(MotionEvent mEvent) {
        final int action = mEvent.getAction();
        final int toolType = mEvent.getToolType(0);
        this.handler.post(new Runnable() { // from class: com.samsung.android.hardware.secinputdev.taas.SemInputMonitorMotionEvent$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SemInputMonitorMotionEvent.this.lambda$monitorMotionEvent$0(action, toolType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$monitorMotionEvent$0(int action, int toolType) {
        trackCase1(action);
        trackCase3(toolType);
    }

    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v63 */
    private void trackCase1(int action) {
        boolean z;
        ?? r1;
        Time time = new Time();
        time.setToNow();
        long millis = time.toMillis(true);
        this.currentTime = millis;
        if (action != 0) {
            if (action == 1) {
                this.deltaTime = millis - beginTime;
                endTime = millis;
                if (this.detected) {
                    ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
                    List<ActivityManager.RunningTaskInfo> runningTask = activityManager.getRunningTasks(1);
                    if (runningTask == null) {
                        r1 = 0;
                    } else {
                        if (!runningTask.isEmpty()) {
                            String topActivityName = runningTask.get(0).topActivity.getClassName();
                            String packageName = runningTask.get(0).topActivity.getPackageName();
                            String logStr = topActivityName + " " + packageName;
                            PerfLog.d(17, "[sec_input] CASE1 ended " + (this.deltaTime / 1000) + "s tc " + touchCount + " " + topActivityName);
                            Log.d(TAG, "[sec_input] CASE1 ended " + (this.deltaTime / 1000) + "s tc " + touchCount + " " + topActivityName);
                            this.detected = false;
                            beginTime = this.currentTime;
                            touchCount = 0;
                            this.mHqmLoggingData.increaseCount(1, logStr);
                            sendDataToHqm();
                            return;
                        }
                        r1 = 0;
                    }
                    this.detected = r1;
                    beginTime = this.currentTime;
                    touchCount = r1;
                    return;
                }
                return;
            }
            touchCount++;
            if (!this.detected) {
                long j = millis - beginTime;
                this.deltaTime = j;
                if (j > 1000) {
                    if (!callSurfaceTimerStates(1000L)) {
                        beginTime = this.currentTime;
                        touchCount = 1;
                        return;
                    }
                    ActivityManager activityManager2 = (ActivityManager) this.mContext.getSystemService("activity");
                    List<ActivityManager.RunningTaskInfo> runningTask2 = activityManager2.getRunningTasks(1);
                    if (runningTask2 == null) {
                        z = true;
                    } else {
                        if (!runningTask2.isEmpty()) {
                            String topActivityName2 = runningTask2.get(0).topActivity.getClassName();
                            String packageName2 = runningTask2.get(0).topActivity.getPackageName();
                            String logStr2 = topActivityName2 + " " + packageName2;
                            if (this.hwDefectCnt != 0) {
                                PerfLog.d(17, "[sec_input] CASE1 " + (this.deltaTime / 1000) + "s tc " + touchCount + " hd " + ((this.currentTime - this.hwDefectTime) / 1000) + "s " + this.hwDefectCnt + " " + topActivityName2);
                                Log.d(TAG, "[sec_input] CASE1 " + (this.deltaTime / 1000) + "s tc " + touchCount + " hd " + ((this.currentTime - this.hwDefectTime) / 1000) + "s " + this.hwDefectCnt + " " + topActivityName2);
                            } else {
                                PerfLog.d(17, "[sec_input] CASE1 " + (this.deltaTime / 1000) + "s tc " + touchCount + " " + topActivityName2);
                                Log.d(TAG, "[sec_input] CASE1 " + (this.deltaTime / 1000) + "s tc " + touchCount + " " + topActivityName2);
                            }
                            this.detected = true;
                            this.mHqmLoggingData.increaseCount(1, logStr2);
                            sendDataToHqm();
                            return;
                        }
                        z = true;
                    }
                    this.detected = z;
                    return;
                }
                return;
            }
            return;
        }
        long j2 = millis - endTime;
        this.deltaTime = j2;
        if (touchCount == 0 || j2 > 2000) {
            beginTime = millis;
            touchCount = 1;
        }
    }

    private boolean callSurfaceTimerStates(long time) {
        FutureTask task = new FutureTask(new Callable() { // from class: com.samsung.android.hardware.secinputdev.taas.SemInputMonitorMotionEvent.3
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                return Boolean.valueOf(SemInputMonitorMotionEvent.this.getSurfaceTimerStates());
            }
        });
        this.threadPool.execute(task);
        try {
            boolean result = ((Boolean) task.get(time, TimeUnit.MILLISECONDS)).booleanValue();
            return result;
        } catch (InterruptedException e) {
            SemInputDeviceManagerService.loggingException(TAG, "callSurfaceTimerStates:Taas", e);
            return false;
        } catch (ExecutionException e2) {
            SemInputDeviceManagerService.loggingException(TAG, "callSurfaceTimerStates:Taas", e2);
            return false;
        } catch (TimeoutException e3) {
            Log.d(TAG, "failed to get callSurfaceTimerStates for time out");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getSurfaceTimerStates() {
        IBinder displayToken = SemSurfaceControl.getInternalDisplayToken();
        long surfaceForCurrentTime = SystemClock.uptimeMillis();
        if (displayToken != null) {
            SurfaceControl.IdleBeginTime timerStates = SurfaceControl.getIdleBeginTime(displayToken);
            if (timerStates == null) {
                Log.e(TAG, "No valid info found");
                return false;
            }
            long surfaceBeginTime = TimeUnit.NANOSECONDS.toMillis(timerStates.beginTimeIdle);
            if (this.addedLogsFlag && surfaceBeginTime == this.oldSurfaceBeginTime) {
                return false;
            }
            this.addedLogsFlag = false;
            if (surfaceForCurrentTime - surfaceBeginTime > 12000) {
                this.addedLogsFlag = true;
                this.oldSurfaceBeginTime = surfaceBeginTime;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackCase2(String str) {
        Log.d(TAG, "[sec_input] " + str);
        PerfLog.d(17, "[sec_input]" + str);
        this.mHqmLoggingData.increaseCount(2, str);
    }

    private void trackCase3(int cur_tool_type) {
        int i = this.prv_tool_type;
        if ((i != 1 && i != 2) || cur_tool_type == 1 || cur_tool_type == 2) {
            if (i == 1 || i == 2) {
                return;
            }
            if (cur_tool_type != 1 && cur_tool_type != 2) {
                return;
            }
        }
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> runningTask = activityManager.getRunningTasks(1);
        if (runningTask == null || runningTask.isEmpty()) {
            this.prv_tool_type = cur_tool_type;
            return;
        }
        String topActivityName = runningTask.get(0).topActivity.getClassName();
        String packageName = runningTask.get(0).topActivity.getPackageName();
        String logStr = topActivityName + " " + packageName;
        PerfLog.d(17, "[sec_input] CASE3 : " + this.prv_tool_type + "->" + cur_tool_type + " " + topActivityName);
        Log.d(TAG, "[sec_input] CASE3 : tool type change pre(" + this.prv_tool_type + ") : cur(" + cur_tool_type + ") : " + MotionEvent.toolTypeToString(cur_tool_type) + " " + topActivityName);
        this.prv_tool_type = cur_tool_type;
        this.mHqmLoggingData.increaseCount(3, logStr);
        sendDataToHqm();
    }

    private void sendDataToHqm() {
        this.mHqmHelper.sendHqmTspData(this.mHqmLoggingData);
    }

    @Override // com.samsung.android.hardware.secinputdev.taas.SemInputTaasInterface
    public void dump(PrintWriter pw) {
        pw.println("dumping SemInputMonitorMotionEvent");
        pw.print(this.bootingDump.toString());
    }

    @Override // com.samsung.android.hardware.secinputdev.taas.SemInputTaasInterface
    public void destroy() {
        SemInputMotionEventDispatcher semInputMotionEventDispatcher = this.dispatcher;
        if (semInputMotionEventDispatcher != null) {
            try {
                semInputMotionEventDispatcher.unregisterMotionEventListener(this.motionEventListener);
            } catch (Exception e) {
                SemInputDeviceManagerService.loggingException(TAG, "destroy", e);
            }
        }
    }
}
