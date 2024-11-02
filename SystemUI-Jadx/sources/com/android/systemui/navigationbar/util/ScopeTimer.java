package com.android.systemui.navigationbar.util;

import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScopeTimer {
    public StandaloneCoroutine job;
    public final CoroutineScope scope;

    public ScopeTimer(CoroutineScope coroutineScope) {
        this.scope = coroutineScope;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0009, code lost:
    
        if (r0.isActive() == true) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void cancel() {
        /*
            r2 = this;
            kotlinx.coroutines.StandaloneCoroutine r0 = r2.job
            if (r0 == 0) goto Lc
            boolean r0 = r0.isActive()
            r1 = 1
            if (r0 != r1) goto Lc
            goto Ld
        Lc:
            r1 = 0
        Ld:
            if (r1 != 0) goto L10
            return
        L10:
            kotlinx.coroutines.StandaloneCoroutine r0 = r2.job
            r1 = 0
            if (r0 == 0) goto L18
            r0.cancel(r1)
        L18:
            r2.job = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.util.ScopeTimer.cancel():void");
    }

    public final void start(long j, Function0 function0) {
        cancel();
        this.job = BuildersKt.launch$default(this.scope, null, null, new ScopeTimer$start$1(j, function0, this, null), 3);
    }
}
