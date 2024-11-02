package com.sec.ims.sms;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ISmsServiceEventListener extends IInterface {
    public static final String DESCRIPTOR = "com.sec.ims.sms.ISmsServiceEventListener";

    void onReceiveIncomingSMS(int i, String str, byte[] bArr);

    void onReceiveSMSAck(int i, int i2, String str, byte[] bArr, int i3);

    void onReceiveSMSDeliveryReportAck(int i, int i2, int i3);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements ISmsServiceEventListener {
        static final int TRANSACTION_onReceiveIncomingSMS = 1;
        static final int TRANSACTION_onReceiveSMSAck = 2;
        static final int TRANSACTION_onReceiveSMSDeliveryReportAck = 3;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public static class Proxy implements ISmsServiceEventListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISmsServiceEventListener.DESCRIPTOR;
            }

            @Override // com.sec.ims.sms.ISmsServiceEventListener
            public void onReceiveIncomingSMS(int i, String str, byte[] bArr) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISmsServiceEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.ims.sms.ISmsServiceEventListener
            public void onReceiveSMSAck(int i, int i2, String str, byte[] bArr, int i3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISmsServiceEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i3);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.sec.ims.sms.ISmsServiceEventListener
            public void onReceiveSMSDeliveryReportAck(int i, int i2, int i3) {
                Parcel obtain = Parcel.obtain(asBinder());
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISmsServiceEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ISmsServiceEventListener.DESCRIPTOR);
        }

        public static ISmsServiceEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISmsServiceEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISmsServiceEventListener)) {
                return (ISmsServiceEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ISmsServiceEventListener.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return super.onTransact(i, parcel, parcel2, i2);
                        }
                        int readInt = parcel.readInt();
                        int readInt2 = parcel.readInt();
                        int readInt3 = parcel.readInt();
                        parcel.enforceNoDataAvail();
                        onReceiveSMSDeliveryReportAck(readInt, readInt2, readInt3);
                        parcel2.writeNoException();
                    } else {
                        int readInt4 = parcel.readInt();
                        int readInt5 = parcel.readInt();
                        String readString = parcel.readString();
                        byte[] createByteArray = parcel.createByteArray();
                        int readInt6 = parcel.readInt();
                        parcel.enforceNoDataAvail();
                        onReceiveSMSAck(readInt4, readInt5, readString, createByteArray, readInt6);
                        parcel2.writeNoException();
                    }
                } else {
                    int readInt7 = parcel.readInt();
                    String readString2 = parcel.readString();
                    byte[] createByteArray2 = parcel.createByteArray();
                    parcel.enforceNoDataAvail();
                    onReceiveIncomingSMS(readInt7, readString2, createByteArray2);
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString(ISmsServiceEventListener.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public static class Default implements ISmsServiceEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.sec.ims.sms.ISmsServiceEventListener
        public void onReceiveIncomingSMS(int i, String str, byte[] bArr) {
        }

        @Override // com.sec.ims.sms.ISmsServiceEventListener
        public void onReceiveSMSDeliveryReportAck(int i, int i2, int i3) {
        }

        @Override // com.sec.ims.sms.ISmsServiceEventListener
        public void onReceiveSMSAck(int i, int i2, String str, byte[] bArr, int i3) {
        }
    }
}
