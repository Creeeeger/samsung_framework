package com.android.wm.shell.transition;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.HardwareBuffer;
import android.os.Handler;
import android.os.IBinder;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.view.Choreographer;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.window.TransitionInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import com.android.internal.policy.TransitionAnimation;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.transition.change.ChangeTransitionProvider;
import com.android.wm.shell.util.TransitionUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DefaultTransitionHandler implements Transitions.TransitionHandler {
    public final ShellExecutor mAnimExecutor;
    public CapturedBlurHelper mCapturedBlurHelper;
    public ChangeTransitionProvider mChangeTransitProvider;
    public final Context mContext;
    public final DevicePolicyManager mDevicePolicyManager;
    public DimTransitionProvider mDimTransitionProvider;
    public final DisplayController mDisplayController;
    public Drawable mEnterpriseThumbnailDrawable;
    public final ShellExecutor mMainExecutor;
    public final Handler mMainHandler;
    public long mMaxRotationAnimationDuration;
    public MultiTaskingTransitionProvider mMultiTaskingTransitProvider;
    public final RootTaskDisplayAreaOrganizer mRootTDAOrganizer;
    public boolean mSkipMergeAnimation;
    public final TransactionPool mTransactionPool;
    public final TransitionAnimation mTransitionAnimation;
    public final SurfaceSession mSurfaceSession = new SurfaceSession();
    public final ArrayMap mAnimations = new ArrayMap();
    public final CounterRotatorHelper mRotator = new CounterRotatorHelper();
    public final Rect mInsets = new Rect(0, 0, 0, 0);
    public float mTransitionAnimationScaleSetting = 1.0f;
    public final AnonymousClass1 mEnterpriseResourceUpdatedReceiver = new BroadcastReceiver() { // from class: com.android.wm.shell.transition.DefaultTransitionHandler.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getIntExtra("android.app.extra.RESOURCE_TYPE", -1) != 1) {
                return;
            }
            DefaultTransitionHandler defaultTransitionHandler = DefaultTransitionHandler.this;
            defaultTransitionHandler.mEnterpriseThumbnailDrawable = defaultTransitionHandler.mDevicePolicyManager.getResources().getDrawable("WORK_PROFILE_ICON", "OUTLINE", "PROFILE_SWITCH_ANIMATION", new DefaultTransitionHandler$$ExternalSyntheticLambda1(defaultTransitionHandler));
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CapturedBlurHelper {
        public Thread mBrThread;

        public /* synthetic */ CapturedBlurHelper(DefaultTransitionHandler defaultTransitionHandler, int i) {
            this();
        }

        private CapturedBlurHelper() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.wm.shell.transition.DefaultTransitionHandler$1] */
    public DefaultTransitionHandler(Context context, ShellInit shellInit, DisplayController displayController, TransactionPool transactionPool, ShellExecutor shellExecutor, Handler handler, ShellExecutor shellExecutor2, RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer) {
        this.mDisplayController = displayController;
        this.mTransactionPool = transactionPool;
        this.mContext = context;
        this.mMainHandler = handler;
        this.mMainExecutor = shellExecutor;
        this.mAnimExecutor = shellExecutor2;
        this.mTransitionAnimation = new TransitionAnimation(context, false, "ShellTransitions");
        UserHandle.myUserId();
        this.mDevicePolicyManager = (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class);
        shellInit.addInitCallback(new DefaultTransitionHandler$$ExternalSyntheticLambda0(this, 0), this);
        this.mRootTDAOrganizer = rootTaskDisplayAreaOrganizer;
    }

    public static void applyTransformation(long j, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Animation animation, Transformation transformation, float[] fArr, Point point, float f, Rect rect, float f2) {
        Rect rect2;
        transformation.clear();
        animation.getTransformation(j, transformation);
        if (f2 != 0.0f) {
            transformation.getMatrix().postScale(f2, f2);
        }
        if (point != null) {
            transformation.getMatrix().postTranslate(point.x, point.y);
        }
        transaction.setMatrix(surfaceControl, transformation.getMatrix(), fArr);
        transaction.setAlpha(surfaceControl, transformation.getAlpha());
        if (rect == null) {
            rect2 = null;
        } else {
            rect2 = new Rect(rect);
        }
        Insets min = Insets.min(transformation.getInsets(), Insets.NONE);
        if (!min.equals(Insets.NONE) && rect2 != null && !rect2.isEmpty()) {
            rect2.inset(min);
            transaction.setCrop(surfaceControl, rect2);
        }
        if (animation.hasRoundedCorners() && f > 0.0f && rect2 != null) {
            transaction.setCrop(surfaceControl, rect2);
            transaction.setCornerRadius(surfaceControl, f);
        }
        transaction.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
        transaction.apply();
    }

    public static void buildSurfaceAnimation(ArrayList arrayList, Animation animation, SurfaceControl surfaceControl, Runnable runnable, TransactionPool transactionPool, ShellExecutor shellExecutor, Point point, float f, Rect rect) {
        buildSurfaceAnimation(arrayList, animation, surfaceControl, runnable, transactionPool, shellExecutor, point, f, rect, 0.0f);
    }

    public static int getRotationAnimationHint(TransitionInfo.Change change, TransitionInfo transitionInfo, DisplayController displayController) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -583774195, 0, "Display is changing, resolve the animation hint.", null);
        }
        if (change.getRotationAnimation() == 3) {
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1787276183, 0, "  display requests explicit seamless", null);
            }
            return 3;
        }
        int size = transitionInfo.getChanges().size();
        ActivityManager.RunningTaskInfo runningTaskInfo = null;
        int i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        int i3 = 0;
        while (true) {
            z = true;
            i = 2;
            if (i2 >= size) {
                break;
            }
            TransitionInfo.Change change2 = (TransitionInfo.Change) transitionInfo.getChanges().get(i2);
            if (change2.getMode() != 6) {
                if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX && change2.getTaskInfo() != null && change2.getTaskInfo().isAllowedSeamlessRotation) {
                    if (TransitionUtil.isTopApp(transitionInfo, change2, true)) {
                        change2.setRotationAnimation(3);
                    }
                }
                i2++;
            }
            if (change2.getEndRotation() != change2.getStartRotation()) {
                if ((change2.getFlags() & 32) != 0) {
                    if ((change2.getFlags() & 128) != 0) {
                        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 42311280, 0, "  display has system alert windows, so not seamless.", null);
                        }
                        z5 = true;
                    }
                } else if ((2 & change2.getFlags()) != 0) {
                    if (change2.getRotationAnimation() != 3 && (!CoreRune.FW_CUSTOM_SHELL_TRANSITION_BUG_FIX || runningTaskInfo == null || !runningTaskInfo.isAllowedSeamlessRotation)) {
                        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1015274864, 0, "  wallpaper is participating but isn't seamless.", null);
                        }
                        z5 = true;
                    }
                } else if (change2.getTaskInfo() != null) {
                    int rotationAnimation = change2.getRotationAnimation();
                    ActivityManager.RunningTaskInfo taskInfo = change2.getTaskInfo();
                    if (runningTaskInfo == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        if (rotationAnimation != -1 && rotationAnimation != 3) {
                            i3 = rotationAnimation;
                        }
                        runningTaskInfo = taskInfo;
                    }
                    if (rotationAnimation != 3) {
                        if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1915000700, 0, "  task %s isn't requesting seamless, so not seamless.", String.valueOf(taskInfo.taskId));
                        }
                        z4 = false;
                    } else if (z3) {
                        z4 = true;
                    }
                }
            }
            i2++;
        }
        if (z4 && !z5) {
            if (runningTaskInfo.isAllowedSeamlessRotation) {
                if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 749199612, 0, "  top activity has meta data, so allows seamless.", null);
                }
                return 3;
            }
            DisplayLayout displayLayout = displayController.getDisplayLayout(runningTaskInfo.displayId);
            if (displayLayout.mAllowSeamlessRotationDespiteNavBarMoving) {
                if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 967922481, 0, "  nav bar allows seamless.", null);
                }
                return 3;
            }
            if (displayLayout.mWidth > displayLayout.mHeight) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (displayLayout.mRotation % 2 != 0) {
                z2 = !z2;
            }
            if (z2) {
                if (displayLayout.mReverseDefaultRotation) {
                    i = 3;
                } else {
                    i = 1;
                }
            }
            if (change.getStartRotation() != i && change.getEndRotation() != i) {
                if (!displayLayout.mNavigationBarCanMove || displayLayout.mWidth == displayLayout.mHeight) {
                    z = false;
                }
                if (!z) {
                    if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, -1167654715, 0, "  nav bar changes sides, so not seamless.", null);
                    }
                    return i3;
                }
                if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1215677233, 0, "  Rotation IS seamless.", null);
                }
                return 3;
            }
            if (ShellProtoLogCache.WM_SHELL_TRANSITIONS_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_TRANSITIONS, 1167817788, 0, "  rotation involves upside-down portrait, so not seamless.", null);
            }
        }
        return i3;
    }

    public final void attachThumbnail(ArrayList arrayList, DefaultTransitionHandler$$ExternalSyntheticLambda5 defaultTransitionHandler$$ExternalSyntheticLambda5, TransitionInfo.Change change, TransitionInfo.AnimationOptions animationOptions, float f) {
        Drawable drawable;
        TransitionAnimation transitionAnimation;
        HardwareBuffer createCrossProfileAppsThumbnail;
        boolean isOpeningType = TransitionUtil.isOpeningType(change.getMode());
        boolean isClosingType = TransitionUtil.isClosingType(change.getMode());
        if (isOpeningType) {
            if (animationOptions.getType() == 12) {
                Rect endAbsBounds = change.getEndAbsBounds();
                if (change.hasFlags(4096)) {
                    drawable = this.mContext.getDrawable(R.drawable.ic_clear_normal);
                } else if (change.hasFlags(8192)) {
                    drawable = this.mEnterpriseThumbnailDrawable;
                } else {
                    drawable = null;
                }
                if (drawable != null && (createCrossProfileAppsThumbnail = (transitionAnimation = this.mTransitionAnimation).createCrossProfileAppsThumbnail(drawable, endAbsBounds)) != null) {
                    SurfaceControl.Transaction acquire = this.mTransactionPool.acquire();
                    WindowThumbnail createAndAttach = WindowThumbnail.createAndAttach(this.mSurfaceSession, change.getLeash(), createCrossProfileAppsThumbnail, acquire);
                    Animation createCrossProfileAppsThumbnailAnimationLocked = transitionAnimation.createCrossProfileAppsThumbnailAnimationLocked(endAbsBounds);
                    if (createCrossProfileAppsThumbnailAnimationLocked != null) {
                        DefaultTransitionHandler$$ExternalSyntheticLambda5 defaultTransitionHandler$$ExternalSyntheticLambda52 = new DefaultTransitionHandler$$ExternalSyntheticLambda5(this, createAndAttach, acquire, defaultTransitionHandler$$ExternalSyntheticLambda5, 1);
                        createCrossProfileAppsThumbnailAnimationLocked.restrictDuration(3000L);
                        createCrossProfileAppsThumbnailAnimationLocked.scaleCurrentDuration(this.mTransitionAnimationScaleSetting);
                        buildSurfaceAnimation(arrayList, createCrossProfileAppsThumbnailAnimationLocked, createAndAttach.mSurfaceControl, defaultTransitionHandler$$ExternalSyntheticLambda52, this.mTransactionPool, this.mMainExecutor, change.getEndRelOffset(), f, change.getEndAbsBounds());
                        return;
                    }
                    return;
                }
                return;
            }
            if (animationOptions.getType() == 3) {
                attachThumbnailAnimation(arrayList, defaultTransitionHandler$$ExternalSyntheticLambda5, change, animationOptions, f);
                return;
            }
            return;
        }
        if (isClosingType && animationOptions.getType() == 4) {
            attachThumbnailAnimation(arrayList, defaultTransitionHandler$$ExternalSyntheticLambda5, change, animationOptions, f);
        }
    }

    public final void attachThumbnailAnimation(ArrayList arrayList, DefaultTransitionHandler$$ExternalSyntheticLambda5 defaultTransitionHandler$$ExternalSyntheticLambda5, TransitionInfo.Change change, TransitionInfo.AnimationOptions animationOptions, float f) {
        boolean z;
        SurfaceControl.Transaction acquire = this.mTransactionPool.acquire();
        WindowThumbnail createAndAttach = WindowThumbnail.createAndAttach(this.mSurfaceSession, change.getLeash(), animationOptions.getThumbnail(), acquire);
        Rect endAbsBounds = change.getEndAbsBounds();
        int i = this.mContext.getResources().getConfiguration().orientation;
        TransitionAnimation transitionAnimation = this.mTransitionAnimation;
        Rect rect = this.mInsets;
        HardwareBuffer thumbnail = animationOptions.getThumbnail();
        Rect transitionBounds = animationOptions.getTransitionBounds();
        if (animationOptions.getType() == 3) {
            z = true;
        } else {
            z = false;
        }
        Animation createThumbnailAspectScaleAnimationLocked = transitionAnimation.createThumbnailAspectScaleAnimationLocked(endAbsBounds, rect, thumbnail, i, (Rect) null, transitionBounds, z);
        DefaultTransitionHandler$$ExternalSyntheticLambda5 defaultTransitionHandler$$ExternalSyntheticLambda52 = new DefaultTransitionHandler$$ExternalSyntheticLambda5(this, createAndAttach, acquire, defaultTransitionHandler$$ExternalSyntheticLambda5, 0);
        createThumbnailAspectScaleAnimationLocked.restrictDuration(3000L);
        createThumbnailAspectScaleAnimationLocked.scaleCurrentDuration(this.mTransitionAnimationScaleSetting);
        buildSurfaceAnimation(arrayList, createThumbnailAspectScaleAnimationLocked, createAndAttach.mSurfaceControl, defaultTransitionHandler$$ExternalSyntheticLambda52, this.mTransactionPool, this.mMainExecutor, change.getEndRelOffset(), f, change.getEndAbsBounds());
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void beforeMergeAnimation(IBinder iBinder, Transitions.TransitionHandler transitionHandler) {
        if (CoreRune.MW_SPLIT_SHELL_TRANSITION && (transitionHandler instanceof StageCoordinator)) {
            this.mSkipMergeAnimation = ((StageCoordinator) transitionHandler).mSplitTransitions.isPendingResize(iBinder);
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final WindowContainerTransaction handleRequest(IBinder iBinder, TransitionRequestInfo transitionRequestInfo) {
        return null;
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, Transitions.TransitionFinishCallback transitionFinishCallback) {
        if (CoreRune.MW_SHELL_TRANSITION && this.mSkipMergeAnimation) {
            this.mSkipMergeAnimation = false;
            return;
        }
        ArrayList arrayList = (ArrayList) this.mAnimations.get(iBinder2);
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Animator animator = (Animator) arrayList.get(size);
            Objects.requireNonNull(animator);
            ((HandlerExecutor) this.mAnimExecutor).execute(new DefaultTransitionHandler$$ExternalSyntheticLambda0(animator, 1));
        }
    }

    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    public final void setAnimScaleSetting(float f) {
        this.mTransitionAnimationScaleSetting = f;
        if (CoreRune.MW_SHELL_TRANSITION) {
            MultiTaskingTransitionProvider multiTaskingTransitionProvider = this.mMultiTaskingTransitProvider;
            if (multiTaskingTransitionProvider.mDurationScale != f) {
                Log.d("MultiTaskingTransitionProvider", "setAnimScaleSetting: " + multiTaskingTransitionProvider.mDurationScale + "->" + f);
                multiTaskingTransitionProvider.mDurationScale = f;
            }
        }
        if (CoreRune.MW_SHELL_CHANGE_TRANSITION) {
            ChangeTransitionProvider changeTransitionProvider = this.mChangeTransitProvider;
            if (changeTransitionProvider.mDurationScale != f) {
                Log.d("ChangeTransitionProvider", "setAnimScaleSetting: " + changeTransitionProvider.mDurationScale + "->" + f);
                changeTransitionProvider.mDurationScale = f;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x02c2, code lost:
    
        if (r1 != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x035d, code lost:
    
        if (r40.mChangeTransitProvider.buildChangeTransitionAnimators(r15, r6, r14, r43, r42) != false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x04d6, code lost:
    
        if (r1 == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x097f, code lost:
    
        if (r1 != false) goto L575;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0876  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x08b1  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0b51  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:633:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0361  */
    @Override // com.android.wm.shell.transition.Transitions.TransitionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean startAnimation(android.os.IBinder r41, android.window.TransitionInfo r42, android.view.SurfaceControl.Transaction r43, android.view.SurfaceControl.Transaction r44, com.android.wm.shell.transition.Transitions.TransitionFinishCallback r45) {
        /*
            Method dump skipped, instructions count: 3215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.transition.DefaultTransitionHandler.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, com.android.wm.shell.transition.Transitions$TransitionFinishCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.android.wm.shell.transition.DefaultTransitionHandler$$ExternalSyntheticLambda4] */
    public final void startRotationAnimation(SurfaceControl.Transaction transaction, TransitionInfo.Change change, TransitionInfo transitionInfo, int i, final ArrayList arrayList, final DefaultTransitionHandler$$ExternalSyntheticLambda5 defaultTransitionHandler$$ExternalSyntheticLambda5) {
        boolean z;
        final ScreenRotationAnimation screenRotationAnimation = new ScreenRotationAnimation(this.mContext, this.mSurfaceSession, this.mTransactionPool, transaction, change, transitionInfo.getRoot(TransitionUtil.rootIndexFor(change, transitionInfo)).getLeash(), i);
        boolean z2 = false;
        if (CoreRune.FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE && transitionInfo.getOverrideDisplayChangeBackColor() != -1) {
            SurfaceControl.Transaction acquire = this.mTransactionPool.acquire();
            int overrideDisplayChangeBackColor = transitionInfo.getOverrideDisplayChangeBackColor();
            SurfaceControl surfaceControl = screenRotationAnimation.mBackColorSurface;
            if (surfaceControl != null) {
                acquire.setColor(surfaceControl, new float[]{Color.red(overrideDisplayChangeBackColor) / 255.0f, Color.green(overrideDisplayChangeBackColor) / 255.0f, Color.blue(overrideDisplayChangeBackColor) / 255.0f});
            }
            acquire.apply();
        }
        final ArrayList arrayList2 = new ArrayList(3);
        final ArrayList arrayList3 = new ArrayList(3);
        ?? r14 = new Runnable() { // from class: com.android.wm.shell.transition.DefaultTransitionHandler$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ArrayList arrayList4 = arrayList2;
                ScreenRotationAnimation screenRotationAnimation2 = screenRotationAnimation;
                ArrayList arrayList5 = arrayList;
                ArrayList arrayList6 = arrayList3;
                Runnable runnable = defaultTransitionHandler$$ExternalSyntheticLambda5;
                if (arrayList4.isEmpty()) {
                    TransactionPool transactionPool = screenRotationAnimation2.mTransactionPool;
                    SurfaceControl.Transaction acquire2 = transactionPool.acquire();
                    SurfaceControl surfaceControl2 = screenRotationAnimation2.mAnimLeash;
                    if (surfaceControl2.isValid()) {
                        acquire2.remove(surfaceControl2);
                    }
                    SurfaceControl surfaceControl3 = screenRotationAnimation2.mScreenshotLayer;
                    if (surfaceControl3 != null && surfaceControl3.isValid()) {
                        acquire2.remove(surfaceControl3);
                    }
                    SurfaceControl surfaceControl4 = screenRotationAnimation2.mBackColorSurface;
                    if (surfaceControl4 != null && surfaceControl4.isValid()) {
                        acquire2.remove(surfaceControl4);
                    }
                    screenRotationAnimation2.mFadeInOutAnimationNeeded = false;
                    acquire2.apply();
                    transactionPool.release(acquire2);
                    arrayList5.removeAll(arrayList6);
                    runnable.run();
                }
            }
        };
        if (CoreRune.MW_SHELL_DISPLAY_CHANGE_TRANSITION && (change.getFlags() & QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) != 0) {
            if ((change.getFlags() & QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT) != 0) {
                z = true;
            } else {
                z = false;
            }
            int i2 = ChangeTransitionProvider.$r8$clinit;
            int[] iArr = new int[2];
            if (z) {
                iArr[0] = com.android.systemui.R.anim.multi_window_display_change_fast_exit;
                iArr[1] = com.android.systemui.R.anim.multi_window_display_change_fast_enter;
            } else {
                iArr[0] = com.android.systemui.R.anim.multi_window_display_change_exit;
                iArr[1] = com.android.systemui.R.anim.multi_window_display_change_enter;
            }
            if (CoreRune.SAFE_DEBUG) {
                Slog.d("ChangeTransitionProvider", "selectDisplayChangeAnimationResID: fastAnimation=" + z);
            }
            screenRotationAnimation.buildAnimation(arrayList2, r14, this.mTransitionAnimationScaleSetting, this.mMainExecutor, iArr[0], iArr[1]);
        } else {
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_DISPLAY_CHANGE) {
                if (transitionInfo.getAnimationOptions() != null && transitionInfo.getAnimationOptions().getType() == 15) {
                    z2 = true;
                }
                if (z2) {
                    screenRotationAnimation.buildAnimation(arrayList2, r14, this.mTransitionAnimationScaleSetting, this.mMainExecutor, transitionInfo.getAnimationOptions().getExitResId(), transitionInfo.getAnimationOptions().getEnterResId());
                }
            }
            screenRotationAnimation.buildAnimation(arrayList2, r14, this.mTransitionAnimationScaleSetting, this.mMainExecutor, -1, -1);
        }
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            Animator animator = (Animator) arrayList2.get(size);
            arrayList3.add(animator);
            arrayList.add(animator);
        }
        if (CoreRune.FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR) {
            this.mMaxRotationAnimationDuration = 0L;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                this.mMaxRotationAnimationDuration = Math.max(this.mMaxRotationAnimationDuration, ((Animator) arrayList2.get(size2)).getDuration());
            }
            change.setRotationAnimation(true);
        }
    }

    public static void buildSurfaceAnimation(final ArrayList arrayList, final Animation animation, final SurfaceControl surfaceControl, final Runnable runnable, final TransactionPool transactionPool, final ShellExecutor shellExecutor, final Point point, final float f, final Rect rect, final float f2) {
        final SurfaceControl.Transaction acquire = transactionPool.acquire();
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        final Transformation transformation = new Transformation();
        final float[] fArr = new float[9];
        ofFloat.overrideDurationScale(1.0f);
        ofFloat.setDuration(animation.computeDurationHint());
        final ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.transition.DefaultTransitionHandler$$ExternalSyntheticLambda6
            public final /* synthetic */ Rect f$10 = null;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ValueAnimator valueAnimator2 = ofFloat;
                DefaultTransitionHandler.applyTransformation(Math.min(valueAnimator2.getDuration(), valueAnimator2.getCurrentPlayTime()), acquire, surfaceControl, animation, transformation, fArr, point, f, rect, f2);
            }
        };
        ofFloat.addUpdateListener(animatorUpdateListener);
        final Runnable runnable2 = new Runnable() { // from class: com.android.wm.shell.transition.DefaultTransitionHandler$$ExternalSyntheticLambda7
            public final /* synthetic */ Rect f$10 = null;

            @Override // java.lang.Runnable
            public final void run() {
                ValueAnimator valueAnimator = ofFloat;
                SurfaceControl.Transaction transaction = acquire;
                SurfaceControl surfaceControl2 = surfaceControl;
                Animation animation2 = animation;
                Transformation transformation2 = transformation;
                float[] fArr2 = fArr;
                Point point2 = point;
                float f3 = f;
                Rect rect2 = rect;
                float f4 = f2;
                TransactionPool transactionPool2 = transactionPool;
                ShellExecutor shellExecutor2 = shellExecutor;
                ArrayList arrayList2 = arrayList;
                Runnable runnable3 = runnable;
                DefaultTransitionHandler.applyTransformation(valueAnimator.getDuration(), transaction, surfaceControl2, animation2, transformation2, fArr2, point2, f3, rect2, f4);
                transactionPool2.release(transaction);
                ((HandlerExecutor) shellExecutor2).execute(new DefaultTransitionHandler$$ExternalSyntheticLambda3(arrayList2, valueAnimator, runnable3, 1));
            }
        };
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.transition.DefaultTransitionHandler.2
            public boolean mFinished = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                if (!this.mFinished) {
                    this.mFinished = true;
                    runnable2.run();
                    ofFloat.removeUpdateListener(animatorUpdateListener);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (!this.mFinished) {
                    this.mFinished = true;
                    runnable2.run();
                    ofFloat.removeUpdateListener(animatorUpdateListener);
                }
            }
        });
        arrayList.add(ofFloat);
    }
}
