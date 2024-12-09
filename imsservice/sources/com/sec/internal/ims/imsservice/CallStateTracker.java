package com.sec.internal.ims.imsservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.ims.servicemodules.ServiceModuleManager;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CallStateTracker implements ISequentialInitializable {
    public static final int CALL_CONNECTED = 2;
    public static final int CALL_DISCONECTED = 1;
    public static final int CALL_RESUMED = 4;
    private static final String LOG_TAG = "CallStateTracker";
    private final Context mContext;
    private final Handler mHandler;
    private final ServiceModuleManager mServiceModuleManager;
    private final List<Listener> mListeners = new ArrayList();
    private final Map<Integer, Map<String, Call>> mCallLists = new HashMap();
    private final Map<Integer, Map<String, Integer>> mCountLists = new HashMap();
    private final BroadcastReceiver mCallStateReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.imsservice.CallStateTracker.1
        /* JADX WARN: Removed duplicated region for block: B:19:0x0116  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0198 A[LOOP:0: B:29:0x0192->B:31:0x0198, LOOP_END] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onReceive(android.content.Context r13, android.content.Intent r14) {
            /*
                Method dump skipped, instructions count: 419
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.imsservice.CallStateTracker.AnonymousClass1.onReceive(android.content.Context, android.content.Intent):void");
        }
    };

    public static abstract class Listener {
        protected abstract void onCallStateChanged(List<ICall> list, int i);
    }

    static class Call implements ICall {
        public final boolean mIsCmcCall;
        public final boolean mIsCmcConnected;
        public final boolean mIsIncoming;
        public final String mNumber;
        public final int mState;

        Call(int i, String str, boolean z, boolean z2, boolean z3) {
            this.mState = i;
            this.mNumber = str;
            this.mIsIncoming = z;
            this.mIsCmcConnected = z2;
            this.mIsCmcCall = z3;
        }

        public String toString() {
            return "Call{mState=" + this.mState + ", mNumber='" + this.mNumber + "', mIsIncoming=" + this.mIsIncoming + ", mIsCmcConnected=" + this.mIsCmcConnected + ", mIsCmcCall=" + this.mIsCmcCall + '}';
        }

        @Override // com.sec.internal.interfaces.ims.imsservice.ICall
        public boolean isConnected() {
            int i = this.mState;
            return i == 2 || i == 4;
        }

        public boolean isCmcConnected() {
            return this.mIsCmcConnected;
        }

        public boolean isCmcCall() {
            return this.mIsCmcCall;
        }

        @Override // com.sec.internal.interfaces.ims.imsservice.ICall
        public String getNumber() {
            return this.mNumber;
        }
    }

    public CallStateTracker(Context context, Handler handler, ServiceModuleManager serviceModuleManager) {
        this.mContext = context;
        this.mHandler = handler;
        this.mServiceModuleManager = serviceModuleManager;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.ACTION_CALL_STATE_CHANGED);
        this.mContext.registerReceiver(this.mCallStateReceiver, intentFilter, null, this.mHandler);
        register(new Listener() { // from class: com.sec.internal.ims.imsservice.CallStateTracker.2
            @Override // com.sec.internal.ims.imsservice.CallStateTracker.Listener
            protected void onCallStateChanged(List<ICall> list, int i) {
                CallStateTracker.this.mServiceModuleManager.notifyCallStateChanged(list, i);
            }
        });
    }

    public void register(Listener listener) {
        this.mListeners.add(listener);
    }

    public void unregister(Listener listener) {
        this.mListeners.remove(listener);
    }
}
