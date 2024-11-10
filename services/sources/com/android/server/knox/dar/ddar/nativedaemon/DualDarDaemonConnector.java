package com.android.server.knox.dar.ddar.nativedaemon;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.android.server.knox.dar.ddar.DDLog;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class DualDarDaemonConnector implements Runnable, Handler.Callback {
    public INativeDaemonConnectorCallbacks mCallback;
    public final Looper mLooper;
    public OutputStream mOutputStream;
    public boolean mIsListening = true;
    public final Object mDaemonLock = new Object();
    public String mSocket = "ddar";
    public final ResponseQueue mResponseQueue = new ResponseQueue(10);
    public AtomicInteger mSequenceNumber = new AtomicInteger(0);

    public DualDarDaemonConnector(Looper looper, INativeDaemonConnectorCallbacks iNativeDaemonConnectorCallbacks) {
        this.mCallback = iNativeDaemonConnectorCallbacks;
        this.mLooper = looper;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.mIsListening) {
            try {
                listenToSocket();
            } catch (IOException e) {
                DDLog.e("DualDarDaemonConnector", "Error connectiong to DualDAR daemon in NativeDaemonConnector: " + e, new Object[0]);
                SystemClock.sleep(75L);
                this.mCallback.onDaemonDisconnected();
            }
        }
    }

    public synchronized NativeDaemonEvent executeSync(String str, String str2, Object... objArr) {
        NativeDaemonEvent remove;
        StringBuilder sb = new StringBuilder(800);
        int incrementAndGet = this.mSequenceNumber.incrementAndGet();
        makeCommand(sb, incrementAndGet, str, str2, objArr);
        String substring = sb.substring(0);
        synchronized (this.mDaemonLock) {
            if (this.mOutputStream == null) {
                DDLog.e("DualDarDaemonConnector", "Missing Output stream - cannot write commands!", new Object[0]);
            } else {
                try {
                    byte[] bytes = substring.getBytes(StandardCharsets.UTF_8);
                    this.mOutputStream.write(bytes);
                    Arrays.fill(bytes, (byte) 0);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            while (true) {
                DDLog.d("DualDarDaemonConnector", "Command Sent : sequence Number " + incrementAndGet + "task is " + str + " Command is " + str2, new Object[0]);
                remove = this.mResponseQueue.remove(incrementAndGet, str2, 60000);
                if (remove == null) {
                    DDLog.e("DualDarDaemonConnector", "timed-out waiting for response to " + str2, new Object[0]);
                    break;
                }
                if (!remove.isClassContinue()) {
                    break;
                }
            }
            if (remove != null && remove.isClassClientError()) {
                DDLog.e("DualDarDaemonConnector", "event = null or isClassClientError = true", new Object[0]);
            }
            sb.delete(0, sb.length());
        }
        return remove;
    }

    public static void makeCommand(StringBuilder sb, int i, String str, String str2, Object... objArr) {
        if (str2.indexOf(0) >= 0) {
            throw new IllegalArgumentException("Unexpected command: " + str2);
        }
        if (str2.indexOf(32) >= 0) {
            throw new IllegalArgumentException("Arguments must be separate from command");
        }
        sb.append(i);
        sb.append(' ');
        sb.append(str);
        sb.append(' ');
        sb.append(str2);
        for (Object obj : objArr) {
            String valueOf = String.valueOf(obj);
            if (valueOf.indexOf(0) >= 0) {
                throw new IllegalArgumentException("Unexpected argument: " + valueOf);
            }
            sb.append(' ');
            appendEscaped(sb, valueOf);
        }
        sb.append((char) 0);
    }

    public static void appendEscaped(StringBuilder sb, String str) {
        boolean z = str.indexOf(32) >= 0;
        if (z) {
            sb.append('\"');
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt == '\\') {
                sb.append("\\\\");
            } else {
                sb.append(charAt);
            }
        }
        if (z) {
            sb.append('\"');
        }
    }

    public void setIsListening(boolean z) {
        this.mIsListening = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void listenToSocket() {
        /*
            Method dump skipped, instructions count: 419
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.nativedaemon.DualDarDaemonConnector.listenToSocket():void");
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        String str = (String) message.obj;
        try {
            if (this.mCallback.onEvent(message.what, str, NativeDaemonEvent.unescapeArgs(str))) {
                return true;
            }
            DDLog.v("DualDarDaemonConnector", String.format("Unhandled event '%s'", str), new Object[0]);
            return true;
        } catch (Exception e) {
            DDLog.e("DualDarDaemonConnector", "Error handling '" + str + "': " + e, new Object[0]);
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class ResponseQueue {
        public int mMaxCount;
        public final LinkedList mPendingCmds = new LinkedList();

        /* loaded from: classes2.dex */
        public class PendingCmd {
            public int availableResponseCount;
            public final String cmd;
            public final int cmdNum;
            public BlockingQueue responses = new ArrayBlockingQueue(10);

            public PendingCmd(int i, String str) {
                this.cmdNum = i;
                this.cmd = str;
            }
        }

        public ResponseQueue(int i) {
            this.mMaxCount = i;
        }

        public void add(int i, NativeDaemonEvent nativeDaemonEvent) {
            PendingCmd pendingCmd;
            synchronized (this.mPendingCmds) {
                Iterator it = this.mPendingCmds.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        pendingCmd = null;
                        break;
                    } else {
                        pendingCmd = (PendingCmd) it.next();
                        if (pendingCmd.cmdNum == i) {
                            break;
                        }
                    }
                }
                if (pendingCmd == null) {
                    while (this.mPendingCmds.size() >= this.mMaxCount) {
                        DDLog.e("DualDarDaemonConnector", "more buffered than allowed: " + this.mPendingCmds.size() + " >= " + this.mMaxCount, new Object[0]);
                        PendingCmd pendingCmd2 = (PendingCmd) this.mPendingCmds.remove();
                        DDLog.e("DualDarDaemonConnector", "Removing request: " + pendingCmd2.cmd + " (" + pendingCmd2.cmdNum + ")", new Object[0]);
                    }
                    pendingCmd = new PendingCmd(i, null);
                    this.mPendingCmds.add(pendingCmd);
                }
                int i2 = pendingCmd.availableResponseCount + 1;
                pendingCmd.availableResponseCount = i2;
                if (i2 == 0) {
                    this.mPendingCmds.remove(pendingCmd);
                }
            }
            try {
                pendingCmd.responses.put(nativeDaemonEvent);
            } catch (InterruptedException unused) {
            }
        }

        public NativeDaemonEvent remove(int i, String str, int i2) {
            NativeDaemonEvent nativeDaemonEvent;
            PendingCmd pendingCmd;
            synchronized (this.mPendingCmds) {
                Iterator it = this.mPendingCmds.iterator();
                while (true) {
                    nativeDaemonEvent = null;
                    if (!it.hasNext()) {
                        pendingCmd = null;
                        break;
                    }
                    pendingCmd = (PendingCmd) it.next();
                    if (pendingCmd.cmdNum == i) {
                        break;
                    }
                }
                if (pendingCmd == null) {
                    pendingCmd = new PendingCmd(i, str);
                    this.mPendingCmds.add(pendingCmd);
                }
                int i3 = pendingCmd.availableResponseCount - 1;
                pendingCmd.availableResponseCount = i3;
                if (i3 == 0) {
                    this.mPendingCmds.remove(pendingCmd);
                }
            }
            try {
                nativeDaemonEvent = (NativeDaemonEvent) pendingCmd.responses.poll(i2, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
            }
            if (nativeDaemonEvent == null) {
                DDLog.e("DualDarDaemonConnector", "Timeout waiting for response", new Object[0]);
            }
            return nativeDaemonEvent;
        }
    }
}
