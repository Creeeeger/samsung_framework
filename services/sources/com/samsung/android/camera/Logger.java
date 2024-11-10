package com.samsung.android.camera;

import android.util.Slog;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Queue;

/* loaded from: classes2.dex */
public class Logger {
    public static Logger[] mInstance = new Logger[ID.values().length];
    public Queue mLogQueue;

    /* loaded from: classes2.dex */
    public enum ID {
        CAMERA_EVENT,
        SHAKE_EVENT_LISTENER,
        REQUEST_INJECTOR_SERVICE,
        VISION_SERVER_RECEIVER,
        FOLD_EVENT,
        POST_PROCESS_EVENT,
        CAMERA_APPLICATION_EVENT,
        DATABASE_EVENT
    }

    public Logger() {
        this.mLogQueue = null;
        this.mLogQueue = new LinkedList();
        Slog.v("CameraService_worker/Logger", "New Logger Instance");
    }

    public static synchronized Logger getInstance(ID id) {
        Logger logger;
        synchronized (Logger.class) {
            if (mInstance[id.ordinal()] == null) {
                mInstance[id.ordinal()] = new Logger();
            }
            logger = mInstance[id.ordinal()];
        }
        return logger;
    }

    public static void log(ID id, String str) {
        try {
            getInstance(id).addLogInternal(String.format("%s, %s", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z", Locale.getDefault()).format(new Date()), str));
        } catch (Exception unused) {
        }
    }

    public final synchronized void addLogInternal(String str) {
        while (this.mLogQueue.size() >= 2000) {
            this.mLogQueue.remove();
        }
        this.mLogQueue.add(str);
    }

    public static void dumpLog(ID id, PrintWriter printWriter) {
        printWriter.println("\n\tDump of CameraServiceWorker " + id.name());
        getInstance(id).dumpLogInternal(printWriter);
    }

    public final synchronized void dumpLogInternal(PrintWriter printWriter) {
        Iterator it = this.mLogQueue.iterator();
        while (it.hasNext()) {
            printWriter.println("\t\t" + ((String) it.next()));
        }
    }
}
