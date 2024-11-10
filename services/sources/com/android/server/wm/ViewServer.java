package com.android.server.wm;

import android.os.IInstalld;
import android.util.Slog;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.wm.WindowManagerService;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public class ViewServer implements Runnable {
    public final int mPort;
    public ServerSocket mServer;
    public Thread mThread;
    public ExecutorService mThreadPool;
    public final WindowManagerService mWindowManager;

    public ViewServer(WindowManagerService windowManagerService, int i) {
        this.mWindowManager = windowManagerService;
        this.mPort = i;
    }

    public boolean start() {
        if (this.mThread != null) {
            return false;
        }
        this.mServer = new ServerSocket(this.mPort, 10, InetAddress.getLocalHost());
        this.mThread = new Thread(this, "Remote View Server [port=" + this.mPort + "]");
        this.mThreadPool = Executors.newFixedThreadPool(10);
        this.mThread.start();
        return true;
    }

    public boolean stop() {
        Thread thread = this.mThread;
        if (thread == null) {
            return false;
        }
        thread.interrupt();
        ExecutorService executorService = this.mThreadPool;
        if (executorService != null) {
            try {
                executorService.shutdownNow();
            } catch (SecurityException unused) {
                Slog.w(StartingSurfaceController.TAG, "Could not stop all view server threads");
            }
        }
        this.mThreadPool = null;
        this.mThread = null;
        try {
            this.mServer.close();
            this.mServer = null;
            return true;
        } catch (IOException unused2) {
            Slog.w(StartingSurfaceController.TAG, "Could not close the view server");
            return false;
        }
    }

    public boolean isRunning() {
        Thread thread = this.mThread;
        return thread != null && thread.isAlive();
    }

    @Override // java.lang.Runnable
    public void run() {
        while (Thread.currentThread() == this.mThread) {
            try {
                Socket accept = this.mServer.accept();
                ExecutorService executorService = this.mThreadPool;
                if (executorService != null) {
                    executorService.submit(new ViewServerWorker(accept));
                } else {
                    try {
                        accept.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                Slog.w(StartingSurfaceController.TAG, "Connection error: ", e2);
            }
        }
    }

    public static boolean writeValue(Socket socket, String str) {
        BufferedWriter bufferedWriter;
        boolean z = false;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), IInstalld.FLAG_FORCE);
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedWriter.write(str);
                bufferedWriter.write(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                bufferedWriter.flush();
                bufferedWriter.close();
                z = true;
            } catch (Exception unused2) {
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    bufferedWriter2.close();
                }
                return z;
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException unused4) {
        }
        return z;
    }

    /* loaded from: classes3.dex */
    public class ViewServerWorker implements Runnable, WindowManagerService.WindowChangeListener {
        public Socket mClient;
        public boolean mNeedWindowListUpdate = false;
        public boolean mNeedFocusedWindowUpdate = false;

        public ViewServerWorker(Socket socket) {
            this.mClient = socket;
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x00ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:67:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 247
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ViewServer.ViewServerWorker.run():void");
        }

        @Override // com.android.server.wm.WindowManagerService.WindowChangeListener
        public void windowsChanged() {
            synchronized (this) {
                this.mNeedWindowListUpdate = true;
                notifyAll();
            }
        }

        @Override // com.android.server.wm.WindowManagerService.WindowChangeListener
        public void focusChanged() {
            synchronized (this) {
                this.mNeedFocusedWindowUpdate = true;
                notifyAll();
            }
        }

        public final boolean windowManagerAutolistLoop() {
            boolean z;
            boolean z2;
            boolean z3;
            ViewServer.this.mWindowManager.addWindowChangeListener(this);
            BufferedWriter bufferedWriter = null;
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(this.mClient.getOutputStream()));
                    while (!Thread.interrupted()) {
                        try {
                            synchronized (this) {
                                while (true) {
                                    z = this.mNeedWindowListUpdate;
                                    if (z || this.mNeedFocusedWindowUpdate) {
                                        break;
                                    }
                                    wait();
                                }
                                z2 = false;
                                if (z) {
                                    this.mNeedWindowListUpdate = false;
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (this.mNeedFocusedWindowUpdate) {
                                    this.mNeedFocusedWindowUpdate = false;
                                    z2 = true;
                                }
                            }
                            if (z3) {
                                bufferedWriter2.write("LIST UPDATE\n");
                                bufferedWriter2.flush();
                            }
                            if (z2) {
                                bufferedWriter2.write("ACTION_FOCUS UPDATE\n");
                                bufferedWriter2.flush();
                            }
                        } catch (Exception unused) {
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                bufferedWriter.close();
                            }
                            ViewServer.this.mWindowManager.removeWindowChangeListener(this);
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException unused2) {
                                }
                            }
                            ViewServer.this.mWindowManager.removeWindowChangeListener(this);
                            throw th;
                        }
                    }
                    bufferedWriter2.close();
                } catch (Exception unused3) {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused4) {
            }
            ViewServer.this.mWindowManager.removeWindowChangeListener(this);
            return true;
        }
    }
}
