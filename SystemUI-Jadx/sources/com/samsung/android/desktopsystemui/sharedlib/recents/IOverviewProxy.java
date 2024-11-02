package com.samsung.android.desktopsystemui.sharedlib.recents;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface IOverviewProxy extends IInterface {
    public static final String DESCRIPTOR = "com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy";

    void onActiveNavBarRegionChanges(Region region);

    void onAssistantAvailable(boolean z);

    void onAssistantVisibilityChanged(float f);

    void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3);

    void onImeWindowStatusChanged(int i, IBinder iBinder, int i2, int i3, boolean z);

    void onInitialize(Bundle bundle);

    void onOverviewHidden(boolean z, boolean z2);

    void onOverviewShown(boolean z);

    void onOverviewToggle();

    void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2);

    void onSystemUiStateChanged(int i);

    void onTip(int i, int i2);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class Default implements IOverviewProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onActiveNavBarRegionChanges(Region region) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onAssistantAvailable(boolean z) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onAssistantVisibilityChanged(float f) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onInitialize(Bundle bundle) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onOverviewShown(boolean z) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onSystemUiStateChanged(int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onOverviewToggle() {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onOverviewHidden(boolean z, boolean z2) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onTip(int i, int i2) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
        public void onImeWindowStatusChanged(int i, IBinder iBinder, int i2, int i3, boolean z) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static abstract class Stub extends Binder implements IOverviewProxy {
        static final int TRANSACTION_onActiveNavBarRegionChanges = 12;
        static final int TRANSACTION_onAssistantAvailable = 14;
        static final int TRANSACTION_onAssistantVisibilityChanged = 15;
        static final int TRANSACTION_onBackAction = 16;
        static final int TRANSACTION_onImeWindowStatusChanged = 19;
        static final int TRANSACTION_onInitialize = 13;
        static final int TRANSACTION_onOverviewHidden = 9;
        static final int TRANSACTION_onOverviewShown = 8;
        static final int TRANSACTION_onOverviewToggle = 7;
        static final int TRANSACTION_onSplitScreenSecondaryBoundsChanged = 18;
        static final int TRANSACTION_onSystemUiStateChanged = 17;
        static final int TRANSACTION_onTip = 11;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static class Proxy implements IOverviewProxy {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOverviewProxy.DESCRIPTOR;
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onActiveNavBarRegionChanges(Region region) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(region, 0);
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onAssistantAvailable(boolean z) {
                int i;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onAssistantVisibilityChanged(float f) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeFloat(f);
                    this.mRemote.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {
                int i3;
                int i4;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    int i5 = 0;
                    if (z) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    obtain.writeInt(i3);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (z2) {
                        i4 = 1;
                    } else {
                        i4 = 0;
                    }
                    obtain.writeInt(i4);
                    if (z3) {
                        i5 = 1;
                    }
                    obtain.writeInt(i5);
                    this.mRemote.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onImeWindowStatusChanged(int i, IBinder iBinder, int i2, int i3, boolean z) {
                int i4;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (z) {
                        i4 = 1;
                    } else {
                        i4 = 0;
                    }
                    obtain.writeInt(i4);
                    this.mRemote.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onInitialize(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bundle, 0);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onOverviewHidden(boolean z, boolean z2) {
                int i;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    int i2 = 0;
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    if (z2) {
                        i2 = 1;
                    }
                    obtain.writeInt(i2);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onOverviewShown(boolean z) {
                int i;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onOverviewToggle() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onSplitScreenSecondaryBoundsChanged(Rect rect, Rect rect2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeTypedObject(rect, 0);
                    obtain.writeTypedObject(rect2, 0);
                    this.mRemote.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onSystemUiStateChanged(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy
            public void onTip(int i, int i2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOverviewProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOverviewProxy.DESCRIPTOR);
        }

        public static IOverviewProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOverviewProxy.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOverviewProxy)) {
                return (IOverviewProxy) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IOverviewProxy.DESCRIPTOR);
            }
            if (i != 1598968902) {
                boolean z6 = false;
                switch (i) {
                    case 7:
                        onOverviewToggle();
                        return true;
                    case 8:
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        onOverviewShown(z6);
                        return true;
                    case 9:
                        if (parcel.readInt() != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        onOverviewHidden(z, z6);
                        return true;
                    case 10:
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                    case 11:
                        onTip(parcel.readInt(), parcel.readInt());
                        return true;
                    case 12:
                        onActiveNavBarRegionChanges((Region) parcel.readTypedObject(Region.CREATOR));
                        return true;
                    case 13:
                        onInitialize((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                        return true;
                    case 14:
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        onAssistantAvailable(z6);
                        return true;
                    case 15:
                        onAssistantVisibilityChanged(parcel.readFloat());
                        return true;
                    case 16:
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        int readInt = parcel.readInt();
                        int readInt2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (parcel.readInt() != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        onBackAction(z2, readInt, readInt2, z3, z4);
                        return true;
                    case 17:
                        onSystemUiStateChanged(parcel.readInt());
                        return true;
                    case 18:
                        onSplitScreenSecondaryBoundsChanged((Rect) parcel.readTypedObject(Rect.CREATOR), (Rect) parcel.readTypedObject(Rect.CREATOR));
                        return true;
                    case 19:
                        int readInt3 = parcel.readInt();
                        IBinder readStrongBinder = parcel.readStrongBinder();
                        int readInt4 = parcel.readInt();
                        int readInt5 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        onImeWindowStatusChanged(readInt3, readStrongBinder, readInt4, readInt5, z5);
                        return true;
                }
            }
            parcel2.writeString(IOverviewProxy.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
