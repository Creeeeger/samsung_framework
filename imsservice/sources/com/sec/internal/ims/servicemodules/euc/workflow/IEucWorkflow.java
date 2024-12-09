package com.sec.internal.ims.servicemodules.euc.workflow;

import com.sec.internal.ims.servicemodules.euc.data.IEucQuery;

/* loaded from: classes.dex */
public interface IEucWorkflow extends IModuleLifecycleListener {
    void changeLanguage(String str);

    void handleIncomingEuc(IEucQuery iEucQuery);
}
