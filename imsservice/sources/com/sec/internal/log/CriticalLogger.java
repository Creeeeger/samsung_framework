package com.sec.internal.log;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.ims.settings.SettingsProvider$$ExternalSyntheticLambda4;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class CriticalLogger {
    private static final long FLUSH_TIMEOUT = 500;
    private static final String IMS_CR_LOG_PATH = "/data/log/imscr/imscr.log";
    static final int LIMIT_LOG_RECORD = 30;
    static final int MAX_LOG_SIZE = 1048576;
    private static final String NAME = "IMSCR";
    static final int NUM_OF_LOGS = 5;
    private static final long SAVE_PERIOD = 600000;
    protected LogFileManager mLogFileManager;
    private LoggingHandler mLoggingHandler;
    private HandlerThread mLoggingThread;
    private static final SimpleDateFormat LOG_TIME_FORMAT = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US);
    private static ArrayList<Object> mBuffer = new ArrayList<>(31);

    private CriticalLogger() {
        init();
    }

    public static CriticalLogger getInstance() {
        return HOLDER.INSTANCE;
    }

    void init() {
        HandlerThread handlerThread = new HandlerThread(NAME);
        this.mLoggingThread = handlerThread;
        handlerThread.start();
        this.mLoggingHandler = new LoggingHandler(this.mLoggingThread.getLooper());
        LogFileManager logFileManager = new LogFileManager(IMS_CR_LOG_PATH, MAX_LOG_SIZE, 5);
        this.mLogFileManager = logFileManager;
        logFileManager.init();
    }

    int getLogRecordCount() {
        return mBuffer.size();
    }

    Looper getLooper() {
        return this.mLoggingHandler.getLooper();
    }

    public void write(int i, String str) {
        SimpleDateFormat simpleDateFormat = LOG_TIME_FORMAT;
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        StringBuilder sb = new StringBuilder(String.format("%s 0x%08X", simpleDateFormat.format(new Date()), Integer.valueOf(i)));
        if (!TextUtils.isEmpty(str)) {
            if (str.length() > 50) {
                str = str.substring(0, 50);
            }
            sb.append(":");
            sb.append(str);
        }
        String sb2 = sb.toString();
        Log.e("#IMSCR", sb2);
        LoggingHandler loggingHandler = this.mLoggingHandler;
        loggingHandler.sendMessage(loggingHandler.obtainMessage(1, sb2));
        if (this.mLoggingHandler.hasMessages(2)) {
            return;
        }
        this.mLoggingHandler.sendEmptyMessageDelayed(2, SAVE_PERIOD);
    }

    public void flush() {
        Log.e("#IMSCR", "Flush " + mBuffer.size());
        if (this.mLoggingHandler.hasMessages(2)) {
            this.mLoggingHandler.removeMessages(2);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        LoggingHandler loggingHandler = this.mLoggingHandler;
        loggingHandler.sendMessage(loggingHandler.obtainMessage(2, countDownLatch));
        try {
            countDownLatch.await(FLUSH_TIMEOUT, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
        }
    }

    private static class HOLDER {
        private static final CriticalLogger INSTANCE = new CriticalLogger();

        private HOLDER() {
        }
    }

    private class LoggingHandler extends Handler {
        static final int EVENT_ADD = 1;
        static final int EVENT_SAVE = 2;

        LoggingHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                CriticalLogger.mBuffer.add(message.obj);
                if (CriticalLogger.mBuffer.size() >= 30) {
                    save(null);
                    return;
                }
                return;
            }
            if (i != 2) {
                return;
            }
            save((CountDownLatch) message.obj);
            removeMessages(2);
            sendEmptyMessageDelayed(2, CriticalLogger.SAVE_PERIOD);
        }

        private void save(CountDownLatch countDownLatch) {
            if (!CriticalLogger.mBuffer.isEmpty()) {
                CriticalLogger.this.mLogFileManager.write((String) CriticalLogger.mBuffer.stream().map(new SettingsProvider$$ExternalSyntheticLambda4()).collect(Collectors.joining("\n", "", "\n")));
                CriticalLogger.mBuffer.clear();
            }
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }
}
