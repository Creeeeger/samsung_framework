package com.android.systemui.statusbar.phone.datausage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.util.DeviceState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DataUsageLabelView extends DataUsageLabelCommonView {
    public static final boolean DEBUG = DataUsageLabelManager.DEBUG;
    public String mDataUsage;
    public boolean mDataUsageVisibility;
    public Handler mHandler;
    public final AnonymousClass1 mReceiver;
    public Thread mThread;
    public final AnonymousClass3 mUpdateRunnable;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$1] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$3] */
    public DataUsageLabelView(Context context) {
        super(context);
        this.mHandler = null;
        this.mDataUsage = "";
        this.mThread = null;
        this.mDataUsageVisibility = false;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                boolean z;
                String action = intent.getAction();
                boolean z2 = DataUsageLabelView.DEBUG;
                if (z2) {
                    ExifInterface$$ExternalSyntheticOutline0.m(ActivityResultRegistry$$ExternalSyntheticOutline0.m("onReceive: ", action, " DataUsage String: "), DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                }
                if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                    DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                    if (DeviceState.getActiveSimCount(dataUsageLabelView.mContext) > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dataUsageLabelView.mDataUsageVisibility = z;
                    DataUsageLabelView.this.updateUsageInfo();
                    if (z2) {
                        StringBuilder sb = new StringBuilder("ACTION_SIM_STATE_CHANGED: visibility=");
                        sb.append(DataUsageLabelView.this.mDataUsageVisibility);
                        sb.append(" rewrite String to ");
                        ExifInterface$$ExternalSyntheticOutline0.m(sb, DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                        return;
                    }
                    return;
                }
                if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action) || "com.samsung.systemui.statusbar.ANIMATING".equals(action)) {
                    DataUsageLabelView.this.updateUsageInfo();
                }
            }
        };
        this.mUpdateRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.3
            @Override // java.lang.Runnable
            public final void run() {
                DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                boolean z = DataUsageLabelView.DEBUG;
                dataUsageLabelView.updateDataText();
                DataUsageLabelView.this.mThread = null;
            }
        };
        initView();
    }

    public final void initView() {
        boolean z;
        this.mHandler = new Handler();
        if (DeviceState.getActiveSimCount(this.mContext) > 0) {
            z = true;
        } else {
            z = false;
        }
        this.mDataUsageVisibility = z;
    }

    @Override // com.android.systemui.statusbar.phone.datausage.DataUsageLabelCommonView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("com.samsung.systemui.statusbar.ANIMATING");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, this.mReceiver);
    }

    @Override // com.android.systemui.statusbar.phone.datausage.DataUsageLabelCommonView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mReceiver);
    }

    public final void updateDataText() {
        if (this.mDataUsageVisibility) {
            if (!TextUtils.isEmpty(this.mDataUsage)) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(this.mContext.getString(R.string.quick_panel_data_usage), ": ");
                m.append(this.mDataUsage);
                this.mDataUsage = m.toString();
            }
        } else {
            this.mDataUsage = "";
        }
        if (!this.mDataUsage.equals(getText().toString())) {
            setText(this.mDataUsage);
        }
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("Data Usage:"), this.mDataUsage, "DataUsageLabelView");
    }

    public final void updateUsageInfo() {
        if (!this.mDataUsageVisibility) {
            updateDataText();
        } else {
            if (this.mThread == null) {
                Thread thread = new Thread("updateUsageInfo") { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.2
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:11:0x0075  */
                    /* JADX WARN: Removed duplicated region for block: B:9:0x0054 A[Catch: Exception -> 0x0058, TRY_LEAVE, TryCatch #3 {Exception -> 0x0058, blocks: (B:9:0x0054, B:28:0x004d, B:25:0x0050, B:24:0x0048), top: B:5:0x0023, inners: #4 }] */
                    /* JADX WARN: Type inference failed for: r5v1, types: [android.content.ContentResolver] */
                    /* JADX WARN: Type inference failed for: r6v0 */
                    /* JADX WARN: Type inference failed for: r6v1 */
                    /* JADX WARN: Type inference failed for: r6v10 */
                    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
                    /* JADX WARN: Type inference failed for: r6v3, types: [android.net.Uri] */
                    /* JADX WARN: Type inference failed for: r6v4 */
                    /* JADX WARN: Type inference failed for: r6v5 */
                    /* JADX WARN: Type inference failed for: r6v6 */
                    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.String] */
                    /* JADX WARN: Type inference failed for: r6v8 */
                    /* JADX WARN: Type inference failed for: r6v9 */
                    @Override // java.lang.Thread, java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void run() {
                        /*
                            r11 = this;
                            com.android.systemui.statusbar.phone.datausage.DataUsageLabelView r0 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.this
                            boolean r1 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.DEBUG
                            r0.getClass()
                            java.lang.String r1 = "DataUsageLabelView"
                            java.lang.String r2 = "query result: "
                            java.lang.String r3 = ""
                            android.content.Context r4 = r0.mContext     // Catch: java.lang.Exception -> L5a
                            android.content.ContentResolver r5 = r4.getContentResolver()     // Catch: java.lang.Exception -> L5a
                            java.lang.String r4 = "content://com.samsung.android.sm.dcapi"
                            android.net.Uri r6 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L5a
                            r7 = 0
                            java.lang.String r8 = "getUsageLabel"
                            r9 = 0
                            r10 = 0
                            android.database.Cursor r4 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L5a
                            if (r4 == 0) goto L51
                            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L46
                            if (r5 == 0) goto L51
                            r5 = 0
                            java.lang.String r6 = r4.getString(r5)     // Catch: java.lang.Throwable -> L46
                            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
                            r7.<init>(r2)     // Catch: java.lang.Throwable -> L44
                            java.lang.String r2 = r4.getString(r5)     // Catch: java.lang.Throwable -> L44
                            r7.append(r2)     // Catch: java.lang.Throwable -> L44
                            java.lang.String r2 = r7.toString()     // Catch: java.lang.Throwable -> L44
                            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L44
                            goto L52
                        L44:
                            r2 = move-exception
                            goto L48
                        L46:
                            r2 = move-exception
                            r6 = r3
                        L48:
                            r4.close()     // Catch: java.lang.Throwable -> L4c
                            goto L50
                        L4c:
                            r4 = move-exception
                            r2.addSuppressed(r4)     // Catch: java.lang.Exception -> L58
                        L50:
                            throw r2     // Catch: java.lang.Exception -> L58
                        L51:
                            r6 = r3
                        L52:
                            if (r4 == 0) goto L72
                            r4.close()     // Catch: java.lang.Exception -> L58
                            goto L72
                        L58:
                            r2 = move-exception
                            goto L5c
                        L5a:
                            r2 = move-exception
                            r6 = r3
                        L5c:
                            java.lang.StringBuilder r4 = new java.lang.StringBuilder
                            java.lang.String r5 = "query Data Usage fail: "
                            r4.<init>(r5)
                            java.lang.String r2 = r2.toString()
                            r4.append(r2)
                            java.lang.String r2 = r4.toString()
                            android.util.Log.e(r1, r2)
                        L72:
                            if (r6 != 0) goto L75
                            goto L79
                        L75:
                            java.lang.String r3 = r6.trim()
                        L79:
                            r0.mDataUsage = r3
                            com.android.systemui.statusbar.phone.datausage.DataUsageLabelView r11 = com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.this
                            android.os.Handler r0 = r11.mHandler
                            com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$3 r11 = r11.mUpdateRunnable
                            r0.post(r11)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.AnonymousClass2.run():void");
                    }
                };
                this.mThread = thread;
                thread.start();
                return;
            }
            Log.d("DataUsageLabelView", "Last Thread still running");
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$3] */
    public DataUsageLabelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHandler = null;
        this.mDataUsage = "";
        this.mThread = null;
        this.mDataUsageVisibility = false;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                boolean z;
                String action = intent.getAction();
                boolean z2 = DataUsageLabelView.DEBUG;
                if (z2) {
                    ExifInterface$$ExternalSyntheticOutline0.m(ActivityResultRegistry$$ExternalSyntheticOutline0.m("onReceive: ", action, " DataUsage String: "), DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                }
                if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                    DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                    if (DeviceState.getActiveSimCount(dataUsageLabelView.mContext) > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dataUsageLabelView.mDataUsageVisibility = z;
                    DataUsageLabelView.this.updateUsageInfo();
                    if (z2) {
                        StringBuilder sb = new StringBuilder("ACTION_SIM_STATE_CHANGED: visibility=");
                        sb.append(DataUsageLabelView.this.mDataUsageVisibility);
                        sb.append(" rewrite String to ");
                        ExifInterface$$ExternalSyntheticOutline0.m(sb, DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                        return;
                    }
                    return;
                }
                if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action) || "com.samsung.systemui.statusbar.ANIMATING".equals(action)) {
                    DataUsageLabelView.this.updateUsageInfo();
                }
            }
        };
        this.mUpdateRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.3
            @Override // java.lang.Runnable
            public final void run() {
                DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                boolean z = DataUsageLabelView.DEBUG;
                dataUsageLabelView.updateDataText();
                DataUsageLabelView.this.mThread = null;
            }
        };
        initView();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$1] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.datausage.DataUsageLabelView$3] */
    public DataUsageLabelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = null;
        this.mDataUsage = "";
        this.mThread = null;
        this.mDataUsageVisibility = false;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                boolean z;
                String action = intent.getAction();
                boolean z2 = DataUsageLabelView.DEBUG;
                if (z2) {
                    ExifInterface$$ExternalSyntheticOutline0.m(ActivityResultRegistry$$ExternalSyntheticOutline0.m("onReceive: ", action, " DataUsage String: "), DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                }
                if ("android.intent.action.SIM_STATE_CHANGED".equals(action)) {
                    DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                    if (DeviceState.getActiveSimCount(dataUsageLabelView.mContext) > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dataUsageLabelView.mDataUsageVisibility = z;
                    DataUsageLabelView.this.updateUsageInfo();
                    if (z2) {
                        StringBuilder sb = new StringBuilder("ACTION_SIM_STATE_CHANGED: visibility=");
                        sb.append(DataUsageLabelView.this.mDataUsageVisibility);
                        sb.append(" rewrite String to ");
                        ExifInterface$$ExternalSyntheticOutline0.m(sb, DataUsageLabelView.this.mDataUsage, "DataUsageLabelView");
                        return;
                    }
                    return;
                }
                if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action) || "com.samsung.systemui.statusbar.ANIMATING".equals(action)) {
                    DataUsageLabelView.this.updateUsageInfo();
                }
            }
        };
        this.mUpdateRunnable = new Runnable() { // from class: com.android.systemui.statusbar.phone.datausage.DataUsageLabelView.3
            @Override // java.lang.Runnable
            public final void run() {
                DataUsageLabelView dataUsageLabelView = DataUsageLabelView.this;
                boolean z = DataUsageLabelView.DEBUG;
                dataUsageLabelView.updateDataText();
                DataUsageLabelView.this.mThread = null;
            }
        };
        initView();
    }
}
