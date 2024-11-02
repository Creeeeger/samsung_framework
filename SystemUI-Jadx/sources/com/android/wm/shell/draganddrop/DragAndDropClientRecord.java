package com.android.wm.shell.draganddrop;

import com.samsung.android.multiwindow.IDragAndDropClient;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragAndDropClientRecord {
    public final IDragAndDropClient mClient;
    public final int mDisplayId;

    private DragAndDropClientRecord(IDragAndDropClient iDragAndDropClient, int i) {
        this.mClient = iDragAndDropClient;
        this.mDisplayId = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.wm.shell.draganddrop.DragAndDropClientRecord from(android.content.ClipData r2, int r3) {
        /*
            r0 = 0
            if (r2 == 0) goto L2d
            int r1 = r2.getItemCount()
            if (r1 != 0) goto La
            goto L2d
        La:
            r1 = 0
            android.content.ClipData$Item r2 = r2.getItemAt(r1)
            android.content.Intent r2 = r2.getIntent()
            if (r2 != 0) goto L16
            goto L2d
        L16:
            java.lang.String r1 = "com.samsung.android.intent.extra.DRAG_AND_DROP_CLIENT"
            android.os.IBinder r2 = r2.getIBinderExtra(r1)     // Catch: java.lang.Exception -> L1d
            goto L25
        L1d:
            java.lang.String r2 = "DragAndDropClient"
            java.lang.String r1 = "Failed to getIBinderExtra. It's not drag from Edge"
            android.util.Slog.d(r2, r1)
            r2 = r0
        L25:
            if (r2 != 0) goto L28
            goto L2d
        L28:
            com.samsung.android.multiwindow.IDragAndDropClient r2 = com.samsung.android.multiwindow.IDragAndDropClient.Stub.asInterface(r2)
            goto L2e
        L2d:
            r2 = r0
        L2e:
            if (r2 != 0) goto L31
            return r0
        L31:
            com.android.wm.shell.draganddrop.DragAndDropClientRecord r0 = new com.android.wm.shell.draganddrop.DragAndDropClientRecord
            r0.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DragAndDropClientRecord.from(android.content.ClipData, int):com.android.wm.shell.draganddrop.DragAndDropClientRecord");
    }
}
