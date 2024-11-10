package com.att.iqi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.att.iqi.IMetricQueryCallback;
import com.att.iqi.IMetricSourcingCallback;
import com.att.iqi.IProfileChangedCallback;
import com.att.iqi.IServiceStateChangeCallback;
import com.att.iqi.lib.Metric;

/* loaded from: classes3.dex */
public interface IIQIBroker extends IInterface {
    public static final String DESCRIPTOR = "com.att.iqi.IIQIBroker";

    /* loaded from: classes3.dex */
    public class Default implements IIQIBroker {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.att.iqi.IIQIBroker
        public void disableService() {
        }

        @Override // com.att.iqi.IIQIBroker
        public void forceStopService() {
        }

        @Override // com.att.iqi.IIQIBroker
        public long getTimestamp() {
            return 0L;
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void registerServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public boolean setUnlockCode(long j) {
            return false;
        }

        @Override // com.att.iqi.IIQIBroker
        public boolean shouldSubmitMetric(Metric.ID id) {
            return false;
        }

        @Override // com.att.iqi.IIQIBroker
        public void submitMetric(Metric metric) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
        }

        @Override // com.att.iqi.IIQIBroker
        public void unregisterServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
        }
    }

    void disableService();

    void forceStopService();

    long getTimestamp();

    void registerMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback);

    void registerMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback);

    void registerProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback);

    void registerServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback);

    boolean setUnlockCode(long j);

    boolean shouldSubmitMetric(Metric.ID id);

    void submitMetric(Metric metric);

    void unregisterMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback);

    void unregisterMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback);

    void unregisterProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback);

    void unregisterServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback);

    /* loaded from: classes3.dex */
    public abstract class Stub extends Binder implements IIQIBroker {
        static final int TRANSACTION_disableService = 13;
        static final int TRANSACTION_forceStopService = 12;
        static final int TRANSACTION_getTimestamp = 9;
        static final int TRANSACTION_registerMetricQueryCallback = 3;
        static final int TRANSACTION_registerMetricSourcingCallback = 5;
        static final int TRANSACTION_registerProfileChangedCallback = 7;
        static final int TRANSACTION_registerServiceChangedCallback = 10;
        static final int TRANSACTION_setUnlockCode = 14;
        static final int TRANSACTION_shouldSubmitMetric = 1;
        static final int TRANSACTION_submitMetric = 2;
        static final int TRANSACTION_unregisterMetricQueryCallback = 4;
        static final int TRANSACTION_unregisterMetricSourcingCallback = 6;
        static final int TRANSACTION_unregisterProfileChangedCallback = 8;
        static final int TRANSACTION_unregisterServiceChangedCallback = 11;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IIQIBroker.DESCRIPTOR);
        }

        public static IIQIBroker asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IIQIBroker.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IIQIBroker)) {
                return (IIQIBroker) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IIQIBroker.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IIQIBroker.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    boolean shouldSubmitMetric = shouldSubmitMetric((Metric.ID) _Parcel.readTypedObject(parcel, Metric.ID.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(shouldSubmitMetric ? 1 : 0);
                    return true;
                case 2:
                    submitMetric((Metric) _Parcel.readTypedObject(parcel, Metric.CREATOR));
                    return true;
                case 3:
                    registerMetricQueryCallback((Metric.ID) _Parcel.readTypedObject(parcel, Metric.ID.CREATOR), IMetricQueryCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    unregisterMetricQueryCallback((Metric.ID) _Parcel.readTypedObject(parcel, Metric.ID.CREATOR), IMetricQueryCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    registerMetricSourcingCallback((Metric.ID) _Parcel.readTypedObject(parcel, Metric.ID.CREATOR), IMetricSourcingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    unregisterMetricSourcingCallback((Metric.ID) _Parcel.readTypedObject(parcel, Metric.ID.CREATOR), IMetricSourcingCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    registerProfileChangedCallback(IProfileChangedCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    unregisterProfileChangedCallback(IProfileChangedCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    long timestamp = getTimestamp();
                    parcel2.writeNoException();
                    parcel2.writeLong(timestamp);
                    return true;
                case 10:
                    registerServiceChangedCallback(IServiceStateChangeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    unregisterServiceChangedCallback(IServiceStateChangeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    forceStopService();
                    return true;
                case 13:
                    disableService();
                    return true;
                case 14:
                    boolean unlockCode = setUnlockCode(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(unlockCode ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes3.dex */
        class Proxy implements IIQIBroker {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return IIQIBroker.DESCRIPTOR;
            }

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.att.iqi.IIQIBroker
            public boolean shouldSubmitMetric(Metric.ID id) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, id, 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void submitMetric(Metric metric) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, metric, 0);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void registerMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, id, 0);
                    obtain.writeStrongInterface(iMetricQueryCallback);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void unregisterMetricQueryCallback(Metric.ID id, IMetricQueryCallback iMetricQueryCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, id, 0);
                    obtain.writeStrongInterface(iMetricQueryCallback);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void registerMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, id, 0);
                    obtain.writeStrongInterface(iMetricSourcingCallback);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void unregisterMetricSourcingCallback(Metric.ID id, IMetricSourcingCallback iMetricSourcingCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, id, 0);
                    obtain.writeStrongInterface(iMetricSourcingCallback);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void registerProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    obtain.writeStrongInterface(iProfileChangedCallback);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void unregisterProfileChangedCallback(IProfileChangedCallback iProfileChangedCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    obtain.writeStrongInterface(iProfileChangedCallback);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public long getTimestamp() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void registerServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    obtain.writeStrongInterface(iServiceStateChangeCallback);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void unregisterServiceChangedCallback(IServiceStateChangeCallback iServiceStateChangeCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    obtain.writeStrongInterface(iServiceStateChangeCallback);
                    this.mRemote.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void forceStopService() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public void disableService() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.att.iqi.IIQIBroker
            public boolean setUnlockCode(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IIQIBroker.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object readTypedObject(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void writeTypedObject(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable != null) {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
