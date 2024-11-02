package com.android.wm.shell.dagger;

import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.common.TransactionPool;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellBaseModule_ProvideSyncTransactionQueueFactory implements Provider {
    public final Provider mainExecutorProvider;
    public final Provider poolProvider;

    public WMShellBaseModule_ProvideSyncTransactionQueueFactory(Provider provider, Provider provider2) {
        this.poolProvider = provider;
        this.mainExecutorProvider = provider2;
    }

    public static SyncTransactionQueue provideSyncTransactionQueue(TransactionPool transactionPool, ShellExecutor shellExecutor) {
        return new SyncTransactionQueue(transactionPool, shellExecutor);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SyncTransactionQueue((TransactionPool) this.poolProvider.get(), (ShellExecutor) this.mainExecutorProvider.get());
    }
}
