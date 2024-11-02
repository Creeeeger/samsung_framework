package com.android.wm.shell.pip.phone;

import android.content.Context;
import android.widget.FrameLayout;
import com.android.wm.shell.common.DismissButtonManager;
import com.android.wm.shell.common.DismissButtonManager$$ExternalSyntheticLambda0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipDismissButtonView extends FrameLayout {
    public final DismissButtonManager mDismissButtonManager;

    public PipDismissButtonView(Context context) {
        super(context);
        this.mDismissButtonManager = new DismissButtonManager(context, 2);
    }

    public final void hideDismissTargetMaybe() {
        boolean z;
        DismissButtonManager dismissButtonManager = this.mDismissButtonManager;
        if (dismissButtonManager.mView != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            dismissButtonManager.getClass();
            dismissButtonManager.hide(new DismissButtonManager$$ExternalSyntheticLambda0(dismissButtonManager));
            dismissButtonManager.mView.updateView(false, false);
        }
    }
}
