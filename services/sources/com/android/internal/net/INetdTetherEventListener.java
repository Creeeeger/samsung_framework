package com.android.internal.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface INetdTetherEventListener extends IInterface {
    public static final String DESCRIPTOR = "com$android$internal$net$INetdTetherEventListener".replace('$', '.');

    /* loaded from: classes.dex */
    public class Default implements INetdTetherEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    void onTetherStart();

    void onTetherStop();

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements INetdTetherEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, INetdTetherEventListener.DESCRIPTOR);
        }

        public static INetdTetherEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(INetdTetherEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INetdTetherEventListener)) {
                return (INetdTetherEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = INetdTetherEventListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 1) {
                onTetherStart();
            } else if (i == 2) {
                onTetherStop();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        /* loaded from: classes.dex */
        public class Proxy implements INetdTetherEventListener {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }
        }
    }
}
