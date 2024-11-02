package com.android.wm.shell.transition;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DexAnimationLoader extends AnimationLoader {
    public DexAnimationLoader(MultiTaskingTransitionState multiTaskingTransitionState) {
        super(multiTaskingTransitionState);
    }

    @Override // com.android.wm.shell.transition.AnimationLoader
    public final boolean isAvailable() {
        if (this.mState.mConfiguration.semDesktopModeEnabled == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0091, code lost:
    
        if (r8.mIsEnter == false) goto L44;
     */
    @Override // com.android.wm.shell.transition.AnimationLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadAnimationIfPossible() {
        /*
            r8 = this;
            com.android.wm.shell.transition.MultiTaskingTransitionState r8 = r8.mState
            boolean r0 = r8.isActivityTypeHome()
            if (r0 == 0) goto Le
            android.view.animation.Animation r0 = com.android.wm.shell.transition.AnimationLoader.DIRECT_SHOW_ANIMATION
            r8.setAnimation(r0)
            return
        Le:
            boolean r0 = com.samsung.android.rune.CoreRune.MD_DEX_MINIMIZE_SHELL_TRANSITION
            r6 = 1
            r7 = 0
            if (r0 == 0) goto L71
            android.view.DisplayInfo r0 = new android.view.DisplayInfo
            r0.<init>()
            com.android.wm.shell.common.DisplayController r1 = r8.mDisplayController
            int r2 = r8.mDisplayId
            android.content.Context r1 = r1.getDisplayContext(r2)
            android.view.Display r1 = r1.getDisplay()
            r1.getDisplayInfo(r0)
            android.graphics.PointF r2 = new android.graphics.PointF
            r2.<init>()
            int r1 = r0.logicalWidth
            float r1 = (float) r1
            r3 = 1073741824(0x40000000, float:2.0)
            float r1 = r1 / r3
            int r0 = r0.logicalHeight
            float r0 = (float) r0
            r2.set(r1, r0)
            int r0 = r8.mMinimizeAnimState
            if (r0 != r6) goto L3f
            r1 = r6
            goto L40
        L3f:
            r1 = r7
        L40:
            if (r1 == 0) goto L50
            r1 = 0
            android.graphics.Rect r3 = r8.getBounds()
            r4 = 1065353216(0x3f800000, float:1.0)
            r5 = 0
            r0 = r8
            android.view.animation.Animation r0 = r0.createMinimizeAnimation(r1, r2, r3, r4, r5)
            goto L67
        L50:
            r1 = 2
            if (r0 != r1) goto L55
            r0 = r6
            goto L56
        L55:
            r0 = r7
        L56:
            if (r0 == 0) goto L66
            r1 = 1
            android.graphics.Rect r3 = r8.getBounds()
            r4 = 1065353216(0x3f800000, float:1.0)
            r5 = 0
            r0 = r8
            android.view.animation.Animation r0 = r0.createMinimizeAnimation(r1, r2, r3, r4, r5)
            goto L67
        L66:
            r0 = 0
        L67:
            if (r0 == 0) goto L6c
            r8.setAnimation(r0)
        L6c:
            boolean r0 = r8.mAnimationLoaded
            if (r0 == 0) goto L71
            return
        L71:
            int r0 = r8.mWindowingMode
            if (r0 != r6) goto L77
            r0 = r6
            goto L78
        L77:
            r0 = r7
        L78:
            if (r0 == 0) goto L94
            android.app.ActivityManager$RunningTaskInfo r0 = r8.mTaskInfo
            if (r0 == 0) goto L80
            r0 = r6
            goto L81
        L80:
            r0 = r7
        L81:
            if (r0 == 0) goto L94
            boolean r0 = r8.isClosingTransitionType()
            if (r0 == 0) goto L94
            boolean r0 = r8.isActivityTypeHome()
            if (r0 != 0) goto L94
            boolean r0 = r8.mIsEnter
            if (r0 != 0) goto L94
            goto L95
        L94:
            r6 = r7
        L95:
            if (r6 == 0) goto La1
            r0 = 2130772395(0x7f0101ab, float:1.7147907E38)
            android.view.animation.Animation r0 = r8.loadAnimationFromResources(r0)
            r8.setAnimation(r0)
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.DexAnimationLoader.loadAnimationIfPossible():void");
    }

    public final String toString() {
        return "DexAnimationLoader";
    }
}
