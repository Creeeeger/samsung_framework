package com.android.wm.shell.common;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DismissButtonManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ DismissButtonManager f$0;

    public /* synthetic */ DismissButtonManager$$ExternalSyntheticLambda0(DismissButtonManager dismissButtonManager) {
        this.f$0 = dismissButtonManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.cleanUpDismissTarget();
    }
}
