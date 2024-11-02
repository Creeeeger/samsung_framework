package com.android.wm.shell.transition;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Pair;
import android.view.SurfaceControl;
import android.window.RemoteTransition;
import android.window.TransitionFilter;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.transition.Transitions;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IShellTransitions$Stub extends Binder implements IInterface {
    public IShellTransitions$Stub() {
        attachInterface(this, "com.android.wm.shell.transition.IShellTransitions");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.wm.shell.transition.IShellTransitions");
        }
        if (i != 1598968902) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    IBinder defaultApplyToken = SurfaceControl.Transaction.getDefaultApplyToken();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(defaultApplyToken);
                } else {
                    final RemoteTransition remoteTransition = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                    parcel.enforceNoDataAvail();
                    ExecutorUtils.executeRemoteCallWithTaskPermission(((Transitions.IShellTransitionsImpl) this).mTransitions, "unregisterRemote", new Consumer() { // from class: com.android.wm.shell.transition.Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            RemoteTransition remoteTransition2 = remoteTransition;
                            RemoteTransitionHandler remoteTransitionHandler = ((Transitions) obj).mRemoteTransitionHandler;
                            ArrayList arrayList = remoteTransitionHandler.mFilters;
                            boolean z = false;
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                if (((RemoteTransition) ((Pair) arrayList.get(size)).second).asBinder().equals(remoteTransition2.asBinder())) {
                                    arrayList.remove(size);
                                    z = true;
                                }
                            }
                            if (z) {
                                remoteTransitionHandler.unhandleDeath(remoteTransition2.asBinder(), null);
                            }
                        }
                    }, false);
                }
            } else {
                final TransitionFilter transitionFilter = (TransitionFilter) parcel.readTypedObject(TransitionFilter.CREATOR);
                final RemoteTransition remoteTransition2 = (RemoteTransition) parcel.readTypedObject(RemoteTransition.CREATOR);
                parcel.enforceNoDataAvail();
                ExecutorUtils.executeRemoteCallWithTaskPermission(((Transitions.IShellTransitionsImpl) this).mTransitions, "registerRemote", new Consumer() { // from class: com.android.wm.shell.transition.Transitions$IShellTransitionsImpl$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TransitionFilter transitionFilter2 = transitionFilter;
                        RemoteTransition remoteTransition3 = remoteTransition2;
                        RemoteTransitionHandler remoteTransitionHandler = ((Transitions) obj).mRemoteTransitionHandler;
                        remoteTransitionHandler.getClass();
                        remoteTransitionHandler.handleDeath(remoteTransition3.asBinder(), null);
                        remoteTransitionHandler.mFilters.add(new Pair(transitionFilter2, remoteTransition3));
                    }
                }, false);
            }
            return true;
        }
        parcel2.writeString("com.android.wm.shell.transition.IShellTransitions");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
