package com.android.systemui.util.leak;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WeakIdentityHashMap {
    public final HashMap mMap = new HashMap();
    public final ReferenceQueue mRefQueue = new ReferenceQueue();

    public final void cleanUp() {
        while (true) {
            Reference poll = this.mRefQueue.poll();
            if (poll != null) {
                this.mMap.remove(poll);
            } else {
                return;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CmpWeakReference extends WeakReference {
        public final int mHashCode;

        public CmpWeakReference(Object obj) {
            super(obj);
            this.mHashCode = System.identityHashCode(obj);
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            T t = get();
            if (t != 0 && (obj instanceof CmpWeakReference) && ((CmpWeakReference) obj).get() == t) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.mHashCode;
        }

        public CmpWeakReference(Object obj, ReferenceQueue<Object> referenceQueue) {
            super(obj, referenceQueue);
            this.mHashCode = System.identityHashCode(obj);
        }
    }
}
