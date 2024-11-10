package com.att.iqi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public interface IProfileChangedCallback extends IInterface {
    public static final String DESCRIPTOR = "com.att.iqi.IProfileChangedCallback";

    /* loaded from: classes3.dex */
    public class Default implements IProfileChangedCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.att.iqi.IProfileChangedCallback
        public void onProfileChanged() {
        }
    }

    void onProfileChanged();

    /* loaded from: classes3.dex */
    public abstract class Stub extends Binder implements IProfileChangedCallback {
        static final int TRANSACTION_onProfileChanged = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IProfileChangedCallback.DESCRIPTOR);
        }

        public static IProfileChangedCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IProfileChangedCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IProfileChangedCallback)) {
                return (IProfileChangedCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IProfileChangedCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IProfileChangedCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onProfileChanged();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* loaded from: classes3.dex */
        class Proxy implements IProfileChangedCallback {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return IProfileChangedCallback.DESCRIPTOR;
            }

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.att.iqi.IProfileChangedCallback
            public void onProfileChanged() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IProfileChangedCallback.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
