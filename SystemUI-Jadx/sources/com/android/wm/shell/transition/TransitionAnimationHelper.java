package com.android.wm.shell.transition;

import android.graphics.Insets;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.window.TransitionInfo;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TransitionAnimationHelper {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
    
        if (r9.equals("Right Edge Extension") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void createExtensionSurface(android.view.SurfaceControl r4, android.graphics.Rect r5, android.graphics.Rect r6, int r7, int r8, java.lang.String r9, android.view.SurfaceControl.Transaction r10, android.view.SurfaceControl.Transaction r11) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.TransitionAnimationHelper.createExtensionSurface(android.view.SurfaceControl, android.graphics.Rect, android.graphics.Rect, int, int, java.lang.String, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction):void");
    }

    public static void edgeExtendWindow(TransitionInfo.Change change, Animation animation, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        if ((change.getFlags() & 8) != 0 || change.hasFlags(QuickStepContract.SYSUI_STATE_GAME_TOOLS_SHOWING)) {
            return;
        }
        Transformation transformation = new Transformation();
        animation.getTransformationAt(0.0f, transformation);
        Transformation transformation2 = new Transformation();
        animation.getTransformationAt(1.0f, transformation2);
        Insets min = Insets.min(transformation.getInsets(), transformation2.getInsets());
        int max = Math.max(change.getStartAbsBounds().height(), change.getEndAbsBounds().height());
        int max2 = Math.max(change.getStartAbsBounds().width(), change.getEndAbsBounds().width());
        if (min.left < 0) {
            createExtensionSurface(change.getLeash(), new Rect(0, 0, 1, max), new Rect(0, 0, -min.left, max), min.left, 0, "Left Edge Extension", transaction, transaction2);
        }
        if (min.top < 0) {
            createExtensionSurface(change.getLeash(), new Rect(0, 0, max2, 1), new Rect(0, 0, max2, -min.top), 0, min.top, "Top Edge Extension", transaction, transaction2);
        }
        if (min.right < 0) {
            createExtensionSurface(change.getLeash(), new Rect(max2 - 1, 0, max2, max), new Rect(0, 0, -min.right, max), max2, 0, "Right Edge Extension", transaction, transaction2);
        }
        if (min.bottom < 0) {
            createExtensionSurface(change.getLeash(), new Rect(0, max - 1, max2, max), new Rect(0, 0, max2, -min.bottom), min.left, max, "Bottom Edge Extension", transaction, transaction2);
        }
    }

    public static int getTransitionBackgroundColorIfSet(TransitionInfo transitionInfo, TransitionInfo.Change change, Animation animation, int i) {
        if (!animation.getShowBackdrop()) {
            return i;
        }
        if (transitionInfo.getAnimationOptions() != null && transitionInfo.getAnimationOptions().getBackgroundColor() != 0) {
            return transitionInfo.getAnimationOptions().getBackgroundColor();
        }
        if (animation.getBackdropColor() != 0) {
            return animation.getBackdropColor();
        }
        if (change.getBackgroundColor() != 0) {
            return change.getBackgroundColor();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x019c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.view.animation.Animation loadAttributeAnimation(android.window.TransitionInfo r17, android.window.TransitionInfo.Change r18, int r19, com.android.internal.policy.TransitionAnimation r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.TransitionAnimationHelper.loadAttributeAnimation(android.window.TransitionInfo, android.window.TransitionInfo$Change, int, com.android.internal.policy.TransitionAnimation, boolean):android.view.animation.Animation");
    }
}
