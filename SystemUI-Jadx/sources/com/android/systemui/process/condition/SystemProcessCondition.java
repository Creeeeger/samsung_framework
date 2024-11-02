package com.android.systemui.process.condition;

import android.os.Process;
import com.android.systemui.process.ProcessWrapper;
import com.android.systemui.shared.condition.Condition;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemProcessCondition extends Condition {
    public final ProcessWrapper mProcessWrapper;

    public SystemProcessCondition(CoroutineScope coroutineScope, ProcessWrapper processWrapper) {
        super(coroutineScope);
        this.mProcessWrapper = processWrapper;
    }

    @Override // com.android.systemui.shared.condition.Condition
    public final void start() {
        this.mProcessWrapper.getClass();
        updateCondition(Process.myUserHandle().isSystem());
    }

    @Override // com.android.systemui.shared.condition.Condition
    public final void stop() {
    }
}
