package com.android.systemui.doze.dagger;

import com.android.systemui.doze.AODMachine;
import com.android.systemui.doze.DozeMachine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface DozeComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Builder {
        DozeComponent build(DozeMachine.Service service);
    }

    AODMachine getAODMachine();
}
