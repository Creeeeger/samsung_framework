package com.android.wm.shell.compatui;

import android.view.View;
import android.widget.CheckBox;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RestartDialogLayout$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ RestartDialogLayout$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.$r8$classId) {
            case 0:
                CheckBox checkBox = (CheckBox) this.f$0;
                int i = RestartDialogLayout.$r8$clinit;
                checkBox.performClick();
                return;
            default:
                Runnable runnable = (Runnable) this.f$0;
                int i2 = RestartDialogLayout.$r8$clinit;
                runnable.run();
                return;
        }
    }
}
