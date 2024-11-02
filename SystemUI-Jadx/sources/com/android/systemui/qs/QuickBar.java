package com.android.systemui.qs;

import com.android.systemui.qs.bar.BarController;
import java.util.function.BooleanSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QuickBar {
    public BarController barController;
    public final BooleanSupplier qsExpandedSupplier;

    public QuickBar(BooleanSupplier booleanSupplier) {
        this.qsExpandedSupplier = booleanSupplier;
    }
}
