package com.android.systemui.wmshell;

import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubblesManager$$ExternalSyntheticLambda1 {
    public final /* synthetic */ Executor f$0;

    public /* synthetic */ BubblesManager$$ExternalSyntheticLambda1(Executor executor) {
        this.f$0 = executor;
    }

    public final void sendEventCDLog(String str, String str2, String str3) {
        this.f$0.execute(new BubblesManager$$ExternalSyntheticLambda2(str, str2, 0, str3));
    }
}
