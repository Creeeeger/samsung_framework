package com.android.server.people.data;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.android.server.people.data.Event;
import java.util.function.BiConsumer;

/* loaded from: classes2.dex */
public class CallLogQueryHelper {
    public static final SparseIntArray CALL_TYPE_TO_EVENT_TYPE;
    public final Context mContext;
    public final BiConsumer mEventConsumer;
    public long mLastCallTimestamp;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        CALL_TYPE_TO_EVENT_TYPE = sparseIntArray;
        sparseIntArray.put(1, 11);
        sparseIntArray.put(2, 10);
        sparseIntArray.put(3, 12);
    }

    public CallLogQueryHelper(Context context, BiConsumer biConsumer) {
        this.mContext = context;
        this.mEventConsumer = biConsumer;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[Catch: SecurityException -> 0x0093, SYNTHETIC, TRY_LEAVE, TryCatch #0 {SecurityException -> 0x0093, blocks: (B:3:0x001d, B:42:0x0034, B:30:0x0092, B:29:0x008f, B:34:0x007f, B:23:0x0089), top: B:2:0x001d, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean querySince(long r17) {
        /*
            r16 = this;
            r0 = r16
            java.lang.String r8 = "CallLogQueryHelper"
            java.lang.String r9 = "normalized_number"
            java.lang.String r10 = "date"
            java.lang.String r11 = "duration"
            java.lang.String r12 = "type"
            java.lang.String[] r3 = new java.lang.String[]{r9, r10, r11, r12}
            java.lang.String r4 = "date > ?"
            java.lang.String r1 = java.lang.Long.toString(r17)
            java.lang.String[] r5 = new java.lang.String[]{r1}
            r13 = 0
            android.content.Context r1 = r0.mContext     // Catch: java.lang.SecurityException -> L93
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.lang.SecurityException -> L93
            android.net.Uri r2 = android.provider.CallLog.Calls.CONTENT_URI     // Catch: java.lang.SecurityException -> L93
            java.lang.String r6 = "date DESC"
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.SecurityException -> L93
            if (r14 != 0) goto L3d
            java.lang.String r0 = "Cursor is null when querying call log."
            android.util.Slog.w(r8, r0)     // Catch: java.lang.Throwable -> L38
            if (r14 == 0) goto L37
            r14.close()     // Catch: java.lang.SecurityException -> L93
        L37:
            return r13
        L38:
            r0 = move-exception
            r1 = r0
            r18 = r14
            goto L87
        L3d:
            r15 = r13
        L3e:
            boolean r1 = r14.moveToNext()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L7d
            int r1 = r14.getColumnIndex(r9)     // Catch: java.lang.Throwable -> L83
            java.lang.String r2 = r14.getString(r1)     // Catch: java.lang.Throwable -> L83
            int r1 = r14.getColumnIndex(r10)     // Catch: java.lang.Throwable -> L83
            long r3 = r14.getLong(r1)     // Catch: java.lang.Throwable -> L83
            int r1 = r14.getColumnIndex(r11)     // Catch: java.lang.Throwable -> L83
            long r5 = r14.getLong(r1)     // Catch: java.lang.Throwable -> L83
            int r1 = r14.getColumnIndex(r12)     // Catch: java.lang.Throwable -> L83
            int r7 = r14.getInt(r1)     // Catch: java.lang.Throwable -> L83
            r18 = r14
            long r13 = r0.mLastCallTimestamp     // Catch: java.lang.Throwable -> L7b
            long r13 = java.lang.Math.max(r13, r3)     // Catch: java.lang.Throwable -> L7b
            r0.mLastCallTimestamp = r13     // Catch: java.lang.Throwable -> L7b
            r1 = r16
            boolean r1 = r1.addEvent(r2, r3, r5, r7)     // Catch: java.lang.Throwable -> L7b
            if (r1 == 0) goto L77
            r15 = 1
        L77:
            r14 = r18
            r13 = 0
            goto L3e
        L7b:
            r0 = move-exception
            goto L86
        L7d:
            r18 = r14
            r18.close()     // Catch: java.lang.SecurityException -> L93
            return r15
        L83:
            r0 = move-exception
            r18 = r14
        L86:
            r1 = r0
        L87:
            if (r18 == 0) goto L92
            r18.close()     // Catch: java.lang.Throwable -> L8d
            goto L92
        L8d:
            r0 = move-exception
            r2 = r0
            r1.addSuppressed(r2)     // Catch: java.lang.SecurityException -> L93
        L92:
            throw r1     // Catch: java.lang.SecurityException -> L93
        L93:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Query call log failed: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Slog.e(r8, r0)
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.people.data.CallLogQueryHelper.querySince(long):boolean");
    }

    public long getLastCallTimestamp() {
        return this.mLastCallTimestamp;
    }

    public final boolean addEvent(String str, long j, long j2, int i) {
        if (!validateEvent(str, j, i)) {
            return false;
        }
        this.mEventConsumer.accept(str, new Event.Builder(j, CALL_TYPE_TO_EVENT_TYPE.get(i)).setDurationSeconds((int) j2).build());
        return true;
    }

    public final boolean validateEvent(String str, long j, int i) {
        return !TextUtils.isEmpty(str) && j > 0 && CALL_TYPE_TO_EVENT_TYPE.indexOfKey(i) >= 0;
    }
}
