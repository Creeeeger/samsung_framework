package com.android.systemui.navigationbar.buttons;

import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.shared.rotation.RotationButton;
import com.android.systemui.shared.rotation.RotationButtonController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RotationContextButton extends ContextualButton implements RotationButton {
    public RotationButtonController mRotationButtonController;

    public RotationContextButton(int i, Context context, int i2) {
        super(i, context, i2);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final boolean acceptRotationProposal() {
        View view = this.mCurrentView;
        if (view != null && view.isAttachedToWindow()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final Drawable getImageDrawable() {
        return this.mImageDrawable;
    }

    @Override // com.android.systemui.navigationbar.buttons.ContextualButton
    public final KeyButtonDrawable getNewDrawable(int i, int i2) {
        return KeyButtonDrawable.create(this.mRotationButtonController.getContext(), i, i2, this.mRotationButtonController.mIconResId, false);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setRotationButtonController(RotationButtonController rotationButtonController) {
        this.mRotationButtonController = rotationButtonController;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setUpdatesCallback(NavigationBarView.AnonymousClass2 anonymousClass2) {
        this.mListener = new RotationContextButton$$ExternalSyntheticLambda0(anonymousClass2);
    }

    @Override // com.android.systemui.navigationbar.buttons.ContextualButton, com.android.systemui.navigationbar.buttons.ButtonDispatcher
    public final void setVisibility(int i) {
        super.setVisibility(i);
        KeyButtonDrawable keyButtonDrawable = this.mImageDrawable;
        if (i == 0 && keyButtonDrawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = keyButtonDrawable.mAnimatedDrawable;
            if (animatedVectorDrawable != null) {
                animatedVectorDrawable.reset();
            }
            AnimatedVectorDrawable animatedVectorDrawable2 = keyButtonDrawable.mAnimatedDrawable;
            if (animatedVectorDrawable2 != null) {
                animatedVectorDrawable2.start();
            }
        }
    }
}
