package com.android.server.display;

import android.content.Context;
import android.os.Handler;
import android.os.Trace;
import android.util.FloatProperty;
import android.view.Choreographer;
import android.view.Display;
import com.android.server.power.PowerManagerUtil;
import com.android.server.power.Slog;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public final class DisplayPowerState {
    public static String COUNTER_COLOR_FADE = "ColorFadeLevel";
    public final DisplayBlanker mBlanker;
    public Runnable mCleanListener;
    public final ColorFade mColorFade;
    public boolean mColorFadeDrawPending;
    public float mColorFadeLevel;
    public boolean mColorFadePrepared;
    public boolean mColorFadeReady;
    public final int mDisplayId;
    public final PhotonicModulator mPhotonicModulator;
    public float mScreenBrightness;
    public boolean mScreenReady;
    public int mScreenState;
    public boolean mScreenUpdatePending;
    public float mSdrScreenBrightness;
    public volatile boolean mStopped;
    public static final FloatProperty COLOR_FADE_LEVEL = new FloatProperty("electronBeamLevel") { // from class: com.android.server.display.DisplayPowerState.1
        @Override // android.util.FloatProperty
        public void setValue(DisplayPowerState displayPowerState, float f) {
            displayPowerState.setColorFadeLevel(f);
        }

        @Override // android.util.Property
        public Float get(DisplayPowerState displayPowerState) {
            return Float.valueOf(displayPowerState.getColorFadeLevel());
        }
    };
    public static final FloatProperty SCREEN_BRIGHTNESS_FLOAT = new FloatProperty("screenBrightnessFloat") { // from class: com.android.server.display.DisplayPowerState.2
        @Override // android.util.FloatProperty
        public void setValue(DisplayPowerState displayPowerState, float f) {
            displayPowerState.setScreenBrightness(f);
        }

        @Override // android.util.Property
        public Float get(DisplayPowerState displayPowerState) {
            return Float.valueOf(displayPowerState.getScreenBrightness());
        }
    };
    public static final FloatProperty SCREEN_SDR_BRIGHTNESS_FLOAT = new FloatProperty("sdrScreenBrightnessFloat") { // from class: com.android.server.display.DisplayPowerState.3
        @Override // android.util.FloatProperty
        public void setValue(DisplayPowerState displayPowerState, float f) {
            displayPowerState.setSdrScreenBrightness(f);
        }

        @Override // android.util.Property
        public Float get(DisplayPowerState displayPowerState) {
            return Float.valueOf(displayPowerState.getSdrScreenBrightness());
        }
    };
    public final Runnable mScreenUpdateRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerState.4
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerState.this.mScreenUpdatePending = false;
            int i = DisplayPowerState.this.mScreenState;
            float f = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
            float f2 = (i == 1 || DisplayPowerState.this.mColorFadeLevel <= DisplayPowerController2.RATE_FROM_DOZE_TO_ON) ? 0.0f : DisplayPowerState.this.mScreenBrightness;
            if (DisplayPowerState.this.mScreenState != 1 && DisplayPowerState.this.mColorFadeLevel > DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
                f = DisplayPowerState.this.mSdrScreenBrightness;
            }
            if (DisplayPowerState.this.mPhotonicModulator.setState(DisplayPowerState.this.mScreenState, f2, f)) {
                DisplayPowerState.this.mScreenReady = true;
                DisplayPowerState.this.invokeCleanListenerIfNeeded();
            }
        }
    };
    public final Runnable mColorFadeDrawRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerState.5
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerState.this.mColorFadeDrawPending = false;
            if (DisplayPowerState.this.mColorFadePrepared) {
                DisplayPowerState.this.mColorFade.draw(DisplayPowerState.this.mColorFadeLevel);
                Trace.traceCounter(131072L, DisplayPowerState.COUNTER_COLOR_FADE, Math.round(DisplayPowerState.this.mColorFadeLevel * 100.0f));
            }
            DisplayPowerState.this.mColorFadeReady = true;
            DisplayPowerState.this.invokeCleanListenerIfNeeded();
        }
    };
    public final Handler mHandler = new Handler(true);
    public final Choreographer mChoreographer = Choreographer.getInstance();

    public DisplayPowerState(DisplayBlanker displayBlanker, ColorFade colorFade, int i, int i2) {
        this.mBlanker = displayBlanker;
        this.mColorFade = colorFade;
        PhotonicModulator photonicModulator = new PhotonicModulator();
        this.mPhotonicModulator = photonicModulator;
        photonicModulator.start();
        this.mDisplayId = i;
        this.mScreenState = i2;
        float f = i2 != 1 ? 1.0f : DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
        this.mScreenBrightness = f;
        this.mSdrScreenBrightness = f;
        scheduleScreenUpdate();
        this.mColorFadePrepared = false;
        this.mColorFadeLevel = 1.0f;
        this.mColorFadeReady = true;
    }

    public void setScreenState(int i) {
        if (this.mScreenState != i) {
            this.mScreenState = i;
            this.mScreenReady = false;
            scheduleScreenUpdate();
        }
    }

    public int getScreenState() {
        return this.mScreenState;
    }

    public void setSdrScreenBrightness(float f) {
        if (this.mSdrScreenBrightness != f) {
            this.mSdrScreenBrightness = f;
            if (this.mScreenState != 1) {
                this.mScreenReady = false;
                scheduleScreenUpdate();
            }
        }
    }

    public float getSdrScreenBrightness() {
        return this.mSdrScreenBrightness;
    }

    public void setScreenBrightness(float f) {
        if (this.mScreenBrightness != f) {
            this.mScreenBrightness = f;
            if (this.mScreenState != 1) {
                this.mScreenReady = false;
                scheduleScreenUpdate();
            }
        }
    }

    public float getScreenBrightness() {
        return this.mScreenBrightness;
    }

    public boolean prepareColorFade(Context context, int i) {
        PowerManagerUtil.ScreenOffProfiler screenOffProfiler = PowerManagerUtil.sCurrentScreenOffProfiler;
        screenOffProfiler.noteCfPrepareStart();
        ColorFade colorFade = this.mColorFade;
        if (colorFade == null || !colorFade.prepare(context, i)) {
            this.mColorFadePrepared = false;
            this.mColorFadeReady = true;
            return false;
        }
        screenOffProfiler.noteCfPrepareEnd();
        this.mColorFadePrepared = true;
        this.mColorFadeReady = false;
        scheduleColorFadeDraw();
        return true;
    }

    public void dismissColorFade() {
        Trace.traceCounter(131072L, COUNTER_COLOR_FADE, 100);
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dismiss();
        }
        this.mColorFadePrepared = false;
        this.mColorFadeReady = true;
    }

    public void dismissColorFadeResources() {
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dismissResources();
        }
    }

    public void setColorFadeLevel(float f) {
        float f2 = this.mColorFadeLevel;
        if (f2 != f) {
            if (f2 == 0.0d) {
                Slog.dk("DisplayPowerState", "ColorFade exit displayId=" + this.mDisplayId);
            } else if (f == 0.0d) {
                Slog.dk("DisplayPowerState", "ColorFade entry displayId=" + this.mDisplayId);
            }
            this.mColorFadeLevel = f;
            if (this.mScreenState != 1) {
                this.mScreenReady = false;
                scheduleScreenUpdate();
            }
            if (this.mColorFadePrepared) {
                this.mColorFadeReady = false;
                scheduleColorFadeDraw();
            }
        }
    }

    public float getColorFadeLevel() {
        return this.mColorFadeLevel;
    }

    public boolean waitUntilClean(Runnable runnable) {
        if (!this.mScreenReady || !this.mColorFadeReady) {
            this.mCleanListener = runnable;
            return false;
        }
        this.mCleanListener = null;
        return true;
    }

    public void stop() {
        this.mStopped = true;
        this.mPhotonicModulator.interrupt();
        dismissColorFade();
        this.mCleanListener = null;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println();
        printWriter.println("Display Power State:");
        printWriter.println("  mStopped=" + this.mStopped);
        printWriter.println("  mScreenState=" + Display.stateToString(this.mScreenState));
        printWriter.println("  mScreenBrightness=" + this.mScreenBrightness);
        printWriter.println("  mSdrScreenBrightness=" + this.mSdrScreenBrightness);
        printWriter.println("  mScreenReady=" + this.mScreenReady);
        printWriter.println("  mScreenUpdatePending=" + this.mScreenUpdatePending);
        printWriter.println("  mColorFadePrepared=" + this.mColorFadePrepared);
        printWriter.println("  mColorFadeLevel=" + this.mColorFadeLevel);
        printWriter.println("  mColorFadeReady=" + this.mColorFadeReady);
        printWriter.println("  mColorFadeDrawPending=" + this.mColorFadeDrawPending);
        this.mPhotonicModulator.dump(printWriter);
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dump(printWriter);
        }
    }

    public void resetScreenState() {
        this.mScreenState = 0;
        this.mScreenReady = false;
    }

    public final void scheduleScreenUpdate() {
        if (this.mScreenUpdatePending) {
            return;
        }
        this.mScreenUpdatePending = true;
        postScreenUpdateThreadSafe();
    }

    public final void postScreenUpdateThreadSafe() {
        this.mHandler.removeCallbacks(this.mScreenUpdateRunnable);
        this.mHandler.post(this.mScreenUpdateRunnable);
    }

    public final void scheduleColorFadeDraw() {
        if (this.mColorFadeDrawPending) {
            return;
        }
        this.mColorFadeDrawPending = true;
        this.mChoreographer.postCallback(3, this.mColorFadeDrawRunnable, null);
    }

    public final void invokeCleanListenerIfNeeded() {
        Runnable runnable = this.mCleanListener;
        if (runnable != null && this.mScreenReady && this.mColorFadeReady) {
            this.mCleanListener = null;
            runnable.run();
        }
    }

    /* loaded from: classes2.dex */
    public final class PhotonicModulator extends Thread {
        public float mActualBacklight;
        public float mActualSdrBacklight;
        public int mActualState;
        public boolean mBacklightChangeInProgress;
        public final Object mLock;
        public float mPendingBacklight;
        public float mPendingSdrBacklight;
        public int mPendingState;
        public boolean mStateChangeInProgress;

        public PhotonicModulator() {
            super("PhotonicModulator");
            this.mLock = new Object();
            this.mPendingState = 0;
            this.mPendingBacklight = Float.NaN;
            this.mPendingSdrBacklight = Float.NaN;
            this.mActualState = 0;
            this.mActualBacklight = Float.NaN;
            this.mActualSdrBacklight = Float.NaN;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0034 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x003e A[Catch: all -> 0x0057, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:9:0x0012, B:15:0x004f, B:18:0x0055, B:23:0x0020, B:25:0x002a, B:33:0x003a, B:35:0x003e, B:39:0x0046, B:41:0x004a), top: B:3:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x004a A[Catch: all -> 0x0057, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:9:0x0012, B:15:0x004f, B:18:0x0055, B:23:0x0020, B:25:0x002a, B:33:0x003a, B:35:0x003e, B:39:0x0046, B:41:0x004a), top: B:3:0x0003 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean setState(int r6, float r7, float r8) {
            /*
                r5 = this;
                java.lang.Object r0 = r5.mLock
                monitor-enter(r0)
                int r1 = r5.mPendingState     // Catch: java.lang.Throwable -> L57
                r2 = 1
                r3 = 0
                if (r6 == r1) goto Lb
                r1 = r2
                goto Lc
            Lb:
                r1 = r3
            Lc:
                float r4 = r5.mPendingBacklight     // Catch: java.lang.Throwable -> L57
                int r4 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
                if (r4 != 0) goto L1b
                float r4 = r5.mPendingSdrBacklight     // Catch: java.lang.Throwable -> L57
                int r4 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r4 == 0) goto L19
                goto L1b
            L19:
                r4 = r3
                goto L1c
            L1b:
                r4 = r2
            L1c:
                if (r1 != 0) goto L20
                if (r4 == 0) goto L4f
            L20:
                r5.mPendingState = r6     // Catch: java.lang.Throwable -> L57
                r5.mPendingBacklight = r7     // Catch: java.lang.Throwable -> L57
                r5.mPendingSdrBacklight = r8     // Catch: java.lang.Throwable -> L57
                boolean r6 = r5.mStateChangeInProgress     // Catch: java.lang.Throwable -> L57
                if (r6 != 0) goto L31
                boolean r7 = r5.mBacklightChangeInProgress     // Catch: java.lang.Throwable -> L57
                if (r7 == 0) goto L2f
                goto L31
            L2f:
                r7 = r3
                goto L32
            L31:
                r7 = r2
            L32:
                if (r1 != 0) goto L39
                if (r6 == 0) goto L37
                goto L39
            L37:
                r6 = r3
                goto L3a
            L39:
                r6 = r2
            L3a:
                r5.mStateChangeInProgress = r6     // Catch: java.lang.Throwable -> L57
                if (r4 != 0) goto L45
                boolean r6 = r5.mBacklightChangeInProgress     // Catch: java.lang.Throwable -> L57
                if (r6 == 0) goto L43
                goto L45
            L43:
                r6 = r3
                goto L46
            L45:
                r6 = r2
            L46:
                r5.mBacklightChangeInProgress = r6     // Catch: java.lang.Throwable -> L57
                if (r7 != 0) goto L4f
                java.lang.Object r6 = r5.mLock     // Catch: java.lang.Throwable -> L57
                r6.notifyAll()     // Catch: java.lang.Throwable -> L57
            L4f:
                boolean r5 = r5.mStateChangeInProgress     // Catch: java.lang.Throwable -> L57
                if (r5 != 0) goto L54
                goto L55
            L54:
                r2 = r3
            L55:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
                return r2
            L57:
                r5 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerState.PhotonicModulator.setState(int, float, float):boolean");
        }

        public void dump(PrintWriter printWriter) {
            synchronized (this.mLock) {
                printWriter.println();
                printWriter.println("Photonic Modulator State:");
                printWriter.println("  mPendingState=" + Display.stateToString(this.mPendingState));
                printWriter.println("  mPendingBacklight=" + this.mPendingBacklight);
                printWriter.println("  mPendingSdrBacklight=" + this.mPendingSdrBacklight);
                printWriter.println("  mActualState=" + Display.stateToString(this.mActualState));
                printWriter.println("  mActualBacklight=" + this.mActualBacklight);
                printWriter.println("  mActualSdrBacklight=" + this.mActualSdrBacklight);
                printWriter.println("  mStateChangeInProgress=" + this.mStateChangeInProgress);
                printWriter.println("  mBacklightChangeInProgress=" + this.mBacklightChangeInProgress);
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(18:3|4|(1:6)(1:52)|7|(12:12|(1:14)|(1:16)|(1:50)(1:20)|(1:24)|49|29|30|31|32|33|34)|51|(0)|(0)|(1:18)|50|(1:24)|49|29|30|31|32|33|34) */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
        
            if (r3 != false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x006c, code lost:
        
            if (r9.this$0.mStopped != false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x006f, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0045, code lost:
        
            r9.mActualState = r1;
            r9.mActualBacklight = r5;
            r9.mActualSdrBacklight = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x004c, code lost:
        
            r9.this$0.mBlanker.requestDisplayState(r9.this$0.mDisplayId, r1, r5, r6);
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[Catch: all -> 0x0072, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:9:0x0018, B:14:0x0024, B:16:0x002d, B:18:0x0031, B:45:0x0045, B:46:0x004b, B:29:0x005c, B:31:0x0060, B:32:0x0070, B:37:0x0066, B:40:0x006e), top: B:3:0x0003, inners: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x002d A[Catch: all -> 0x0072, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:9:0x0018, B:14:0x0024, B:16:0x002d, B:18:0x0031, B:45:0x0045, B:46:0x004b, B:29:0x005c, B:31:0x0060, B:32:0x0070, B:37:0x0066, B:40:0x006e), top: B:3:0x0003, inners: #0 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r9 = this;
            L0:
                java.lang.Object r0 = r9.mLock
                monitor-enter(r0)
                int r1 = r9.mPendingState     // Catch: java.lang.Throwable -> L72
                int r2 = r9.mActualState     // Catch: java.lang.Throwable -> L72
                r3 = 1
                r4 = 0
                if (r1 == r2) goto Ld
                r2 = r3
                goto Le
            Ld:
                r2 = r4
            Le:
                float r5 = r9.mPendingBacklight     // Catch: java.lang.Throwable -> L72
                float r6 = r9.mPendingSdrBacklight     // Catch: java.lang.Throwable -> L72
                float r7 = r9.mActualBacklight     // Catch: java.lang.Throwable -> L72
                int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r7 != 0) goto L21
                float r7 = r9.mActualSdrBacklight     // Catch: java.lang.Throwable -> L72
                int r7 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
                if (r7 == 0) goto L1f
                goto L21
            L1f:
                r7 = r4
                goto L22
            L21:
                r7 = r3
            L22:
                if (r2 != 0) goto L2b
                com.android.server.display.DisplayPowerState r8 = com.android.server.display.DisplayPowerState.this     // Catch: java.lang.Throwable -> L72
                com.android.server.display.DisplayPowerState.m5567$$Nest$mpostScreenUpdateThreadSafe(r8)     // Catch: java.lang.Throwable -> L72
                r9.mStateChangeInProgress = r4     // Catch: java.lang.Throwable -> L72
            L2b:
                if (r7 != 0) goto L2f
                r9.mBacklightChangeInProgress = r4     // Catch: java.lang.Throwable -> L72
            L2f:
                if (r1 == 0) goto L39
                boolean r8 = java.lang.Float.isNaN(r5)     // Catch: java.lang.Throwable -> L72
                if (r8 != 0) goto L39
                r8 = r3
                goto L3a
            L39:
                r8 = r4
            L3a:
                if (r2 != 0) goto L40
                if (r7 == 0) goto L3f
                goto L40
            L3f:
                r3 = r4
            L40:
                if (r8 == 0) goto L5c
                if (r3 != 0) goto L45
                goto L5c
            L45:
                r9.mActualState = r1     // Catch: java.lang.Throwable -> L72
                r9.mActualBacklight = r5     // Catch: java.lang.Throwable -> L72
                r9.mActualSdrBacklight = r6     // Catch: java.lang.Throwable -> L72
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
                com.android.server.display.DisplayPowerState r0 = com.android.server.display.DisplayPowerState.this
                com.android.server.display.DisplayBlanker r0 = com.android.server.display.DisplayPowerState.m5552$$Nest$fgetmBlanker(r0)
                com.android.server.display.DisplayPowerState r2 = com.android.server.display.DisplayPowerState.this
                int r2 = com.android.server.display.DisplayPowerState.m5556$$Nest$fgetmDisplayId(r2)
                r0.requestDisplayState(r2, r1, r5, r6)
                goto L0
            L5c:
                r9.mStateChangeInProgress = r4     // Catch: java.lang.Throwable -> L72
                r9.mBacklightChangeInProgress = r4     // Catch: java.lang.Throwable -> L72
                java.lang.Object r1 = r9.mLock     // Catch: java.lang.InterruptedException -> L66 java.lang.Throwable -> L72
                r1.wait()     // Catch: java.lang.InterruptedException -> L66 java.lang.Throwable -> L72
                goto L70
            L66:
                com.android.server.display.DisplayPowerState r1 = com.android.server.display.DisplayPowerState.this     // Catch: java.lang.Throwable -> L72
                boolean r1 = com.android.server.display.DisplayPowerState.m5561$$Nest$fgetmStopped(r1)     // Catch: java.lang.Throwable -> L72
                if (r1 == 0) goto L70
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
                return
            L70:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
                goto L0
            L72:
                r9 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerState.PhotonicModulator.run():void");
        }
    }
}
