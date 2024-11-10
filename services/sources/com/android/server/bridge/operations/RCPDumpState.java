package com.android.server.bridge.operations;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.samsung.android.knox.SemPersonaManager;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class RCPDumpState {
    public static RCPDumpState mRCPDumpState;
    public ContentResolver mContentResolver;
    public Context mContext;
    public final String TAG = RCPDumpState.class.getSimpleName();
    public Uri mOwnerUri = null;
    public Uri mContainerUri = null;
    public Uri mQueryUri = null;

    public RCPDumpState(Context context) {
        this.mContentResolver = null;
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
    }

    public static RCPDumpState getInstance(Context context, PrintWriter printWriter) {
        if (mRCPDumpState == null) {
            mRCPDumpState = new RCPDumpState(context);
        }
        return mRCPDumpState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00d0, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00d3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0045, code lost:
    
        if (r6.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0047, code lost:
    
        r7.print(r6.getString(r6.getColumnIndex("timeStamp")));
        r7.print(" (");
        r7.print(r6.getString(r6.getColumnIndex("operation")));
        r7.print(")");
        r7.print(" ret:");
        r7.print(r6.getInt(r6.getColumnIndex("resultCode")));
        r7.print(" srcUri:");
        r7.print(r6.getString(r6.getColumnIndex("srcUri")));
        r7.print(" destUri:");
        r7.print(r6.getString(r6.getColumnIndex("destUri")));
        r7.print(" src:");
        r7.print(r6.getString(r6.getColumnIndex("source")));
        r7.print(" dest:");
        r7.println(r6.getString(r6.getColumnIndex("destination")));
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00ce, code lost:
    
        if (r6.moveToNext() != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dumpStateFileOpsTable(java.io.PrintWriter r7, int r8) {
        /*
            r6 = this;
            boolean r0 = r6.isSecureFolderId(r8)
            if (r0 == 0) goto L9
            java.lang.String r0 = "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"
            goto Lb
        L9:
            java.lang.String r0 = "com.samsung.android.knox.containercore.rcpcomponents.move.provider.knoxcontentmgrdbprovider"
        Lb:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "content://"
            r1.append(r2)
            java.lang.String r8 = java.lang.Integer.toString(r8)
            r1.append(r8)
            java.lang.String r8 = "@"
            r1.append(r8)
            r1.append(r0)
            java.lang.String r8 = "/"
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            android.net.Uri r1 = android.net.Uri.parse(r8)
            android.content.Context r6 = r6.mContext
            android.content.ContentResolver r0 = r6.getContentResolver()
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r6 = r0.query(r1, r2, r3, r4, r5)
            if (r6 == 0) goto Ld3
            boolean r8 = r6.moveToFirst()
            if (r8 == 0) goto Ld0
        L47:
            java.lang.String r8 = "timeStamp"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = " ("
            r7.print(r8)
            java.lang.String r8 = "operation"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = ")"
            r7.print(r8)
            java.lang.String r8 = " ret:"
            r7.print(r8)
            java.lang.String r8 = "resultCode"
            int r8 = r6.getColumnIndex(r8)
            int r8 = r6.getInt(r8)
            r7.print(r8)
            java.lang.String r8 = " srcUri:"
            r7.print(r8)
            java.lang.String r8 = "srcUri"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = " destUri:"
            r7.print(r8)
            java.lang.String r8 = "destUri"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = " src:"
            r7.print(r8)
            java.lang.String r8 = "source"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = " dest:"
            r7.print(r8)
            java.lang.String r8 = "destination"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.println(r8)
            boolean r8 = r6.moveToNext()
            if (r8 != 0) goto L47
        Ld0:
            r6.close()
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.bridge.operations.RCPDumpState.dumpStateFileOpsTable(java.io.PrintWriter, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0082, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x004c, code lost:
    
        if (r6.moveToFirst() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x004e, code lost:
    
        r7.print("timeStamp: ");
        r7.print(r6.getString(r6.getColumnIndex("timestamp")));
        r7.print("text: ");
        r7.print(r6.getString(r6.getColumnIndex("text")));
        r7.println();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x007d, code lost:
    
        if (r6.moveToNext() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x007f, code lost:
    
        r6.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dumpBackupAndRestoreHistory(java.io.PrintWriter r7, int r8) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "dumpBackupAndRestoreHistory , userId: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            r7.println(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "content://"
            r0.append(r1)
            java.lang.String r8 = java.lang.Integer.toString(r8)
            r0.append(r8)
            java.lang.String r8 = "@"
            r0.append(r8)
            java.lang.String r8 = "com.samsung.knox.securefolder"
            r0.append(r8)
            java.lang.String r8 = "/bnr_logs"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.net.Uri r1 = android.net.Uri.parse(r8)
            android.content.ContentResolver r0 = r6.mContentResolver
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r6 = r0.query(r1, r2, r3, r4, r5)
            if (r6 == 0) goto L82
            boolean r8 = r6.moveToFirst()
            if (r8 == 0) goto L7f
        L4e:
            java.lang.String r8 = "timeStamp: "
            r7.print(r8)
            java.lang.String r8 = "timestamp"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            java.lang.String r8 = "text: "
            r7.print(r8)
            java.lang.String r8 = "text"
            int r8 = r6.getColumnIndex(r8)
            java.lang.String r8 = r6.getString(r8)
            r7.print(r8)
            r7.println()
            boolean r8 = r6.moveToNext()
            if (r8 != 0) goto L4e
        L7f:
            r6.close()
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.bridge.operations.RCPDumpState.dumpBackupAndRestoreHistory(java.io.PrintWriter, int):void");
    }

    public final boolean isSecureFolderId(int i) {
        return SemPersonaManager.isSecureFolderId(i);
    }
}
