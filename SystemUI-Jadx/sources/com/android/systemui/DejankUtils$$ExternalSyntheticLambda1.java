package com.android.systemui;

import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DejankUtils$$ExternalSyntheticLambda1 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        while (true) {
            ArrayList arrayList = DejankUtils.sPendingRunnables;
            if (i < arrayList.size()) {
                DejankUtils.sHandler.post((Runnable) arrayList.get(i));
                i++;
            } else {
                arrayList.clear();
                return;
            }
        }
    }
}
