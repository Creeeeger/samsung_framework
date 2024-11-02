package com.android.systemui.qp;

import android.content.Context;
import android.view.WindowManager;
import com.android.systemui.statusbar.phone.SystemUIDialog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenQsPanelDialog extends SystemUIDialog {
    public SubscreenQsPanelDialog(Context context) {
        this(context, 2132018527, true);
    }

    public SubscreenQsPanelDialog(Context context, int i) {
        this(context, i, true);
    }

    public SubscreenQsPanelDialog(Context context, boolean z) {
        this(context, 2132018527, z);
    }

    public SubscreenQsPanelDialog(Context context, int i, boolean z) {
        super(context, i);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 80;
        getWindow().setAttributes(attributes);
    }
}
