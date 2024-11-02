package com.android.systemui.util;

import android.content.Context;
import com.android.systemui.qp.SubscreenQsPanelDialog;
import com.android.systemui.statusbar.phone.SystemUIDialog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SystemUIDialogUtils {
    public static SystemUIDialog createSystemUIDialogUtils(int i, Context context) {
        if (context.getDisplayId() != 0) {
            return new SubscreenQsPanelDialog(context, i);
        }
        return new SystemUIDialog(context, i);
    }
}
