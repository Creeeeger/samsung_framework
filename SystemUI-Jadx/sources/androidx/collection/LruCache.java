package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LruCache {
    public int hitCount;
    public final Lock lock;
    public final LruHashMap map;
    public final int maxSize;
    public int missCount;
    public int size;

    public LruCache(int i) {
        boolean z;
        this.maxSize = i;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.map = new LruHashMap(0, 0.75f);
            this.lock = new Lock();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    public final Object get(Object obj) {
        synchronized (this.lock) {
            Object obj2 = this.map.map.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            }
            this.missCount++;
            return null;
        }
    }

    public final Object put(Object obj, Object obj2) {
        Object put;
        synchronized (this.lock) {
            this.size++;
            put = this.map.map.put(obj, obj2);
            if (put != null) {
                this.size--;
            }
            Unit unit = Unit.INSTANCE;
        }
        trimToSize(this.maxSize);
        return put;
    }

    public final String toString() {
        int i;
        String str;
        synchronized (this.lock) {
            int i2 = this.hitCount;
            int i3 = this.missCount + i2;
            if (i3 != 0) {
                i = (i2 * 100) / i3;
            } else {
                i = 0;
            }
            str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + i + "%]";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!".toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void trimToSize(int r5) {
        /*
            r4 = this;
        L0:
            androidx.collection.internal.Lock r0 = r4.lock
            monitor-enter(r0)
            int r1 = r4.size     // Catch: java.lang.Throwable -> L5f
            r2 = 1
            if (r1 < 0) goto L18
            androidx.collection.internal.LruHashMap r1 = r4.map     // Catch: java.lang.Throwable -> L5f
            java.util.LinkedHashMap r1 = r1.map     // Catch: java.lang.Throwable -> L5f
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto L16
            int r1 = r4.size     // Catch: java.lang.Throwable -> L5f
            if (r1 != 0) goto L18
        L16:
            r1 = r2
            goto L19
        L18:
            r1 = 0
        L19:
            if (r1 == 0) goto L53
            int r1 = r4.size     // Catch: java.lang.Throwable -> L5f
            if (r1 <= r5) goto L51
            androidx.collection.internal.LruHashMap r1 = r4.map     // Catch: java.lang.Throwable -> L5f
            java.util.LinkedHashMap r1 = r1.map     // Catch: java.lang.Throwable -> L5f
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto L2a
            goto L51
        L2a:
            androidx.collection.internal.LruHashMap r1 = r4.map     // Catch: java.lang.Throwable -> L5f
            java.util.LinkedHashMap r1 = r1.map     // Catch: java.lang.Throwable -> L5f
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r1 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r1)     // Catch: java.lang.Throwable -> L5f
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L5f
            if (r1 != 0) goto L3c
            monitor-exit(r0)
            return
        L3c:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> L5f
            r1.getValue()     // Catch: java.lang.Throwable -> L5f
            androidx.collection.internal.LruHashMap r1 = r4.map     // Catch: java.lang.Throwable -> L5f
            java.util.LinkedHashMap r1 = r1.map     // Catch: java.lang.Throwable -> L5f
            r1.remove(r3)     // Catch: java.lang.Throwable -> L5f
            int r1 = r4.size     // Catch: java.lang.Throwable -> L5f
            int r1 = r1 - r2
            r4.size = r1     // Catch: java.lang.Throwable -> L5f
            monitor-exit(r0)
            goto L0
        L51:
            monitor-exit(r0)
            return
        L53:
            java.lang.String r4 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L5f
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L5f
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L5f
            throw r5     // Catch: java.lang.Throwable -> L5f
        L5f:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }
}
