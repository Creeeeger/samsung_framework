package com.android.server.am;

import android.app.ActivityTaskManager;
import android.app.AppOpsManager;
import android.app.IActivityTaskManager;
import android.app.IAssistDataReceiver;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.IWindowManager;
import com.samsung.android.knox.custom.LauncherConfigurationInternal;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AssistDataRequester extends IAssistDataReceiver.Stub {
    public AppOpsManager mAppOpsManager;
    public AssistDataRequesterCallbacks mCallbacks;
    public Object mCallbacksLock;
    public boolean mCanceled;
    public Context mContext;
    public int mPendingDataCount;
    public int mPendingScreenshotCount;
    public int mRequestScreenshotAppOps;
    public int mRequestStructureAppOps;
    public IWindowManager mWindowManager;
    public final ArrayList mAssistData = new ArrayList();
    public final ArrayList mAssistScreenshot = new ArrayList();
    public IActivityTaskManager mActivityTaskManager = ActivityTaskManager.getService();

    /* loaded from: classes.dex */
    public interface AssistDataRequesterCallbacks {
        boolean canHandleReceivedAssistDataLocked();

        void onAssistDataReceivedLocked(Bundle bundle, int i, int i2);

        default void onAssistRequestCompleted() {
        }

        void onAssistScreenshotReceivedLocked(Bitmap bitmap);
    }

    public AssistDataRequester(Context context, IWindowManager iWindowManager, AppOpsManager appOpsManager, AssistDataRequesterCallbacks assistDataRequesterCallbacks, Object obj, int i, int i2) {
        this.mCallbacks = assistDataRequesterCallbacks;
        this.mCallbacksLock = obj;
        this.mWindowManager = iWindowManager;
        this.mContext = context;
        this.mAppOpsManager = appOpsManager;
        this.mRequestStructureAppOps = i;
        this.mRequestScreenshotAppOps = i2;
    }

    public void requestAssistData(List list, boolean z, boolean z2, boolean z3, boolean z4, int i, String str, String str2, boolean z5) {
        requestAssistData(list, z, z2, true, z3, z4, false, i, str, str2, z5);
    }

    public void requestAssistData(List list, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, String str, String str2) {
        requestData(list, false, z, z2, z3, z4, z5, z6, i, str, str2);
    }

    public void requestAssistData(List list, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, String str, String str2, boolean z7) {
        requestData(list, false, z, z2, z3, z4, z5, z6, i, str, str2, z7);
    }

    public final void requestData(List list, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i, String str, String str2) {
        requestData(list, z, z2, z3, z4, z5, z6, z7, i, str, str2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void requestData(java.util.List r19, boolean r20, boolean r21, boolean r22, boolean r23, boolean r24, boolean r25, boolean r26, int r27, java.lang.String r28, java.lang.String r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.AssistDataRequester.requestData(java.util.List, boolean, boolean, boolean, boolean, boolean, boolean, boolean, int, java.lang.String, java.lang.String, boolean):void");
    }

    public void processPendingAssistData() {
        flushPendingAssistData();
        tryDispatchRequestComplete();
    }

    public final void flushPendingAssistData() {
        int size = this.mAssistData.size();
        for (int i = 0; i < size; i++) {
            dispatchAssistDataReceived((Bundle) this.mAssistData.get(i));
        }
        this.mAssistData.clear();
        int size2 = this.mAssistScreenshot.size();
        for (int i2 = 0; i2 < size2; i2++) {
            dispatchAssistScreenshotReceived((Bitmap) this.mAssistScreenshot.get(i2));
        }
        this.mAssistScreenshot.clear();
    }

    public int getPendingDataCount() {
        return this.mPendingDataCount;
    }

    public int getPendingScreenshotCount() {
        return this.mPendingScreenshotCount;
    }

    public void cancel() {
        this.mCanceled = true;
        this.mPendingDataCount = 0;
        this.mPendingScreenshotCount = 0;
        this.mAssistData.clear();
        this.mAssistScreenshot.clear();
    }

    public void onHandleAssistData(Bundle bundle) {
        synchronized (this.mCallbacksLock) {
            if (this.mCanceled) {
                return;
            }
            this.mPendingDataCount--;
            if (this.mCallbacks.canHandleReceivedAssistDataLocked()) {
                flushPendingAssistData();
                dispatchAssistDataReceived(bundle);
                tryDispatchRequestComplete();
            } else {
                this.mAssistData.add(bundle);
            }
        }
    }

    public void onHandleAssistScreenshot(Bitmap bitmap) {
        synchronized (this.mCallbacksLock) {
            if (this.mCanceled) {
                return;
            }
            this.mPendingScreenshotCount--;
            if (this.mCallbacks.canHandleReceivedAssistDataLocked()) {
                flushPendingAssistData();
                dispatchAssistScreenshotReceived(bitmap);
                tryDispatchRequestComplete();
            } else {
                this.mAssistScreenshot.add(bitmap);
            }
        }
    }

    public final void dispatchAssistDataReceived(Bundle bundle) {
        int i;
        int i2;
        Bundle bundle2 = bundle != null ? bundle.getBundle("receiverExtras") : null;
        if (bundle2 != null) {
            i = bundle2.getInt(LauncherConfigurationInternal.KEY_INDEX_INT);
            i2 = bundle2.getInt("count");
        } else {
            i = 0;
            i2 = 0;
        }
        this.mCallbacks.onAssistDataReceivedLocked(bundle, i, i2);
    }

    public final void dispatchAssistScreenshotReceived(Bitmap bitmap) {
        this.mCallbacks.onAssistScreenshotReceivedLocked(bitmap);
    }

    public final void tryDispatchRequestComplete() {
        if (this.mPendingDataCount == 0 && this.mPendingScreenshotCount == 0 && this.mAssistData.isEmpty() && this.mAssistScreenshot.isEmpty()) {
            this.mCallbacks.onAssistRequestCompleted();
        }
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mPendingDataCount=");
        printWriter.println(this.mPendingDataCount);
        printWriter.print(str);
        printWriter.print("mAssistData=");
        printWriter.println(this.mAssistData);
        printWriter.print(str);
        printWriter.print("mPendingScreenshotCount=");
        printWriter.println(this.mPendingScreenshotCount);
        printWriter.print(str);
        printWriter.print("mAssistScreenshot=");
        printWriter.println(this.mAssistScreenshot);
    }
}
