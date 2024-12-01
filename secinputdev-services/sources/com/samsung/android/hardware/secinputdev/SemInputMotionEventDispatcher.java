package com.samsung.android.hardware.secinputdev;

import android.content.Context;
import android.hardware.input.InputManager;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.InputMonitor;
import android.view.MotionEvent;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;

/* loaded from: classes.dex */
public class SemInputMotionEventDispatcher {
    private static final String TAG = "SemInputMotionEventDispatcher";
    private static volatile SemInputMotionEventDispatcher uniqueInstance = null;
    private final Context context;
    private final ArrayList<SemInputMotionEventListener> listeners = new ArrayList<>();
    private InputMonitor inputMonitor = null;
    private InputEventReceiver inputEventReceiver = null;
    private HandlerThread inputHandlerThread = null;
    private final SemInputDumpsysData cancelDumpsys = new SemInputDumpsysData(20);

    public interface SemInputMotionEventListener {
        void onMotionEvent(MotionEvent motionEvent);
    }

    private SemInputMotionEventDispatcher(Context context) {
        this.context = context;
    }

    public static SemInputMotionEventDispatcher getInstance(Context context) {
        if (uniqueInstance == null) {
            synchronized (SemInputMotionEventDispatcher.class) {
                if (uniqueInstance == null) {
                    uniqueInstance = new SemInputMotionEventDispatcher(context);
                }
            }
        }
        return uniqueInstance;
    }

    public static boolean isCreated() {
        if (uniqueInstance == null) {
            return false;
        }
        return true;
    }

    private boolean checkSecurityPermission(String caller) {
        if (Process.myUid() == 1000) {
            return caller.contains("secinputdev") && caller.contains("SemInput");
        }
        Log.e(TAG, "SemInputMotionEventDispatcher only available from system UID.");
        return false;
    }

    public boolean registerMotionEventListener(SemInputMotionEventListener listener) {
        if (listener != null) {
            if (!checkSecurityPermission(listener.toString())) {
                throw new SecurityException("Only SemInput service can use it");
            }
            synchronized (this.listeners) {
                this.listeners.add(listener);
                if (this.listeners.size() == 1 && this.inputMonitor == null) {
                    registerInputEventReceiver();
                }
            }
            Log.d(TAG, "registerMotionEventListener: " + listener.toString());
            return true;
        }
        return false;
    }

    public boolean unregisterMotionEventListener(SemInputMotionEventListener listener) {
        if (listener == null) {
            return false;
        }
        if (!checkSecurityPermission(listener.toString())) {
            throw new SecurityException("Only SemInput service can use it");
        }
        synchronized (this.listeners) {
            if (!this.listeners.contains(listener)) {
                return false;
            }
            this.listeners.remove(listener);
            Log.d(TAG, "unregisterMotionEventListener: " + listener.toString());
            if (this.listeners.size() == 0) {
                unregisterInputEventReceiver();
            }
            return true;
        }
    }

    public void pilferPointers(SemInputMotionEventListener listener) {
        InputMonitor inputMonitor;
        if (listener != null) {
            if (!checkSecurityPermission(listener.toString())) {
                throw new SecurityException("Only SemInput service can use it");
            }
            synchronized (this.listeners) {
                if (this.listeners.contains(listener) && (inputMonitor = this.inputMonitor) != null) {
                    inputMonitor.pilferPointers();
                    Log.i(TAG, "cancel");
                    this.cancelDumpsys.createDataAndAddQueue(listener.toString());
                }
            }
        }
    }

    private void registerInputEventReceiver() {
        Context context = this.context;
        if (context == null) {
            Log.w(TAG, "registerInputEventReceiver: context is null");
            return;
        }
        int displayId = context.getDisplayId();
        try {
            InputMonitor monitorGestureInput = InputManager.getInstance().monitorGestureInput("secinputdev", displayId);
            this.inputMonitor = monitorGestureInput;
            if (monitorGestureInput == null) {
                return;
            }
            HandlerThread handlerThread = new HandlerThread(TAG, -2);
            this.inputHandlerThread = handlerThread;
            handlerThread.start();
            this.inputEventReceiver = new MyInputEventReceiver(this.inputMonitor.getInputChannel(), this.inputHandlerThread.getLooper());
            Log.d(TAG, "registerInputEventReceiver: displayId: " + displayId);
        } catch (Exception e) {
            SemInputDeviceManagerService.loggingException(TAG, "registerInputEventReceiver", e);
            throw e;
        }
    }

    private void unregisterInputEventReceiver() {
        InputEventReceiver inputEventReceiver = this.inputEventReceiver;
        if (inputEventReceiver != null) {
            inputEventReceiver.dispose();
            this.inputEventReceiver = null;
            Log.i(TAG, "unregisterInputEventReceiver: dispose InputEventReceiver");
        }
        InputMonitor inputMonitor = this.inputMonitor;
        if (inputMonitor != null) {
            inputMonitor.dispose();
            this.inputMonitor = null;
            Log.i(TAG, "unregisterInputEventReceiver: dispose InputMonitor");
        }
        HandlerThread handlerThread = this.inputHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.inputHandlerThread = null;
        }
    }

    private final class MyInputEventReceiver extends InputEventReceiver {
        public MyInputEventReceiver(InputChannel channel, Looper looper) {
            super(channel, looper);
        }

        public void onInputEvent(InputEvent event) {
            if (event instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) event;
                synchronized (SemInputMotionEventDispatcher.this.listeners) {
                    Iterator it = SemInputMotionEventDispatcher.this.listeners.iterator();
                    while (it.hasNext()) {
                        SemInputMotionEventListener listener = (SemInputMotionEventListener) it.next();
                        listener.onMotionEvent(motionEvent);
                    }
                }
            }
            finishInputEvent(event, true);
        }
    }

    public void dump(PrintWriter pw) {
        pw.println("dumping SemInputMotionEventDispatcher");
        HandlerThread handlerThread = this.inputHandlerThread;
        if (handlerThread != null) {
            handlerThread.getLooper().dump(new PrintWriterPrinter(pw), "- ");
        }
        ArrayList<SemInputMotionEventListener> copiedListeners = new ArrayList<>();
        synchronized (this.listeners) {
            copiedListeners.addAll(this.listeners);
        }
        if (copiedListeners.size() <= 0) {
            return;
        }
        pw.println("- registered listeners");
        Iterator<SemInputMotionEventListener> it = copiedListeners.iterator();
        while (it.hasNext()) {
            SemInputMotionEventListener listener = it.next();
            pw.println("  " + listener.toString());
        }
    }

    public void dumpEvents(PrintWriter pw) {
        Queue<String> queue = this.cancelDumpsys.getQueue();
        if (queue.size() != 0) {
            pw.println("- canceled MotionEvent: max " + this.cancelDumpsys.getMaxQueueSize());
            for (String data : queue) {
                pw.println("  " + data);
            }
            pw.println("  end canceled");
        }
    }
}
