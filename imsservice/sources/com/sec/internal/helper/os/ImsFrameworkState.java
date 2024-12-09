package com.sec.internal.helper.os;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ImsFrameworkState {
    private static final String LOG_TAG = "ImsFrameworkState";
    private static final Object MUTEX = new Object();
    private static volatile ImsFrameworkState sInstance = null;
    private static volatile boolean sIsFwReady = false;
    private Context mContext;
    private BroadcastReceiver mFwStatusReceiver = new BroadcastReceiver() { // from class: com.sec.internal.helper.os.ImsFrameworkState.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.sec.ims.imsmanager.RESTART".equals(intent.getAction())) {
                Log.i(ImsFrameworkState.LOG_TAG, "ImsService is ready.");
                synchronized (ImsFrameworkState.MUTEX) {
                    ImsFrameworkState.sIsFwReady = true;
                    ImsFrameworkState.this.mContext.unregisterReceiver(ImsFrameworkState.this.mFwStatusReceiver);
                    ImsFrameworkState.this.mContext = null;
                    ImsFrameworkState.this.notifyFrameworkState();
                }
            }
        }
    };
    private HashSet<FrameworkStateListener> mListeners;

    public interface FrameworkStateListener {
        void onFwReady();
    }

    private ImsFrameworkState(Context context) {
        this.mListeners = null;
        this.mContext = context;
        this.mListeners = new HashSet<>();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.sec.ims.imsmanager.RESTART");
        this.mContext.registerReceiver(this.mFwStatusReceiver, intentFilter);
    }

    public static boolean isFrameworkReady() {
        return sIsFwReady;
    }

    public static ImsFrameworkState getInstance(Context context) {
        ImsFrameworkState imsFrameworkState = sInstance;
        if (imsFrameworkState == null) {
            synchronized (MUTEX) {
                imsFrameworkState = sInstance;
                if (imsFrameworkState == null) {
                    imsFrameworkState = new ImsFrameworkState(context);
                    sInstance = imsFrameworkState;
                }
            }
        }
        return imsFrameworkState;
    }

    public void registerForFrameworkState(FrameworkStateListener frameworkStateListener) {
        Log.i(LOG_TAG, "registerForFrameworkState.");
        synchronized (MUTEX) {
            if (sIsFwReady) {
                frameworkStateListener.onFwReady();
                return;
            }
            HashSet<FrameworkStateListener> hashSet = this.mListeners;
            if (hashSet != null) {
                hashSet.add(frameworkStateListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFrameworkState() {
        HashSet<FrameworkStateListener> hashSet = this.mListeners;
        if (hashSet != null) {
            Iterator<FrameworkStateListener> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().onFwReady();
            }
            this.mListeners.clear();
        }
    }
}
