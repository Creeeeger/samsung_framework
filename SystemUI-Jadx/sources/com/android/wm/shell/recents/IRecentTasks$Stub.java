package com.android.wm.shell.recents;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.IApplicationThread;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Slog;
import android.view.IRecentsAnimationRunner;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.recents.IRecentTasksListener;
import com.android.wm.shell.recents.RecentTasksController;
import com.android.wm.shell.util.GroupedRecentTaskInfo;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IRecentTasks$Stub extends Binder implements IInterface {
    public IRecentTasks$Stub() {
        attachInterface(this, "com.android.wm.shell.recents.IRecentTasks");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        GroupedRecentTaskInfo[] groupedRecentTaskInfoArr;
        final int i3 = 1;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.wm.shell.recents.IRecentTasks");
        }
        if (i != 1598968902) {
            final IInterface iInterface = null;
            final int i4 = 0;
            switch (i) {
                case 2:
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.wm.shell.recents.IRecentTasksListener");
                        if (queryLocalInterface != null && (queryLocalInterface instanceof IRecentTasksListener)) {
                            iInterface = (IRecentTasksListener) queryLocalInterface;
                        } else {
                            iInterface = new IRecentTasksListener.Stub.Proxy(readStrongBinder);
                        }
                    }
                    parcel.enforceNoDataAvail();
                    final RecentTasksController.IRecentTasksImpl iRecentTasksImpl = (RecentTasksController.IRecentTasksImpl) this;
                    ExecutorUtils.executeRemoteCallWithTaskPermission(iRecentTasksImpl.mController, "registerRecentTasksListener", new Consumer() { // from class: com.android.wm.shell.recents.RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            switch (i3) {
                                case 0:
                                    RecentTasksController.IRecentTasksImpl iRecentTasksImpl2 = iRecentTasksImpl;
                                    IRecentsTransitionStateListener iRecentsTransitionStateListener = (IRecentsTransitionStateListener) iInterface;
                                    iRecentTasksImpl2.getClass();
                                    RecentsTransitionHandler recentsTransitionHandler = ((RecentTasksController) obj).mTransitionHandler;
                                    recentsTransitionHandler.mStateListeners.add(new RecentsTransitionStateListener(iRecentTasksImpl2, iRecentsTransitionStateListener) { // from class: com.android.wm.shell.recents.RecentTasksController.IRecentTasksImpl.2
                                        public final /* synthetic */ IRecentsTransitionStateListener val$listener;

                                        public AnonymousClass2(IRecentTasksImpl iRecentTasksImpl22, IRecentsTransitionStateListener iRecentsTransitionStateListener2) {
                                            this.val$listener = iRecentsTransitionStateListener2;
                                        }

                                        @Override // com.android.wm.shell.recents.RecentsTransitionStateListener
                                        public final void onAnimationStateChanged(boolean z) {
                                            try {
                                                ((IRecentsTransitionStateListener$Stub$Proxy) this.val$listener).onAnimationStateChanged(z);
                                            } catch (RemoteException unused) {
                                            }
                                        }
                                    });
                                    return;
                                default:
                                    RecentTasksController.IRecentTasksImpl iRecentTasksImpl3 = iRecentTasksImpl;
                                    iRecentTasksImpl3.mListener.register((IRecentTasksListener) iInterface);
                                    return;
                            }
                        }
                    }, false);
                    return true;
                case 3:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.android.wm.shell.recents.IRecentTasksListener");
                        if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof IRecentTasksListener)) {
                        } else {
                            new IRecentTasksListener.Stub.Proxy(readStrongBinder2);
                        }
                    }
                    parcel.enforceNoDataAvail();
                    RecentTasksController.IRecentTasksImpl iRecentTasksImpl2 = (RecentTasksController.IRecentTasksImpl) this;
                    ExecutorUtils.executeRemoteCallWithTaskPermission(iRecentTasksImpl2.mController, "unregisterRecentTasksListener", new RecentTasksController$$ExternalSyntheticLambda3(iRecentTasksImpl2, 2), false);
                    return true;
                case 4:
                    final int readInt = parcel.readInt();
                    final int readInt2 = parcel.readInt();
                    final int readInt3 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    RecentTasksController recentTasksController = ((RecentTasksController.IRecentTasksImpl) this).mController;
                    if (recentTasksController == null) {
                        groupedRecentTaskInfoArr = new GroupedRecentTaskInfo[0];
                    } else {
                        final GroupedRecentTaskInfo[][] groupedRecentTaskInfoArr2 = {null};
                        ExecutorUtils.executeRemoteCallWithTaskPermission(recentTasksController, "getRecentTasks", new Consumer() { // from class: com.android.wm.shell.recents.RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda1
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                groupedRecentTaskInfoArr2[0] = (GroupedRecentTaskInfo[]) ((RecentTasksController) obj).getRecentTasks(readInt, readInt2, readInt3).toArray(new GroupedRecentTaskInfo[0]);
                            }
                        }, true);
                        groupedRecentTaskInfoArr = groupedRecentTaskInfoArr2[0];
                    }
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(groupedRecentTaskInfoArr, 1);
                    return true;
                case 5:
                    final int readInt4 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    final ActivityManager.RunningTaskInfo[][] runningTaskInfoArr = {null};
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((RecentTasksController.IRecentTasksImpl) this).mController, "getRunningTasks", new Consumer() { // from class: com.android.wm.shell.recents.RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda3
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            runningTaskInfoArr[0] = (ActivityManager.RunningTaskInfo[]) ActivityTaskManager.getInstance().getTasks(readInt4).toArray(new ActivityManager.RunningTaskInfo[0]);
                        }
                    }, true);
                    ActivityManager.RunningTaskInfo[] runningTaskInfoArr2 = runningTaskInfoArr[0];
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(runningTaskInfoArr2, 1);
                    return true;
                case 6:
                    final PendingIntent pendingIntent = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
                    final Intent intent = (Intent) parcel.readTypedObject(Intent.CREATOR);
                    final Bundle bundle = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    final IApplicationThread asInterface = IApplicationThread.Stub.asInterface(parcel.readStrongBinder());
                    final IRecentsAnimationRunner asInterface2 = IRecentsAnimationRunner.Stub.asInterface(parcel.readStrongBinder());
                    parcel.enforceNoDataAvail();
                    RecentTasksController recentTasksController2 = ((RecentTasksController.IRecentTasksImpl) this).mController;
                    if (recentTasksController2.mTransitionHandler == null) {
                        Slog.e("RecentTasksController", "Used shell-transitions startRecentsTransition without shell-transitions");
                    } else {
                        ExecutorUtils.executeRemoteCallWithTaskPermission(recentTasksController2, "startRecentsTransition", new Consumer() { // from class: com.android.wm.shell.recents.RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda4
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ((RecentTasksController) obj).mTransitionHandler.startRecentsTransition(pendingIntent, intent, bundle, asInterface, asInterface2);
                            }
                        }, false);
                    }
                    return true;
                case 7:
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.android.wm.shell.recents.IRecentsTransitionStateListener");
                        if (queryLocalInterface3 != null && (queryLocalInterface3 instanceof IRecentsTransitionStateListener)) {
                            iInterface = (IRecentsTransitionStateListener) queryLocalInterface3;
                        } else {
                            iInterface = new IRecentsTransitionStateListener$Stub$Proxy(readStrongBinder3);
                        }
                    }
                    parcel.enforceNoDataAvail();
                    final RecentTasksController.IRecentTasksImpl iRecentTasksImpl3 = (RecentTasksController.IRecentTasksImpl) this;
                    RecentTasksController recentTasksController3 = iRecentTasksImpl3.mController;
                    if (recentTasksController3.mTransitionHandler != null) {
                        ExecutorUtils.executeRemoteCallWithTaskPermission(recentTasksController3, "addTransitionStateListener", new Consumer() { // from class: com.android.wm.shell.recents.RecentTasksController$IRecentTasksImpl$$ExternalSyntheticLambda2
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                switch (i4) {
                                    case 0:
                                        RecentTasksController.IRecentTasksImpl iRecentTasksImpl22 = iRecentTasksImpl3;
                                        IRecentsTransitionStateListener iRecentsTransitionStateListener2 = (IRecentsTransitionStateListener) iInterface;
                                        iRecentTasksImpl22.getClass();
                                        RecentsTransitionHandler recentsTransitionHandler = ((RecentTasksController) obj).mTransitionHandler;
                                        recentsTransitionHandler.mStateListeners.add(new RecentsTransitionStateListener(iRecentTasksImpl22, iRecentsTransitionStateListener2) { // from class: com.android.wm.shell.recents.RecentTasksController.IRecentTasksImpl.2
                                            public final /* synthetic */ IRecentsTransitionStateListener val$listener;

                                            public AnonymousClass2(IRecentTasksImpl iRecentTasksImpl222, IRecentsTransitionStateListener iRecentsTransitionStateListener22) {
                                                this.val$listener = iRecentsTransitionStateListener22;
                                            }

                                            @Override // com.android.wm.shell.recents.RecentsTransitionStateListener
                                            public final void onAnimationStateChanged(boolean z) {
                                                try {
                                                    ((IRecentsTransitionStateListener$Stub$Proxy) this.val$listener).onAnimationStateChanged(z);
                                                } catch (RemoteException unused) {
                                                }
                                            }
                                        });
                                        return;
                                    default:
                                        RecentTasksController.IRecentTasksImpl iRecentTasksImpl32 = iRecentTasksImpl3;
                                        iRecentTasksImpl32.mListener.register((IRecentTasksListener) iInterface);
                                        return;
                                }
                            }
                        }, false);
                    }
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
        parcel2.writeString("com.android.wm.shell.recents.IRecentTasks");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
