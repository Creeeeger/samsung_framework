package com.android.wm.shell.desktopmode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface IDesktopMode extends IInterface {
    int getVisibleTaskCount(int i);

    void showDesktopApps(int i);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class Stub extends Binder implements IDesktopMode {
        public Stub() {
            attachInterface(this, "com.android.wm.shell.desktopmode.IDesktopMode");
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.android.wm.shell.desktopmode.IDesktopMode");
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    int readInt = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    int visibleTaskCount = getVisibleTaskCount(readInt);
                    parcel2.writeNoException();
                    parcel2.writeInt(visibleTaskCount);
                } else {
                    int readInt2 = parcel.readInt();
                    parcel.enforceNoDataAvail();
                    showDesktopApps(readInt2);
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString("com.android.wm.shell.desktopmode.IDesktopMode");
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
