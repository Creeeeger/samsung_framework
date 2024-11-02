package com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;
import com.android.systemui.settings.multisim.MultiSIMController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ISimCardManagerServiceCallback extends IInterface {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements ISimCardManagerServiceCallback {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Proxy implements ISimCardManagerServiceCallback {
            public final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback");
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            MultiSIMController multiSIMController;
            MultiSIMController.AnonymousClass12 anonymousClass12;
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback");
                return true;
            }
            parcel.enforceInterface("com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback");
            String readString = parcel.readString();
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = false;
            }
            Log.d("SimCardManagerServiceProvider$ServiceBindHelper", "mSimCardManagerServiceCallback: requestResult action = " + readString + ", success = " + z);
            if (SimCardManagerServiceProvider.sSimCardManagerServiceCallback != null && !SimCardManagerServiceProvider.mIsServiceClose) {
                MultiSIMController.AnonymousClass13 anonymousClass13 = SimCardManagerServiceProvider.sSimCardManagerServiceCallback;
                anonymousClass13.getClass();
                Log.d("MultiSIMController", "registerSimCardManagerCallback : requestResult action = " + readString + ", success = " + z);
                if ("dataSlotChangedFinish".equals(readString) && (anonymousClass12 = (multiSIMController = MultiSIMController.this).mUIHandler) != null) {
                    anonymousClass12.removeMessages(1000);
                    MultiSIMController.AnonymousClass12 anonymousClass122 = multiSIMController.mUIHandler;
                    anonymousClass122.sendMessage(anonymousClass122.obtainMessage(1000));
                }
            }
            parcel2.writeNoException();
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
