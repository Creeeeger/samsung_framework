package com.sec.internal.ims.entitlement.softphone;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class VSimClient extends StateMachine {
    private static AtomicInteger sNextSerial = new AtomicInteger();
    private final String LOG_TAG;
    protected final State mDefaultState;

    public VSimClient(Looper looper) {
        super("VSimClient", looper);
        this.mDefaultState = new DefaultState();
        this.LOG_TAG = getClass().getSimpleName();
        initState();
    }

    private void initState() {
        addState(this.mDefaultState);
    }

    protected class DefaultState extends State {
        protected DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(VSimClient.this.LOG_TAG, VSimClient.this.getCurrentState().getName() + " enter.");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            int i = message.what;
            Log.e(VSimClient.this.LOG_TAG, "Unexpected event " + message.what + ". current state is " + VSimClient.this.getCurrentState().getName());
            return false;
        }
    }

    protected int getHttpTransactionId() {
        return sNextSerial.getAndIncrement();
    }
}
