package com.android.server.backup.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.OperationStorage;
import com.android.server.backup.UserBackupManagerService;
import java.util.Objects;

/* loaded from: classes.dex */
public class BackupHandler extends Handler {
    public final UserBackupManagerService backupManagerService;
    public final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    public final HandlerThread mBackupThread;
    volatile boolean mIsStopping;
    public final OperationStorage mOperationStorage;

    public BackupHandler(UserBackupManagerService userBackupManagerService, OperationStorage operationStorage, HandlerThread handlerThread) {
        super(handlerThread.getLooper());
        this.mIsStopping = false;
        this.mBackupThread = handlerThread;
        this.backupManagerService = userBackupManagerService;
        this.mOperationStorage = operationStorage;
        BackupAgentTimeoutParameters agentTimeoutParameters = userBackupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
    }

    public void stop() {
        this.mIsStopping = true;
        sendMessage(obtainMessage(22));
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        try {
            dispatchMessageInternal(message);
        } catch (Exception e) {
            if (!this.mIsStopping) {
                throw e;
            }
        }
    }

    public void dispatchMessageInternal(Message message) {
        super.dispatchMessage(message);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:226:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v8 */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleMessage(android.os.Message r26) {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.internal.BackupHandler.handleMessage(android.os.Message):void");
    }
}
