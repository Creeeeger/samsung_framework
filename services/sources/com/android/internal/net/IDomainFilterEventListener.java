package com.android.internal.net;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IDomainFilterEventListener extends IInterface {
    public static final String DESCRIPTOR = "com$android$internal$net$IDomainFilterEventListener".replace('$', '.');

    /* loaded from: classes.dex */
    public class Default implements IDomainFilterEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    void onDomainFilterReportEvent(int i, int i2, long j, String str);

    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IDomainFilterEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IDomainFilterEventListener.DESCRIPTOR);
        }

        public static IDomainFilterEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IDomainFilterEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IDomainFilterEventListener)) {
                return (IDomainFilterEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IDomainFilterEventListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 1) {
                int readInt = parcel.readInt();
                int readInt2 = parcel.readInt();
                long readLong = parcel.readLong();
                String readString = parcel.readString();
                parcel.enforceNoDataAvail();
                onDomainFilterReportEvent(readInt, readInt2, readLong, readString);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        /* loaded from: classes.dex */
        public class Proxy implements IDomainFilterEventListener {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }
        }
    }
}
