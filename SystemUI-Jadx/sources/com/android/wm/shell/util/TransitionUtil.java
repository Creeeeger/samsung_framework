package com.android.wm.shell.util;

import android.app.ActivityManager;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.SparseBooleanArray;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import com.android.systemui.keyguard.KeyguardService$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TransitionUtil {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LeafTaskFilter implements Predicate {
        public final SparseBooleanArray mChildTaskTargets = new SparseBooleanArray();

        @Override // java.util.function.Predicate
        public final boolean test(TransitionInfo.Change change) {
            ActivityManager.RunningTaskInfo taskInfo = change.getTaskInfo();
            if (taskInfo == null) {
                return false;
            }
            boolean z = this.mChildTaskTargets.get(taskInfo.taskId);
            if (taskInfo.hasParentTask()) {
                this.mChildTaskTargets.put(taskInfo.parentTaskId, true);
            }
            return !z;
        }
    }

    public static SurfaceControl createLeash(TransitionInfo transitionInfo, TransitionInfo.Change change, int i, SurfaceControl.Transaction transaction) {
        Rect startAbsBounds;
        if (change.getParent() != null && (change.getFlags() & 2) != 0 && (!CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX || (transitionInfo.getFlags() & 14592) == 0)) {
            return change.getLeash();
        }
        int rootIndexFor = rootIndexFor(change, transitionInfo);
        SurfaceControl build = new SurfaceControl.Builder().setName(change.getLeash().toString() + "_transition-leash").setContainerLayer().setHidden(false).setParent(transitionInfo.getRoot(rootIndexFor).getLeash()).build();
        int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, i);
        boolean isOpeningType = isOpeningType(transitionInfo.getType());
        int size = transitionInfo.getChanges().size();
        int mode = change.getMode();
        transaction.reparent(build, transitionInfo.getRoot(rootIndexFor(change, transitionInfo)).getLeash());
        if (mode == 1) {
            startAbsBounds = change.getEndAbsBounds();
        } else {
            startAbsBounds = change.getStartAbsBounds();
        }
        transaction.setPosition(build, startAbsBounds.left - transitionInfo.getRoot(r5).getOffset().x, startAbsBounds.top - transitionInfo.getRoot(r5).getOffset().y);
        if (isDividerBar(change)) {
            if (isOpeningType(mode)) {
                transaction.setAlpha(build, 0.0f);
            }
            transaction.setPosition(build, 0.0f, 0.0f);
            transaction.setLayer(build, 0);
        } else if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY && isTransientLaunchOverlay(change)) {
            transaction.setAlpha(build, 0.0f);
            transaction.setPosition(build, 0.0f, 0.0f);
        } else if ((change.getFlags() & 2) != 0) {
            if (mode != 1 && mode != 3) {
                transaction.setLayer(build, (-size) - m);
            } else {
                transaction.setLayer(build, (transitionInfo.getChanges().size() + (-size)) - m);
            }
        } else if (isOpeningType(mode)) {
            if (isOpeningType) {
                transaction.setLayer(build, (transitionInfo.getChanges().size() + size) - m);
                if ((change.getFlags() & 8) == 0) {
                    transaction.setAlpha(build, 0.0f);
                }
            } else {
                transaction.setLayer(build, size - m);
            }
        } else if (isClosingType(mode)) {
            if (isOpeningType) {
                transaction.setLayer(build, size - m);
            } else {
                transaction.setLayer(build, (transitionInfo.getChanges().size() + size) - m);
            }
        } else {
            transaction.setLayer(build, (transitionInfo.getChanges().size() + size) - m);
        }
        transaction.reparent(change.getLeash(), build);
        transaction.setAlpha(change.getLeash(), 1.0f);
        transaction.show(change.getLeash());
        if (!isDividerBar(change)) {
            transaction.setPosition(change.getLeash(), 0.0f, 0.0f);
        }
        transaction.setLayer(change.getLeash(), 0);
        return build;
    }

    public static ArrayList getMergeableTasks(TransitionInfo transitionInfo) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < transitionInfo.getChanges().size(); i++) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(i);
            if (change.getTaskInfo() != null && change.getMode() != 6) {
                arrayList.add(change);
            }
        }
        if (!arrayList.isEmpty()) {
            arrayList.sort(Comparator.comparingInt(new TransitionUtil$$ExternalSyntheticLambda0()));
        }
        return arrayList;
    }

    public static boolean hasDisplayChange(TransitionInfo transitionInfo) {
        for (int m = KeyguardService$$ExternalSyntheticOutline0.m(transitionInfo, 1); m >= 0; m--) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(m);
            if (change.getMode() == 6 && change.hasFlags(32)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasDisplayRotationChange(TransitionInfo transitionInfo) {
        for (int i = 0; i < transitionInfo.getChanges().size(); i++) {
            TransitionInfo.Change change = (TransitionInfo.Change) transitionInfo.getChanges().get(i);
            if (change.hasFlags(32) && change.getStartRotation() != change.getEndRotation()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isClosingType(int i) {
        if (i != 2 && i != 4) {
            return false;
        }
        return true;
    }

    public static boolean isDividerBar(TransitionInfo.Change change) {
        if (isNonApp(change) && change.hasFlags(QuickStepContract.SYSUI_STATE_BACK_DISABLED)) {
            return true;
        }
        return false;
    }

    public static boolean isHomeOrRecents(TransitionInfo.Change change) {
        if (change.getTaskInfo() != null && (change.getTaskInfo().getActivityType() == 2 || change.getTaskInfo().getActivityType() == 3)) {
            return true;
        }
        return false;
    }

    public static boolean isNonApp(TransitionInfo.Change change) {
        if (change.getTaskInfo() == null && !change.hasFlags(2) && !change.hasFlags(512)) {
            return true;
        }
        return false;
    }

    public static boolean isOpeningType(int i) {
        if (i == 1 || i == 3 || i == 7) {
            return true;
        }
        return false;
    }

    public static boolean isOrderOnly(TransitionInfo.Change change) {
        if (change.getResumedAffordance() || change.getMode() != 6 || (change.getFlags() & QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING) == 0 || !change.getStartAbsBounds().equals(change.getEndAbsBounds())) {
            return false;
        }
        if (change.getLastParent() != null && !change.getLastParent().equals(change.getParent())) {
            return false;
        }
        return true;
    }

    public static boolean isTopApp(TransitionInfo transitionInfo, TransitionInfo.Change change, boolean z) {
        for (int i = 0; i < transitionInfo.getChanges().size(); i++) {
            TransitionInfo.Change change2 = (TransitionInfo.Change) transitionInfo.getChanges().get(i);
            if ((change2.getTaskInfo() != null || change2.hasFlags(QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED)) && ((!z || !isClosingType(change2.getMode())) && (z || !isOpeningType(change2.getMode())))) {
                if (change2 != change) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public static boolean isTransientLaunchOverlay(TransitionInfo.Change change) {
        if (isNonApp(change) && change.hasFlags(134217728)) {
            return true;
        }
        return false;
    }

    public static boolean isWallpaper(TransitionInfo.Change change) {
        if (change.getTaskInfo() == null && change.hasFlags(2) && !change.hasFlags(512)) {
            return true;
        }
        return false;
    }

    public static RemoteAnimationTarget newTarget(TransitionInfo.Change change, int i, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, ArrayMap arrayMap) {
        SurfaceControl createLeash = createLeash(transitionInfo, change, i, transaction);
        if (arrayMap != null) {
            arrayMap.put(change.getLeash(), createLeash);
        }
        return newTarget(change, i, createLeash, false);
    }

    public static int rootIndexFor(TransitionInfo.Change change, TransitionInfo transitionInfo) {
        int findRootIndex = transitionInfo.findRootIndex(change.getEndDisplayId());
        if (findRootIndex >= 0) {
            return findRootIndex;
        }
        int findRootIndex2 = transitionInfo.findRootIndex(change.getStartDisplayId());
        if (findRootIndex2 >= 0) {
            return findRootIndex2;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.view.RemoteAnimationTarget newTarget(android.window.TransitionInfo.Change r42, int r43, android.view.SurfaceControl r44, boolean r45) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.util.TransitionUtil.newTarget(android.window.TransitionInfo$Change, int, android.view.SurfaceControl, boolean):android.view.RemoteAnimationTarget");
    }
}
