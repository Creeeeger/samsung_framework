package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.os.PowerManager;
import android.os.SemSystemProperties;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.Mno;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* loaded from: classes.dex */
class KeepAliveSender {
    private static final int KEEPALIVE_INTERVAL = 2000;
    private static final int KEEPALIVE_INTERVAL_CMCC = 8000;
    private static final String PERSIST_VZW_KEEPALIVE = "persist.sys.ims.vzw.keepalive";
    private Context mContext;
    String mIpAddr;
    private Mno mMno;
    int mPort;
    private ImsRegistration mRegistration;
    private PowerManager.WakeLock mWakeLock;
    private String LOG_TAG = KeepAliveSender.class.getSimpleName();
    private final Object mLock = new Object();
    private Thread mTask = null;
    private volatile boolean mIsRunning = false;

    public KeepAliveSender(Context context, ImsRegistration imsRegistration, String str, int i, Mno mno) {
        this.mContext = null;
        this.mRegistration = null;
        this.mMno = Mno.DEFAULT;
        this.mWakeLock = null;
        this.mContext = context;
        this.mRegistration = imsRegistration;
        this.mMno = mno;
        this.mIpAddr = str;
        this.mPort = i;
        this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, this.LOG_TAG + "KeepAlive");
    }

    public void start() {
        Log.i(this.LOG_TAG, "KeepAliveSender: start: ");
        if (this.mTask != null) {
            Log.i(this.LOG_TAG, "KeepAliveSender: start() - already running.");
            return;
        }
        if (SemSystemProperties.getBoolean("persist.sys.ims.blockvzwka", false)) {
            Log.i(this.LOG_TAG, "KeepAliveSender: blocked by system properties!");
            return;
        }
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.acquire();
            Log.i(this.LOG_TAG, "KeepAliveSender: acquire WakeLock");
        }
        this.mIsRunning = true;
        if (this.mMno == Mno.VZW) {
            SemSystemProperties.set(PERSIST_VZW_KEEPALIVE, "1");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.sec.internal.ims.servicemodules.volte2.KeepAliveSender$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                KeepAliveSender.this.lambda$start$0();
            }
        });
        this.mTask = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0() {
        DatagramSocket datagramSocket;
        try {
            datagramSocket = new DatagramSocket(45016);
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
        try {
            InetAddress byName = InetAddress.getByName(this.mIpAddr);
            byte[] bArr = {13, 10, 13, 10};
            ImsRegistration imsRegistration = this.mRegistration;
            if (imsRegistration != null) {
                imsRegistration.getNetwork().bindSocket(datagramSocket);
            }
            boolean z = false;
            while (true) {
                if ((!this.mMno.isChn() && !this.mMno.isOneOf(Mno.VIVA_BAHRAIN, Mno.ETISALAT_UAE)) || z) {
                    if (this.mMno == Mno.VZW) {
                        boolean equals = SemSystemProperties.get(PERSIST_VZW_KEEPALIVE, "").equals("1");
                        Log.d(this.LOG_TAG, "KeepAliveSender: isAllowedByProperty=" + equals);
                        if (equals) {
                            Log.i(this.LOG_TAG, "KeepAliveSender: send dummy.txt UDP to [" + this.mIpAddr + "]:" + this.mPort + " ...");
                            datagramSocket.send(new DatagramPacket(bArr, 4, byName, this.mPort));
                        }
                    } else {
                        Log.i(this.LOG_TAG, "KeepAliveSender: send dummy.txt UDP to [" + this.mIpAddr + "]:" + this.mPort + " ...");
                        datagramSocket.send(new DatagramPacket(bArr, 4, byName, this.mPort));
                    }
                }
                if (this.mMno.isOneOf(Mno.CMCC, Mno.VIVA_BAHRAIN, Mno.ETISALAT_UAE)) {
                    Thread.sleep(8000L);
                } else {
                    Thread.sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                }
                synchronized (this.mLock) {
                    if (!this.mIsRunning) {
                        break;
                    }
                }
                z = true;
            }
            datagramSocket.close();
            this.mIsRunning = false;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void stop() {
        if (this.mTask == null) {
            return;
        }
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.mWakeLock.release();
            Log.i(this.LOG_TAG, "KeepAliveSender: release WakeLock");
        }
        Log.i(this.LOG_TAG, "KeepAliveSender: stop");
        synchronized (this.mLock) {
            this.mIsRunning = false;
        }
        this.mTask.interrupt();
        try {
            this.mTask.join(100L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        this.mTask = null;
    }
}
