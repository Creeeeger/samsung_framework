package com.android.wm.shell.common;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ExecutorUtils$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Consumer f$0;
    public final /* synthetic */ RemoteCallable f$1;

    public /* synthetic */ ExecutorUtils$$ExternalSyntheticLambda0(Consumer consumer, RemoteCallable remoteCallable, int i) {
        this.$r8$classId = i;
        this.f$0 = consumer;
        this.f$1 = remoteCallable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.accept(this.f$1);
                return;
            case 1:
                this.f$0.accept(this.f$1);
                return;
            default:
                this.f$0.accept(this.f$1);
                return;
        }
    }
}
