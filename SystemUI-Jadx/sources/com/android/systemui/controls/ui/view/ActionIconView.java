package com.android.systemui.controls.ui.view;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.android.systemui.BasicRune;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ActionIconView {
    public CharSequence actionButtonDescription;
    public final ImageView actionIcon;
    public final ProgressBar actionIconProgress;
    public CharSequence title = "";
    public CharSequence subTitle = "";

    public ActionIconView(ViewStub viewStub) {
        viewStub.setLayoutResource(R.layout.controls_action_icon_view);
        View inflate = viewStub.inflate();
        ImageView imageView = (ImageView) inflate.findViewById(R.id.action_icon);
        this.actionIcon = imageView;
        if (BasicRune.CONTROLS_AUI) {
            imageView.setSoundEffectsEnabled(false);
        }
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS) {
            this.actionIconProgress = (ProgressBar) inflate.findViewById(R.id.action_icon_progress_circle);
        }
        this.actionButtonDescription = viewStub.getContext().getString(R.string.controls_main_action_button);
    }

    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.actionIcon.setOnClickListener(onClickListener);
    }

    public final void updateContentDescription() {
        this.actionIcon.setContentDescription(((Object) this.subTitle) + " " + ((Object) this.title) + ", " + ((Object) this.actionButtonDescription));
    }
}
