package com.samsung.android.knox.kpm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface IKnoxPushServiceCallback extends IInterface {
    public static final String DESCRIPTOR = "com.samsung.android.knox.kpm.IKnoxPushServiceCallback";

    void onRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult);

    void onRegistrationStatus(KnoxPushServiceResult knoxPushServiceResult);

    void onUnRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IKnoxPushServiceCallback {
        public static final int TRANSACTION_onRegistrationFinished = 1;
        public static final int TRANSACTION_onRegistrationStatus = 3;
        public static final int TRANSACTION_onUnRegistrationFinished = 2;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public static class Proxy implements IKnoxPushServiceCallback {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            public final String getInterfaceDescriptor() {
                return IKnoxPushServiceCallback.DESCRIPTOR;
            }

            @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
            public final void onRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKnoxPushServiceCallback.DESCRIPTOR);
                    obtain.writeTypedObject(knoxPushServiceResult, 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
            public final void onRegistrationStatus(KnoxPushServiceResult knoxPushServiceResult) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKnoxPushServiceCallback.DESCRIPTOR);
                    obtain.writeTypedObject(knoxPushServiceResult, 0);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
            public final void onUnRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKnoxPushServiceCallback.DESCRIPTOR);
                    obtain.writeTypedObject(knoxPushServiceResult, 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IKnoxPushServiceCallback.DESCRIPTOR);
        }

        public static IKnoxPushServiceCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IKnoxPushServiceCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKnoxPushServiceCallback)) {
                return (IKnoxPushServiceCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IKnoxPushServiceCallback.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return super.onTransact(i, parcel, parcel2, i2);
                        }
                        KnoxPushServiceResult knoxPushServiceResult = (KnoxPushServiceResult) parcel.readTypedObject(KnoxPushServiceResult.CREATOR);
                        parcel.enforceNoDataAvail();
                        onRegistrationStatus(knoxPushServiceResult);
                        parcel2.writeNoException();
                    } else {
                        KnoxPushServiceResult knoxPushServiceResult2 = (KnoxPushServiceResult) parcel.readTypedObject(KnoxPushServiceResult.CREATOR);
                        parcel.enforceNoDataAvail();
                        onUnRegistrationFinished(knoxPushServiceResult2);
                        parcel2.writeNoException();
                    }
                } else {
                    KnoxPushServiceResult knoxPushServiceResult3 = (KnoxPushServiceResult) parcel.readTypedObject(KnoxPushServiceResult.CREATOR);
                    parcel.enforceNoDataAvail();
                    onRegistrationFinished(knoxPushServiceResult3);
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString(IKnoxPushServiceCallback.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Default implements IKnoxPushServiceCallback {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onRegistrationStatus(KnoxPushServiceResult knoxPushServiceResult) {
        }

        @Override // com.samsung.android.knox.kpm.IKnoxPushServiceCallback
        public final void onUnRegistrationFinished(KnoxPushServiceResult knoxPushServiceResult) {
        }
    }
}
