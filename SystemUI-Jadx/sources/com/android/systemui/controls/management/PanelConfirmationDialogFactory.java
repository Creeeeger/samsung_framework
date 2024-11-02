package com.android.systemui.controls.management;

import android.content.Context;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PanelConfirmationDialogFactory {
    public final Function1 internalDialogFactory;

    public PanelConfirmationDialogFactory(Function1 function1) {
        this.internalDialogFactory = function1;
    }

    public PanelConfirmationDialogFactory() {
        this(new Function1() { // from class: com.android.systemui.controls.management.PanelConfirmationDialogFactory.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new SystemUIDialog((Context) obj);
            }
        });
    }
}
