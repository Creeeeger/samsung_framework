package com.sec.internal.interfaces.ims.core;

/* loaded from: classes.dex */
public interface IJibeRcsAutoConfig {
    boolean needClearWorkflowByDmaChange(int i);

    boolean onDefaultSmsPackageChanged(int i);

    void resetRcsUserSetting(int i);
}
