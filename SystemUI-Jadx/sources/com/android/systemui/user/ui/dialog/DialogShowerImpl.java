package com.android.systemui.user.ui.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.qs.user.UserSwitchDialogController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DialogShowerImpl implements DialogInterface, UserSwitchDialogController.DialogShower {
    public final Dialog animateFrom;
    public final DialogLaunchAnimator dialogLaunchAnimator;

    public DialogShowerImpl(Dialog dialog, DialogLaunchAnimator dialogLaunchAnimator) {
        this.animateFrom = dialog;
        this.dialogLaunchAnimator = dialogLaunchAnimator;
    }

    @Override // android.content.DialogInterface
    public final void cancel() {
        this.animateFrom.cancel();
    }

    @Override // android.content.DialogInterface
    public final void dismiss() {
        this.animateFrom.dismiss();
    }
}
