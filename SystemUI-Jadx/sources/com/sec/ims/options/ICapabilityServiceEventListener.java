package com.sec.ims.options;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.sec.ims.util.ImsUri;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ICapabilityServiceEventListener extends IInterface {
    public static final String DESCRIPTOR = "com.sec.ims.options.ICapabilityServiceEventListener";

    void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities);

    void onCapabilityAndAvailabilityPublished(int i);

    void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2);

    void onOwnCapabilitiesChanged();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Default implements ICapabilityServiceEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onOwnCapabilitiesChanged() {
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onCapabilityAndAvailabilityPublished(int i) {
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) {
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements ICapabilityServiceEventListener {
        static final int TRANSACTION_onCapabilitiesChanged = 2;
        static final int TRANSACTION_onCapabilityAndAvailabilityPublished = 4;
        static final int TRANSACTION_onMultipleCapabilitiesChanged = 3;
        static final int TRANSACTION_onOwnCapabilitiesChanged = 1;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public static class Proxy implements ICapabilityServiceEventListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICapabilityServiceEventListener.DESCRIPTOR;
            }

            @Override // com.sec.ims.options.ICapabilityServiceEventListener
            public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICapabilityServiceEventListener.DESCRIPTOR);
                    obtain.writeTypedList(list, 0);
                    obtain.writeTypedObject(capabilities, 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.ims.options.ICapabilityServiceEventListener
            public void onCapabilityAndAvailabilityPublished(int i) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICapabilityServiceEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.ims.options.ICapabilityServiceEventListener
            public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICapabilityServiceEventListener.DESCRIPTOR);
                    obtain.writeTypedList(list, 0);
                    obtain.writeTypedList(list2, 0);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.ims.options.ICapabilityServiceEventListener
            public void onOwnCapabilitiesChanged() {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICapabilityServiceEventListener.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ICapabilityServiceEventListener.DESCRIPTOR);
        }

        public static ICapabilityServiceEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ICapabilityServiceEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICapabilityServiceEventListener)) {
                return (ICapabilityServiceEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ICapabilityServiceEventListener.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return super.onTransact(i, parcel, parcel2, i2);
                            }
                            int readInt = parcel.readInt();
                            parcel.enforceNoDataAvail();
                            onCapabilityAndAvailabilityPublished(readInt);
                            parcel2.writeNoException();
                        } else {
                            ArrayList createTypedArrayList = parcel.createTypedArrayList(ImsUri.CREATOR);
                            ArrayList createTypedArrayList2 = parcel.createTypedArrayList(Capabilities.CREATOR);
                            parcel.enforceNoDataAvail();
                            onMultipleCapabilitiesChanged(createTypedArrayList, createTypedArrayList2);
                            parcel2.writeNoException();
                        }
                    } else {
                        ArrayList createTypedArrayList3 = parcel.createTypedArrayList(ImsUri.CREATOR);
                        Capabilities capabilities = (Capabilities) parcel.readTypedObject(Capabilities.CREATOR);
                        parcel.enforceNoDataAvail();
                        onCapabilitiesChanged(createTypedArrayList3, capabilities);
                        parcel2.writeNoException();
                    }
                } else {
                    onOwnCapabilitiesChanged();
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString(ICapabilityServiceEventListener.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
