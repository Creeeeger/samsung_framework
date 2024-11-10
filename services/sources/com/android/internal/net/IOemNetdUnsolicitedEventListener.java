package com.android.internal.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IOemNetdUnsolicitedEventListener extends IInterface {
    public static final String DESCRIPTOR = "com$android$internal$net$IOemNetdUnsolicitedEventListener".replace('$', '.');

    /* loaded from: classes.dex */
    public class Default implements IOemNetdUnsolicitedEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.android.internal.net.IOemNetdUnsolicitedEventListener
        public void onRegistered() {
        }
    }

    void onRegistered();

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IOemNetdUnsolicitedEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IOemNetdUnsolicitedEventListener.DESCRIPTOR);
        }

        public static IOemNetdUnsolicitedEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOemNetdUnsolicitedEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOemNetdUnsolicitedEventListener)) {
                return (IOemNetdUnsolicitedEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IOemNetdUnsolicitedEventListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 1) {
                onRegistered();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* loaded from: classes.dex */
        class Proxy implements IOemNetdUnsolicitedEventListener {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOemNetdUnsolicitedEventListener.DESCRIPTOR;
            }

            @Override // com.android.internal.net.IOemNetdUnsolicitedEventListener
            public void onRegistered() {
                Parcel obtain = Parcel.obtain(asBinder());
                try {
                    obtain.writeInterfaceToken(IOemNetdUnsolicitedEventListener.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
