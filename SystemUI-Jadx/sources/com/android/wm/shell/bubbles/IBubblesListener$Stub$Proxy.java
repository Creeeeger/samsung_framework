package com.android.wm.shell.bubbles;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IBubblesListener$Stub$Proxy implements IBubblesListener {
    public final IBinder mRemote;

    public IBubblesListener$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    public final void onBubbleStateChange(Bundle bundle) {
        Parcel obtain = Parcel.obtain(this.mRemote);
        try {
            obtain.writeInterfaceToken("com.android.wm.shell.bubbles.IBubblesListener");
            obtain.writeTypedObject(bundle, 0);
            this.mRemote.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
