package androidx.room;

import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    public final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();

    public RoomDatabase() {
        new ThreadLocal();
        Collections.synchronizedMap(new HashMap());
        createInvalidationTracker();
        new HashMap();
        new HashMap();
    }

    public abstract InvalidationTracker createInvalidationTracker();
}
