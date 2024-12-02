package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LruCache.kt */
/* loaded from: classes.dex */
public class LruCache<K, V> {
    private int hitCount;
    private final Lock lock;
    private final LruHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int size;

    public LruCache(int i) {
        this.maxSize = i;
        if (!(i > 0)) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        this.map = new LruHashMap<>();
        this.lock = new Lock();
    }

    public final V get(K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            V v = this.map.get(key);
            if (v != null) {
                this.hitCount++;
                return v;
            }
            this.missCount++;
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0078 A[Catch: all -> 0x009f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:13:0x0027, B:15:0x002c, B:17:0x0034, B:21:0x003d, B:23:0x0041, B:25:0x004a, B:27:0x0054, B:31:0x0072, B:33:0x0078, B:39:0x005d, B:40:0x0062, B:42:0x006e, B:48:0x0093, B:49:0x009e), top: B:12:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final V put(K r6, V r7) {
        /*
            r5 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            androidx.collection.internal.Lock r0 = r5.lock
            monitor-enter(r0)
            int r1 = r5.size     // Catch: java.lang.Throwable -> La2
            r2 = 1
            int r1 = r1 + r2
            r5.size = r1     // Catch: java.lang.Throwable -> La2
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> La2
            java.lang.Object r6 = r1.put(r6, r7)     // Catch: java.lang.Throwable -> La2
            if (r6 == 0) goto L21
            int r7 = r5.size     // Catch: java.lang.Throwable -> La2
            int r7 = r7 + (-1)
            r5.size = r7     // Catch: java.lang.Throwable -> La2
        L21:
            monitor-exit(r0)
            int r7 = r5.maxSize
        L24:
            androidx.collection.internal.Lock r0 = r5.lock
            monitor-enter(r0)
            int r1 = r5.size     // Catch: java.lang.Throwable -> L9f
            r3 = 0
            if (r1 < 0) goto L3a
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L9f
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L9f
            if (r1 == 0) goto L38
            int r1 = r5.size     // Catch: java.lang.Throwable -> L9f
            if (r1 != 0) goto L3a
        L38:
            r1 = r2
            goto L3b
        L3a:
            r1 = r3
        L3b:
            if (r1 == 0) goto L93
            int r1 = r5.size     // Catch: java.lang.Throwable -> L9f
            if (r1 <= r7) goto L91
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L9f
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L9f
            if (r1 == 0) goto L4a
            goto L91
        L4a:
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L9f
            java.util.Set r1 = r1.getEntries()     // Catch: java.lang.Throwable -> L9f
            boolean r4 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L9f
            if (r4 == 0) goto L62
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L9f
            boolean r4 = r1.isEmpty()     // Catch: java.lang.Throwable -> L9f
            if (r4 == 0) goto L5d
            goto L6c
        L5d:
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L9f
            goto L72
        L62:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L9f
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L9f
            if (r3 != 0) goto L6e
        L6c:
            r1 = 0
            goto L72
        L6e:
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L9f
        L72:
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L9f
            if (r1 != 0) goto L78
            monitor-exit(r0)
            goto L92
        L78:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L9f
            androidx.collection.internal.LruHashMap<K, V> r4 = r5.map     // Catch: java.lang.Throwable -> L9f
            r4.remove(r3)     // Catch: java.lang.Throwable -> L9f
            int r3 = r5.size     // Catch: java.lang.Throwable -> L9f
            java.lang.String r4 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r4)     // Catch: java.lang.Throwable -> L9f
            int r3 = r3 - r2
            r5.size = r3     // Catch: java.lang.Throwable -> L9f
            monitor-exit(r0)
            goto L24
        L91:
            monitor-exit(r0)
        L92:
            return r6
        L93:
            java.lang.String r5 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L9f
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L9f
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L9f
            throw r6     // Catch: java.lang.Throwable -> L9f
        L9f:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        La2:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public final String toString() {
        String str;
        synchronized (this.lock) {
            int i = this.hitCount;
            int i2 = this.missCount + i;
            str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
        }
        return str;
    }
}
