package com.samsung.android.imsdcservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IImsDataChannelCallback extends IInterface {
    void sendCallEnd(String str) throws RemoteException;

    void sendNegotiatedLocalSdp(String str, String str2) throws RemoteException;

    void sendSdpAnswer(String str, int i, String str2) throws RemoteException;

    void sendSdpOffer(int i, String str, int i2, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements IImsDataChannelCallback {
        static final int TRANSACTION_sendCallEnd = 3;
        static final int TRANSACTION_sendNegotiatedLocalSdp = 4;
        static final int TRANSACTION_sendSdpAnswer = 2;
        static final int TRANSACTION_sendSdpOffer = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.imsdcservice.IImsDataChannelCallback");
        }

        public static IImsDataChannelCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.imsdcservice.IImsDataChannelCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IImsDataChannelCallback)) {
                return (IImsDataChannelCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.samsung.android.imsdcservice.IImsDataChannelCallback");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.samsung.android.imsdcservice.IImsDataChannelCallback");
                return true;
            }
            if (i == 1) {
                int readInt = parcel.readInt();
                String readString = parcel.readString();
                int readInt2 = parcel.readInt();
                String readString2 = parcel.readString();
                parcel.enforceNoDataAvail();
                sendSdpOffer(readInt, readString, readInt2, readString2);
                parcel2.writeNoException();
            } else if (i == 2) {
                String readString3 = parcel.readString();
                int readInt3 = parcel.readInt();
                String readString4 = parcel.readString();
                parcel.enforceNoDataAvail();
                sendSdpAnswer(readString3, readInt3, readString4);
                parcel2.writeNoException();
            } else if (i == 3) {
                String readString5 = parcel.readString();
                parcel.enforceNoDataAvail();
                sendCallEnd(readString5);
                parcel2.writeNoException();
            } else if (i == 4) {
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                parcel.enforceNoDataAvail();
                sendNegotiatedLocalSdp(readString6, readString7);
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        private static class Proxy implements IImsDataChannelCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }
        }
    }
}
