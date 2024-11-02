package androidx.lifecycle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface DefaultLifecycleObserver extends FullLifecycleObserver {
    @Override // androidx.lifecycle.FullLifecycleObserver
    default void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.FullLifecycleObserver
    default void onDestroy$1() {
    }

    @Override // androidx.lifecycle.FullLifecycleObserver
    default void onPause$1() {
    }

    @Override // androidx.lifecycle.FullLifecycleObserver
    default void onResume$1() {
    }
}
