package com.android.systemui.shared.system.smartspace;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.systemui.keyguard.KeyguardUnlockAnimationController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ISysuiUnlockAnimationController$Stub extends Binder implements IInterface {
    public ISysuiUnlockAnimationController$Stub() {
        attachInterface(this, "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        ILauncherUnlockAnimationController iLauncherUnlockAnimationController$Stub$Proxy;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController");
        }
        if (i != 1598968902) {
            if (i != 1) {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel.enforceNoDataAvail();
            } else {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    iLauncherUnlockAnimationController$Stub$Proxy = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof ILauncherUnlockAnimationController)) {
                        iLauncherUnlockAnimationController$Stub$Proxy = (ILauncherUnlockAnimationController) queryLocalInterface;
                    } else {
                        iLauncherUnlockAnimationController$Stub$Proxy = new ILauncherUnlockAnimationController$Stub$Proxy(readStrongBinder);
                    }
                }
                parcel.enforceNoDataAvail();
                ((KeyguardUnlockAnimationController) this).launcherUnlockController = iLauncherUnlockAnimationController$Stub$Proxy;
            }
            return true;
        }
        parcel2.writeString("com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
