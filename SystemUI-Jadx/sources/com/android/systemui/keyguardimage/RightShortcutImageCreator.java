package com.android.systemui.keyguardimage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.systemui.keyguardimage.ImageOptionCreator;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RightShortcutImageCreator extends AbsShortcutImageCreator {
    public RightShortcutImageCreator(Context context) {
        super(context);
    }

    @Override // com.android.systemui.keyguardimage.ImageCreator
    public final Bitmap createImage(ImageOptionCreator.ImageOption imageOption, Point point) {
        int i;
        View inflate = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.keyguard_sec_affordance_view_right, (ViewGroup) null);
        KeyguardSecAffordanceView keyguardSecAffordanceView = (KeyguardSecAffordanceView) inflate.findViewById(R.id.end_button);
        if (getShortcutManager().isShortcutForCamera(1)) {
            i = EmergencyPhoneWidget.BG_COLOR;
        } else {
            i = -1;
        }
        keyguardSecAffordanceView.mRectangleColor = i;
        updateCustomShortcutIcon(keyguardSecAffordanceView, 1, getShortcutManager().hasShortcut(1));
        Bitmap viewImage = ImageCreator.getViewImage(inflate, imageOption);
        if (viewImage != null && point != null) {
            point.x = (imageOption.width - viewImage.getWidth()) - getSideMargin(imageOption);
            point.y = (imageOption.height - viewImage.getHeight()) - getBottomMargin(imageOption);
        }
        return viewImage;
    }
}
