package android.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public class AsyncPlayer {
    private static final int PLAY = 1;
    private static final int STOP = 2;
    private static final boolean mDebug = false;
    private MediaPlayer mPlayer;
    private String mTag;
    private Thread mThread;
    private PowerManager.WakeLock mWakeLock;
    private final LinkedList<Command> mCmdQueue = new LinkedList<>();
    private int mState = 2;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Command {
        AudioAttributes attributes;
        int code;
        Context context;
        boolean looping;
        long requestTime;
        Uri uri;

        private Command() {
        }

        public String toString() {
            return "{ code=" + this.code + " looping=" + this.looping + " attr=" + this.attributes + " uri=" + this.uri + " }";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSound(Command cmd) {
        try {
            MediaPlayer player = new MediaPlayer();
            player.setAudioAttributes(cmd.attributes);
            player.setDataSource(cmd.context, cmd.uri);
            player.setLooping(cmd.looping);
            player.prepare();
            player.start();
            MediaPlayer mediaPlayer = this.mPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            this.mPlayer = player;
            long delay = SystemClock.uptimeMillis() - cmd.requestTime;
            if (delay > 1000) {
                Log.w(this.mTag, "Notification sound delayed by " + delay + "msecs");
            }
        } catch (Exception e) {
            Log.w(this.mTag, "error loading sound for " + cmd.uri, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class Thread extends java.lang.Thread {
        Thread() {
            super("AsyncPlayer-" + AsyncPlayer.this.mTag);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r7 = this;
            L1:
                r0 = 0
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                java.util.LinkedList r1 = android.media.AsyncPlayer.m2139$$Nest$fgetmCmdQueue(r1)
                monitor-enter(r1)
                android.media.AsyncPlayer r2 = android.media.AsyncPlayer.this     // Catch: java.lang.Throwable -> La4
                java.util.LinkedList r2 = android.media.AsyncPlayer.m2139$$Nest$fgetmCmdQueue(r2)     // Catch: java.lang.Throwable -> La4
                java.lang.Object r2 = r2.removeFirst()     // Catch: java.lang.Throwable -> La4
                android.media.AsyncPlayer$Command r2 = (android.media.AsyncPlayer.Command) r2     // Catch: java.lang.Throwable -> La4
                r0 = r2
                monitor-exit(r1)     // Catch: java.lang.Throwable -> La4
                int r1 = r0.code
                r2 = 0
                switch(r1) {
                    case 1: goto L79;
                    case 2: goto L1e;
                    default: goto L1d;
                }
            L1d:
                goto L7f
            L1e:
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                android.media.MediaPlayer r1 = android.media.AsyncPlayer.m2140$$Nest$fgetmPlayer(r1)
                if (r1 == 0) goto L6d
                long r3 = android.os.SystemClock.uptimeMillis()
                long r5 = r0.requestTime
                long r3 = r3 - r5
                r5 = 1000(0x3e8, double:4.94E-321)
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 <= 0) goto L55
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                java.lang.String r1 = android.media.AsyncPlayer.m2141$$Nest$fgetmTag(r1)
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "Notification stop delayed by "
                java.lang.StringBuilder r5 = r5.append(r6)
                java.lang.StringBuilder r5 = r5.append(r3)
                java.lang.String r6 = "msecs"
                java.lang.StringBuilder r5 = r5.append(r6)
                java.lang.String r5 = r5.toString()
                android.util.Log.w(r1, r5)
            L55:
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                android.media.MediaPlayer r1 = android.media.AsyncPlayer.m2140$$Nest$fgetmPlayer(r1)
                r1.stop()
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                android.media.MediaPlayer r1 = android.media.AsyncPlayer.m2140$$Nest$fgetmPlayer(r1)
                r1.release()
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                android.media.AsyncPlayer.m2142$$Nest$fputmPlayer(r1, r2)
                goto L7f
            L6d:
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                java.lang.String r1 = android.media.AsyncPlayer.m2141$$Nest$fgetmTag(r1)
                java.lang.String r3 = "STOP command without a player"
                android.util.Log.w(r1, r3)
                goto L7f
            L79:
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                android.media.AsyncPlayer.m2145$$Nest$mstartSound(r1, r0)
            L7f:
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this
                java.util.LinkedList r3 = android.media.AsyncPlayer.m2139$$Nest$fgetmCmdQueue(r1)
                monitor-enter(r3)
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this     // Catch: java.lang.Throwable -> La1
                java.util.LinkedList r1 = android.media.AsyncPlayer.m2139$$Nest$fgetmCmdQueue(r1)     // Catch: java.lang.Throwable -> La1
                int r1 = r1.size()     // Catch: java.lang.Throwable -> La1
                if (r1 != 0) goto L9e
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this     // Catch: java.lang.Throwable -> La1
                android.media.AsyncPlayer.m2143$$Nest$fputmThread(r1, r2)     // Catch: java.lang.Throwable -> La1
                android.media.AsyncPlayer r1 = android.media.AsyncPlayer.this     // Catch: java.lang.Throwable -> La1
                android.media.AsyncPlayer.m2144$$Nest$mreleaseWakeLock(r1)     // Catch: java.lang.Throwable -> La1
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La1
                return
            L9e:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La1
                goto L1
            La1:
                r1 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> La1
                throw r1
            La4:
                r2 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> La4
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: android.media.AsyncPlayer.Thread.run():void");
        }
    }

    public AsyncPlayer(String tag) {
        if (tag != null) {
            this.mTag = tag;
        } else {
            this.mTag = "AsyncPlayer";
        }
    }

    public void play(Context context, Uri uri, boolean looping, int stream) {
        PlayerBase.deprecateStreamTypeForPlayback(stream, "AsyncPlayer", "play()");
        if (context == null || uri == null) {
            return;
        }
        try {
            play(context, uri, looping, new AudioAttributes.Builder().setInternalLegacyStreamType(stream).build());
        } catch (IllegalArgumentException e) {
            Log.e(this.mTag, "Call to deprecated AsyncPlayer.play() method caused:", e);
        }
    }

    public void play(Context context, Uri uri, boolean looping, AudioAttributes attributes) throws IllegalArgumentException {
        if (context == null || uri == null || attributes == null) {
            throw new IllegalArgumentException("Illegal null AsyncPlayer.play() argument");
        }
        Command cmd = new Command();
        cmd.requestTime = SystemClock.uptimeMillis();
        cmd.code = 1;
        cmd.context = context;
        cmd.uri = uri;
        cmd.looping = looping;
        cmd.attributes = attributes;
        synchronized (this.mCmdQueue) {
            enqueueLocked(cmd);
            this.mState = 1;
        }
    }

    public void stop() {
        synchronized (this.mCmdQueue) {
            if (this.mState != 2) {
                Command cmd = new Command();
                cmd.requestTime = SystemClock.uptimeMillis();
                cmd.code = 2;
                enqueueLocked(cmd);
                this.mState = 2;
            }
        }
    }

    private void enqueueLocked(Command cmd) {
        this.mCmdQueue.add(cmd);
        if (this.mThread == null) {
            acquireWakeLock();
            Thread thread = new Thread();
            this.mThread = thread;
            thread.start();
        }
    }

    public void setUsesWakeLock(Context context) {
        if (this.mWakeLock != null || this.mThread != null) {
            throw new RuntimeException("assertion failed mWakeLock=" + this.mWakeLock + " mThread=" + this.mThread);
        }
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mWakeLock = pm.newWakeLock(1, this.mTag);
    }

    private void acquireWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.acquire();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.release();
        }
    }
}
