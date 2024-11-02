package com.samsung.android.app.scrollcapture.lib;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface IScrollCaptureService extends IInterface {
    boolean canScrollCapture();

    boolean cancelNotification();

    boolean isUiActivated();

    boolean onGlobalScreenshotFinished(long j, String str, Bundle bundle);

    boolean onGlobalScreenshotStarted(long j, String str, Bundle bundle);

    boolean registerNotification();

    boolean setCustomSettingFilePath();

    boolean startCapture();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Stub extends Binder implements IScrollCaptureService {
        public static final /* synthetic */ int $r8$clinit = 0;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Proxy implements IScrollCaptureService {
            public final IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.samsung.android.app.scrollcapture.lib.IScrollCaptureService
            public final boolean onGlobalScreenshotFinished(long j, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.app.scrollcapture.lib.IScrollCaptureService
            public final boolean onGlobalScreenshotStarted(long j, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1598968902) {
                Bundle bundle = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        parcel.readStrongBinder();
                        boolean canScrollCapture = canScrollCapture();
                        parcel2.writeNoException();
                        parcel2.writeInt(canScrollCapture ? 1 : 0);
                        return true;
                    case 2:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        boolean isUiActivated = isUiActivated();
                        parcel2.writeNoException();
                        parcel2.writeInt(isUiActivated ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                        boolean startCapture = startCapture();
                        parcel2.writeNoException();
                        parcel2.writeInt(startCapture ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        long readLong = parcel.readLong();
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean onGlobalScreenshotStarted = onGlobalScreenshotStarted(readLong, readString, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(onGlobalScreenshotStarted ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        long readLong2 = parcel.readLong();
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean onGlobalScreenshotFinished = onGlobalScreenshotFinished(readLong2, readString2, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(onGlobalScreenshotFinished ? 1 : 0);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        parcel.readString();
                        boolean customSettingFilePath = setCustomSettingFilePath();
                        parcel2.writeNoException();
                        parcel2.writeInt(customSettingFilePath ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        parcel.readInt();
                        if (parcel.readInt() != 0) {
                        }
                        boolean registerNotification = registerNotification();
                        parcel2.writeNoException();
                        parcel2.writeInt(registerNotification ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
                        parcel.readInt();
                        boolean cancelNotification = cancelNotification();
                        parcel2.writeNoException();
                        parcel2.writeInt(cancelNotification ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("com.samsung.android.app.scrollcapture.lib.IScrollCaptureService");
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
