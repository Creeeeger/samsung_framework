package com.android.systemui.unfold.progress;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IUnfoldAnimation$Stub extends Binder implements IInterface {
    public IUnfoldAnimation$Stub() {
        attachInterface(this, "com.android.systemui.unfold.progress.IUnfoldAnimation");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        IUnfoldTransitionListener iUnfoldTransitionListener$Stub$Proxy;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.systemui.unfold.progress.IUnfoldAnimation");
        }
        if (i != 1598968902) {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                iUnfoldTransitionListener$Stub$Proxy = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
                if (queryLocalInterface != null && (queryLocalInterface instanceof IUnfoldTransitionListener)) {
                    iUnfoldTransitionListener$Stub$Proxy = (IUnfoldTransitionListener) queryLocalInterface;
                } else {
                    iUnfoldTransitionListener$Stub$Proxy = new IUnfoldTransitionListener$Stub$Proxy(readStrongBinder);
                }
            }
            parcel.enforceNoDataAvail();
            ((UnfoldTransitionProgressForwarder) this).remoteListener = iUnfoldTransitionListener$Stub$Proxy;
            return true;
        }
        parcel2.writeString("com.android.systemui.unfold.progress.IUnfoldAnimation");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
