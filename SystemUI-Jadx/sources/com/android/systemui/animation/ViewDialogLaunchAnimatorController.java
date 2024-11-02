package com.android.systemui.animation;

import android.view.View;
import com.android.systemui.animation.DialogLaunchAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewDialogLaunchAnimatorController implements DialogLaunchAnimator.Controller {
    public final DialogCuj cuj;
    public final View source;
    public final Object sourceIdentity;

    public ViewDialogLaunchAnimatorController(View view, DialogCuj dialogCuj) {
        this.source = view;
        this.cuj = dialogCuj;
        this.sourceIdentity = view;
    }
}
