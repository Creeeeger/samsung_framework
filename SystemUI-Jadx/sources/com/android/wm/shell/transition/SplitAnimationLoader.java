package com.android.wm.shell.transition;

import android.app.WindowConfiguration;
import android.util.TypedValue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitAnimationLoader extends AnimationLoader {
    public SplitAnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        super(multiTaskingTransitionState);
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final float getCornerRadius() {
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        if (multiTaskingTransitionState.mDisplayController.getDisplayContext(multiTaskingTransitionState.mDisplayId) == null) {
            return 0.0f;
        }
        return (int) TypedValue.applyDimension(1, 12, r2.getResources().getDisplayMetrics());
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final boolean isAvailable() {
        MultiTaskingTransitionState multiTaskingTransitionState = this.mState;
        if (multiTaskingTransitionState.mWindowingMode == 6 && WindowConfiguration.isSplitScreenWindowingMode(multiTaskingTransitionState.mConfiguration.windowConfiguration)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0065  */
    @Override // com.android.wm.shell.transition.AnimationLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadAnimationIfPossible() {
        /*
            r8 = this;
            com.android.wm.shell.transition.MultiTaskingTransitionState r0 = r8.mState
            boolean r1 = r0.mHasCustomDisplayChangeTransition
            r2 = 0
            r3 = 1
            if (r1 != 0) goto Lf
            boolean r1 = r0.mSeparatedFromCustomDisplayChange
            if (r1 == 0) goto Ld
            goto Lf
        Ld:
            r1 = r2
            goto L10
        Lf:
            r1 = r3
        L10:
            if (r1 == 0) goto L18
            android.view.animation.Animation r8 = com.android.wm.shell.transition.AnimationLoader.NO_ANIMATION
            r0.setAnimation(r8)
            return
        L18:
            boolean r1 = r0.mIsPopOverAnimationNeeded
            if (r1 == 0) goto L1d
            return
        L1d:
            android.app.ActivityManager$RunningTaskInfo r1 = r0.mOpeningAppsEdgeTaskInfo
            if (r1 != 0) goto L22
            goto L3c
        L22:
            android.content.res.Configuration r1 = r0.mConfiguration
            android.app.WindowConfiguration r1 = r1.windowConfiguration
            int r1 = r1.getStageType()
            android.app.ActivityManager$RunningTaskInfo r4 = r0.mOpeningAppsEdgeTaskInfo
            android.content.res.Configuration r4 = r4.getConfiguration()
            android.app.WindowConfiguration r4 = r4.windowConfiguration
            int r4 = r4.getStageType()
            if (r1 == 0) goto L3c
            if (r1 != r4) goto L3c
            r1 = r3
            goto L3d
        L3c:
            r1 = r2
        L3d:
            r4 = 2130772632(0x7f010298, float:1.7148388E38)
            r5 = 2130772633(0x7f010299, float:1.714839E38)
            r6 = -1
            if (r1 == 0) goto L4e
            boolean r1 = r0.mIsEnter
            if (r1 != 0) goto L4e
            r1 = 2130772636(0x7f01029c, float:1.7148396E38)
            goto L76
        L4e:
            int r1 = r0.mTransitionType
            if (r1 == r3) goto L58
            r7 = 3
            if (r1 != r7) goto L56
            goto L58
        L56:
            r1 = r2
            goto L59
        L58:
            r1 = r3
        L59:
            if (r1 == 0) goto L65
            boolean r1 = r0.mIsEnter
            if (r1 == 0) goto L61
            r1 = r5
            goto L76
        L61:
            r1 = 2130772634(0x7f01029a, float:1.7148392E38)
            goto L76
        L65:
            boolean r1 = r0.isClosingTransitionType()
            if (r1 == 0) goto L75
            boolean r1 = r0.mIsEnter
            if (r1 == 0) goto L73
            r1 = 2130772631(0x7f010297, float:1.7148386E38)
            goto L76
        L73:
            r1 = r4
            goto L76
        L75:
            r1 = r6
        L76:
            if (r1 == r6) goto L94
            android.view.animation.Animation r6 = r0.loadAnimationFromResources(r1)
            if (r1 == r5) goto L80
            if (r1 != r4) goto L81
        L80:
            r2 = r3
        L81:
            if (r2 == 0) goto L91
            boolean r1 = r6 instanceof android.view.animation.AnimationSet
            if (r1 == 0) goto L91
            android.graphics.Rect r1 = r0.getBounds()
            r2 = r6
            android.view.animation.AnimationSet r2 = (android.view.animation.AnimationSet) r2
            r8.addRoundedClipAnimation(r1, r2)
        L91:
            r0.setAnimation(r6)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.SplitAnimationLoader.loadAnimationIfPossible():void");
    }

    public final String toString() {
        return "SplitAnimationLoader";
    }
}
