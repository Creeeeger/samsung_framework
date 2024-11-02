package androidx.lifecycle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface FullLifecycleObserver extends LifecycleObserver {
    void onCreate(LifecycleOwner lifecycleOwner);

    void onDestroy$1();

    void onPause$1();

    void onResume$1();
}
