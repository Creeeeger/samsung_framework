package com.android.server.wm;

import android.graphics.Rect;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public class BoundsCompatAlignmentController {
    public static final String TAG = "BoundsCompatAlignmentController";
    public boolean mAnimationEnabled;
    public ActivityTaskManagerService mAtmService;
    public final BoundsCompatAlignment mGlobalAlignment;
    public final Runnable mRecomputeConfiguration;

    /* loaded from: classes3.dex */
    public abstract class LazyHolder {
        public static final BoundsCompatAlignmentController sController = new BoundsCompatAlignmentController();
    }

    public static BoundsCompatAlignmentController getController() {
        return LazyHolder.sController;
    }

    public static void setAtmService(ActivityTaskManagerService activityTaskManagerService) {
        getController().mAtmService = activityTaskManagerService;
    }

    public static void setAlignmentLocked(int i) {
        BoundsCompatAlignmentController controller = getController();
        if (i == controller.mGlobalAlignment.getAlignment()) {
            return;
        }
        controller.mGlobalAlignment.setAlignment(i);
        scheduleRecomputeConfigurationLocked();
    }

    public static void scheduleRecomputeConfigurationLocked() {
        BoundsCompatAlignmentController controller = getController();
        ActivityTaskManagerService activityTaskManagerService = controller.mAtmService;
        if (activityTaskManagerService == null || activityTaskManagerService.mH.hasCallbacks(controller.mRecomputeConfiguration)) {
            return;
        }
        controller.mAtmService.mH.post(controller.mRecomputeConfiguration);
    }

    public static int getAlignmentLocked() {
        return getGlobalBoundsCompatAlignmentLocked().getAlignment();
    }

    public static BoundsCompatAlignment getGlobalBoundsCompatAlignmentLocked() {
        return getController().mGlobalAlignment;
    }

    public static void dumpLocked(PrintWriter printWriter, String str) {
        BoundsCompatAlignmentController controller = getController();
        printWriter.print(str);
        printWriter.print(TAG);
        printWriter.print(":[ mLast");
        printWriter.print(controller.mGlobalAlignment);
        printWriter.print("]");
        printWriter.print(", FeatureEnabled=");
        printWriter.print(CoreRune.FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL);
        printWriter.print(", mAnimationEnabled=");
        printWriter.print(controller.mAnimationEnabled);
        printWriter.println();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #0 {all -> 0x004f, blocks: (B:6:0x0006, B:15:0x0032, B:18:0x0042, B:20:0x0016, B:23:0x0020), top: B:5:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean executeShellCommandLocked(java.lang.String r4, java.lang.String[] r5, java.io.PrintWriter r6) {
        /*
            boolean r0 = com.samsung.android.rune.CoreRune.SAFE_DEBUG
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r4.hashCode()     // Catch: java.lang.Throwable -> L4f
            r2 = -502148531(0xffffffffe211d24d, float:-6.724829E20)
            r3 = 1
            if (r0 == r2) goto L20
            r2 = 37703415(0x23f4ef7, float:1.4055126E-37)
            if (r0 == r2) goto L16
            goto L2a
        L16:
            java.lang.String r0 = "-setBoundsCompatAlignment"
            boolean r4 = r4.equals(r0)     // Catch: java.lang.Throwable -> L4f
            if (r4 == 0) goto L2a
            r4 = r1
            goto L2b
        L20:
            java.lang.String r0 = "-setBoundsCompatAlignmentAnimation"
            boolean r4 = r4.equals(r0)     // Catch: java.lang.Throwable -> L4f
            if (r4 == 0) goto L2a
            r4 = r3
            goto L2b
        L2a:
            r4 = -1
        L2b:
            java.lang.String r0 = ""
            if (r4 == 0) goto L42
            if (r4 == r3) goto L32
            goto L68
        L32:
            com.android.server.wm.BoundsCompatAlignmentController r4 = getController()     // Catch: java.lang.Throwable -> L4f
            r5 = r5[r1]     // Catch: java.lang.Throwable -> L4f
            boolean r5 = java.lang.Boolean.parseBoolean(r5)     // Catch: java.lang.Throwable -> L4f
            r4.mAnimationEnabled = r5     // Catch: java.lang.Throwable -> L4f
            dumpLocked(r6, r0)     // Catch: java.lang.Throwable -> L4f
            return r3
        L42:
            r4 = r5[r1]     // Catch: java.lang.Throwable -> L4f
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> L4f
            setAlignmentLocked(r4)     // Catch: java.lang.Throwable -> L4f
            dumpLocked(r6, r0)     // Catch: java.lang.Throwable -> L4f
            return r3
        L4f:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "Exception="
            r5.append(r0)
            java.lang.String r4 = r4.toString()
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r6.println(r4)
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.BoundsCompatAlignmentController.executeShellCommandLocked(java.lang.String, java.lang.String[], java.io.PrintWriter):boolean");
    }

    public static boolean shouldPlayMoveAnimation(WindowState windowState) {
        ActivityRecord activityRecord;
        return getController().mAnimationEnabled && (activityRecord = windowState.mActivityRecord) != null && activityRecord.mCompatRecord.mShouldPlayMoveAnimation;
    }

    public BoundsCompatAlignmentController() {
        this.mGlobalAlignment = BoundsCompatUtils.get().getDefaultDisplayAlignment();
        this.mRecomputeConfiguration = new Runnable() { // from class: com.android.server.wm.BoundsCompatAlignmentController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BoundsCompatAlignmentController.this.recomputeConfiguration();
            }
        };
        this.mAnimationEnabled = CoreRune.FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION;
    }

    public final boolean supportsDisplay(DisplayContent displayContent) {
        return displayContent.isDefaultDisplay;
    }

    public final void recomputeConfiguration() {
        WindowManagerGlobalLock windowManagerGlobalLock = this.mAtmService.mGlobalLock;
        WindowManagerService.boostPriorityForLockedSection();
        synchronized (windowManagerGlobalLock) {
            try {
                final ArrayList<ActivityRecord> arrayList = new ArrayList();
                final Rect rect = new Rect();
                this.mAtmService.mRootWindowContainer.forAllDisplays(new Consumer() { // from class: com.android.server.wm.BoundsCompatAlignmentController$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        BoundsCompatAlignmentController.this.lambda$recomputeConfiguration$1(rect, arrayList, (DisplayContent) obj);
                    }
                });
                if (arrayList.isEmpty()) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                this.mAtmService.mWindowManager.mWindowPlacerLocked.performSurfacePlacement();
                if (CoreRune.FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION) {
                    for (ActivityRecord activityRecord : arrayList) {
                        activityRecord.mCompatRecord.mShouldPlayMoveAnimation = false;
                        Task task = activityRecord.getTask();
                        if (task != null) {
                            task.dispatchTaskInfoChangedIfNeeded(false);
                        }
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recomputeConfiguration$1(final Rect rect, final List list, DisplayContent displayContent) {
        if (supportsDisplay(displayContent)) {
            displayContent.forAllActivities(new Consumer() { // from class: com.android.server.wm.BoundsCompatAlignmentController$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BoundsCompatAlignmentController.lambda$recomputeConfiguration$0(rect, list, (ActivityRecord) obj);
                }
            }, false);
        }
    }

    public static /* synthetic */ void lambda$recomputeConfiguration$0(Rect rect, List list, ActivityRecord activityRecord) {
        if (activityRecord.mCompatRecord.isCompatModeEnabled()) {
            Rect bounds = activityRecord.getConfiguration().windowConfiguration.getBounds();
            rect.set(bounds);
            activityRecord.recomputeConfiguration();
            if (rect.equals(bounds)) {
                return;
            }
            if (CoreRune.FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION) {
                activityRecord.mCompatRecord.mShouldPlayMoveAnimation = true;
            }
            list.add(activityRecord);
        }
    }
}
