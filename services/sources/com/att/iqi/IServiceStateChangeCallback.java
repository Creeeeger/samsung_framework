package com.att.iqi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public interface IServiceStateChangeCallback extends IInterface {
    public static final String DESCRIPTOR = "com.att.iqi.IServiceStateChangeCallback";

    /* loaded from: classes3.dex */
    public class Default implements IServiceStateChangeCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.att.iqi.IServiceStateChangeCallback
        public void onServiceChange(boolean z) {
        }
    }

    void onServiceChange(boolean z);

    /* loaded from: classes3.dex */
    public abstract class Stub extends Binder implements IServiceStateChangeCallback {
        static final int TRANSACTION_onServiceChange = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IServiceStateChangeCallback.DESCRIPTOR);
        }

        public static IServiceStateChangeCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IServiceStateChangeCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IServiceStateChangeCallback)) {
                return (IServiceStateChangeCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IServiceStateChangeCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IServiceStateChangeCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onServiceChange(parcel.readInt() != 0);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* loaded from: classes3.dex */
        class Proxy implements IServiceStateChangeCallback {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return IServiceStateChangeCallback.DESCRIPTOR;
            }

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.att.iqi.IServiceStateChangeCallback
            public void onServiceChange(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IServiceStateChangeCallback.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
