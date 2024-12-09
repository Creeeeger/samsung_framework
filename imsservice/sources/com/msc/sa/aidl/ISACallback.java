package com.msc.sa.aidl;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISACallback extends IInterface {
    void onReceiveAccessToken(int i, boolean z, Bundle bundle) throws RemoteException;

    void onReceiveAuthCode(int i, boolean z, Bundle bundle) throws RemoteException;

    void onReceiveChecklistValidation(int i, boolean z, Bundle bundle) throws RemoteException;

    void onReceiveDisclaimerAgreement(int i, boolean z, Bundle bundle) throws RemoteException;

    void onReceivePasswordConfirmation(int i, boolean z, Bundle bundle) throws RemoteException;

    void onReceiveSCloudAccessToken(int i, boolean z, Bundle bundle) throws RemoteException;

    public static abstract class Stub extends Binder implements ISACallback {
        static final int TRANSACTION_onReceiveAccessToken = 1;
        static final int TRANSACTION_onReceiveAuthCode = 4;
        static final int TRANSACTION_onReceiveChecklistValidation = 2;
        static final int TRANSACTION_onReceiveDisclaimerAgreement = 3;
        static final int TRANSACTION_onReceivePasswordConfirmation = 6;
        static final int TRANSACTION_onReceiveSCloudAccessToken = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.msc.sa.aidl.ISACallback");
        }

        public static ISACallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.msc.sa.aidl.ISACallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISACallback)) {
                return (ISACallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.msc.sa.aidl.ISACallback");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.msc.sa.aidl.ISACallback");
                return true;
            }
            switch (i) {
                case 1:
                    int readInt = parcel.readInt();
                    boolean readBoolean = parcel.readBoolean();
                    Bundle bundle = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceiveAccessToken(readInt, readBoolean, bundle);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    int readInt2 = parcel.readInt();
                    boolean readBoolean2 = parcel.readBoolean();
                    Bundle bundle2 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceiveChecklistValidation(readInt2, readBoolean2, bundle2);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    int readInt3 = parcel.readInt();
                    boolean readBoolean3 = parcel.readBoolean();
                    Bundle bundle3 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceiveDisclaimerAgreement(readInt3, readBoolean3, bundle3);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int readInt4 = parcel.readInt();
                    boolean readBoolean4 = parcel.readBoolean();
                    Bundle bundle4 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceiveAuthCode(readInt4, readBoolean4, bundle4);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    int readInt5 = parcel.readInt();
                    boolean readBoolean5 = parcel.readBoolean();
                    Bundle bundle5 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceiveSCloudAccessToken(readInt5, readBoolean5, bundle5);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    int readInt6 = parcel.readInt();
                    boolean readBoolean6 = parcel.readBoolean();
                    Bundle bundle6 = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                    parcel.enforceNoDataAvail();
                    onReceivePasswordConfirmation(readInt6, readBoolean6, bundle6);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements ISACallback {
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
