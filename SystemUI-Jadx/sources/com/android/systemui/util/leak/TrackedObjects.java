package com.android.systemui.util.leak;

import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TrackedObjects {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TrackedClass extends AbstractCollection {
        public final WeakIdentityHashMap instances = new WeakIdentityHashMap();

        private TrackedClass() {
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            WeakIdentityHashMap weakIdentityHashMap = this.instances;
            weakIdentityHashMap.cleanUp();
            return weakIdentityHashMap.mMap.isEmpty();
        }

        @Override // java.util.Collection
        public final int size() {
            WeakIdentityHashMap weakIdentityHashMap = this.instances;
            weakIdentityHashMap.cleanUp();
            return weakIdentityHashMap.mMap.size();
        }
    }

    public TrackedObjects(TrackedCollections trackedCollections) {
        new WeakHashMap();
    }
}
