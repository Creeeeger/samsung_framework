package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.widget.Toast;
import android.window.RemoteTransition;
import android.window.WindowContainerTransaction;
import com.android.internal.logging.InstanceId;
import com.android.systemui.R;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.common.split.SplitScreenUtils;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.splitscreen.StageCoordinator;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ISplitScreen$Stub extends Binder implements IInterface {
    public ISplitScreen$Stub() {
        attachInterface(this, "com.android.wm.shell.splitscreen.ISplitScreen");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        final int i3 = 1;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.wm.shell.splitscreen.ISplitScreen");
        }
        if (i != 1598968902) {
            final Object obj = null;
            final int i4 = 2;
            final int i5 = 0;
            if (i != 2) {
                int i6 = 3;
                if (i != 3) {
                    if (i != 102) {
                        if (i != 103) {
                            switch (i) {
                                case 5:
                                    final int readInt = parcel.readInt();
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "removeFromSideStage", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            switch (i4) {
                                                case 0:
                                                    ((SplitScreenController) obj2).exitSplitScreen(readInt, 0);
                                                    return;
                                                case 1:
                                                    int i7 = readInt;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    splitScreenController.mGestureStarter.ifPresent(new SplitScreenController$$ExternalSyntheticLambda7(i7, "ISplitScreen", 0));
                                                    return;
                                                default:
                                                    ((SplitScreenController) obj2).removeFromSideStage(readInt);
                                                    return;
                                            }
                                        }
                                    }, false);
                                    break;
                                case 6:
                                    final int readInt2 = parcel.readInt();
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "exitSplitScreen", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            switch (i5) {
                                                case 0:
                                                    ((SplitScreenController) obj2).exitSplitScreen(readInt2, 0);
                                                    return;
                                                case 1:
                                                    int i7 = readInt2;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    splitScreenController.mGestureStarter.ifPresent(new SplitScreenController$$ExternalSyntheticLambda7(i7, "ISplitScreen", 0));
                                                    return;
                                                default:
                                                    ((SplitScreenController) obj2).removeFromSideStage(readInt2);
                                                    return;
                                            }
                                        }
                                    }, false);
                                    break;
                                case 7:
                                    boolean readBoolean = parcel.readBoolean();
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "exitSplitScreenOnHide", new SplitScreenController$$ExternalSyntheticLambda8(readBoolean, i3), false);
                                    break;
                                case 8:
                                    final int readInt3 = parcel.readInt();
                                    final int readInt4 = parcel.readInt();
                                    final Bundle bundle = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startTask", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            ((SplitScreenController) obj2).startTask(readInt3, readInt4, bundle);
                                        }
                                    }, false);
                                    break;
                                case 9:
                                    final String readString = parcel.readString();
                                    final String readString2 = parcel.readString();
                                    final int readInt5 = parcel.readInt();
                                    final Bundle bundle2 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                                    final UserHandle userHandle = (UserHandle) parcel.readTypedObject(UserHandle.CREATOR);
                                    final InstanceId instanceId = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startShortcut", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            String str = readString;
                                            String str2 = readString2;
                                            int i7 = readInt5;
                                            Bundle bundle3 = bundle2;
                                            UserHandle userHandle2 = userHandle;
                                            InstanceId instanceId2 = instanceId;
                                            SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                            StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                            if (!stageCoordinator.isSplitScreenVisible() && !Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                stageCoordinator.exitSplitScreen(null, 10);
                                            }
                                            SplitscreenEventLogger splitscreenEventLogger = stageCoordinator.mLogger;
                                            splitscreenEventLogger.mEnterSessionId = instanceId2;
                                            splitscreenEventLogger.mEnterReason = 3;
                                            splitScreenController.startShortcut(str, str2, i7, bundle3, userHandle2);
                                        }
                                    }, false);
                                    break;
                                case 10:
                                    final PendingIntent pendingIntent = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt6 = parcel.readInt();
                                    final Intent intent = (Intent) parcel.readTypedObject(Intent.CREATOR);
                                    final int readInt7 = parcel.readInt();
                                    final Bundle bundle3 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                                    final InstanceId instanceId2 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startIntent", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            PendingIntent pendingIntent2 = pendingIntent;
                                            int i7 = readInt6;
                                            Intent intent2 = intent;
                                            int i8 = readInt7;
                                            Bundle bundle4 = bundle3;
                                            InstanceId instanceId3 = instanceId2;
                                            SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                            StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                            if (!stageCoordinator.isSplitScreenVisible() && !Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                stageCoordinator.exitSplitScreen(null, 10);
                                            }
                                            SplitscreenEventLogger splitscreenEventLogger = stageCoordinator.mLogger;
                                            splitscreenEventLogger.mEnterSessionId = instanceId3;
                                            splitscreenEventLogger.mEnterReason = 3;
                                            splitScreenController.startIntent(pendingIntent2, i7, intent2, i8, bundle4, -1, 0);
                                        }
                                    }, false);
                                    break;
                                case 11:
                                    final int readInt8 = parcel.readInt();
                                    Parcelable.Creator creator = Bundle.CREATOR;
                                    final Bundle bundle4 = (Bundle) parcel.readTypedObject(creator);
                                    final int readInt9 = parcel.readInt();
                                    final Bundle bundle5 = (Bundle) parcel.readTypedObject(creator);
                                    final int readInt10 = parcel.readInt();
                                    final float readFloat = parcel.readFloat();
                                    final RemoteTransition remoteTransition = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                                    final InstanceId instanceId3 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final SplitScreenController.ISplitScreenImpl iSplitScreenImpl = (SplitScreenController.ISplitScreenImpl) this;
                                    if (readInt9 == -1) {
                                        final SplitScreenController.CallerInfo callerInfo = new SplitScreenController.CallerInfo();
                                        ExecutorUtils.executeRemoteCallWithTaskPermission(iSplitScreenImpl.mController, "startTasks", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9
                                            @Override // java.util.function.Consumer
                                            public final void accept(Object obj2) {
                                                int i7;
                                                SplitScreenController.ISplitScreenImpl iSplitScreenImpl2 = SplitScreenController.ISplitScreenImpl.this;
                                                int i8 = readInt8;
                                                Bundle bundle6 = bundle4;
                                                int i9 = readInt9;
                                                Bundle bundle7 = bundle5;
                                                int i10 = readInt10;
                                                float f = readFloat;
                                                RemoteTransition remoteTransition2 = remoteTransition;
                                                InstanceId instanceId4 = instanceId3;
                                                SplitScreenController.CallerInfo callerInfo2 = callerInfo;
                                                SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                iSplitScreenImpl2.getClass();
                                                if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION && !MultiWindowUtils.isInSubDisplay(iSplitScreenImpl2.mController.mContext)) {
                                                    i7 = 0;
                                                } else {
                                                    i7 = -1;
                                                }
                                                splitScreenController.mStageCoordinator.startTasks(i8, bundle6, i9, bundle7, -1, null, i10, f, 0, 0.5f, remoteTransition2, instanceId4, i7, callerInfo2);
                                            }
                                        }, false);
                                        break;
                                    } else {
                                        final int i7 = 1;
                                        ExecutorUtils.executeRemoteCallWithTaskPermission(iSplitScreenImpl.mController, "startTasks", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5
                                            @Override // java.util.function.Consumer
                                            public final void accept(Object obj2) {
                                                switch (i7) {
                                                    case 0:
                                                        int i8 = readInt8;
                                                        Bundle bundle6 = bundle4;
                                                        int i9 = readInt9;
                                                        Bundle bundle7 = bundle5;
                                                        int i10 = readInt10;
                                                        float f = readFloat;
                                                        RemoteAnimationAdapter remoteAnimationAdapter = remoteTransition;
                                                        InstanceId instanceId4 = instanceId3;
                                                        StageCoordinator stageCoordinator = ((SplitScreenController) obj2).mStageCoordinator;
                                                        stageCoordinator.getClass();
                                                        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                        if (bundle6 == null) {
                                                            bundle6 = new Bundle();
                                                        }
                                                        SideStage sideStage = stageCoordinator.mSideStage;
                                                        if (i9 == -1) {
                                                            if (stageCoordinator.mMainStage.containsTask(i8) || sideStage.containsTask(i8)) {
                                                                stageCoordinator.exitSplitScreen(null, 10);
                                                            }
                                                            ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle6);
                                                            fromBundle.update(ActivityOptions.makeRemoteAnimation(remoteAnimationAdapter));
                                                            Bundle bundle8 = fromBundle.toBundle();
                                                            StageCoordinator.addActivityOptions(bundle8, null);
                                                            windowContainerTransaction.startTask(i8, bundle8);
                                                            stageCoordinator.mSyncQueue.queue(windowContainerTransaction);
                                                            return;
                                                        }
                                                        StageCoordinator.addActivityOptions(bundle6, sideStage);
                                                        windowContainerTransaction.startTask(i8, bundle6);
                                                        stageCoordinator.mSplitRequest = new StageCoordinator.SplitRequest(stageCoordinator, i8, i9, i10);
                                                        stageCoordinator.startWithLegacyTransition(windowContainerTransaction, i9, bundle7, i10, f, remoteAnimationAdapter, instanceId4);
                                                        return;
                                                    default:
                                                        ((SplitScreenController) obj2).mStageCoordinator.startTasks(readInt8, bundle4, readInt9, bundle5, -1, null, readInt10, readFloat, 0, 0.5f, remoteTransition, instanceId3, -1, null);
                                                        return;
                                                }
                                            }
                                        }, false);
                                        break;
                                    }
                                case 12:
                                    final int readInt11 = parcel.readInt();
                                    Parcelable.Creator creator2 = Bundle.CREATOR;
                                    final Bundle bundle6 = (Bundle) parcel.readTypedObject(creator2);
                                    final int readInt12 = parcel.readInt();
                                    final Bundle bundle7 = (Bundle) parcel.readTypedObject(creator2);
                                    final int readInt13 = parcel.readInt();
                                    final float readFloat2 = parcel.readFloat();
                                    final RemoteAnimationAdapter remoteAnimationAdapter = (RemoteAnimationAdapter) parcel.readTypedObject(RemoteAnimationAdapter.CREATOR);
                                    final InstanceId instanceId4 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i8 = 0;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startTasks", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            switch (i8) {
                                                case 0:
                                                    int i82 = readInt11;
                                                    Bundle bundle62 = bundle6;
                                                    int i9 = readInt12;
                                                    Bundle bundle72 = bundle7;
                                                    int i10 = readInt13;
                                                    float f = readFloat2;
                                                    RemoteAnimationAdapter remoteAnimationAdapter2 = remoteAnimationAdapter;
                                                    InstanceId instanceId42 = instanceId4;
                                                    StageCoordinator stageCoordinator = ((SplitScreenController) obj2).mStageCoordinator;
                                                    stageCoordinator.getClass();
                                                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                    if (bundle62 == null) {
                                                        bundle62 = new Bundle();
                                                    }
                                                    SideStage sideStage = stageCoordinator.mSideStage;
                                                    if (i9 == -1) {
                                                        if (stageCoordinator.mMainStage.containsTask(i82) || sideStage.containsTask(i82)) {
                                                            stageCoordinator.exitSplitScreen(null, 10);
                                                        }
                                                        ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle62);
                                                        fromBundle.update(ActivityOptions.makeRemoteAnimation(remoteAnimationAdapter2));
                                                        Bundle bundle8 = fromBundle.toBundle();
                                                        StageCoordinator.addActivityOptions(bundle8, null);
                                                        windowContainerTransaction.startTask(i82, bundle8);
                                                        stageCoordinator.mSyncQueue.queue(windowContainerTransaction);
                                                        return;
                                                    }
                                                    StageCoordinator.addActivityOptions(bundle62, sideStage);
                                                    windowContainerTransaction.startTask(i82, bundle62);
                                                    stageCoordinator.mSplitRequest = new StageCoordinator.SplitRequest(stageCoordinator, i82, i9, i10);
                                                    stageCoordinator.startWithLegacyTransition(windowContainerTransaction, i9, bundle72, i10, f, remoteAnimationAdapter2, instanceId42);
                                                    return;
                                                default:
                                                    ((SplitScreenController) obj2).mStageCoordinator.startTasks(readInt11, bundle6, readInt12, bundle7, -1, null, readInt13, readFloat2, 0, 0.5f, remoteAnimationAdapter, instanceId4, -1, null);
                                                    return;
                                            }
                                        }
                                    }, false);
                                    break;
                                case 13:
                                    final PendingIntent pendingIntent2 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt14 = parcel.readInt();
                                    Parcelable.Creator creator3 = Bundle.CREATOR;
                                    final Bundle bundle8 = (Bundle) parcel.readTypedObject(creator3);
                                    final int readInt15 = parcel.readInt();
                                    final Bundle bundle9 = (Bundle) parcel.readTypedObject(creator3);
                                    final int readInt16 = parcel.readInt();
                                    final float readFloat3 = parcel.readFloat();
                                    final RemoteAnimationAdapter remoteAnimationAdapter2 = (RemoteAnimationAdapter) parcel.readTypedObject(RemoteAnimationAdapter.CREATOR);
                                    final InstanceId instanceId5 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i9 = 0;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startIntentAndTaskWithLegacyTransition", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2
                                        /* JADX WARN: Removed duplicated region for block: B:16:0x0090  */
                                        /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
                                        /* JADX WARN: Removed duplicated region for block: B:22:0x00a5  */
                                        /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
                                        /* JADX WARN: Removed duplicated region for block: B:43:0x0158  */
                                        /* JADX WARN: Removed duplicated region for block: B:47:0x016d  */
                                        @Override // java.util.function.Consumer
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                                        */
                                        public final void accept(java.lang.Object r39) {
                                            /*
                                                Method dump skipped, instructions count: 424
                                                To view this dump change 'Code comments level' option to 'DEBUG'
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2.accept(java.lang.Object):void");
                                        }
                                    }, false);
                                    break;
                                case 14:
                                    final RemoteAnimationTarget[] remoteAnimationTargetArr = (RemoteAnimationTarget[]) parcel.createTypedArray(RemoteAnimationTarget.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final RemoteAnimationTarget[][] remoteAnimationTargetArr2 = {null};
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "onGoingToRecentsLegacy", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            RemoteAnimationTarget[] remoteAnimationTargetArr3 = null;
                                            switch (i5) {
                                                case 0:
                                                    RemoteAnimationTarget[][] remoteAnimationTargetArr4 = (RemoteAnimationTarget[][]) remoteAnimationTargetArr2;
                                                    RemoteAnimationTarget[] remoteAnimationTargetArr5 = (RemoteAnimationTarget[]) remoteAnimationTargetArr;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    if (!Transitions.ENABLE_SHELL_TRANSITIONS && splitScreenController.isSplitScreenVisible()) {
                                                        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                        StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                                        stageCoordinator.mMainStage.evictInvisibleChildren(windowContainerTransaction);
                                                        stageCoordinator.mSideStage.evictInvisibleChildren(windowContainerTransaction);
                                                        splitScreenController.mSyncQueue.queue(windowContainerTransaction);
                                                        splitScreenController.mStageCoordinator.mSplitBackgroundController.updateBackgroundVisibility(false, false);
                                                        TransactionPool transactionPool = splitScreenController.mTransactionPool;
                                                        SurfaceControl.Transaction acquire = transactionPool.acquire();
                                                        SurfaceControl surfaceControl = splitScreenController.mGoingToRecentsTasksLayer;
                                                        if (surfaceControl != null) {
                                                            acquire.remove(surfaceControl);
                                                        }
                                                        splitScreenController.mGoingToRecentsTasksLayer = splitScreenController.reparentSplitTasksForAnimation(remoteAnimationTargetArr5, acquire, "SplitScreenController#onGoingToRecentsLegacy");
                                                        acquire.apply();
                                                        transactionPool.release(acquire);
                                                        remoteAnimationTargetArr3 = new RemoteAnimationTarget[]{splitScreenController.mStageCoordinator.getDividerBarLegacyTarget()};
                                                    }
                                                    remoteAnimationTargetArr4[0] = remoteAnimationTargetArr3;
                                                    return;
                                                case 1:
                                                    RemoteAnimationTarget[][] remoteAnimationTargetArr6 = (RemoteAnimationTarget[][]) remoteAnimationTargetArr2;
                                                    RemoteAnimationTarget[] remoteAnimationTargetArr7 = (RemoteAnimationTarget[]) remoteAnimationTargetArr;
                                                    SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                                    splitScreenController2.getClass();
                                                    if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                        int i10 = 0;
                                                        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr7) {
                                                            if (remoteAnimationTarget.mode == 0) {
                                                                i10++;
                                                            }
                                                        }
                                                        if (i10 >= 2) {
                                                            TransactionPool transactionPool2 = splitScreenController2.mTransactionPool;
                                                            SurfaceControl.Transaction acquire2 = transactionPool2.acquire();
                                                            SurfaceControl surfaceControl2 = splitScreenController2.mStartingSplitTasksLayer;
                                                            if (surfaceControl2 != null) {
                                                                acquire2.remove(surfaceControl2);
                                                            }
                                                            splitScreenController2.mStartingSplitTasksLayer = splitScreenController2.reparentSplitTasksForAnimation(remoteAnimationTargetArr7, acquire2, "SplitScreenController#onStartingSplitLegacy");
                                                            acquire2.apply();
                                                            transactionPool2.release(acquire2);
                                                            try {
                                                                remoteAnimationTargetArr3 = new RemoteAnimationTarget[]{splitScreenController2.mStageCoordinator.getDividerBarLegacyTarget()};
                                                                for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr7) {
                                                                    SurfaceControl surfaceControl3 = remoteAnimationTarget2.leash;
                                                                    if (surfaceControl3 != null) {
                                                                        surfaceControl3.release();
                                                                    }
                                                                }
                                                            } catch (Throwable th) {
                                                                for (RemoteAnimationTarget remoteAnimationTarget3 : remoteAnimationTargetArr7) {
                                                                    SurfaceControl surfaceControl4 = remoteAnimationTarget3.leash;
                                                                    if (surfaceControl4 != null) {
                                                                        surfaceControl4.release();
                                                                    }
                                                                }
                                                                throw th;
                                                            }
                                                        }
                                                    }
                                                    remoteAnimationTargetArr6[0] = remoteAnimationTargetArr3;
                                                    return;
                                                default:
                                                    ((SplitScreenController.ISplitScreenImpl) remoteAnimationTargetArr2).mListener.register((ISplitScreenListener) remoteAnimationTargetArr);
                                                    return;
                                            }
                                        }
                                    }, true);
                                    RemoteAnimationTarget[] remoteAnimationTargetArr3 = remoteAnimationTargetArr2[0];
                                    parcel2.writeNoException();
                                    parcel2.writeTypedArray(remoteAnimationTargetArr3, 1);
                                    break;
                                case 15:
                                    final RemoteAnimationTarget[] remoteAnimationTargetArr4 = (RemoteAnimationTarget[]) parcel.createTypedArray(RemoteAnimationTarget.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final RemoteAnimationTarget[][] remoteAnimationTargetArr5 = {null};
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "onStartingSplitLegacy", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            RemoteAnimationTarget[] remoteAnimationTargetArr32 = null;
                                            switch (i3) {
                                                case 0:
                                                    RemoteAnimationTarget[][] remoteAnimationTargetArr42 = (RemoteAnimationTarget[][]) remoteAnimationTargetArr5;
                                                    RemoteAnimationTarget[] remoteAnimationTargetArr52 = (RemoteAnimationTarget[]) remoteAnimationTargetArr4;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    if (!Transitions.ENABLE_SHELL_TRANSITIONS && splitScreenController.isSplitScreenVisible()) {
                                                        WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                        StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                                        stageCoordinator.mMainStage.evictInvisibleChildren(windowContainerTransaction);
                                                        stageCoordinator.mSideStage.evictInvisibleChildren(windowContainerTransaction);
                                                        splitScreenController.mSyncQueue.queue(windowContainerTransaction);
                                                        splitScreenController.mStageCoordinator.mSplitBackgroundController.updateBackgroundVisibility(false, false);
                                                        TransactionPool transactionPool = splitScreenController.mTransactionPool;
                                                        SurfaceControl.Transaction acquire = transactionPool.acquire();
                                                        SurfaceControl surfaceControl = splitScreenController.mGoingToRecentsTasksLayer;
                                                        if (surfaceControl != null) {
                                                            acquire.remove(surfaceControl);
                                                        }
                                                        splitScreenController.mGoingToRecentsTasksLayer = splitScreenController.reparentSplitTasksForAnimation(remoteAnimationTargetArr52, acquire, "SplitScreenController#onGoingToRecentsLegacy");
                                                        acquire.apply();
                                                        transactionPool.release(acquire);
                                                        remoteAnimationTargetArr32 = new RemoteAnimationTarget[]{splitScreenController.mStageCoordinator.getDividerBarLegacyTarget()};
                                                    }
                                                    remoteAnimationTargetArr42[0] = remoteAnimationTargetArr32;
                                                    return;
                                                case 1:
                                                    RemoteAnimationTarget[][] remoteAnimationTargetArr6 = (RemoteAnimationTarget[][]) remoteAnimationTargetArr5;
                                                    RemoteAnimationTarget[] remoteAnimationTargetArr7 = (RemoteAnimationTarget[]) remoteAnimationTargetArr4;
                                                    SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                                    splitScreenController2.getClass();
                                                    if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                                                        int i10 = 0;
                                                        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr7) {
                                                            if (remoteAnimationTarget.mode == 0) {
                                                                i10++;
                                                            }
                                                        }
                                                        if (i10 >= 2) {
                                                            TransactionPool transactionPool2 = splitScreenController2.mTransactionPool;
                                                            SurfaceControl.Transaction acquire2 = transactionPool2.acquire();
                                                            SurfaceControl surfaceControl2 = splitScreenController2.mStartingSplitTasksLayer;
                                                            if (surfaceControl2 != null) {
                                                                acquire2.remove(surfaceControl2);
                                                            }
                                                            splitScreenController2.mStartingSplitTasksLayer = splitScreenController2.reparentSplitTasksForAnimation(remoteAnimationTargetArr7, acquire2, "SplitScreenController#onStartingSplitLegacy");
                                                            acquire2.apply();
                                                            transactionPool2.release(acquire2);
                                                            try {
                                                                remoteAnimationTargetArr32 = new RemoteAnimationTarget[]{splitScreenController2.mStageCoordinator.getDividerBarLegacyTarget()};
                                                                for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr7) {
                                                                    SurfaceControl surfaceControl3 = remoteAnimationTarget2.leash;
                                                                    if (surfaceControl3 != null) {
                                                                        surfaceControl3.release();
                                                                    }
                                                                }
                                                            } catch (Throwable th) {
                                                                for (RemoteAnimationTarget remoteAnimationTarget3 : remoteAnimationTargetArr7) {
                                                                    SurfaceControl surfaceControl4 = remoteAnimationTarget3.leash;
                                                                    if (surfaceControl4 != null) {
                                                                        surfaceControl4.release();
                                                                    }
                                                                }
                                                                throw th;
                                                            }
                                                        }
                                                    }
                                                    remoteAnimationTargetArr6[0] = remoteAnimationTargetArr32;
                                                    return;
                                                default:
                                                    ((SplitScreenController.ISplitScreenImpl) remoteAnimationTargetArr5).mListener.register((ISplitScreenListener) remoteAnimationTargetArr4);
                                                    return;
                                            }
                                        }
                                    }, true);
                                    RemoteAnimationTarget[] remoteAnimationTargetArr6 = remoteAnimationTargetArr5[0];
                                    parcel2.writeNoException();
                                    parcel2.writeTypedArray(remoteAnimationTargetArr6, 1);
                                    break;
                                case 16:
                                    final ShortcutInfo shortcutInfo = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    Parcelable.Creator creator4 = Bundle.CREATOR;
                                    final Bundle bundle10 = (Bundle) parcel.readTypedObject(creator4);
                                    final int readInt17 = parcel.readInt();
                                    final Bundle bundle11 = (Bundle) parcel.readTypedObject(creator4);
                                    final int readInt18 = parcel.readInt();
                                    final float readFloat4 = parcel.readFloat();
                                    final RemoteAnimationAdapter remoteAnimationAdapter3 = (RemoteAnimationAdapter) parcel.readTypedObject(RemoteAnimationAdapter.CREATOR);
                                    final InstanceId instanceId6 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i10 = 1;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startShortcutAndTaskWithLegacyTransition", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            int i11;
                                            int i12;
                                            int i13;
                                            switch (i10) {
                                                case 0:
                                                    ShortcutInfo shortcutInfo2 = shortcutInfo;
                                                    Bundle bundle12 = bundle10;
                                                    int i14 = readInt17;
                                                    Bundle bundle13 = bundle11;
                                                    int i15 = readInt18;
                                                    float f = readFloat4;
                                                    RemoteTransition remoteTransition2 = remoteAnimationAdapter3;
                                                    InstanceId instanceId7 = instanceId6;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    if (bundle12 == null) {
                                                        bundle12 = new Bundle();
                                                    }
                                                    ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle12);
                                                    String str = shortcutInfo2.getPackage();
                                                    ShellTaskOrganizer shellTaskOrganizer = splitScreenController.mTaskOrganizer;
                                                    String packageName = SplitScreenUtils.getPackageName(i14, shellTaskOrganizer);
                                                    int userId = shortcutInfo2.getUserId();
                                                    ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i14);
                                                    if (runningTaskInfo != null) {
                                                        i12 = runningTaskInfo.userId;
                                                    } else {
                                                        i12 = -1;
                                                    }
                                                    if (SplitScreenUtils.samePackage(userId, i12, str, packageName)) {
                                                        if (splitScreenController.supportMultiInstancesSplit(str)) {
                                                            fromBundle.setApplyMultipleTaskFlagForShortcut(true);
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 1585164509, 0, "Adding MULTIPLE_TASK", null);
                                                            }
                                                        } else {
                                                            Optional optional = splitScreenController.mRecentTasksOptional;
                                                            if (optional.isPresent()) {
                                                                ((RecentTasksController) optional.get()).removeSplitPair(i14);
                                                            }
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                i13 = 0;
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 791232520, 0, "Cancel entering split as not supporting multi-instances", null);
                                                            } else {
                                                                i13 = 0;
                                                            }
                                                            Toast.makeText(splitScreenController.mContext, R.string.dock_multi_instances_not_supported_text, i13).show();
                                                            i14 = -1;
                                                        }
                                                    }
                                                    StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                                    stageCoordinator.getClass();
                                                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                    Context context = stageCoordinator.mContext;
                                                    if (i14 == -1) {
                                                        StageCoordinator.addActivityOptions(bundle12, null);
                                                        windowContainerTransaction.startShortcut(context.getPackageName(), shortcutInfo2, bundle12);
                                                        stageCoordinator.mSplitTransitions.startFullscreenTransition(windowContainerTransaction, remoteTransition2);
                                                        return;
                                                    } else {
                                                        stageCoordinator.setSideStagePosition(windowContainerTransaction, i15);
                                                        StageCoordinator.addActivityOptions(bundle12, stageCoordinator.mSideStage);
                                                        windowContainerTransaction.startShortcut(context.getPackageName(), shortcutInfo2, bundle12);
                                                        stageCoordinator.startWithTask(windowContainerTransaction, i14, bundle13, f, -1, null, 0.5f, 0, -1, remoteTransition2, instanceId7, true, true, null);
                                                        return;
                                                    }
                                                default:
                                                    ShortcutInfo shortcutInfo3 = shortcutInfo;
                                                    Bundle bundle14 = bundle10;
                                                    int i16 = readInt17;
                                                    Bundle bundle15 = bundle11;
                                                    int i17 = readInt18;
                                                    float f2 = readFloat4;
                                                    RemoteAnimationAdapter remoteAnimationAdapter4 = remoteAnimationAdapter3;
                                                    InstanceId instanceId8 = instanceId6;
                                                    SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                                    splitScreenController2.getClass();
                                                    if (bundle14 == null) {
                                                        bundle14 = new Bundle();
                                                    }
                                                    ActivityOptions fromBundle2 = ActivityOptions.fromBundle(bundle14);
                                                    String str2 = shortcutInfo3.getPackage();
                                                    ShellTaskOrganizer shellTaskOrganizer2 = splitScreenController2.mTaskOrganizer;
                                                    String packageName2 = SplitScreenUtils.getPackageName(i16, shellTaskOrganizer2);
                                                    int userId2 = shortcutInfo3.getUserId();
                                                    ActivityManager.RunningTaskInfo runningTaskInfo2 = shellTaskOrganizer2.getRunningTaskInfo(i16);
                                                    if (runningTaskInfo2 != null) {
                                                        i11 = runningTaskInfo2.userId;
                                                    } else {
                                                        i11 = -1;
                                                    }
                                                    if (SplitScreenUtils.samePackage(userId2, i11, str2, packageName2)) {
                                                        if (splitScreenController2.supportMultiInstancesSplit(shortcutInfo3.getPackage())) {
                                                            fromBundle2.setApplyMultipleTaskFlagForShortcut(true);
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 1585164509, 0, "Adding MULTIPLE_TASK", null);
                                                            }
                                                        } else {
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 791232520, 0, "Cancel entering split as not supporting multi-instances", null);
                                                            }
                                                            Toast.makeText(splitScreenController2.mContext, R.string.dock_multi_instances_not_supported_text, 0).show();
                                                            i16 = -1;
                                                        }
                                                    }
                                                    StageCoordinator stageCoordinator2 = splitScreenController2.mStageCoordinator;
                                                    Bundle bundle16 = fromBundle2.toBundle();
                                                    stageCoordinator2.getClass();
                                                    WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                                    if (bundle16 == null) {
                                                        bundle16 = new Bundle();
                                                    }
                                                    if (i16 == -1) {
                                                        stageCoordinator2.launchAsFullscreenWithRemoteAnimation(null, null, shortcutInfo3, bundle16, remoteAnimationAdapter4, windowContainerTransaction2);
                                                        return;
                                                    }
                                                    StageCoordinator.addActivityOptions(bundle16, stageCoordinator2.mSideStage);
                                                    windowContainerTransaction2.startShortcut(stageCoordinator2.mContext.getPackageName(), shortcutInfo3, bundle16);
                                                    stageCoordinator2.startWithLegacyTransition(windowContainerTransaction2, i16, bundle15, i17, f2, remoteAnimationAdapter4, instanceId8);
                                                    return;
                                            }
                                        }
                                    }, false);
                                    break;
                                case 17:
                                    final PendingIntent pendingIntent3 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt19 = parcel.readInt();
                                    Parcelable.Creator creator5 = Bundle.CREATOR;
                                    final Bundle bundle12 = (Bundle) parcel.readTypedObject(creator5);
                                    final int readInt20 = parcel.readInt();
                                    final Bundle bundle13 = (Bundle) parcel.readTypedObject(creator5);
                                    final int readInt21 = parcel.readInt();
                                    final float readFloat5 = parcel.readFloat();
                                    final RemoteTransition remoteTransition2 = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                                    final InstanceId instanceId7 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i11 = 1;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startIntentAndTask", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            /*  JADX ERROR: Method code generation error
                                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                */
                                            /*
                                                Method dump skipped, instructions count: 424
                                                To view this dump change 'Code comments level' option to 'DEBUG'
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2.accept(java.lang.Object):void");
                                        }
                                    }, false);
                                    break;
                                case 18:
                                    final ShortcutInfo shortcutInfo2 = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    Parcelable.Creator creator6 = Bundle.CREATOR;
                                    final Bundle bundle14 = (Bundle) parcel.readTypedObject(creator6);
                                    final int readInt22 = parcel.readInt();
                                    final Bundle bundle15 = (Bundle) parcel.readTypedObject(creator6);
                                    final int readInt23 = parcel.readInt();
                                    final float readFloat6 = parcel.readFloat();
                                    final RemoteTransition remoteTransition3 = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                                    final InstanceId instanceId8 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i12 = 0;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startShortcutAndTask", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            int i112;
                                            int i122;
                                            int i13;
                                            switch (i12) {
                                                case 0:
                                                    ShortcutInfo shortcutInfo22 = shortcutInfo2;
                                                    Bundle bundle122 = bundle14;
                                                    int i14 = readInt22;
                                                    Bundle bundle132 = bundle15;
                                                    int i15 = readInt23;
                                                    float f = readFloat6;
                                                    RemoteTransition remoteTransition22 = remoteTransition3;
                                                    InstanceId instanceId72 = instanceId8;
                                                    SplitScreenController splitScreenController = (SplitScreenController) obj2;
                                                    splitScreenController.getClass();
                                                    if (bundle122 == null) {
                                                        bundle122 = new Bundle();
                                                    }
                                                    ActivityOptions fromBundle = ActivityOptions.fromBundle(bundle122);
                                                    String str = shortcutInfo22.getPackage();
                                                    ShellTaskOrganizer shellTaskOrganizer = splitScreenController.mTaskOrganizer;
                                                    String packageName = SplitScreenUtils.getPackageName(i14, shellTaskOrganizer);
                                                    int userId = shortcutInfo22.getUserId();
                                                    ActivityManager.RunningTaskInfo runningTaskInfo = shellTaskOrganizer.getRunningTaskInfo(i14);
                                                    if (runningTaskInfo != null) {
                                                        i122 = runningTaskInfo.userId;
                                                    } else {
                                                        i122 = -1;
                                                    }
                                                    if (SplitScreenUtils.samePackage(userId, i122, str, packageName)) {
                                                        if (splitScreenController.supportMultiInstancesSplit(str)) {
                                                            fromBundle.setApplyMultipleTaskFlagForShortcut(true);
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 1585164509, 0, "Adding MULTIPLE_TASK", null);
                                                            }
                                                        } else {
                                                            Optional optional = splitScreenController.mRecentTasksOptional;
                                                            if (optional.isPresent()) {
                                                                ((RecentTasksController) optional.get()).removeSplitPair(i14);
                                                            }
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                i13 = 0;
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 791232520, 0, "Cancel entering split as not supporting multi-instances", null);
                                                            } else {
                                                                i13 = 0;
                                                            }
                                                            Toast.makeText(splitScreenController.mContext, R.string.dock_multi_instances_not_supported_text, i13).show();
                                                            i14 = -1;
                                                        }
                                                    }
                                                    StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                                                    stageCoordinator.getClass();
                                                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                                    Context context = stageCoordinator.mContext;
                                                    if (i14 == -1) {
                                                        StageCoordinator.addActivityOptions(bundle122, null);
                                                        windowContainerTransaction.startShortcut(context.getPackageName(), shortcutInfo22, bundle122);
                                                        stageCoordinator.mSplitTransitions.startFullscreenTransition(windowContainerTransaction, remoteTransition22);
                                                        return;
                                                    } else {
                                                        stageCoordinator.setSideStagePosition(windowContainerTransaction, i15);
                                                        StageCoordinator.addActivityOptions(bundle122, stageCoordinator.mSideStage);
                                                        windowContainerTransaction.startShortcut(context.getPackageName(), shortcutInfo22, bundle122);
                                                        stageCoordinator.startWithTask(windowContainerTransaction, i14, bundle132, f, -1, null, 0.5f, 0, -1, remoteTransition22, instanceId72, true, true, null);
                                                        return;
                                                    }
                                                default:
                                                    ShortcutInfo shortcutInfo3 = shortcutInfo2;
                                                    Bundle bundle142 = bundle14;
                                                    int i16 = readInt22;
                                                    Bundle bundle152 = bundle15;
                                                    int i17 = readInt23;
                                                    float f2 = readFloat6;
                                                    RemoteAnimationAdapter remoteAnimationAdapter4 = remoteTransition3;
                                                    InstanceId instanceId82 = instanceId8;
                                                    SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                                    splitScreenController2.getClass();
                                                    if (bundle142 == null) {
                                                        bundle142 = new Bundle();
                                                    }
                                                    ActivityOptions fromBundle2 = ActivityOptions.fromBundle(bundle142);
                                                    String str2 = shortcutInfo3.getPackage();
                                                    ShellTaskOrganizer shellTaskOrganizer2 = splitScreenController2.mTaskOrganizer;
                                                    String packageName2 = SplitScreenUtils.getPackageName(i16, shellTaskOrganizer2);
                                                    int userId2 = shortcutInfo3.getUserId();
                                                    ActivityManager.RunningTaskInfo runningTaskInfo2 = shellTaskOrganizer2.getRunningTaskInfo(i16);
                                                    if (runningTaskInfo2 != null) {
                                                        i112 = runningTaskInfo2.userId;
                                                    } else {
                                                        i112 = -1;
                                                    }
                                                    if (SplitScreenUtils.samePackage(userId2, i112, str2, packageName2)) {
                                                        if (splitScreenController2.supportMultiInstancesSplit(shortcutInfo3.getPackage())) {
                                                            fromBundle2.setApplyMultipleTaskFlagForShortcut(true);
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 1585164509, 0, "Adding MULTIPLE_TASK", null);
                                                            }
                                                        } else {
                                                            if (ShellProtoLogCache.WM_SHELL_SPLIT_SCREEN_enabled) {
                                                                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN, 791232520, 0, "Cancel entering split as not supporting multi-instances", null);
                                                            }
                                                            Toast.makeText(splitScreenController2.mContext, R.string.dock_multi_instances_not_supported_text, 0).show();
                                                            i16 = -1;
                                                        }
                                                    }
                                                    StageCoordinator stageCoordinator2 = splitScreenController2.mStageCoordinator;
                                                    Bundle bundle16 = fromBundle2.toBundle();
                                                    stageCoordinator2.getClass();
                                                    WindowContainerTransaction windowContainerTransaction2 = new WindowContainerTransaction();
                                                    if (bundle16 == null) {
                                                        bundle16 = new Bundle();
                                                    }
                                                    if (i16 == -1) {
                                                        stageCoordinator2.launchAsFullscreenWithRemoteAnimation(null, null, shortcutInfo3, bundle16, remoteAnimationAdapter4, windowContainerTransaction2);
                                                        return;
                                                    }
                                                    StageCoordinator.addActivityOptions(bundle16, stageCoordinator2.mSideStage);
                                                    windowContainerTransaction2.startShortcut(stageCoordinator2.mContext.getPackageName(), shortcutInfo3, bundle16);
                                                    stageCoordinator2.startWithLegacyTransition(windowContainerTransaction2, i16, bundle152, i17, f2, remoteAnimationAdapter4, instanceId82);
                                                    return;
                                            }
                                        }
                                    }, false);
                                    break;
                                case 19:
                                    final PendingIntent pendingIntent4 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt24 = parcel.readInt();
                                    final ShortcutInfo shortcutInfo3 = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    Parcelable.Creator creator7 = Bundle.CREATOR;
                                    final Bundle bundle16 = (Bundle) parcel.readTypedObject(creator7);
                                    final PendingIntent pendingIntent5 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt25 = parcel.readInt();
                                    final ShortcutInfo shortcutInfo4 = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    final Bundle bundle17 = (Bundle) parcel.readTypedObject(creator7);
                                    final int readInt26 = parcel.readInt();
                                    final float readFloat7 = parcel.readFloat();
                                    final RemoteAnimationAdapter remoteAnimationAdapter4 = (RemoteAnimationAdapter) parcel.readTypedObject(RemoteAnimationAdapter.CREATOR);
                                    final InstanceId instanceId9 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i13 = 0;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startIntentsWithLegacyTransition", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7
                                        /* JADX WARN: Removed duplicated region for block: B:13:0x009c  */
                                        /* JADX WARN: Removed duplicated region for block: B:15:0x00a6  */
                                        /* JADX WARN: Removed duplicated region for block: B:18:0x00af  */
                                        /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
                                        /* JADX WARN: Removed duplicated region for block: B:41:0x0172  */
                                        /* JADX WARN: Removed duplicated region for block: B:49:0x0192  */
                                        @Override // java.util.function.Consumer
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                                        */
                                        public final void accept(java.lang.Object r29) {
                                            /*
                                                Method dump skipped, instructions count: 532
                                                To view this dump change 'Code comments level' option to 'DEBUG'
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7.accept(java.lang.Object):void");
                                        }
                                    }, false);
                                    break;
                                case 20:
                                    final PendingIntent pendingIntent6 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt27 = parcel.readInt();
                                    final ShortcutInfo shortcutInfo5 = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    Parcelable.Creator creator8 = Bundle.CREATOR;
                                    final Bundle bundle18 = (Bundle) parcel.readTypedObject(creator8);
                                    final PendingIntent pendingIntent7 = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                                    final int readInt28 = parcel.readInt();
                                    final ShortcutInfo shortcutInfo6 = (ShortcutInfo) parcel.readTypedObject(ShortcutInfo.CREATOR);
                                    final Bundle bundle19 = (Bundle) parcel.readTypedObject(creator8);
                                    final int readInt29 = parcel.readInt();
                                    final float readFloat8 = parcel.readFloat();
                                    final RemoteTransition remoteTransition4 = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                                    final InstanceId instanceId10 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                                    parcel.enforceNoDataAvail();
                                    final int i14 = 1;
                                    ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startIntents", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj2) {
                                            /*  JADX ERROR: Method code generation error
                                                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                                                	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                */
                                            /*
                                                Method dump skipped, instructions count: 532
                                                To view this dump change 'Code comments level' option to 'DEBUG'
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7.accept(java.lang.Object):void");
                                        }
                                    }, false);
                                    break;
                                default:
                                    return super.onTransact(i, parcel, parcel2, i2);
                            }
                        } else {
                            final int readInt30 = parcel.readInt();
                            Parcelable.Creator creator9 = Bundle.CREATOR;
                            final Bundle bundle20 = (Bundle) parcel.readTypedObject(creator9);
                            final int readInt31 = parcel.readInt();
                            final Bundle bundle21 = (Bundle) parcel.readTypedObject(creator9);
                            final int readInt32 = parcel.readInt();
                            final Bundle bundle22 = (Bundle) parcel.readTypedObject(creator9);
                            final int readInt33 = parcel.readInt();
                            final float readFloat9 = parcel.readFloat();
                            final int readInt34 = parcel.readInt();
                            final float readFloat10 = parcel.readFloat();
                            boolean readBoolean2 = parcel.readBoolean();
                            final RemoteTransition remoteTransition5 = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                            final InstanceId instanceId11 = (InstanceId) parcel.readTypedObject(InstanceId.CREATOR);
                            parcel.enforceNoDataAvail();
                            SplitScreenController splitScreenController = ((SplitScreenController.ISplitScreenImpl) this).mController;
                            final int i15 = readBoolean2 ? 1 : 0;
                            ExecutorUtils.executeRemoteCallWithTaskPermission(splitScreenController, "startMultiTasks", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj2) {
                                    ((SplitScreenController) obj2).mStageCoordinator.startTasks(readInt30, bundle20, readInt31, bundle21, readInt32, bundle22, readInt33, readFloat9, readInt34, readFloat10, remoteTransition5, instanceId11, i15, null);
                                }
                            }, false);
                        }
                    } else {
                        final int readInt35 = parcel.readInt();
                        parcel.enforceNoDataAvail();
                        ExecutorUtils.executeRemoteCallWithTaskPermission(((SplitScreenController.ISplitScreenImpl) this).mController, "startSplitByTwoTouchSwipeIfPossible", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj2) {
                                switch (i3) {
                                    case 0:
                                        ((SplitScreenController) obj2).exitSplitScreen(readInt35, 0);
                                        return;
                                    case 1:
                                        int i72 = readInt35;
                                        SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                        splitScreenController2.getClass();
                                        splitScreenController2.mGestureStarter.ifPresent(new SplitScreenController$$ExternalSyntheticLambda7(i72, "ISplitScreen", 0));
                                        return;
                                    default:
                                        ((SplitScreenController) obj2).removeFromSideStage(readInt35);
                                        return;
                                }
                            }
                        }, false);
                    }
                } else {
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.wm.shell.splitscreen.ISplitScreenListener");
                        if (queryLocalInterface != null && (queryLocalInterface instanceof ISplitScreenListener)) {
                        } else {
                            new ISplitScreenListener$Stub$Proxy(readStrongBinder);
                        }
                    }
                    parcel.enforceNoDataAvail();
                    SplitScreenController.ISplitScreenImpl iSplitScreenImpl2 = (SplitScreenController.ISplitScreenImpl) this;
                    ExecutorUtils.executeRemoteCallWithTaskPermission(iSplitScreenImpl2.mController, "unregisterSplitScreenListener", new SplitScreenController$$ExternalSyntheticLambda2(iSplitScreenImpl2, i6), false);
                }
            } else {
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.android.wm.shell.splitscreen.ISplitScreenListener");
                    if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof ISplitScreenListener)) {
                        obj = (ISplitScreenListener) queryLocalInterface2;
                    } else {
                        obj = new ISplitScreenListener$Stub$Proxy(readStrongBinder2);
                    }
                }
                parcel.enforceNoDataAvail();
                final SplitScreenController.ISplitScreenImpl iSplitScreenImpl3 = (SplitScreenController.ISplitScreenImpl) this;
                ExecutorUtils.executeRemoteCallWithTaskPermission(iSplitScreenImpl3.mController, "registerSplitScreenListener", new Consumer() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj2) {
                        RemoteAnimationTarget[] remoteAnimationTargetArr32 = null;
                        switch (i4) {
                            case 0:
                                RemoteAnimationTarget[][] remoteAnimationTargetArr42 = (RemoteAnimationTarget[][]) iSplitScreenImpl3;
                                RemoteAnimationTarget[] remoteAnimationTargetArr52 = (RemoteAnimationTarget[]) obj;
                                SplitScreenController splitScreenController2 = (SplitScreenController) obj2;
                                splitScreenController2.getClass();
                                if (!Transitions.ENABLE_SHELL_TRANSITIONS && splitScreenController2.isSplitScreenVisible()) {
                                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                                    StageCoordinator stageCoordinator = splitScreenController2.mStageCoordinator;
                                    stageCoordinator.mMainStage.evictInvisibleChildren(windowContainerTransaction);
                                    stageCoordinator.mSideStage.evictInvisibleChildren(windowContainerTransaction);
                                    splitScreenController2.mSyncQueue.queue(windowContainerTransaction);
                                    splitScreenController2.mStageCoordinator.mSplitBackgroundController.updateBackgroundVisibility(false, false);
                                    TransactionPool transactionPool = splitScreenController2.mTransactionPool;
                                    SurfaceControl.Transaction acquire = transactionPool.acquire();
                                    SurfaceControl surfaceControl = splitScreenController2.mGoingToRecentsTasksLayer;
                                    if (surfaceControl != null) {
                                        acquire.remove(surfaceControl);
                                    }
                                    splitScreenController2.mGoingToRecentsTasksLayer = splitScreenController2.reparentSplitTasksForAnimation(remoteAnimationTargetArr52, acquire, "SplitScreenController#onGoingToRecentsLegacy");
                                    acquire.apply();
                                    transactionPool.release(acquire);
                                    remoteAnimationTargetArr32 = new RemoteAnimationTarget[]{splitScreenController2.mStageCoordinator.getDividerBarLegacyTarget()};
                                }
                                remoteAnimationTargetArr42[0] = remoteAnimationTargetArr32;
                                return;
                            case 1:
                                RemoteAnimationTarget[][] remoteAnimationTargetArr62 = (RemoteAnimationTarget[][]) iSplitScreenImpl3;
                                RemoteAnimationTarget[] remoteAnimationTargetArr7 = (RemoteAnimationTarget[]) obj;
                                SplitScreenController splitScreenController22 = (SplitScreenController) obj2;
                                splitScreenController22.getClass();
                                if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
                                    int i102 = 0;
                                    for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr7) {
                                        if (remoteAnimationTarget.mode == 0) {
                                            i102++;
                                        }
                                    }
                                    if (i102 >= 2) {
                                        TransactionPool transactionPool2 = splitScreenController22.mTransactionPool;
                                        SurfaceControl.Transaction acquire2 = transactionPool2.acquire();
                                        SurfaceControl surfaceControl2 = splitScreenController22.mStartingSplitTasksLayer;
                                        if (surfaceControl2 != null) {
                                            acquire2.remove(surfaceControl2);
                                        }
                                        splitScreenController22.mStartingSplitTasksLayer = splitScreenController22.reparentSplitTasksForAnimation(remoteAnimationTargetArr7, acquire2, "SplitScreenController#onStartingSplitLegacy");
                                        acquire2.apply();
                                        transactionPool2.release(acquire2);
                                        try {
                                            remoteAnimationTargetArr32 = new RemoteAnimationTarget[]{splitScreenController22.mStageCoordinator.getDividerBarLegacyTarget()};
                                            for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr7) {
                                                SurfaceControl surfaceControl3 = remoteAnimationTarget2.leash;
                                                if (surfaceControl3 != null) {
                                                    surfaceControl3.release();
                                                }
                                            }
                                        } catch (Throwable th) {
                                            for (RemoteAnimationTarget remoteAnimationTarget3 : remoteAnimationTargetArr7) {
                                                SurfaceControl surfaceControl4 = remoteAnimationTarget3.leash;
                                                if (surfaceControl4 != null) {
                                                    surfaceControl4.release();
                                                }
                                            }
                                            throw th;
                                        }
                                    }
                                }
                                remoteAnimationTargetArr62[0] = remoteAnimationTargetArr32;
                                return;
                            default:
                                ((SplitScreenController.ISplitScreenImpl) iSplitScreenImpl3).mListener.register((ISplitScreenListener) obj);
                                return;
                        }
                    }
                }, false);
            }
            return true;
        }
        parcel2.writeString("com.android.wm.shell.splitscreen.ISplitScreen");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
