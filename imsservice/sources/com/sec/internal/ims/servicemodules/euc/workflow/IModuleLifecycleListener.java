package com.sec.internal.ims.servicemodules.euc.workflow;

/* loaded from: classes.dex */
public interface IModuleLifecycleListener {
    void discard(String str);

    void load(String str);

    void start();

    void stop();
}
