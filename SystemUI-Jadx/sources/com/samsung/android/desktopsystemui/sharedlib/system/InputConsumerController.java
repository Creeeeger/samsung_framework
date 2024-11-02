package com.samsung.android.desktopsystemui.sharedlib.system;

import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.IWindowManager;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.WindowManagerGlobal;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class InputConsumerController {
    private static final String TAG = "[DS]InputConsumerController";
    private InputEventReceiver mInputEventReceiver;
    private InputListener mListener;
    private final String mName;
    private RegistrationListener mRegistrationListener;
    private final IBinder mToken = new Binder();
    private final IWindowManager mWindowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class InputEventReceiver extends BatchedInputEventReceiver {
        public InputEventReceiver(InputChannel inputChannel, Looper looper, Choreographer choreographer) {
            super(inputChannel, looper, choreographer);
        }

        public void onInputEvent(InputEvent inputEvent) {
            boolean z = true;
            try {
                if (InputConsumerController.this.mListener != null) {
                    z = InputConsumerController.this.mListener.onInputEvent(inputEvent);
                }
            } finally {
                finishInputEvent(inputEvent, true);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface InputListener {
        boolean onInputEvent(InputEvent inputEvent);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface RegistrationListener {
        void onRegistrationChanged(boolean z);
    }

    public InputConsumerController(IWindowManager iWindowManager, String str) {
        this.mWindowManager = iWindowManager;
        this.mName = str;
    }

    public static InputConsumerController getPipInputConsumer() {
        return new InputConsumerController(WindowManagerGlobal.getWindowManagerService(), "pip_input_consumer");
    }

    public static InputConsumerController getRecentsAnimationInputConsumer() {
        return new InputConsumerController(WindowManagerGlobal.getWindowManagerService(), "recents_animation_input_consumer");
    }

    public void dump(PrintWriter printWriter, String str) {
        boolean z;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "  ");
        StringBuilder m2 = ArrayLinkedVariables$$ExternalSyntheticOutline0.m(str);
        m2.append(TAG);
        printWriter.println(m2.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(m);
        sb.append("registered=");
        if (this.mInputEventReceiver != null) {
            z = true;
        } else {
            z = false;
        }
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z, printWriter);
    }

    public boolean isRegistered() {
        if (this.mInputEventReceiver != null) {
            return true;
        }
        return false;
    }

    public void registerInputConsumer() {
        registerInputConsumer(false);
    }

    public void setInputListener(InputListener inputListener) {
        this.mListener = inputListener;
    }

    public void setRegistrationListener(RegistrationListener registrationListener) {
        boolean z;
        this.mRegistrationListener = registrationListener;
        if (registrationListener != null) {
            if (this.mInputEventReceiver != null) {
                z = true;
            } else {
                z = false;
            }
            registrationListener.onRegistrationChanged(z);
        }
    }

    public void unregisterInputConsumer() {
        if (this.mInputEventReceiver != null) {
            try {
                this.mWindowManager.destroyInputConsumer(this.mName, 0);
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to destroy input consumer", e);
            }
            this.mInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
            RegistrationListener registrationListener = this.mRegistrationListener;
            if (registrationListener != null) {
                registrationListener.onRegistrationChanged(false);
            }
        }
    }

    public void registerInputConsumer(boolean z) {
        if (this.mInputEventReceiver == null) {
            InputChannel inputChannel = new InputChannel();
            try {
                this.mWindowManager.destroyInputConsumer(this.mName, 0);
                this.mWindowManager.createInputConsumer(this.mToken, this.mName, 0, inputChannel);
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to create input consumer", e);
            } catch (IllegalStateException e2) {
                Log.e(TAG, "registerInputConsumer: IllegalStateException : ", e2);
                try {
                    this.mWindowManager.destroyInputConsumer(this.mName, 0);
                    this.mWindowManager.createInputConsumer(this.mToken, this.mName, 0, inputChannel);
                } catch (RemoteException e3) {
                    Log.e(TAG, "Failed to create input consumer in 2nd attempt ", e3);
                } catch (IllegalStateException e4) {
                    Log.e(TAG, "registerInputConsumer: IllegalStateException in 2nd attempt : ", e4);
                }
            }
            this.mInputEventReceiver = new InputEventReceiver(inputChannel, Looper.myLooper(), z ? Choreographer.getSfInstance() : Choreographer.getInstance());
            RegistrationListener registrationListener = this.mRegistrationListener;
            if (registrationListener != null) {
                registrationListener.onRegistrationChanged(true);
            }
        }
    }
}
