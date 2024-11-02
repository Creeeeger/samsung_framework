package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.MultiInstanceInvalidationService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class IMultiInstanceInvalidationService$Stub extends Binder implements IInterface {
    public IMultiInstanceInvalidationService$Stub() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        IInterface iInterface = null;
        int i3 = 0;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                    return true;
                }
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int readInt = parcel.readInt();
                String[] createStringArray = parcel.createStringArray();
                MultiInstanceInvalidationService.AnonymousClass2 anonymousClass2 = (MultiInstanceInvalidationService.AnonymousClass2) this;
                synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                    String str = (String) MultiInstanceInvalidationService.this.mClientNames.get(Integer.valueOf(readInt));
                    if (str == null) {
                        Log.w("ROOM", "Remote invalidation client ID not registered");
                    } else {
                        int beginBroadcast = MultiInstanceInvalidationService.this.mCallbackList.beginBroadcast();
                        while (i3 < beginBroadcast) {
                            try {
                                int intValue = ((Integer) MultiInstanceInvalidationService.this.mCallbackList.getBroadcastCookie(i3)).intValue();
                                String str2 = (String) MultiInstanceInvalidationService.this.mClientNames.get(Integer.valueOf(intValue));
                                if (readInt != intValue && str.equals(str2)) {
                                    try {
                                        ((IMultiInstanceInvalidationCallback.Stub.Proxy) ((IMultiInstanceInvalidationCallback) MultiInstanceInvalidationService.this.mCallbackList.getBroadcastItem(i3))).onInvalidation(createStringArray);
                                    } catch (RemoteException e) {
                                        Log.w("ROOM", "Error invoking a remote callback", e);
                                    }
                                }
                                i3++;
                            } finally {
                                MultiInstanceInvalidationService.this.mCallbackList.finishBroadcast();
                            }
                        }
                    }
                }
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                if (queryLocalInterface != null && (queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                    iInterface = (IMultiInstanceInvalidationCallback) queryLocalInterface;
                } else {
                    iInterface = new IMultiInstanceInvalidationCallback.Stub.Proxy(readStrongBinder);
                }
            }
            int readInt2 = parcel.readInt();
            MultiInstanceInvalidationService.AnonymousClass2 anonymousClass22 = (MultiInstanceInvalidationService.AnonymousClass2) this;
            synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                MultiInstanceInvalidationService.this.mCallbackList.unregister(iInterface);
                MultiInstanceInvalidationService.this.mClientNames.remove(Integer.valueOf(readInt2));
            }
            parcel2.writeNoException();
            return true;
        }
        parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        IBinder readStrongBinder2 = parcel.readStrongBinder();
        if (readStrongBinder2 != null) {
            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof IMultiInstanceInvalidationCallback)) {
                iInterface = (IMultiInstanceInvalidationCallback) queryLocalInterface2;
            } else {
                iInterface = new IMultiInstanceInvalidationCallback.Stub.Proxy(readStrongBinder2);
            }
        }
        String readString = parcel.readString();
        MultiInstanceInvalidationService.AnonymousClass2 anonymousClass23 = (MultiInstanceInvalidationService.AnonymousClass2) this;
        if (readString != null) {
            synchronized (MultiInstanceInvalidationService.this.mCallbackList) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i4 = multiInstanceInvalidationService.mMaxClientId + 1;
                multiInstanceInvalidationService.mMaxClientId = i4;
                if (multiInstanceInvalidationService.mCallbackList.register(iInterface, Integer.valueOf(i4))) {
                    MultiInstanceInvalidationService.this.mClientNames.put(Integer.valueOf(i4), readString);
                    i3 = i4;
                } else {
                    MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                    multiInstanceInvalidationService2.mMaxClientId--;
                }
            }
        }
        parcel2.writeNoException();
        parcel2.writeInt(i3);
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
