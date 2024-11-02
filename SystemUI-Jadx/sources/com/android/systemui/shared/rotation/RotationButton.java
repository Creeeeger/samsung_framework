package com.android.systemui.shared.rotation;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.systemui.navigationbar.NavigationBarView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface RotationButton {
    default boolean acceptRotationProposal() {
        if (getCurrentView() != null) {
            return true;
        }
        return false;
    }

    View getCurrentView();

    Drawable getImageDrawable();

    boolean hide();

    boolean isVisible();

    void setDarkIntensity(float f);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnHoverListener(RotationButtonController$$ExternalSyntheticLambda3 rotationButtonController$$ExternalSyntheticLambda3);

    void setRotationButtonController(RotationButtonController rotationButtonController);

    void setUpdatesCallback(NavigationBarView.AnonymousClass2 anonymousClass2);

    boolean show();

    void updateIcon(int i, int i2);

    default void setCanShowRotationButton(boolean z) {
    }
}
