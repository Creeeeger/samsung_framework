package com.android.systemui.media;

import android.app.INotificationPlayerOnCompletionListener;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import java.lang.Thread;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Vector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationPlayer implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
    public AudioManager mAudioManagerWithAudioFocus;
    public CreationAndCompletionThread mCompletionThread;
    public Looper mLooper;
    public MediaPlayer mPlayer;
    public final String mTag;
    public CmdThread mThread;
    public PowerManager.WakeLock mWakeLock;
    public final LinkedList mCmdQueue = new LinkedList();
    public final Object mCompletionHandlingLock = new Object();
    public final Object mPlayerLock = new Object();
    public final Object mQueueAudioFocusLock = new Object();
    public int mNotificationRampTimeMs = 0;
    public int mState = 2;
    public final IBinder mBinder = new Binder();
    public final Vector mOnCompletionListener = new Vector();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CmdThread extends Thread {
        public CmdThread() {
            super("NotificationPlayer-" + NotificationPlayer.this.mTag);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Command command;
            NotificationPlayer notificationPlayer;
            MediaPlayer mediaPlayer;
            while (true) {
                synchronized (NotificationPlayer.this.mCmdQueue) {
                    command = (Command) NotificationPlayer.this.mCmdQueue.removeFirst();
                }
                int i = command.code;
                if (i != 1) {
                    if (i == 2) {
                        synchronized (NotificationPlayer.this.mPlayerLock) {
                            notificationPlayer = NotificationPlayer.this;
                            mediaPlayer = notificationPlayer.mPlayer;
                            notificationPlayer.mPlayer = null;
                        }
                        if (mediaPlayer != null) {
                            long uptimeMillis = SystemClock.uptimeMillis() - command.requestTime;
                            if (uptimeMillis > 1000) {
                                Log.w(NotificationPlayer.this.mTag, "Notification stop delayed by " + uptimeMillis + "msecs");
                            }
                            try {
                                mediaPlayer.stop();
                            } catch (Exception unused) {
                            }
                            mediaPlayer.release();
                            synchronized (NotificationPlayer.this.mQueueAudioFocusLock) {
                                AudioManager audioManager = NotificationPlayer.this.mAudioManagerWithAudioFocus;
                                if (audioManager != null) {
                                    audioManager.abandonAudioFocus(null);
                                    NotificationPlayer.this.mAudioManagerWithAudioFocus = null;
                                }
                            }
                            synchronized (NotificationPlayer.this.mCompletionHandlingLock) {
                                Looper looper = NotificationPlayer.this.mLooper;
                                if (looper != null && looper.getThread().getState() != Thread.State.TERMINATED) {
                                    NotificationPlayer.this.mLooper.quit();
                                }
                            }
                        } else {
                            Log.w(notificationPlayer.mTag, "STOP command without a player");
                        }
                    }
                } else {
                    NotificationPlayer.m1289$$Nest$mstartSound(NotificationPlayer.this, command);
                }
                synchronized (NotificationPlayer.this.mCmdQueue) {
                    if (NotificationPlayer.this.mCmdQueue.size() == 0) {
                        break;
                    }
                }
            }
            NotificationPlayer notificationPlayer2 = NotificationPlayer.this;
            notificationPlayer2.mThread = null;
            PowerManager.WakeLock wakeLock = notificationPlayer2.mWakeLock;
            if (wakeLock != null) {
                wakeLock.release();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Command {
        public AudioAttributes attributes;
        public int code;
        public Context context;
        public boolean looping;
        public long requestTime;
        public Uri uri;

        private Command() {
        }

        public /* synthetic */ Command(int i) {
            this();
        }

        public final String toString() {
            return "{ code=" + this.code + " looping=" + this.looping + " attributes=" + this.attributes + " uri=" + this.uri + " }";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CreationAndCompletionThread extends Thread {
        public final Command mCmd;

        public CreationAndCompletionThread(Command command) {
            this.mCmd = command;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(19:3|4|5|6|7|9|10|(1:12)|13|(2:90|(3:98|164|109))(11:23|(3:25|(2:30|(1:32))|80)(11:81|(2:86|(12:88|34|(1:36)|37|38|39|40|41|238|(5:47|48|49|50|51)|54|55))|89|34|(0)|37|38|39|40|41|238)|79|34|(0)|37|38|39|40|41|238)|33|34|(0)|37|38|39|40|41|238) */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x01c3, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01c4, code lost:
        
            android.util.Log.e(r10.this$0.mTag, "Exception while sleeping to sync notification playback with ducking", r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:124:0x01fc A[Catch: all -> 0x027f, TryCatch #7 {, blocks: (B:4:0x000c, B:7:0x001c, B:10:0x0021, B:12:0x0027, B:13:0x003c, B:15:0x0049, B:17:0x0055, B:19:0x0065, B:21:0x0075, B:23:0x0085, B:25:0x0089, B:27:0x00a2, B:30:0x00b3, B:32:0x00c3, B:34:0x018e, B:36:0x01b0, B:37:0x01b3, B:39:0x01ba, B:40:0x01cd, B:41:0x0234, B:42:0x0238, B:47:0x0267, B:50:0x026c, B:51:0x026f, B:54:0x0272, B:55:0x0275, B:63:0x027b, B:78:0x01c4, B:80:0x00dc, B:81:0x00f5, B:83:0x010e, B:86:0x011f, B:88:0x012f, B:89:0x0139, B:90:0x0140, B:92:0x0146, B:94:0x014c, B:96:0x015a, B:98:0x0160, B:99:0x0164, B:113:0x018b, B:116:0x01d7, B:117:0x01db, B:119:0x01e1, B:124:0x01fc, B:125:0x01ef, B:128:0x0204, B:129:0x0224, B:135:0x022f, B:139:0x027e, B:131:0x0225, B:133:0x0229, B:134:0x022e, B:65:0x023b, B:67:0x0241, B:45:0x0264, B:72:0x024f, B:44:0x025e), top: B:3:0x000c, inners: #3, #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x01b0 A[Catch: Exception -> 0x01d1, all -> 0x027f, TryCatch #6 {Exception -> 0x01d1, blocks: (B:10:0x0021, B:12:0x0027, B:13:0x003c, B:15:0x0049, B:17:0x0055, B:19:0x0065, B:21:0x0075, B:23:0x0085, B:25:0x0089, B:27:0x00a2, B:30:0x00b3, B:32:0x00c3, B:34:0x018e, B:36:0x01b0, B:37:0x01b3, B:39:0x01ba, B:40:0x01cd, B:78:0x01c4, B:80:0x00dc, B:81:0x00f5, B:83:0x010e, B:86:0x011f, B:88:0x012f, B:89:0x0139, B:90:0x0140, B:92:0x0146, B:94:0x014c, B:96:0x015a, B:98:0x0160, B:99:0x0164, B:113:0x018b), top: B:9:0x0021 }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0239  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 642
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.NotificationPlayer.CreationAndCompletionThread.run():void");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: -$$Nest$mplayFallbackRingtone, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1288$$Nest$mplayFallbackRingtone(com.android.systemui.media.NotificationPlayer r10, com.android.systemui.media.NotificationPlayer.Command r11) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.NotificationPlayer.m1288$$Nest$mplayFallbackRingtone(com.android.systemui.media.NotificationPlayer, com.android.systemui.media.NotificationPlayer$Command):void");
    }

    /* renamed from: -$$Nest$mstartSound, reason: not valid java name */
    public static void m1289$$Nest$mstartSound(NotificationPlayer notificationPlayer, Command command) {
        notificationPlayer.getClass();
        try {
            synchronized (notificationPlayer.mCompletionHandlingLock) {
                Looper looper = notificationPlayer.mLooper;
                if (looper != null && looper.getThread().getState() != Thread.State.TERMINATED) {
                    notificationPlayer.mLooper.quit();
                }
                CreationAndCompletionThread creationAndCompletionThread = new CreationAndCompletionThread(command);
                notificationPlayer.mCompletionThread = creationAndCompletionThread;
                synchronized (creationAndCompletionThread) {
                    notificationPlayer.mCompletionThread.start();
                    notificationPlayer.mCompletionThread.wait();
                }
            }
            long uptimeMillis = SystemClock.uptimeMillis() - command.requestTime;
            if (uptimeMillis > 1000) {
                Log.w(notificationPlayer.mTag, "Notification sound delayed by " + uptimeMillis + "msecs");
            }
        } catch (Exception e) {
            Log.w(notificationPlayer.mTag, "error loading sound for " + command.uri, e);
            notificationPlayer.notifyError();
        }
    }

    public NotificationPlayer(String str) {
        if (str != null) {
            this.mTag = str;
        } else {
            this.mTag = "NotificationPlayer";
        }
    }

    public final void notifyError() {
        try {
            Iterator it = this.mOnCompletionListener.iterator();
            while (it.hasNext()) {
                INotificationPlayerOnCompletionListener iNotificationPlayerOnCompletionListener = (INotificationPlayerOnCompletionListener) it.next();
                Log.d(this.mTag, "error while playSound : unRegister EasyMute");
                iNotificationPlayerOnCompletionListener.onCompletion();
            }
        } catch (RemoteException unused) {
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        synchronized (this.mQueueAudioFocusLock) {
            AudioManager audioManager = this.mAudioManagerWithAudioFocus;
            if (audioManager != null) {
                audioManager.abandonAudioFocus(null);
                this.mAudioManagerWithAudioFocus = null;
            }
            try {
                Iterator it = this.mOnCompletionListener.iterator();
                while (it.hasNext()) {
                    ((INotificationPlayerOnCompletionListener) it.next()).onCompletion();
                }
            } catch (RemoteException unused) {
            }
        }
        synchronized (this.mCmdQueue) {
            synchronized (this.mCompletionHandlingLock) {
                if (this.mCmdQueue.size() == 0) {
                    Looper looper = this.mLooper;
                    if (looper != null) {
                        looper.quit();
                    }
                    this.mCompletionThread = null;
                }
            }
        }
        synchronized (this.mPlayerLock) {
            if (mediaPlayer == this.mPlayer) {
                this.mPlayer = null;
            }
        }
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Log.e(this.mTag, SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("error ", i, " (extra=", i2, ") playing notification"));
        onCompletion(mediaPlayer);
        return true;
    }

    public final void play(Context context, Uri uri, boolean z, AudioAttributes audioAttributes) {
        Command command = new Command(0);
        command.requestTime = SystemClock.uptimeMillis();
        command.code = 1;
        command.context = context;
        command.uri = uri;
        command.looping = z;
        command.attributes = audioAttributes;
        synchronized (this.mCmdQueue) {
            this.mCmdQueue.add(command);
            if (this.mThread == null) {
                PowerManager.WakeLock wakeLock = this.mWakeLock;
                if (wakeLock != null) {
                    wakeLock.acquire();
                }
                CmdThread cmdThread = new CmdThread();
                this.mThread = cmdThread;
                cmdThread.start();
            }
            this.mState = 1;
        }
    }

    public final void stop() {
        synchronized (this.mCmdQueue) {
            if (this.mState != 2) {
                Command command = new Command(0);
                command.requestTime = SystemClock.uptimeMillis();
                command.code = 2;
                this.mCmdQueue.add(command);
                if (this.mThread == null) {
                    PowerManager.WakeLock wakeLock = this.mWakeLock;
                    if (wakeLock != null) {
                        wakeLock.acquire();
                    }
                    CmdThread cmdThread = new CmdThread();
                    this.mThread = cmdThread;
                    cmdThread.start();
                }
                this.mState = 2;
            }
        }
    }
}
