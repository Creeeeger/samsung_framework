package com.android.systemui.qs;

import com.android.systemui.qs.buttons.QSButtonsContainerController;
import java.util.function.BooleanSupplier;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QuickPanel {
    public QSButtonsContainerController qsButtonsContainerController;
    public final BooleanSupplier qsExpandedSupplier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public QuickPanel(BooleanSupplier booleanSupplier) {
        this.qsExpandedSupplier = booleanSupplier;
    }
}
