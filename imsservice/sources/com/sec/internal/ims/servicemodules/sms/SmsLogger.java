package com.sec.internal.ims.servicemodules.sms;

import android.util.Log;
import com.sec.internal.log.IMSLog;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class SmsLogger {
    private static final int LOG_BUFFER_SIZE = 100;
    private static final String TAG = "SmsLogger";
    private static ConcurrentHashMap<String, LinkedList<String>> mEventLogs = new ConcurrentHashMap<>();
    private static SmsLogger sInstance;

    public static synchronized SmsLogger getInstance() {
        SmsLogger smsLogger;
        synchronized (SmsLogger.class) {
            if (sInstance == null) {
                sInstance = new SmsLogger();
            }
            smsLogger = sInstance;
        }
        return smsLogger;
    }

    private String currentTime() {
        return new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.US).format(new Date());
    }

    public void add(String str, String str2) {
        LinkedList<String> orDefault = mEventLogs.getOrDefault(str, new LinkedList<>());
        synchronized (orDefault) {
            orDefault.add(currentTime() + "   " + str2);
            while (orDefault.size() > 100) {
                orDefault.removeFirst();
            }
        }
        mEventLogs.put(str, orDefault);
    }

    public void logAndAdd(String str, String str2) {
        Log.i(str, str2);
        add(str, str2);
    }

    public void dump() {
        IMSLog.dump(TAG, "Dump of SMS :");
        IMSLog.increaseIndent(TAG);
        for (Map.Entry<String, LinkedList<String>> entry : mEventLogs.entrySet()) {
            IMSLog.dump(TAG, entry.getKey());
            IMSLog.increaseIndent(TAG);
            LinkedList<String> value = entry.getValue();
            synchronized (value) {
                Iterator<String> it = value.iterator();
                while (it.hasNext()) {
                    IMSLog.dump(TAG, it.next());
                }
            }
            IMSLog.decreaseIndent(TAG);
        }
        IMSLog.decreaseIndent(TAG);
    }
}
