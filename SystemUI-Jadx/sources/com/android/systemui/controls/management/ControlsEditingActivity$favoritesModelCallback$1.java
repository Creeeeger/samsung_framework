package com.android.systemui.controls.management;

import android.view.View;
import com.android.systemui.controls.management.FavoritesModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsEditingActivity$favoritesModelCallback$1 implements FavoritesModel.FavoritesModelCallback {
    public final /* synthetic */ ControlsEditingActivity this$0;

    public ControlsEditingActivity$favoritesModelCallback$1(ControlsEditingActivity controlsEditingActivity) {
        this.this$0 = controlsEditingActivity;
    }

    @Override // com.android.systemui.controls.management.ControlsModel.ControlsModelCallback
    public final void onFirstChange() {
        View view = this.this$0.saveButton;
        if (view == null) {
            view = null;
        }
        view.setEnabled(true);
    }

    @Override // com.android.systemui.controls.management.ControlsModel.ControlsModelCallback
    public final void onChange() {
    }
}
