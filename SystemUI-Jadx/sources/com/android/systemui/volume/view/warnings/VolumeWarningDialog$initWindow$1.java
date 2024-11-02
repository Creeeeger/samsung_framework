package com.android.systemui.volume.view.warnings;

import android.view.Window;
import android.view.WindowManager;
import com.android.systemui.R;
import com.android.systemui.volume.util.ContextUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeWarningDialog$initWindow$1 implements Runnable {
    public final /* synthetic */ VolumeWarningDialog this$0;

    public VolumeWarningDialog$initWindow$1(VolumeWarningDialog volumeWarningDialog) {
        this.this$0 = volumeWarningDialog;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int dimenInt = ContextUtils.getDimenInt(R.dimen.volume_warning_popup_margin_horizontal_clear_cover, this.this$0.getContext());
        int dimenInt2 = ContextUtils.getDimenInt(R.dimen.volume_warning_popup_margin_bottom_clear_cover, this.this$0.getContext());
        int dimenInt3 = ContextUtils.getDimenInt(R.dimen.navigation_bar_height, this.this$0.getContext());
        this.this$0.getWindow().setLayout(ContextUtils.getDisplayWidth(this.this$0.getContext()) - (dimenInt * 2), -2);
        Window window = this.this$0.getWindow();
        WindowManager.LayoutParams attributes = this.this$0.getWindow().getAttributes();
        attributes.y = dimenInt2 - dimenInt3;
        window.setAttributes(attributes);
    }
}
