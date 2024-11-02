package kotlinx.coroutines.scheduling;

import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import kotlinx.coroutines.DebugStringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TaskImpl extends Task {
    public final Runnable block;

    public TaskImpl(Runnable runnable, long j, TaskContext taskContext) {
        super(j, taskContext);
        this.block = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.block.run();
        } finally {
            this.taskContext.getClass();
        }
    }

    public final String toString() {
        String classSimpleName = DebugStringsKt.getClassSimpleName(this.block);
        String hexAddress = DebugStringsKt.getHexAddress(this.block);
        long j = this.submissionTime;
        TaskContext taskContext = this.taskContext;
        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Task[", classSimpleName, "@", hexAddress, ", ");
        m.append(j);
        m.append(", ");
        m.append(taskContext);
        m.append("]");
        return m.toString();
    }
}
