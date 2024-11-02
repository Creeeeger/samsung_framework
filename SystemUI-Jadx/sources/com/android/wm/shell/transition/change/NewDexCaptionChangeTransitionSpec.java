package com.android.wm.shell.transition.change;

import android.view.animation.Animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NewDexCaptionChangeTransitionSpec extends StandardChangeTransitionSpec {
    @Override // com.android.wm.shell.transition.change.StandardChangeTransitionSpec, com.android.wm.shell.transition.change.ChangeTransitionSpec
    public final Animation createSnapshotAnimation() {
        Animation createSnapshotAnimation = super.createSnapshotAnimation();
        if (this.mChange.getConfiguration().windowConfiguration.isSplitScreen()) {
            createSnapshotAnimation.setHasRoundedCorners(true);
            createSnapshotAnimation.setRoundedCornerRadius(getCornerRadius());
        }
        return createSnapshotAnimation;
    }

    @Override // com.android.wm.shell.transition.change.StandardChangeTransitionSpec
    public final float getCornerRadius() {
        return ChangeTransitionSpec.dipToPixel(12, this.mContext);
    }

    @Override // com.android.wm.shell.transition.change.ChangeTransitionSpec
    public final long getSnapshotAlphaAnimationDuration() {
        return this.mDurationScale * 300.0f;
    }
}
