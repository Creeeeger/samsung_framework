package com.samsung.android.powerSolution;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.format.DateFormat;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class SOCJump {
    public static SOC mCurrentSoc;
    public static File mFileObject;
    public static SOC mPreviousSoc = new SOC(-1);
    public static SOCJump mSocjump = null;
    public Context mContext;
    public IntentFilter mSocFilter;
    public BroadcastReceiver mSocJumpReciver = new MyBroadcastReceiver();

    /* loaded from: classes2.dex */
    public class SOC {
        public int battery;

        public SOC(int i) {
            this.battery = i;
        }

        public boolean socJumpcheck(SOC soc) {
            return soc != null && Math.abs(soc.battery - this.battery) > 1;
        }
    }

    public static String dateFormat(long j) {
        return (String) DateFormat.format("yyyy-MM-dd kk:mm:ss", j);
    }

    /* loaded from: classes2.dex */
    public class MyBroadcastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                onEventRun(intent.getIntExtra("level", -1));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x0161, code lost:
        
            if (r2 == 0) goto L75;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0159  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x015e  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x016f  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0174  */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v12, types: [boolean] */
        /* JADX WARN: Type inference failed for: r2v17, types: [java.io.OutputStream, java.io.FileOutputStream] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r2v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onEventRun(int r11) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.powerSolution.SOCJump.MyBroadcastReceiver.onEventRun(int):void");
        }
    }

    public static SOCJump getInstance(Context context) {
        if (mSocjump == null) {
            mSocjump = new SOCJump(context);
        }
        return mSocjump;
    }

    public SOCJump(Context context) {
        this.mContext = context;
        IntentFilter intentFilter = new IntentFilter();
        this.mSocFilter = intentFilter;
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.mContext.registerReceiver(this.mSocJumpReciver, this.mSocFilter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0067  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dump(java.io.PrintWriter r3, java.lang.String[] r4) {
        /*
            r2 = this;
            java.lang.String r2 = "[SOCJump]"
            r3.println(r2)
            r2 = 0
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L42
            java.lang.String r0 = "/data/log/eSOC.txt"
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L42
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L39
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L39
            r0.<init>(r4, r1)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L39
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L33
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L33
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L5a
        L1d:
            if (r2 == 0) goto L27
            r3.println(r2)     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L5a
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L2e java.lang.Throwable -> L5a
            goto L1d
        L27:
            r1.close()
            r4.close()
            goto L56
        L2e:
            r2 = move-exception
            goto L47
        L30:
            r3 = move-exception
            r1 = r2
            goto L40
        L33:
            r3 = move-exception
            r1 = r2
            goto L46
        L36:
            r3 = move-exception
            r0 = r2
            goto L3f
        L39:
            r3 = move-exception
            r0 = r2
            goto L45
        L3c:
            r3 = move-exception
            r4 = r2
            r0 = r4
        L3f:
            r1 = r0
        L40:
            r2 = r3
            goto L5b
        L42:
            r3 = move-exception
            r4 = r2
            r0 = r4
        L45:
            r1 = r0
        L46:
            r2 = r3
        L47:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L5a
            if (r1 == 0) goto L4f
            r1.close()
        L4f:
            if (r4 == 0) goto L54
            r4.close()
        L54:
            if (r0 == 0) goto L59
        L56:
            r0.close()
        L59:
            return
        L5a:
            r2 = move-exception
        L5b:
            if (r1 == 0) goto L60
            r1.close()
        L60:
            if (r4 == 0) goto L65
            r4.close()
        L65:
            if (r0 == 0) goto L6a
            r0.close()
        L6a:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.powerSolution.SOCJump.dump(java.io.PrintWriter, java.lang.String[]):void");
    }
}
