package com.sec.internal.helper;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IndentingPrintWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class SimpleEventLog {
    private final int LOG_FILE_RECORD_LIMIT;
    final Path LOG_PATH;
    private final String LOG_TAG;
    private final String NAME;
    ExecutorService mFileIOExecutor;
    ScheduledFuture<?> mFlushFuture;
    final List<String> mLogBuffer;
    ScheduledExecutorService mPeriodicExecutor;
    ScheduledFuture<?> mResizeFuture;

    public SimpleEventLog(Context context, String str, int i) {
        this.LOG_TAG = "SimpleEventLog";
        this.mLogBuffer = new ArrayList();
        this.NAME = str;
        this.LOG_FILE_RECORD_LIMIT = i;
        this.LOG_PATH = Paths.get(context.getFilesDir().getAbsolutePath(), str + ".log");
        this.mFileIOExecutor = Executors.newSingleThreadExecutor();
        this.mPeriodicExecutor = Executors.newSingleThreadScheduledExecutor();
        add("> Created (pid: " + Binder.getCallingPid() + ", binary: " + Build.VERSION.INCREMENTAL + ")");
    }

    public SimpleEventLog(Context context, int i, String str, int i2) {
        this(context, String.format(Locale.US, "%s_slot%d", str, Integer.valueOf(i)), i2);
    }

    public void add(String str) {
        synchronized (this.mLogBuffer) {
            this.mLogBuffer.add(new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.US).format(new Date()) + "   " + str);
        }
        try {
            ScheduledFuture<?> scheduledFuture = this.mFlushFuture;
            if (scheduledFuture == null || scheduledFuture.isDone()) {
                this.mFlushFuture = this.mPeriodicExecutor.schedule(new Callable() { // from class: com.sec.internal.helper.SimpleEventLog$$ExternalSyntheticLambda1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return SimpleEventLog.this.flush();
                    }
                }, 1L, TimeUnit.MINUTES);
            }
            ScheduledFuture<?> scheduledFuture2 = this.mResizeFuture;
            if (scheduledFuture2 == null || scheduledFuture2.isDone()) {
                this.mResizeFuture = this.mPeriodicExecutor.schedule(new Runnable() { // from class: com.sec.internal.helper.SimpleEventLog$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimpleEventLog.this.resize();
                    }
                }, 30L, TimeUnit.MINUTES);
            }
        } catch (OutOfMemoryError | RejectedExecutionException e) {
            IMSLog.e("SimpleEventLog", this.NAME + ": Failed to schedule periodic events. " + e);
        }
    }

    public void add(int i, String str) {
        add("slot[" + i + "]: " + str);
    }

    public void logAndAdd(String str) {
        Log.i(this.NAME, str);
        add(str);
    }

    public void debugLogAndAdd(String str, String str2) {
        Log.d(str, str2);
        add(str + ": " + str2);
    }

    public void infoLogAndAdd(String str, String str2) {
        Log.i(str, str2);
        add(str + ": " + str2);
    }

    public void logAndAdd(int i, String str) {
        logAndAdd("slot[" + i + "]: " + str);
    }

    public void logAndAdd(int i, IRegisterTask iRegisterTask, String str) {
        logAndAdd("slot[" + i + "]: [" + iRegisterTask.getProfile().getName() + "|" + iRegisterTask.getState() + "] " + str);
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        flushForDump();
        indentingPrintWriter.println("\nDump of " + this.NAME + ":");
        indentingPrintWriter.increaseIndent();
        try {
            Iterator<String> it = Files.readAllLines(this.LOG_PATH).iterator();
            while (it.hasNext()) {
                indentingPrintWriter.println(it.next());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        indentingPrintWriter.decreaseIndent();
    }

    public void dump() {
        flushForDump();
        IMSLog.dump(this.NAME, "EventLog(" + this.NAME + "):");
        IMSLog.increaseIndent(this.NAME);
        try {
            Iterator<String> it = Files.readAllLines(this.LOG_PATH).iterator();
            while (it.hasNext()) {
                IMSLog.dump(this.NAME, it.next());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        IMSLog.decreaseIndent(this.NAME);
    }

    CompletableFuture<Void> flush() {
        synchronized (this.mLogBuffer) {
            if (this.mLogBuffer.isEmpty()) {
                return CompletableFuture.completedFuture(null);
            }
            final ArrayList arrayList = new ArrayList(this.mLogBuffer);
            final CompletableFuture completableFuture = new CompletableFuture();
            this.mFileIOExecutor.submit(new Callable() { // from class: com.sec.internal.helper.SimpleEventLog$$ExternalSyntheticLambda3
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean lambda$flush$0;
                    lambda$flush$0 = SimpleEventLog.this.lambda$flush$0(completableFuture, arrayList);
                    return lambda$flush$0;
                }
            });
            return completableFuture.thenAccept(new Consumer() { // from class: com.sec.internal.helper.SimpleEventLog$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SimpleEventLog.this.lambda$flush$1((Integer) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$flush$0(CompletableFuture completableFuture, List list) throws Exception {
        return Boolean.valueOf(completableFuture.complete(Integer.valueOf(writeAll(list, StandardOpenOption.APPEND))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flush$1(Integer num) {
        synchronized (this.mLogBuffer) {
            if (num.intValue() > this.mLogBuffer.size()) {
                return;
            }
            this.mLogBuffer.subList(0, num.intValue()).clear();
        }
    }

    void flushForDump() {
        try {
            flush().get(200L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            logAndAdd(this.NAME + ": flush failed by " + e);
            e.printStackTrace();
        }
    }

    void resize() {
        try {
            this.mFileIOExecutor.submit(new Runnable() { // from class: com.sec.internal.helper.SimpleEventLog$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SimpleEventLog.this.lambda$resize$2();
                }
            });
        } catch (RejectedExecutionException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resize$2() {
        if (Files.exists(this.LOG_PATH, new LinkOption[0])) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                List<String> readAllLines = Files.readAllLines(this.LOG_PATH);
                int size = readAllLines.size();
                Log.i("SimpleEventLog", this.NAME + " Read written lines: " + size + "(" + (System.currentTimeMillis() - currentTimeMillis) + " ms)");
                int i = size - this.LOG_FILE_RECORD_LIMIT;
                if (i > 0) {
                    writeAll(readAllLines.subList(i, size), StandardOpenOption.TRUNCATE_EXISTING);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    int writeAll(List<String> list, OpenOption... openOptionArr) {
        List list2 = (List) Stream.of((Object[]) new StandardOpenOption[]{StandardOpenOption.CREATE, StandardOpenOption.WRITE}).collect(Collectors.toList());
        list2.addAll(Arrays.asList(openOptionArr));
        int i = 0;
        try {
            BufferedWriter newBufferedWriter = Files.newBufferedWriter(this.LOG_PATH, (OpenOption[]) list2.toArray(new OpenOption[0]));
            try {
                long currentTimeMillis = System.currentTimeMillis();
                for (String str : list) {
                    if (!TextUtils.isEmpty(str)) {
                        newBufferedWriter.write(str);
                        newBufferedWriter.newLine();
                    }
                    i++;
                }
                Log.d("SimpleEventLog", this.NAME + " File writing done: " + list.size() + "(" + (System.currentTimeMillis() - currentTimeMillis) + " ms)");
                if (newBufferedWriter != null) {
                    newBufferedWriter.close();
                }
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return i;
    }
}
