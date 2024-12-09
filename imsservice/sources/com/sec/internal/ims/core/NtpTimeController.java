package com.sec.internal.ims.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.util.NtpTrustedTime;
import com.sec.internal.ims.core.handler.secims.StackIF;
import com.sec.internal.interfaces.ims.core.INtpTimeChangedListener;
import com.sec.internal.interfaces.ims.core.INtpTimeController;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class NtpTimeController extends Handler implements INtpTimeController {
    private static final String LOG_TAG = NtpTimeController.class.getSimpleName();
    private boolean isForceRefreshed;
    private Context mContext;
    private final ExecutorService mExecutorService;
    private ArrayList<INtpTimeChangedListener> mNtpTimeChangedListnerList;
    private long mNtpTimeOffset;
    private NtpTrustedTime mNtpTrustedTime;

    public NtpTimeController(Context context, Looper looper) {
        super(looper);
        this.mExecutorService = Executors.newSingleThreadExecutor();
        this.mNtpTimeOffset = 0L;
        this.isForceRefreshed = false;
        this.mNtpTimeChangedListnerList = new ArrayList<>();
        this.mContext = context;
        this.mNtpTrustedTime = NtpTrustedTime.getInstance(context);
    }

    @Override // com.sec.internal.interfaces.ims.core.INtpTimeController
    public void registerNtpTimeChangedListener(INtpTimeChangedListener iNtpTimeChangedListener) {
        boolean contains = this.mNtpTimeChangedListnerList.contains(iNtpTimeChangedListener);
        IMSLog.s(LOG_TAG, "registerNtpTimeChangedListener: alreadyRegistered=" + contains);
        if (contains || iNtpTimeChangedListener == null) {
            return;
        }
        try {
            this.mNtpTimeChangedListnerList.add(iNtpTimeChangedListener);
            iNtpTimeChangedListener.onNtpTimeOffsetChanged(this.mNtpTimeOffset);
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage(), e);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.INtpTimeController
    public void unregisterNtpTimeChangedListener(INtpTimeChangedListener iNtpTimeChangedListener) {
        IMSLog.s(LOG_TAG, "unregisterNtpTimeChangedListener:");
        if (iNtpTimeChangedListener != null) {
            try {
                this.mNtpTimeChangedListnerList.remove(iNtpTimeChangedListener);
            } catch (Exception e) {
                Log.e(LOG_TAG, e.getMessage(), e);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.INtpTimeController
    public void refreshNtpTime() {
        requestNtpTime(true);
    }

    private void updateNtpTimeOffset(long j, int i) {
        Log.i(LOG_TAG, "updateNtpTimeOffset (" + i + ") : " + j);
        this.mNtpTimeOffset = j;
        StackIF.getInstance().updateNtpTimeOffset(j);
        sendNtpTimeOffsetChanged(j);
    }

    private void sendNtpTimeOffsetChanged(long j) {
        Iterator<INtpTimeChangedListener> it = this.mNtpTimeChangedListnerList.iterator();
        while (it.hasNext()) {
            try {
                it.next().onNtpTimeOffsetChanged(j);
            } catch (Exception e) {
                Log.e(LOG_TAG, "sendNtpTimeOffsetChanged failed", e);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        requestNtpTime(false);
    }

    private synchronized void requestNtpTime(boolean z) {
        Object obj;
        boolean isAutomaticTimeRequested = isAutomaticTimeRequested(this.mContext);
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("requestNtpTime : forceRefresh=");
        sb.append(z);
        sb.append(" isForceRefreshed=");
        sb.append(this.isForceRefreshed);
        sb.append(" isAutomaticTimeRequested=");
        sb.append(isAutomaticTimeRequested);
        sb.append(" hasCache=");
        NtpTrustedTime ntpTrustedTime = this.mNtpTrustedTime;
        if (ntpTrustedTime != null) {
            obj = Boolean.valueOf(ntpTrustedTime.getCachedTimeResult() != null);
        } else {
            obj = "null";
        }
        sb.append(obj);
        Log.i(str, sb.toString());
        try {
            if (this.isForceRefreshed) {
                sendNtpTimeOffsetChanged(this.mNtpTimeOffset);
            } else if (z) {
                this.mExecutorService.submit(new Runnable() { // from class: com.sec.internal.ims.core.NtpTimeController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        NtpTimeController.this.lambda$requestNtpTime$0();
                    }
                });
            } else if (isAutomaticTimeRequested) {
                updateNtpTimeOffset(System.currentTimeMillis() - SystemClock.elapsedRealtime(), 0);
            } else {
                updateNtpTimeOffset(-1L, 0);
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestNtpTime$0() {
        try {
            NtpTrustedTime ntpTrustedTime = this.mNtpTrustedTime;
            if (ntpTrustedTime != null && ntpTrustedTime.getCachedTimeResult() == null) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.mNtpTrustedTime.forceRefresh()) {
                    updateNtpTimeOffset(this.mNtpTrustedTime.getCachedTimeResult().currentTimeMillis() - this.mNtpTrustedTime.getCachedTimeResult().getElapsedRealtimeMillis(), (int) (System.currentTimeMillis() - currentTimeMillis));
                    this.isForceRefreshed = true;
                } else {
                    IMSLog.s(LOG_TAG, "forceRefresh failed");
                }
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, e.getMessage());
        }
    }

    private static boolean isAutomaticTimeRequested(Context context) {
        boolean z = Settings.Global.getInt(context.getContentResolver(), "auto_time", 0) != 0;
        IMSLog.s(LOG_TAG, "isAutomaticTimeRequested : " + z);
        return z;
    }
}
