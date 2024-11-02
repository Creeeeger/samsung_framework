package com.android.wm.shell.splitscreen;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ISplitScreenListener$Stub$Proxy implements ISplitScreenListener {
    public final IBinder mRemote;

    public ISplitScreenListener$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    public final void onStagePositionChanged(int i, int i2) {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreenListener");
            obtain.writeInt(i);
            obtain.writeInt(i2);
            this.mRemote.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public final void onTaskStageChanged(int i, int i2, boolean z) {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.splitscreen.ISplitScreenListener");
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeBoolean(z);
            this.mRemote.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
