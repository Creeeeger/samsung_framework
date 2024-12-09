package com.sec.internal.interfaces.ims.core;

/* loaded from: classes.dex */
public interface IJibeRcsRegistration {
    void addDeRegisteringTask(int i, IRegisterTask iRegisterTask);

    void clearTasks(int i);

    boolean needAwaitDeRegistered(int i);

    boolean needClearTasks(int i);
}
