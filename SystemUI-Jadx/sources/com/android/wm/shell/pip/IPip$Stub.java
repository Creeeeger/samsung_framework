package com.android.wm.shell.pip;

import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.ArraySet;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.TaskAppearedInfo;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.pip.IPipAnimationListener;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipSurfaceTransactionHelper;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipTransitionState;
import com.android.wm.shell.pip.phone.PipController;
import com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda6;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.rune.CoreRune;
import java.util.HashMap;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IPip$Stub extends Binder implements IInterface {
    public IPip$Stub() {
        attachInterface(this, "com.android.wm.shell.pip.IPip");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        final IPipAnimationListener iPipAnimationListener$Stub$Proxy;
        final int i3 = 1;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.wm.shell.pip.IPip");
        }
        if (i != 1598968902) {
            final int i4 = 0;
            switch (i) {
                case 2:
                    final ComponentName componentName = (ComponentName) parcel.readTypedObject(ComponentName.CREATOR);
                    final ActivityInfo activityInfo = (ActivityInfo) parcel.readTypedObject(ActivityInfo.CREATOR);
                    final PictureInPictureParams pictureInPictureParams = (PictureInPictureParams) parcel.readTypedObject(PictureInPictureParams.CREATOR);
                    final int readInt = parcel.readInt();
                    final Rect rect = (Rect) parcel.readTypedObject(Rect.CREATOR);
                    parcel.enforceNoDataAvail();
                    final Rect[] rectArr = new Rect[1];
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "startSwipePipToHome", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            boolean z;
                            Rect[] rectArr2 = rectArr;
                            ComponentName componentName2 = componentName;
                            ActivityInfo activityInfo2 = activityInfo;
                            PictureInPictureParams pictureInPictureParams2 = pictureInPictureParams;
                            int i5 = readInt;
                            Rect rect2 = rect;
                            PipController pipController = (PipController) obj;
                            boolean z2 = pipController.mEnablePipKeepClearAlgorithm;
                            PipBoundsState pipBoundsState = pipController.mPipBoundsState;
                            if (z2) {
                                ((ArraySet) pipBoundsState.mRestrictedKeepClearAreas).add(rect2);
                            } else {
                                int height = rect2.height();
                                if (height > 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z) {
                                    height = 0;
                                }
                                pipBoundsState.setShelfVisibility(height, z, true);
                            }
                            pipController.mPipDisplayLayoutState.rotateTo(i5);
                            PipTaskOrganizer pipTaskOrganizer = pipController.mPipTaskOrganizer;
                            pipTaskOrganizer.getClass();
                            boolean z3 = ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled;
                            PipTransitionState pipTransitionState = pipTaskOrganizer.mPipTransitionState;
                            if (z3) {
                                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -373174550, 0, "startSwipePipToHome: %s, state=%s", String.valueOf(componentName2), String.valueOf(pipTransitionState));
                            }
                            Log.d("PipTaskOrganizer", "startSwipePipToHome");
                            pipTransitionState.mInSwipePipToHomeTransition = true;
                            pipTransitionState.setTransitionState(3);
                            pipTaskOrganizer.mPipTransitionController.sendOnPipTransitionStarted(2);
                            PipBoundsState pipBoundsState2 = pipTaskOrganizer.mPipBoundsState;
                            PipBoundsAlgorithm pipBoundsAlgorithm = pipTaskOrganizer.mPipBoundsAlgorithm;
                            pipBoundsState2.setBoundsStateForEntry(componentName2, activityInfo2, pictureInPictureParams2, pipBoundsAlgorithm);
                            Rect entryDestinationBounds = pipBoundsAlgorithm.getEntryDestinationBounds();
                            pipBoundsState.mNormalBounds.set(entryDestinationBounds);
                            rectArr2[0] = entryDestinationBounds;
                        }
                    }, true);
                    Rect rect2 = rectArr[0];
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(rect2, 1);
                    return true;
                case 3:
                    final int readInt2 = parcel.readInt();
                    final ComponentName componentName2 = (ComponentName) parcel.readTypedObject(ComponentName.CREATOR);
                    final Rect rect3 = (Rect) parcel.readTypedObject(Rect.CREATOR);
                    final SurfaceControl surfaceControl = (SurfaceControl) parcel.readTypedObject(SurfaceControl.CREATOR);
                    parcel.enforceNoDataAvail();
                    PipController.IPipImpl iPipImpl = (PipController.IPipImpl) this;
                    if (surfaceControl != null) {
                        surfaceControl.setUnreleasedWarningCallSite("PipController.stopSwipePipToHome");
                    }
                    ExecutorUtils.executeRemoteCallWithTaskPermission(iPipImpl.mController, "stopSwipePipToHome", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ShellTaskOrganizer.TaskListener taskListener;
                            int i5 = readInt2;
                            ComponentName componentName3 = componentName2;
                            Rect rect4 = rect3;
                            SurfaceControl surfaceControl2 = surfaceControl;
                            PipTaskOrganizer pipTaskOrganizer = ((PipController) obj).mPipTaskOrganizer;
                            pipTaskOrganizer.getClass();
                            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 2074091488, 0, "stopSwipePipToHome: %s, state=%s", String.valueOf(componentName3), String.valueOf(pipTaskOrganizer.mPipTransitionState));
                            }
                            if (rect4 != null) {
                                Log.d("PipTaskOrganizer", "stopSwipePipToHome mInSwipePipToHomeTransition=" + pipTaskOrganizer.mPipTransitionState.mInSwipePipToHomeTransition + " destination=" + rect4);
                            }
                            if (pipTaskOrganizer.mPipTransitionState.mInSwipePipToHomeTransition) {
                                if (rect4.isEmpty()) {
                                    Log.w("PipTaskOrganizer", "stopSwipePipToHome PIP empty, setDefaultBounds");
                                    rect4.set(pipTaskOrganizer.mPipBoundsAlgorithm.getEntryDestinationBounds());
                                }
                                if (CoreRune.MW_PIP_SHELL_TRANSITION) {
                                    pipTaskOrganizer.setSwipingPipTaskId(i5, "from_home");
                                }
                                pipTaskOrganizer.mPipBoundsState.setBounds(rect4);
                                pipTaskOrganizer.mSwipePipToHomeOverlay = surfaceControl2;
                                if (Transitions.ENABLE_SHELL_TRANSITIONS && surfaceControl2 != null) {
                                    SurfaceControl.Transaction transaction = ((PipSurfaceTransactionHelper.VsyncSurfaceControlTransactionFactory) pipTaskOrganizer.mSurfaceControlTransactionFactory).getTransaction();
                                    ShellTaskOrganizer shellTaskOrganizer = pipTaskOrganizer.mTaskOrganizer;
                                    synchronized (shellTaskOrganizer.mLock) {
                                        if (shellTaskOrganizer.mTasks.contains(i5)) {
                                            taskListener = shellTaskOrganizer.getTaskListener(((TaskAppearedInfo) shellTaskOrganizer.mTasks.get(i5)).getTaskInfo(), false);
                                        } else {
                                            taskListener = null;
                                        }
                                    }
                                    if (taskListener == null) {
                                        if (ShellProtoLogCache.WM_SHELL_TASK_ORG_enabled) {
                                            ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_TASK_ORG, 965672371, 1, null, Long.valueOf(i5));
                                        }
                                    } else {
                                        taskListener.reparentChildSurfaceToTask(i5, transaction, surfaceControl2);
                                    }
                                    transaction.setLayer(surfaceControl2, Integer.MAX_VALUE);
                                    transaction.apply();
                                }
                            }
                        }
                    }, false);
                    return true;
                case 4:
                    final int readInt3 = parcel.readInt();
                    final ComponentName componentName3 = (ComponentName) parcel.readTypedObject(ComponentName.CREATOR);
                    parcel.enforceNoDataAvail();
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "abortSwipePipToHome", new Consumer(readInt3, componentName3) { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda5
                        public final /* synthetic */ ComponentName f$1;

                        {
                            this.f$1 = componentName3;
                        }

                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ComponentName componentName4 = this.f$1;
                            PipTaskOrganizer pipTaskOrganizer = ((PipController) obj).mPipTaskOrganizer;
                            PipTransitionState pipTransitionState = pipTaskOrganizer.mPipTransitionState;
                            if (pipTransitionState.mInSwipePipToHomeTransition) {
                                if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                                    ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 645504978, 0, "Abort swipe-pip-to-home for %s", String.valueOf(componentName4));
                                }
                                pipTaskOrganizer.mPipTransitionController.sendOnPipTransitionCancelled(2);
                                pipTransitionState.mInSwipePipToHomeTransition = false;
                                pipTaskOrganizer.mPictureInPictureParams = null;
                                pipTransitionState.setTransitionState(0);
                            }
                        }
                    }, false);
                    return true;
                case 5:
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder == null) {
                        iPipAnimationListener$Stub$Proxy = null;
                    } else {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.wm.shell.pip.IPipAnimationListener");
                        if (queryLocalInterface != null && (queryLocalInterface instanceof IPipAnimationListener)) {
                            iPipAnimationListener$Stub$Proxy = (IPipAnimationListener) queryLocalInterface;
                        } else {
                            iPipAnimationListener$Stub$Proxy = new IPipAnimationListener$Stub$Proxy(readStrongBinder);
                        }
                    }
                    parcel.enforceNoDataAvail();
                    final PipController.IPipImpl iPipImpl2 = (PipController.IPipImpl) this;
                    ExecutorUtils.executeRemoteCallWithTaskPermission(iPipImpl2.mController, "setPipAnimationListener", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            PipController.IPipImpl iPipImpl3 = PipController.IPipImpl.this;
                            IPipAnimationListener iPipAnimationListener = iPipAnimationListener$Stub$Proxy;
                            if (iPipAnimationListener != null) {
                                iPipImpl3.mListener.register(iPipAnimationListener);
                            } else {
                                iPipImpl3.mListener.unregister();
                            }
                        }
                    }, false);
                    return true;
                case 6:
                    final boolean readBoolean = parcel.readBoolean();
                    final int readInt4 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "setShelfHeight", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            int i5 = 0;
                            switch (i3) {
                                case 0:
                                    boolean z = readBoolean;
                                    int i6 = readInt4;
                                    PipController pipController = (PipController) obj;
                                    PipBoundsState pipBoundsState = pipController.mPipBoundsState;
                                    if (z) {
                                        ((HashMap) pipBoundsState.mNamedUnrestrictedKeepClearAreas).put("hotseat", new Rect(0, pipBoundsState.getDisplayBounds().bottom - i6, pipBoundsState.getDisplayBounds().right, pipBoundsState.getDisplayBounds().bottom));
                                        pipController.updatePipPositionForKeepClearAreas();
                                        return;
                                    } else {
                                        ((HashMap) pipBoundsState.mNamedUnrestrictedKeepClearAreas).remove("hotseat");
                                        HandlerExecutor handlerExecutor = (HandlerExecutor) pipController.mMainExecutor;
                                        PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda1 = pipController.mMovePipInResponseToKeepClearAreasChangeCallback;
                                        handlerExecutor.removeCallbacks(pipController$$ExternalSyntheticLambda1);
                                        handlerExecutor.executeDelayed(PipController.PIP_KEEP_CLEAR_AREAS_DELAY, pipController$$ExternalSyntheticLambda1);
                                        return;
                                    }
                                default:
                                    boolean z2 = readBoolean;
                                    int i7 = readInt4;
                                    PipController pipController2 = (PipController) obj;
                                    if (!pipController2.mIsKeyguardShowingOrAnimating) {
                                        if (z2) {
                                            i5 = i7;
                                        }
                                        pipController2.mPipBoundsState.setShelfVisibility(i5, z2, true);
                                        return;
                                    }
                                    return;
                            }
                        }
                    }, false);
                    return true;
                case 7:
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "setPipAnimationTypeToAlpha", new PipController$IPipImpl$$ExternalSyntheticLambda6(0), false);
                    return true;
                case 8:
                    final boolean readBoolean2 = parcel.readBoolean();
                    final int readInt5 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "setLauncherKeepClearAreaHeight", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            int i5 = 0;
                            switch (i4) {
                                case 0:
                                    boolean z = readBoolean2;
                                    int i6 = readInt5;
                                    PipController pipController = (PipController) obj;
                                    PipBoundsState pipBoundsState = pipController.mPipBoundsState;
                                    if (z) {
                                        ((HashMap) pipBoundsState.mNamedUnrestrictedKeepClearAreas).put("hotseat", new Rect(0, pipBoundsState.getDisplayBounds().bottom - i6, pipBoundsState.getDisplayBounds().right, pipBoundsState.getDisplayBounds().bottom));
                                        pipController.updatePipPositionForKeepClearAreas();
                                        return;
                                    } else {
                                        ((HashMap) pipBoundsState.mNamedUnrestrictedKeepClearAreas).remove("hotseat");
                                        HandlerExecutor handlerExecutor = (HandlerExecutor) pipController.mMainExecutor;
                                        PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda1 = pipController.mMovePipInResponseToKeepClearAreasChangeCallback;
                                        handlerExecutor.removeCallbacks(pipController$$ExternalSyntheticLambda1);
                                        handlerExecutor.executeDelayed(PipController.PIP_KEEP_CLEAR_AREAS_DELAY, pipController$$ExternalSyntheticLambda1);
                                        return;
                                    }
                                default:
                                    boolean z2 = readBoolean2;
                                    int i7 = readInt5;
                                    PipController pipController2 = (PipController) obj;
                                    if (!pipController2.mIsKeyguardShowingOrAnimating) {
                                        if (z2) {
                                            i5 = i7;
                                        }
                                        pipController2.mPipBoundsState.setShelfVisibility(i5, z2, true);
                                        return;
                                    }
                                    return;
                            }
                        }
                    }, false);
                    return true;
                case 9:
                    final int readInt6 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((PipController.IPipImpl) this).mController, "setLauncherAppIconSize", new Consumer() { // from class: com.android.wm.shell.pip.phone.PipController$IPipImpl$$ExternalSyntheticLambda4
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((PipController) obj).mPipBoundsState.mLauncherState.mAppIconSizePx = readInt6;
                        }
                    }, false);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
        parcel2.writeString("com.android.wm.shell.pip.IPip");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
