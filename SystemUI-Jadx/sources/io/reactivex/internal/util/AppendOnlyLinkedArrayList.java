package io.reactivex.internal.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppendOnlyLinkedArrayList {
    public final int capacity;
    public final Object[] head;
    public int offset;
    public Object[] tail;

    public AppendOnlyLinkedArrayList(int i) {
        this.capacity = i;
        Object[] objArr = new Object[i + 1];
        this.head = objArr;
        this.tail = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
    
        r0 = r0[r3];
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038 A[LOOP:1: B:5:0x0006->B:14:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean accept(io.reactivex.Observer r7) {
        /*
            r6 = this;
            java.lang.Object[] r0 = r6.head
        L2:
            r1 = 0
            if (r0 == 0) goto L40
            r2 = r1
        L6:
            int r3 = r6.capacity
            if (r2 >= r3) goto L3b
            r4 = r0[r2]
            if (r4 != 0) goto Lf
            goto L3b
        Lf:
            io.reactivex.internal.util.NotificationLite r3 = io.reactivex.internal.util.NotificationLite.COMPLETE
            r5 = 1
            if (r4 != r3) goto L19
            r7.onComplete()
        L17:
            r3 = r5
            goto L35
        L19:
            boolean r3 = r4 instanceof io.reactivex.internal.util.NotificationLite.ErrorNotification
            if (r3 == 0) goto L25
            io.reactivex.internal.util.NotificationLite$ErrorNotification r4 = (io.reactivex.internal.util.NotificationLite.ErrorNotification) r4
            java.lang.Throwable r3 = r4.e
            r7.onError(r3)
            goto L17
        L25:
            boolean r3 = r4 instanceof io.reactivex.internal.util.NotificationLite.DisposableNotification
            if (r3 == 0) goto L31
            io.reactivex.internal.util.NotificationLite$DisposableNotification r4 = (io.reactivex.internal.util.NotificationLite.DisposableNotification) r4
            io.reactivex.disposables.Disposable r3 = r4.upstream
            r7.onSubscribe(r3)
            goto L34
        L31:
            r7.onNext(r4)
        L34:
            r3 = r1
        L35:
            if (r3 == 0) goto L38
            return r5
        L38:
            int r2 = r2 + 1
            goto L6
        L3b:
            r0 = r0[r3]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L2
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.AppendOnlyLinkedArrayList.accept(io.reactivex.Observer):boolean");
    }

    public final void add(Object obj) {
        int i = this.offset;
        int i2 = this.capacity;
        if (i == i2) {
            Object[] objArr = new Object[i2 + 1];
            this.tail[i2] = objArr;
            this.tail = objArr;
            i = 0;
        }
        this.tail[i] = obj;
        this.offset = i + 1;
    }
}
