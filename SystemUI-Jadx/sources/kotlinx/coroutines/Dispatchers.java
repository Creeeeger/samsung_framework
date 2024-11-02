package kotlinx.coroutines;

import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Dispatchers {
    public static final DefaultScheduler Default;
    public static final DefaultIoScheduler IO;
    public static final Unconfined Unconfined;

    static {
        new Dispatchers();
        Default = DefaultScheduler.INSTANCE;
        Unconfined = Unconfined.INSTANCE;
        IO = DefaultIoScheduler.INSTANCE;
    }

    private Dispatchers() {
    }
}
