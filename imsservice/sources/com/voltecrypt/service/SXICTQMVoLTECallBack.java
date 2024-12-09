package com.voltecrypt.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface SXICTQMVoLTECallBack extends IInterface {
    int onGetVoLTEStatus() throws RemoteException;

    String onGetVoLTEStatusComment() throws RemoteException;

    int onHangUp(SxHangUpEntity sxHangUpEntity) throws RemoteException;

    int onRequestAuthentication(SxRequestAuthenticationEntity sxRequestAuthenticationEntity) throws RemoteException;

    int onRequestPeerProfileStatus(SxRequestPeerProfileEntity sxRequestPeerProfileEntity) throws RemoteException;

    int onRequestQMKey(SxRequestQMKeyEntity sxRequestQMKeyEntity) throws RemoteException;

    public static abstract class Stub extends Binder implements SXICTQMVoLTECallBack {
        public static SXICTQMVoLTECallBack asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.voltecrypt.service.SXICTQMVoLTECallBack");
            if (queryLocalInterface != null && (queryLocalInterface instanceof SXICTQMVoLTECallBack)) {
                return (SXICTQMVoLTECallBack) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        private static class Proxy implements SXICTQMVoLTECallBack {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public int onRequestAuthentication(SxRequestAuthenticationEntity sxRequestAuthenticationEntity) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    obtain.writeTypedObject(sxRequestAuthenticationEntity, 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public int onRequestPeerProfileStatus(SxRequestPeerProfileEntity sxRequestPeerProfileEntity) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    obtain.writeTypedObject(sxRequestPeerProfileEntity, 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public int onRequestQMKey(SxRequestQMKeyEntity sxRequestQMKeyEntity) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    obtain.writeTypedObject(sxRequestQMKeyEntity, 0);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public int onGetVoLTEStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public String onGetVoLTEStatusComment() throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.voltecrypt.service.SXICTQMVoLTECallBack
            public int onHangUp(SxHangUpEntity sxHangUpEntity) throws RemoteException {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.voltecrypt.service.SXICTQMVoLTECallBack");
                    obtain.writeTypedObject(sxHangUpEntity, 0);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
