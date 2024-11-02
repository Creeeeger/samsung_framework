package com.android.wm.shell.pip.phone;

import android.app.ActivityTaskManager;
import android.app.RemoteAction;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.media.session.MediaSessionManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.view.InsetsState;
import android.view.WindowManagerGlobal;
import android.window.WindowContainerTransaction;
import com.android.internal.util.function.TriConsumer;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.LockIconView$$ExternalSyntheticOutline0;
import com.android.wm.shell.common.DismissButtonManager;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.FloatingContentCoordinator;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.TabletopModeController;
import com.android.wm.shell.common.TaskStackListenerCallback;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.PipAppOpsListener;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipUtils;
import com.android.wm.shell.pip.phone.PipController;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.sysui.ShellController;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PipController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final int i = 1;
        final int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                PipController pipController = (PipController) this.f$0;
                if (!pipController.mIsKeyguardShowingOrAnimating && pipController.mEnablePipKeepClearAlgorithm && !pipController.mPipBoundsState.isStashed()) {
                    PipAnimationController.PipTransitionAnimator pipTransitionAnimator = pipController.mPipAnimationController.mCurrentAnimator;
                    if (pipTransitionAnimator == null || !pipTransitionAnimator.isRunning()) {
                        i = 0;
                    }
                    if (i != 0) {
                        HandlerExecutor handlerExecutor = (HandlerExecutor) pipController.mMainExecutor;
                        PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda1 = pipController.mMovePipInResponseToKeepClearAreasChangeCallback;
                        handlerExecutor.removeCallbacks(pipController$$ExternalSyntheticLambda1);
                        handlerExecutor.executeDelayed(PipController.PIP_KEEP_CLEAR_AREAS_DELAY, pipController$$ExternalSyntheticLambda1);
                        return;
                    }
                    pipController.updatePipPositionForKeepClearAreas();
                    return;
                }
                return;
            case 1:
                final PipController pipController2 = (PipController) this.f$0;
                pipController2.getClass();
                pipController2.mShellCommandHandler.addDumpCallback(new BiConsumer() { // from class: com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda3
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        boolean z;
                        PipController pipController3 = PipController.this;
                        PrintWriter printWriter = (PrintWriter) obj;
                        pipController3.getClass();
                        printWriter.println("PipController");
                        PhonePipMenuController phonePipMenuController = pipController3.mMenuController;
                        phonePipMenuController.getClass();
                        printWriter.println("  PhonePipMenuController");
                        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("    mMenuState="), phonePipMenuController.mMenuState, printWriter, "    mPipMenuView=");
                        m.append(phonePipMenuController.mPipMenuView);
                        printWriter.println(m.toString());
                        printWriter.println("    mListeners=" + phonePipMenuController.mListeners.size());
                        PipTouchHandler pipTouchHandler = pipController3.mTouchHandler;
                        pipTouchHandler.getClass();
                        printWriter.println("  PipTouchHandler");
                        StringBuilder m2 = LockIconView$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("    mMenuState="), pipTouchHandler.mMenuState, printWriter, "    mIsImeShowing="), pipTouchHandler.mIsImeShowing, printWriter, "    mImeHeight="), pipTouchHandler.mImeHeight, printWriter, "    mIsShelfShowing="), pipTouchHandler.mIsShelfShowing, printWriter, "    mShelfHeight="), pipTouchHandler.mShelfHeight, printWriter, "    mSavedSnapFraction="), pipTouchHandler.mSavedSnapFraction, printWriter, "    mMovementBoundsExtraOffsets=");
                        m2.append(pipTouchHandler.mMovementBoundsExtraOffsets);
                        printWriter.println(m2.toString());
                        pipTouchHandler.mPipBoundsAlgorithm.dump(printWriter, "    ");
                        PipTouchState pipTouchState = pipTouchHandler.mTouchState;
                        pipTouchState.getClass();
                        printWriter.println("    PipTouchState");
                        StringBuilder m3 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("      mAllowTouches="), pipTouchState.mAllowTouches, printWriter, "      mAllowInputEvents="), pipTouchState.mAllowInputEvents, printWriter, "      mActivePointerId="), pipTouchState.mActivePointerId, printWriter, "      mLastTouchDisplayId="), pipTouchState.mLastTouchDisplayId, printWriter, "      mDownTouch=");
                        m3.append(pipTouchState.mDownTouch);
                        printWriter.println(m3.toString());
                        printWriter.println("      mDownDelta=" + pipTouchState.mDownDelta);
                        printWriter.println("      mLastTouch=" + pipTouchState.mLastTouch);
                        printWriter.println("      mLastDelta=" + pipTouchState.mLastDelta);
                        printWriter.println("      mVelocity=" + pipTouchState.mVelocity);
                        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("      mIsUserInteracting="), pipTouchState.mIsUserInteracting, printWriter, "      mIsDragging="), pipTouchState.mIsDragging, printWriter, "      mStartedDragging="), pipTouchState.mStartedDragging, printWriter, "      mAllowDraggingOffscreen="), pipTouchState.mAllowDraggingOffscreen, printWriter);
                        PipResizeGestureHandler pipResizeGestureHandler = pipTouchHandler.mPipResizeGestureHandler;
                        if (pipResizeGestureHandler != null) {
                            StringBuilder m4 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "    PipResizeGestureHandler", "      mAllowGesture="), pipResizeGestureHandler.mAllowGesture, printWriter, "      mIsAttached="), pipResizeGestureHandler.mIsAttached, printWriter, "      mIsEnabled="), pipResizeGestureHandler.mIsEnabled, printWriter, "      mEnablePinchResize="), pipResizeGestureHandler.mEnablePinchResize, printWriter, "      mThresholdCrossed="), pipResizeGestureHandler.mThresholdCrossed, printWriter, "      mOhmOffset="), pipResizeGestureHandler.mOhmOffset, printWriter, "      mCtrlType=");
                            m4.append(pipResizeGestureHandler.mCtrlType);
                            printWriter.println(m4.toString());
                        }
                        pipController3.mPipBoundsAlgorithm.dump(printWriter, "  ");
                        pipController3.mPipTaskOrganizer.dump(printWriter, "  ");
                        PipBoundsState pipBoundsState = pipController3.mPipBoundsState;
                        pipBoundsState.getClass();
                        printWriter.println("  PipBoundsState");
                        printWriter.println("    mBounds=" + pipBoundsState.mBounds);
                        printWriter.println("    mNormalBounds=" + pipBoundsState.mNormalBounds);
                        printWriter.println("    mExpandedBounds=" + pipBoundsState.mExpandedBounds);
                        printWriter.println("    mMovementBounds=" + pipBoundsState.mMovementBounds);
                        printWriter.println("    mNormalMovementBounds=" + pipBoundsState.mNormalMovementBounds);
                        printWriter.println("    mExpandedMovementBounds=" + pipBoundsState.mExpandedMovementBounds);
                        printWriter.println("    mLastPipComponentName=" + pipBoundsState.mLastPipComponentName);
                        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(LockIconView$$ExternalSyntheticOutline0.m(new StringBuilder("    mAspectRatio="), pipBoundsState.mAspectRatio, printWriter, "    mStashedState="), pipBoundsState.mStashedState, printWriter, "    mStashOffset="), pipBoundsState.mStashOffset, printWriter, "    mIsImeShowing="), pipBoundsState.mIsImeShowing, printWriter, "    mImeHeight="), pipBoundsState.mImeHeight, printWriter, "    mIsShelfShowing="), pipBoundsState.mIsShelfShowing, printWriter, "    mShelfHeight="), pipBoundsState.mShelfHeight, printWriter, "    mHasUserMovedPip="), pipBoundsState.mHasUserMovedPip, printWriter, "    mHasUserResizedPip="), pipBoundsState.mHasUserResizedPip, printWriter);
                        Set set = pipBoundsState.mRestrictedKeepClearAreas;
                        if (!((ArraySet) set).isEmpty()) {
                            printWriter.println("    mRestrictedKeepClearAreas=" + set);
                        }
                        PipBoundsState.PipReentryState pipReentryState = pipBoundsState.mPipReentryState;
                        if (pipReentryState == null) {
                            printWriter.println("    mPipReentryState=null");
                        } else {
                            StringBuilder m5 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "    PipBoundsState$PipReentryState", "      mSize=");
                            m5.append(pipReentryState.mSize);
                            printWriter.println(m5.toString());
                            printWriter.println("      mSnapFraction=" + pipReentryState.mSnapFraction);
                        }
                        PipBoundsState.LauncherState launcherState = pipBoundsState.mLauncherState;
                        launcherState.getClass();
                        printWriter.println("    ".concat(PipBoundsState.LauncherState.class.getSimpleName()));
                        printWriter.println("        getAppIconSizePx=" + launcherState.mAppIconSizePx);
                        PipBoundsState.MotionBoundsState motionBoundsState = pipBoundsState.mMotionBoundsState;
                        motionBoundsState.getClass();
                        printWriter.println("    ".concat(PipBoundsState.MotionBoundsState.class.getSimpleName()));
                        printWriter.println("      mBoundsInMotion=" + motionBoundsState.mBoundsInMotion);
                        printWriter.println("      mAnimatingToBounds=" + motionBoundsState.mAnimatingToBounds);
                        PipInputConsumer pipInputConsumer = pipController3.mPipInputConsumer;
                        pipInputConsumer.getClass();
                        printWriter.println("  PipInputConsumer");
                        StringBuilder sb = new StringBuilder("    registered=");
                        if (pipInputConsumer.mInputEventReceiver != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z, printWriter);
                        PipSizeSpecHandler pipSizeSpecHandler = pipController3.mPipSizeSpecHandler;
                        pipSizeSpecHandler.getClass();
                        printWriter.println("  PipSizeSpecHandler");
                        printWriter.println("    mSizeSpecSourceImpl=" + pipSizeSpecHandler.mSizeSpecSourceImpl);
                        printWriter.println("    mOverrideMinSize=" + pipSizeSpecHandler.mOverrideMinSize);
                        printWriter.println("    mScreenEdgeInsets=" + pipSizeSpecHandler.mScreenEdgeInsets);
                        PipDisplayLayoutState pipDisplayLayoutState = pipController3.mPipDisplayLayoutState;
                        pipDisplayLayoutState.getClass();
                        printWriter.println("  PipDisplayLayoutState");
                        StringBuilder m6 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("    mDisplayId="), pipDisplayLayoutState.mDisplayId, printWriter, "    getDisplayBounds=");
                        m6.append(pipDisplayLayoutState.getDisplayBounds());
                        printWriter.println(m6.toString());
                    }
                }, pipController2);
                pipController2.mPipInputConsumer = new PipInputConsumer(WindowManagerGlobal.getWindowManagerService(), "pip_input_consumer", pipController2.mMainExecutor);
                ((ArrayList) pipController2.mPipTransitionController.mPipTransitionCallbacks).add(pipController2);
                pipController2.mPipTaskOrganizer.mOnDisplayIdChangeCallback = new IntConsumer() { // from class: com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda6
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i3) {
                        switch (i2) {
                            case 0:
                                PipController pipController3 = pipController2;
                                pipController3.mPipDisplayLayoutState.mDisplayId = i3;
                                pipController3.onDisplayChanged(pipController3.mDisplayController.getDisplayLayout(i3), false);
                                return;
                            default:
                                PipTaskOrganizer pipTaskOrganizer = pipController2.mPipTaskOrganizer;
                                if (i3 == 0) {
                                    pipTaskOrganizer.clearStashDimOverlay();
                                    return;
                                } else {
                                    pipTaskOrganizer.setStashDimOverlayAlpha(0.65f);
                                    return;
                                }
                        }
                    }
                };
                ((ArrayList) pipController2.mPipTransitionState.mOnPipTransitionStateChangedListeners).add(new PipController$$ExternalSyntheticLambda7(pipController2));
                PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda12 = new PipController$$ExternalSyntheticLambda1(pipController2, 3);
                PipBoundsState pipBoundsState = pipController2.mPipBoundsState;
                pipBoundsState.mOnMinimalSizeChangeCallback = pipController$$ExternalSyntheticLambda12;
                pipBoundsState.mOnShelfVisibilityChangeCallback = new TriConsumer() { // from class: com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda8
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        PipController pipController3 = PipController.this;
                        pipController3.getClass();
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        int intValue = ((Integer) obj2).intValue();
                        PipTouchHandler pipTouchHandler = pipController3.mTouchHandler;
                        pipTouchHandler.mIsShelfShowing = booleanValue;
                        pipTouchHandler.mShelfHeight = intValue;
                        if (((Boolean) obj3).booleanValue()) {
                            pipController3.updateMovementBounds(pipController3.mPipBoundsState.getBounds(), false, false, true, null);
                        }
                    }
                };
                pipBoundsState.mOnPipTaskAppearedCallback = new PipController$$ExternalSyntheticLambda1(pipController2, 4);
                pipBoundsState.mOnPipStashCallback = new IntConsumer() { // from class: com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda6
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i3) {
                        switch (i) {
                            case 0:
                                PipController pipController3 = pipController2;
                                pipController3.mPipDisplayLayoutState.mDisplayId = i3;
                                pipController3.onDisplayChanged(pipController3.mDisplayController.getDisplayLayout(i3), false);
                                return;
                            default:
                                PipTaskOrganizer pipTaskOrganizer = pipController2.mPipTaskOrganizer;
                                if (i3 == 0) {
                                    pipTaskOrganizer.clearStashDimOverlay();
                                    return;
                                } else {
                                    pipTaskOrganizer.setStashDimOverlayAlpha(0.65f);
                                    return;
                                }
                        }
                    }
                };
                PipTouchHandler pipTouchHandler = pipController2.mTouchHandler;
                if (pipTouchHandler != null) {
                    PipInputConsumer pipInputConsumer = pipController2.mPipInputConsumer;
                    pipInputConsumer.mListener = new PipController$$ExternalSyntheticLambda9(pipTouchHandler);
                    pipInputConsumer.mRegistrationListener = new PipController$$ExternalSyntheticLambda9(pipTouchHandler);
                    ((HandlerExecutor) pipInputConsumer.mMainExecutor).execute(new PipInputConsumer$$ExternalSyntheticLambda1(pipInputConsumer, 0));
                }
                DisplayController displayController = pipController2.mDisplayController;
                displayController.mChangeController.mDisplayChangeListener.add(pipController2.mRotationController);
                displayController.addDisplayWindowListener(pipController2.mDisplaysChangedListener);
                Context context = pipController2.mContext;
                int displayId = context.getDisplayId();
                PipDisplayLayoutState pipDisplayLayoutState = pipController2.mPipDisplayLayoutState;
                pipDisplayLayoutState.mDisplayId = displayId;
                pipDisplayLayoutState.mDisplayLayout.set(new DisplayLayout(context, context.getDisplay()));
                try {
                    pipController2.mWindowManagerShellWrapper.addPinnedStackListener(pipController2.mPinnedTaskListener);
                } catch (RemoteException e) {
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 2043633764, 0, "%s: Failed to register pinned stack listener, %s", "PipController", String.valueOf(e));
                    }
                }
                try {
                    if (ActivityTaskManager.getService().getRootTaskInfo(2, 0) != null) {
                        pipController2.mPipInputConsumer.registerInputConsumer();
                    }
                } catch (RemoteException | UnsupportedOperationException e2) {
                    if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                        ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 2043633764, 0, "%s: Failed to register pinned stack listener, %s", "PipController", String.valueOf(e2));
                    }
                    e2.printStackTrace();
                }
                pipController2.mTaskStackListener.addListener(new TaskStackListenerCallback() { // from class: com.android.wm.shell.pip.phone.PipController.2
                    public AnonymousClass2() {
                    }

                    @Override // com.android.wm.shell.common.TaskStackListenerCallback
                    public final void onActivityPinned(String str, int i3) {
                        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1639976644, 0, "onActivityPinned: %s", String.valueOf(str));
                        }
                        PipController pipController3 = PipController.this;
                        PipTouchHandler pipTouchHandler2 = pipController3.mTouchHandler;
                        pipTouchHandler2.mPipDismissTargetHandler.getClass();
                        PipResizeGestureHandler pipResizeGestureHandler = pipTouchHandler2.mPipResizeGestureHandler;
                        pipResizeGestureHandler.mIsAttached = true;
                        pipResizeGestureHandler.updateIsEnabled();
                        pipResizeGestureHandler.resetState();
                        PipMotionHelper pipMotionHelper = pipTouchHandler2.mMotionHelper;
                        FloatingContentCoordinator floatingContentCoordinator = pipTouchHandler2.mFloatingContentCoordinator;
                        floatingContentCoordinator.updateContentBounds();
                        ((HashMap) floatingContentCoordinator.allContentBounds).put(pipMotionHelper, pipMotionHelper.getFloatingBoundsOnScreen());
                        floatingContentCoordinator.maybeMoveConflictingContent(pipMotionHelper);
                        PipTouchState pipTouchState = pipTouchHandler2.mTouchState;
                        if (pipTouchState != null) {
                            pipTouchState.mAllowInputEvents = true;
                        }
                        PipMediaController pipMediaController = pipController3.mMediaController;
                        pipMediaController.getClass();
                        pipMediaController.resolveActiveMediaController(pipMediaController.mMediaSessionManager.getActiveSessionsForUser(null, new UserHandle(i3)));
                        PipAppOpsListener pipAppOpsListener = pipController3.mAppOpsListener;
                        pipAppOpsListener.mAppOpsManager.startWatchingMode(67, str, pipAppOpsListener.mAppOpsChangedListener);
                        pipController3.mPipInputConsumer.registerInputConsumer();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
                    /* JADX WARN: Removed duplicated region for block: B:18:0x0056 A[RETURN] */
                    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
                    @Override // com.android.wm.shell.common.TaskStackListenerCallback
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void onActivityRestartAttempt(android.app.ActivityManager.RunningTaskInfo r9, boolean r10) {
                        /*
                            Method dump skipped, instructions count: 226
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.pip.phone.PipController.AnonymousClass2.onActivityRestartAttempt(android.app.ActivityManager$RunningTaskInfo, boolean):void");
                    }

                    @Override // com.android.wm.shell.common.TaskStackListenerCallback
                    public final void onActivityUnpinned() {
                        boolean z;
                        PipController pipController3 = PipController.this;
                        ComponentName componentName = (ComponentName) PipUtils.getTopPipActivity(pipController3.mContext).first;
                        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -761933155, 0, "onActivityUnpinned: %s", String.valueOf(componentName));
                        }
                        PipTouchHandler pipTouchHandler2 = pipController3.mTouchHandler;
                        if (componentName == null) {
                            pipTouchHandler2.mPipDismissTargetHandler.getClass();
                            DismissButtonManager dismissButtonManager = pipTouchHandler2.mDismissButtonView.mDismissButtonManager;
                            if (dismissButtonManager.mView != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                dismissButtonManager.cleanUpDismissTarget();
                            }
                            ((HashMap) pipTouchHandler2.mFloatingContentCoordinator.allContentBounds).remove(pipTouchHandler2.mMotionHelper);
                        }
                        PipResizeGestureHandler pipResizeGestureHandler = pipTouchHandler2.mPipResizeGestureHandler;
                        pipResizeGestureHandler.mIsAttached = false;
                        pipResizeGestureHandler.mUserResizeBounds.setEmpty();
                        pipResizeGestureHandler.updateIsEnabled();
                        pipResizeGestureHandler.mLastResizeBounds.setEmpty();
                        pipResizeGestureHandler.resetState();
                        PipTouchState pipTouchState = pipTouchHandler2.mTouchState;
                        if (pipTouchState != null) {
                            pipTouchState.mAllowInputEvents = true;
                        }
                        PipAppOpsListener pipAppOpsListener = pipController3.mAppOpsListener;
                        pipAppOpsListener.mAppOpsManager.stopWatchingMode(pipAppOpsListener.mAppOpsChangedListener);
                        PipInputConsumer pipInputConsumer2 = pipController3.mPipInputConsumer;
                        if (pipInputConsumer2.mInputEventReceiver != null) {
                            try {
                                pipInputConsumer2.mWindowManager.destroyInputConsumer(pipInputConsumer2.mName, 0);
                            } catch (RemoteException e3) {
                                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                                    ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -97774237, 0, "%s: Failed to destroy input consumer, %s", "PipInputConsumer", String.valueOf(e3));
                                }
                            }
                            pipInputConsumer2.mInputEventReceiver.dispose();
                            pipInputConsumer2.mInputEventReceiver = null;
                            ((HandlerExecutor) pipInputConsumer2.mMainExecutor).execute(new PipInputConsumer$$ExternalSyntheticLambda1(pipInputConsumer2, 1));
                        }
                    }
                });
                pipController2.mPipParamsChangedForwarder.addListener(new PipParamsChangedForwarder.PipParamsChangedCallback() { // from class: com.android.wm.shell.pip.phone.PipController.3
                    public AnonymousClass3() {
                    }

                    @Override // com.android.wm.shell.pip.PipParamsChangedForwarder.PipParamsChangedCallback
                    public final void onActionsChanged(List list, RemoteAction remoteAction) {
                        PhonePipMenuController phonePipMenuController = PipController.this.mMenuController;
                        phonePipMenuController.mAppActions = list;
                        phonePipMenuController.mCloseAction = remoteAction;
                        phonePipMenuController.updateMenuActions();
                    }

                    @Override // com.android.wm.shell.pip.PipParamsChangedForwarder.PipParamsChangedCallback
                    public final void onAspectRatioChanged(float f) {
                        List list;
                        PipController pipController3 = PipController.this;
                        PipBoundsState pipBoundsState2 = pipController3.mPipBoundsState;
                        pipBoundsState2.mAspectRatio = f;
                        Rect bounds = pipBoundsState2.getBounds();
                        PipBoundsState pipBoundsState3 = pipController3.mPipBoundsState;
                        Rect adjustedDestinationBounds = pipController3.mPipBoundsAlgorithm.getAdjustedDestinationBounds(bounds, pipBoundsState3.mAspectRatio);
                        Objects.requireNonNull(adjustedDestinationBounds, "Missing destination bounds");
                        boolean equals = adjustedDestinationBounds.equals(pipBoundsState3.getBounds());
                        PipTouchHandler pipTouchHandler2 = pipController3.mTouchHandler;
                        if (!equals) {
                            boolean z = false;
                            pipController3.mPipTaskOrganizer.scheduleAnimateResizePip(adjustedDestinationBounds, pipController3.mEnterAnimationDuration, 0);
                            PhonePipMenuController phonePipMenuController = pipController3.mMenuController;
                            PipMenuView pipMenuView = phonePipMenuController.mPipMenuView;
                            if (pipMenuView != null) {
                                List list2 = phonePipMenuController.mAppActions;
                                if (list2 != null && list2.size() > 0) {
                                    z = true;
                                }
                                if (z) {
                                    list = phonePipMenuController.mAppActions;
                                } else {
                                    list = phonePipMenuController.mMediaActions;
                                }
                                pipMenuView.setActions(adjustedDestinationBounds, list, phonePipMenuController.mCloseAction);
                            }
                            pipTouchHandler2.mPipResizeGestureHandler.mUserResizeBounds.setEmpty();
                            PipController.this.updateMovementBounds(null, false, false, false, null);
                            return;
                        }
                        pipTouchHandler2.updatePipSizeConstraints(pipTouchHandler2.mPipBoundsState.mNormalBounds, f);
                    }
                });
                pipController2.mDisplayInsetsController.addInsetsChangedListener(pipDisplayLayoutState.mDisplayId, new DisplayInsetsController.OnInsetsChangedListener() { // from class: com.android.wm.shell.pip.phone.PipController.4
                    public AnonymousClass4() {
                    }

                    @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
                    public final void insetsChanged(InsetsState insetsState) {
                        PipController pipController3 = PipController.this;
                        DisplayLayout displayLayout = pipController3.mDisplayController.getDisplayLayout(pipController3.mPipDisplayLayoutState.mDisplayId);
                        if (displayLayout == null) {
                            Slog.e("PipController", "insetsChanged, pip has displayId=" + pipController3.mPipDisplayLayoutState.mDisplayId + " but the display maybe removed.");
                            return;
                        }
                        if (!pipController3.mIsInFixedRotation && !pipController3.mIsKeyguardShowingOrAnimating && displayLayout.mRotation == pipController3.mPipBoundsState.getDisplayLayout().mRotation) {
                            int i3 = pipController3.mPipBoundsState.mMovementBounds.bottom;
                            pipController3.onDisplayChangedUncheck(pipController3.mDisplayController.getDisplayLayout(pipController3.mPipDisplayLayoutState.mDisplayId), false);
                            PipBoundsState pipBoundsState2 = pipController3.mPipBoundsState;
                            int i4 = pipBoundsState2.mMovementBounds.bottom;
                            if (!pipController3.mEnablePipKeepClearAlgorithm) {
                                int i5 = pipBoundsState2.getBounds().top;
                                int i6 = i4 - i3;
                                if (i6 < 0 && i5 > i4) {
                                    pipController3.mPipMotionHelper.animateToOffset(i4 - i5, pipController3.mPipBoundsState.getBounds());
                                }
                                if (i6 > 0 && i3 == i5) {
                                    pipController3.mPipMotionHelper.animateToOffset(i6, pipController3.mPipBoundsState.getBounds());
                                }
                            }
                        }
                    }
                });
                PipController$$ExternalSyntheticLambda10 pipController$$ExternalSyntheticLambda10 = new PipController$$ExternalSyntheticLambda10(pipController2);
                TabletopModeController tabletopModeController = pipController2.mTabletopModeController;
                ArrayList arrayList = (ArrayList) tabletopModeController.mListeners;
                if (!arrayList.contains(pipController$$ExternalSyntheticLambda10)) {
                    arrayList.add(pipController$$ExternalSyntheticLambda10);
                    pipController$$ExternalSyntheticLambda10.onTabletopModeChanged(tabletopModeController.isInTabletopMode());
                }
                pipController2.mOneHandedController.ifPresent(new PipController$$ExternalSyntheticLambda4(pipController2, 0));
                PipMediaController pipMediaController = pipController2.mMediaController;
                MediaSessionManager mediaSessionManager = pipMediaController.mMediaSessionManager;
                PipMediaController$$ExternalSyntheticLambda0 pipMediaController$$ExternalSyntheticLambda0 = pipMediaController.mSessionsChangedListener;
                mediaSessionManager.removeOnActiveSessionsChangedListener(pipMediaController$$ExternalSyntheticLambda0);
                mediaSessionManager.addOnActiveSessionsChangedListener(null, UserHandle.CURRENT, pipMediaController.mHandlerExecutor, pipMediaController$$ExternalSyntheticLambda0);
                ShellController shellController = pipController2.mShellController;
                shellController.addConfigurationChangeListener(pipController2);
                CopyOnWriteArrayList copyOnWriteArrayList = shellController.mKeyguardChangeListeners;
                copyOnWriteArrayList.remove(pipController2);
                copyOnWriteArrayList.add(pipController2);
                CopyOnWriteArrayList copyOnWriteArrayList2 = shellController.mUserChangeListeners;
                copyOnWriteArrayList2.remove(pipController2);
                copyOnWriteArrayList2.add(pipController2);
                shellController.addExternalInterface(QuickStepContract.KEY_EXTRA_SHELL_PIP, new Supplier() { // from class: com.android.wm.shell.pip.phone.PipController$$ExternalSyntheticLambda5
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        PipController pipController3 = PipController.this;
                        pipController3.getClass();
                        return new PipController.IPipImpl(pipController3);
                    }
                }, pipController2);
                return;
            case 2:
                PipController pipController3 = (PipController) this.f$0;
                PipTaskOrganizer pipTaskOrganizer = pipController3.mPipTaskOrganizer;
                boolean z = pipTaskOrganizer.mNeedToCheckRotation;
                PipTouchHandler pipTouchHandler2 = pipController3.mTouchHandler;
                PipBoundsState pipBoundsState2 = pipController3.mPipBoundsState;
                if (z) {
                    pipTaskOrganizer.mNeedToCheckRotation = false;
                    int i3 = pipTaskOrganizer.mCurrentRotation;
                    int i4 = pipBoundsState2.getDisplayLayout().mRotation;
                    if (i3 != i4) {
                        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                        pipController3.mRotationController.onDisplayChange(pipController3.mPipDisplayLayoutState.mDisplayId, i4, i3, null, windowContainerTransaction);
                        pipTaskOrganizer.applyFinishBoundsResize(1, windowContainerTransaction, false);
                        pipTouchHandler2.mMotionHelper.moveToBounds(pipBoundsState2.getBounds());
                        return;
                    }
                    return;
                }
                int i5 = pipBoundsState2.getBounds().top;
                int i6 = pipBoundsState2.mMovementBounds.bottom;
                if (i5 > i6) {
                    pipTouchHandler2.mMotionHelper.animateToOffset(i6 - i5, pipBoundsState2.getBounds());
                    return;
                }
                return;
            case 3:
                ((PipController) this.f$0).updateMovementBounds(null, false, false, false, null);
                return;
            case 4:
                PipController pipController4 = (PipController) this.f$0;
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder("prev=");
                PipBoundsState pipBoundsState3 = pipController4.mPipBoundsState;
                sb2.append(pipBoundsState3);
                sb.append(sb2.toString());
                pipController4.updateMovementBounds(null, false, false, false, null);
                sb.append(", next=" + pipBoundsState3);
                Log.d("PipController", "onPipTaskAppeared: " + sb.toString());
                return;
            default:
                PipTouchHandler pipTouchHandler3 = PipController.this.mTouchHandler;
                if (!pipTouchHandler3.mTouchState.mIsUserInteracting) {
                    pipTouchHandler3.mMenuController.showMenu(1, pipTouchHandler3.mPipBoundsState.getBounds(), false, pipTouchHandler3.willResizeMenu(), pipTouchHandler3.mPipTaskOrganizer.shouldShowSplitMenu());
                    return;
                }
                return;
        }
    }
}
