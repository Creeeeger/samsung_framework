package com.samsung.android.knox.kpcc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.samsung.android.knox.ContextInfo;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface IKPCCManager extends IInterface {
    public static final String DESCRIPTOR = "com.samsung.android.knox.kpcc.IKPCCManager";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Default implements IKPCCManager {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // com.samsung.android.knox.kpcc.IKPCCManager
        public final int getDrxValue(ContextInfo contextInfo) {
            return 0;
        }

        @Override // com.samsung.android.knox.kpcc.IKPCCManager
        public final List getPackagesAllowedOnRestrictedNetworks(ContextInfo contextInfo) {
            return null;
        }

        @Override // com.samsung.android.knox.kpcc.IKPCCManager
        public final int getTelephonyDrxValue() {
            return 0;
        }

        @Override // com.samsung.android.knox.kpcc.IKPCCManager
        public final int setDrxValue(ContextInfo contextInfo, int i) {
            return 0;
        }

        @Override // com.samsung.android.knox.kpcc.IKPCCManager
        public final int setPackageOnRestrictedNetworks(ContextInfo contextInfo, int i, String str) {
            return 0;
        }
    }

    int getDrxValue(ContextInfo contextInfo);

    List getPackagesAllowedOnRestrictedNetworks(ContextInfo contextInfo);

    int getTelephonyDrxValue();

    int setDrxValue(ContextInfo contextInfo, int i);

    int setPackageOnRestrictedNetworks(ContextInfo contextInfo, int i, String str);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IKPCCManager {
        public static final int TRANSACTION_getDrxValue = 2;
        public static final int TRANSACTION_getPackagesAllowedOnRestrictedNetworks = 5;
        public static final int TRANSACTION_getTelephonyDrxValue = 3;
        public static final int TRANSACTION_setDrxValue = 1;
        public static final int TRANSACTION_setPackageOnRestrictedNetworks = 4;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public static class Proxy implements IKPCCManager {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.samsung.android.knox.kpcc.IKPCCManager
            public final int getDrxValue(ContextInfo contextInfo) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKPCCManager.DESCRIPTOR);
                    obtain.writeTypedObject(contextInfo, 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public final String getInterfaceDescriptor() {
                return IKPCCManager.DESCRIPTOR;
            }

            @Override // com.samsung.android.knox.kpcc.IKPCCManager
            public final List getPackagesAllowedOnRestrictedNetworks(ContextInfo contextInfo) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKPCCManager.DESCRIPTOR);
                    obtain.writeTypedObject(contextInfo, 0);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readArrayList(Proxy.class.getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.knox.kpcc.IKPCCManager
            public final int getTelephonyDrxValue() {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKPCCManager.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.knox.kpcc.IKPCCManager
            public final int setDrxValue(ContextInfo contextInfo, int i) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKPCCManager.DESCRIPTOR);
                    obtain.writeTypedObject(contextInfo, 0);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.knox.kpcc.IKPCCManager
            public final int setPackageOnRestrictedNetworks(ContextInfo contextInfo, int i, String str) {
                Parcel obtain = Parcel.obtain(this.mRemote);
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IKPCCManager.DESCRIPTOR);
                    obtain.writeTypedObject(contextInfo, 0);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IKPCCManager.DESCRIPTOR);
        }

        public static IKPCCManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IKPCCManager.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKPCCManager)) {
                return (IKPCCManager) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        public static String getDefaultTransactionName(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return null;
                            }
                            return "getPackagesAllowedOnRestrictedNetworks";
                        }
                        return "setPackageOnRestrictedNetworks";
                    }
                    return "getTelephonyDrxValue";
                }
                return "getDrxValue";
            }
            return "setDrxValue";
        }

        public final int getMaxTransactionId() {
            return 4;
        }

        public final String getTransactionName(int i) {
            return getDefaultTransactionName(i);
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IKPCCManager.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    return super.onTransact(i, parcel, parcel2, i2);
                                }
                                ContextInfo contextInfo = (ContextInfo) parcel.readTypedObject(ContextInfo.CREATOR);
                                parcel.enforceNoDataAvail();
                                List packagesAllowedOnRestrictedNetworks = getPackagesAllowedOnRestrictedNetworks(contextInfo);
                                parcel2.writeNoException();
                                parcel2.writeList(packagesAllowedOnRestrictedNetworks);
                            } else {
                                ContextInfo contextInfo2 = (ContextInfo) parcel.readTypedObject(ContextInfo.CREATOR);
                                int readInt = parcel.readInt();
                                String readString = parcel.readString();
                                parcel.enforceNoDataAvail();
                                int packageOnRestrictedNetworks = setPackageOnRestrictedNetworks(contextInfo2, readInt, readString);
                                parcel2.writeNoException();
                                parcel2.writeInt(packageOnRestrictedNetworks);
                            }
                        } else {
                            int telephonyDrxValue = getTelephonyDrxValue();
                            parcel2.writeNoException();
                            parcel2.writeInt(telephonyDrxValue);
                        }
                    } else {
                        ContextInfo contextInfo3 = (ContextInfo) parcel.readTypedObject(ContextInfo.CREATOR);
                        parcel.enforceNoDataAvail();
                        int drxValue = getDrxValue(contextInfo3);
                        parcel2.writeNoException();
                        parcel2.writeInt(drxValue);
                    }
                } else {
                    ContextInfo contextInfo4 = (ContextInfo) parcel.readTypedObject(ContextInfo.CREATOR);
                    int readInt2 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int drxValue2 = setDrxValue(contextInfo4, readInt2);
                    parcel2.writeNoException();
                    parcel2.writeInt(drxValue2);
                }
                return true;
            }
            parcel2.writeString(IKPCCManager.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
