package com.samsung.android.nexus.base.reflection;

import com.samsung.android.nexus.base.utils.Log;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ReservedActionQueue {
    public final ArrayList mList = new ArrayList();

    public final void add(ReservedAction reservedAction) {
        synchronized (this.mList) {
            Log.i("ReservedActionQueue", "add action : " + reservedAction.mMethodName);
            this.mList.add(reservedAction);
        }
    }
}
