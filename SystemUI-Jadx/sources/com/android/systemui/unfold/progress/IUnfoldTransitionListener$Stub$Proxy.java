package com.android.systemui.unfold.progress;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IUnfoldTransitionListener$Stub$Proxy implements IUnfoldTransitionListener {
    public final IBinder mRemote;

    public IUnfoldTransitionListener$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    public final void onTransitionFinished() {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
            this.mRemote.transact(4, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public final void onTransitionProgress(float f) {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
            obtain.writeFloat(f);
            this.mRemote.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public final void onTransitionStarted() {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.systemui.unfold.progress.IUnfoldTransitionListener");
            this.mRemote.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
