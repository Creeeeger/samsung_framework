package com.android.systemui.qp.util;

import android.util.Log;
import android.view.Display;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SubscreenUtil$$ExternalSyntheticLambda0 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Display display = (Display) obj;
        if (display == null) {
            Log.d("SubscreenUtil", "Do not show SubScreen UI on null display");
        } else {
            if (display.getDisplayId() == 1) {
                Log.d("SubscreenUtil", "Show SubScreen UI on this display " + display);
                return true;
            }
            Log.d("SubscreenUtil", "Do not show SubScreen UI on this display " + display);
        }
        return false;
    }
}
