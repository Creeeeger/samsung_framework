package com.android.systemui.statusbar.notification;

import android.graphics.drawable.Icon;
import android.util.Pools;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import com.android.app.animation.Interpolators;
import com.android.systemui.R;
import com.android.systemui.statusbar.CrossFadeHelper;
import com.android.systemui.statusbar.TransformableView;
import com.android.systemui.statusbar.notification.TransformState;
import com.android.systemui.statusbar.notification.row.HybridNotificationView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ImageTransformState extends TransformState {
    public static final Pools.SimplePool sInstancePool = new Pools.SimplePool(40);
    public Icon mIcon;

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final void appear(float f, TransformableView transformableView) {
        if (transformableView instanceof HybridNotificationView) {
            if (f == 0.0f) {
                this.mTransformedView.setPivotY(0.0f);
                this.mTransformedView.setPivotX(r0.getWidth() / 2);
                resetTransformedView();
            }
            float max = Math.max(Math.min(((f * 360.0f) - 150.0f) / 210.0f, 1.0f), 0.0f);
            CrossFadeHelper.fadeIn(this.mTransformedView, max, false);
            float interpolation = ((PathInterpolator) Interpolators.LINEAR_OUT_SLOW_IN).getInterpolation(max);
            this.mTransformedView.setScaleX(interpolation);
            this.mTransformedView.setScaleY(interpolation);
            return;
        }
        super.appear(f, transformableView);
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public final void disappear(float f, TransformableView transformableView) {
        if (transformableView instanceof HybridNotificationView) {
            if (f == 0.0f) {
                this.mTransformedView.setPivotY(0.0f);
                this.mTransformedView.setPivotX(r0.getWidth() / 2);
            }
            float max = Math.max(Math.min((((1.0f - f) * 360.0f) - 150.0f) / 210.0f, 1.0f), 0.0f);
            CrossFadeHelper.fadeOut(this.mTransformedView, 1.0f - max, false);
            float interpolation = ((PathInterpolator) Interpolators.LINEAR_OUT_SLOW_IN).getInterpolation(max);
            this.mTransformedView.setScaleX(interpolation);
            this.mTransformedView.setScaleY(interpolation);
            return;
        }
        super.disappear(f, transformableView);
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public void initFrom(View view, TransformState.TransformInfo transformInfo) {
        super.initFrom(view, transformInfo);
        if (view instanceof ImageView) {
            this.mIcon = (Icon) view.getTag(R.id.image_icon_tag);
        }
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public void recycle() {
        super.recycle();
        if (getClass() == ImageTransformState.class) {
            sInstancePool.release(this);
        }
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public void reset() {
        super.reset();
        this.mIcon = null;
    }

    @Override // com.android.systemui.statusbar.notification.TransformState
    public boolean sameAs(TransformState transformState) {
        if (this.mSameAsAny) {
            return true;
        }
        if (!(transformState instanceof ImageTransformState)) {
            return false;
        }
        Icon icon = ((ImageTransformState) transformState).mIcon;
        Icon icon2 = this.mIcon;
        if (icon2 == icon) {
            return true;
        }
        if (icon2 != null && icon != null && icon2.sameAs(icon)) {
            return true;
        }
        return false;
    }
}
