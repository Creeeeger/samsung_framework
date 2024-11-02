package io.reactivex.disposables;

import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Disposables {
    private Disposables() {
        throw new IllegalStateException("No instances!");
    }

    public static Disposable fromRunnable(TrampolineScheduler.TrampolineWorker.AppendToQueueTask appendToQueueTask) {
        int i = ObjectHelper.$r8$clinit;
        return new RunnableDisposable(appendToQueueTask);
    }
}
