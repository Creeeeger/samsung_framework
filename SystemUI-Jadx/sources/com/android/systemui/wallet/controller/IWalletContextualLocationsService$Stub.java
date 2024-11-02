package com.android.systemui.wallet.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IWalletContextualLocationsService$Stub extends Binder implements IInterface {
    public IWalletContextualLocationsService$Stub() {
        attachInterface(this, "com.android.systemui.wallet.controller.IWalletContextualLocationsService");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        IWalletCardsUpdatedListener iWalletCardsUpdatedListener;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.systemui.wallet.controller.IWalletContextualLocationsService");
        }
        if (i != 1598968902) {
            if (i != 1) {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                parcel.enforceNoDataAvail();
                ((WalletContextualLocationsService$binder$1) this).this$0.onWalletContextualLocationsStateUpdatedInternal(createStringArrayList);
                parcel2.writeNoException();
            } else {
                final IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    iWalletCardsUpdatedListener = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.android.systemui.wallet.controller.IWalletCardsUpdatedListener");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof IWalletCardsUpdatedListener)) {
                        iWalletCardsUpdatedListener = (IWalletCardsUpdatedListener) queryLocalInterface;
                    } else {
                        iWalletCardsUpdatedListener = new IWalletCardsUpdatedListener(readStrongBinder) { // from class: com.android.systemui.wallet.controller.IWalletCardsUpdatedListener$Stub$Proxy
                            public final IBinder mRemote;

                            {
                                this.mRemote = readStrongBinder;
                            }

                            @Override // android.os.IInterface
                            public final IBinder asBinder() {
                                return this.mRemote;
                            }
                        };
                    }
                }
                parcel.enforceNoDataAvail();
                ((WalletContextualLocationsService$binder$1) this).this$0.addWalletCardsUpdatedListenerInternal(iWalletCardsUpdatedListener);
                parcel2.writeNoException();
            }
            return true;
        }
        parcel2.writeString("com.android.systemui.wallet.controller.IWalletContextualLocationsService");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
