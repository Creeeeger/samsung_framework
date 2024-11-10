package com.android.server.am;

import android.os.Process;
import android.util.Slog;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class BinderTransaction {
    public static Pattern sBinderPattern = Pattern.compile("\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)");
    public static String LOG_ERROR_HEADER = "ERROR: ";
    public static String LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION = "failed to get the binder transaction info of pid ";
    public static String LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES = "failed to get the process types, stack traces will not be added";
    public static String LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO = "failed to get whole binder transaction info from pid ";
    public static String LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST = "binder proc file not exist. drop pid ";
    public static String LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE = "binder proc file is not readable. drop pid ";
    public static String LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND = "binder proc file not found. drop pid ";
    public static String LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR = "binder proc file io error. drop pid ";
    public static String LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE = "could not get the pid of zygote";
    public static String LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE = "could not get the process type. drop pid ";

    /* loaded from: classes.dex */
    public class BinderProcsInfo {
        public ArrayList javaPids = new ArrayList();
        public ArrayList nativePids = new ArrayList();
        public ArrayList rawInfo = new ArrayList();
    }

    public BinderProcsInfo getInfo(final int i) {
        final BinderProcsInfo binderProcsInfo = new BinderProcsInfo();
        Thread thread = new Thread("BinderProcsCollector") { // from class: com.android.server.am.BinderTransaction.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                LinkedList linkedList = new LinkedList();
                LinkedList linkedList2 = new LinkedList();
                binderProcsInfo.rawInfo.add(BinderTransaction.this.makeBinderTransactionsLogHeader(i));
                linkedList.offer(Integer.valueOf(i));
                while (!linkedList.isEmpty()) {
                    int intValue = ((Integer) linkedList.pollFirst()).intValue();
                    if (!BinderTransaction.this.findBinderTransactions(intValue, linkedList, linkedList2, binderProcsInfo.rawInfo)) {
                        binderProcsInfo.rawInfo.add(BinderTransaction.this.makeBinderTransactionsErrorLog(BinderTransaction.LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION + Integer.toString(intValue)));
                    }
                }
                if (!BinderTransaction.this.separatePidsByProcessType(linkedList2, binderProcsInfo)) {
                    binderProcsInfo.rawInfo.add(BinderTransaction.this.makeBinderTransactionsErrorLog(BinderTransaction.LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES));
                }
                binderProcsInfo.rawInfo.add(BinderTransaction.this.makeBinderTransactionsLogFooter(i));
            }
        };
        thread.start();
        boolean z = false;
        try {
            thread.join(30000L);
            if (thread.isAlive()) {
                Slog.e("BinderTransaction", "ERROR! binderProc thread timed out! failed to get binder info.");
            } else {
                z = true;
            }
        } catch (InterruptedException unused) {
            Slog.w("BinderTransaction", "ERROR! binderProc thread has interrupted!");
        }
        if (z) {
            return binderProcsInfo;
        }
        BinderProcsInfo binderProcsInfo2 = new BinderProcsInfo();
        binderProcsInfo2.rawInfo.add(makeBinderTransactionsLogHeader(i));
        binderProcsInfo2.rawInfo.add(makeBinderTransactionsErrorLog(LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO + Integer.toString(i)));
        binderProcsInfo2.rawInfo.add(makeBinderTransactionsLogFooter(i));
        return binderProcsInfo2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x00c9, code lost:
    
        if (r12 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0137, code lost:
    
        if (r12 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00cb, code lost:
    
        r12.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean findBinderTransactions(int r16, java.util.LinkedList r17, java.util.LinkedList r18, java.util.ArrayList r19) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BinderTransaction.findBinderTransactions(int, java.util.LinkedList, java.util.LinkedList, java.util.ArrayList):boolean");
    }

    public final Matcher matchBinderTransactionLine(String str) {
        return sBinderPattern.matcher(str);
    }

    public final void parseBinderTransactionLine(Matcher matcher, String str, LinkedList linkedList, LinkedList linkedList2, ArrayList arrayList) {
        String group = matcher.group(1);
        Integer valueOf = Integer.valueOf(Integer.parseInt(matcher.group(6)));
        arrayList.add(str);
        if (valueOf.intValue() == 0 || !group.equals("outgoing") || linkedList2.contains(valueOf) || linkedList.contains(valueOf)) {
            return;
        }
        linkedList.offer(valueOf);
    }

    public final boolean separatePidsByProcessType(LinkedList linkedList, BinderProcsInfo binderProcsInfo) {
        int[] pidsForCommands = getPidsForCommands(new String[]{"zygote", "zygote64"});
        if (pidsForCommands == null || pidsForCommands.length <= 0) {
            Slog.e("BinderTransaction", "Could not get the pid of zygote.");
            binderProcsInfo.rawInfo.add(makeBinderTransactionsErrorLog(LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE));
            return false;
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int processTypeOfPid = getProcessTypeOfPid(num.intValue(), pidsForCommands);
            if (processTypeOfPid == 0) {
                binderProcsInfo.javaPids.add(num);
            } else if (processTypeOfPid == 1) {
                binderProcsInfo.nativePids.add(num);
            } else {
                Slog.w("BinderTransaction", "Could not get the process type. drop pid " + num);
                binderProcsInfo.rawInfo.add(makeBinderTransactionsErrorLog(LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE + Integer.toString(num.intValue())));
            }
        }
        return true;
    }

    public final int getProcessTypeOfPid(int i, int[] iArr) {
        int parentPid = getParentPid(i);
        if (parentPid <= -1) {
            return -1;
        }
        for (int i2 : iArr) {
            if (parentPid == i2) {
                return 0;
            }
        }
        return 1;
    }

    public final String makeBinderTransactionsLogHeader(int i) {
        return "----- binder transactions from pid " + Integer.toString(i) + " -----";
    }

    public final String makeBinderTransactionsLogFooter(int i) {
        return "----- end binder transactions " + Integer.toString(i) + " -----";
    }

    public final String makeBinderTransactionsErrorLog(String str) {
        return LOG_ERROR_HEADER + str;
    }

    public String getBinderProcFileName(int i) {
        String str = "/dev/binderfs/binder_logs/proc/" + Integer.toString(i);
        if (new File(str).exists()) {
            return str;
        }
        return "/sys/kernel/debug/binder/proc/" + Integer.toString(i);
    }

    public int[] getPidsForCommands(String[] strArr) {
        return Process.getPidsForCommands(strArr);
    }

    public int getParentPid(int i) {
        return Process.getParentPid(i);
    }
}
