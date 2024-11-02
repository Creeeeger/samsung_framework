package com.samsung.android.desktopsystemui.sharedlib.recents;

import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.MotionEvent;
import com.samsung.android.desktopsystemui.sharedlib.recents.model.Task;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ISystemUiProxy extends IInterface {
    public static final String DESCRIPTOR = "com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy";

    void expandNotificationPanel();

    Rect getNonMinimizedSplitScreenSecondaryBounds();

    @Deprecated
    void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i);

    void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey);

    void injectKey(int i);

    boolean isTaskbarShown();

    Bundle monitorGestureInput(String str, int i);

    void notifyAccessibilityButtonClicked(int i);

    void notifyAccessibilityButtonLongClicked();

    void notifySwipeToHomeFinished();

    void onAssistantGestureCompletion(float f);

    void onAssistantProgress(float f);

    void onOverviewShown(boolean z);

    void onQuickSwitchToNewTask(int i);

    void onStatusBarMotionEvent(MotionEvent motionEvent);

    void setNavBarButtonAlpha(float f, boolean z);

    void setSplitScreenMinimized(boolean z);

    void startAssistant(Bundle bundle);

    void startScreenPinning(int i);

    void stopScreenPinning();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class Default implements ISystemUiProxy {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public Rect getNonMinimizedSplitScreenSecondaryBounds() {
            return null;
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public boolean isTaskbarShown() {
            return false;
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public Bundle monitorGestureInput(String str, int i) {
            return null;
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void injectKey(int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void notifyAccessibilityButtonClicked(int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void onAssistantGestureCompletion(float f) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void onAssistantProgress(float f) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void onOverviewShown(boolean z) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void onQuickSwitchToNewTask(int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void onStatusBarMotionEvent(MotionEvent motionEvent) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void setSplitScreenMinimized(boolean z) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void startAssistant(Bundle bundle) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void startScreenPinning(int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void expandNotificationPanel() {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void notifyAccessibilityButtonLongClicked() {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void notifySwipeToHomeFinished() {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void stopScreenPinning() {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void setNavBarButtonAlpha(float f, boolean z) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i) {
        }

        @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
        public void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static abstract class Stub extends Binder implements ISystemUiProxy {
        static final int TRANSACTION_expandNotificationPanel = 30;
        static final int TRANSACTION_getNonMinimizedSplitScreenSecondaryBounds = 8;
        static final int TRANSACTION_handleImageAsScreenshot = 22;
        static final int TRANSACTION_handleImageBundleAsScreenshot = 29;
        static final int TRANSACTION_injectKey = 45;
        static final int TRANSACTION_isTaskbarShown = 46;
        static final int TRANSACTION_monitorGestureInput = 15;
        static final int TRANSACTION_notifyAccessibilityButtonClicked = 16;
        static final int TRANSACTION_notifyAccessibilityButtonLongClicked = 17;
        static final int TRANSACTION_notifySwipeToHomeFinished = 24;
        static final int TRANSACTION_onAssistantGestureCompletion = 19;
        static final int TRANSACTION_onAssistantProgress = 13;
        static final int TRANSACTION_onOverviewShown = 7;
        static final int TRANSACTION_onQuickSwitchToNewTask = 26;
        static final int TRANSACTION_onStatusBarMotionEvent = 10;
        static final int TRANSACTION_setNavBarButtonAlpha = 20;
        static final int TRANSACTION_setSplitScreenMinimized = 23;
        static final int TRANSACTION_startAssistant = 14;
        static final int TRANSACTION_startScreenPinning = 2;
        static final int TRANSACTION_stopScreenPinning = 18;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static class Proxy implements ISystemUiProxy {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void expandNotificationPanel() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return ISystemUiProxy.DESCRIPTOR;
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public Rect getNonMinimizedSplitScreenSecondaryBounds() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Rect) obtain2.readTypedObject(Rect.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void handleImageAsScreenshot(Bitmap bitmap, Rect rect, Insets insets, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bitmap, 0);
                    obtain.writeTypedObject(rect, 0);
                    obtain.writeTypedObject(insets, 0);
                    obtain.writeInt(i);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void handleImageBundleAsScreenshot(Bundle bundle, Rect rect, Insets insets, Task.TaskKey taskKey) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bundle, 0);
                    obtain.writeTypedObject(rect, 0);
                    obtain.writeTypedObject(insets, 0);
                    obtain.writeTypedObject(taskKey, 0);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void injectKey(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public boolean isTaskbarShown() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public Bundle monitorGestureInput(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) obtain2.readTypedObject(Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void notifyAccessibilityButtonClicked(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void notifyAccessibilityButtonLongClicked() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void notifySwipeToHomeFinished() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void onAssistantGestureCompletion(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeFloat(f);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void onAssistantProgress(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeFloat(f);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void onOverviewShown(boolean z) {
                int i;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void onQuickSwitchToNewTask(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void onStatusBarMotionEvent(MotionEvent motionEvent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(motionEvent, 0);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void setNavBarButtonAlpha(float f, boolean z) {
                int i;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeFloat(f);
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void setSplitScreenMinimized(boolean z) {
                int i;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    if (z) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void startAssistant(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeTypedObject(bundle, 0);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void startScreenPinning(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy
            public void stopScreenPinning() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ISystemUiProxy.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ISystemUiProxy.DESCRIPTOR);
        }

        public static ISystemUiProxy asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ISystemUiProxy.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISystemUiProxy)) {
                return (ISystemUiProxy) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(ISystemUiProxy.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 2) {
                    if (i != 10) {
                        if (i != 26) {
                            boolean z = false;
                            if (i != 7) {
                                if (i != 8) {
                                    if (i != 29) {
                                        if (i != 30) {
                                            if (i != 45) {
                                                if (i != 46) {
                                                    switch (i) {
                                                        case 13:
                                                            onAssistantProgress(parcel.readFloat());
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 14:
                                                            startAssistant((Bundle) parcel.readTypedObject(Bundle.CREATOR));
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 15:
                                                            Bundle monitorGestureInput = monitorGestureInput(parcel.readString(), parcel.readInt());
                                                            parcel2.writeNoException();
                                                            parcel2.writeTypedObject(monitorGestureInput, 1);
                                                            break;
                                                        case 16:
                                                            notifyAccessibilityButtonClicked(parcel.readInt());
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 17:
                                                            notifyAccessibilityButtonLongClicked();
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 18:
                                                            stopScreenPinning();
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 19:
                                                            onAssistantGestureCompletion(parcel.readFloat());
                                                            parcel2.writeNoException();
                                                            break;
                                                        case 20:
                                                            float readFloat = parcel.readFloat();
                                                            if (parcel.readInt() != 0) {
                                                                z = true;
                                                            }
                                                            setNavBarButtonAlpha(readFloat, z);
                                                            parcel2.writeNoException();
                                                            break;
                                                        default:
                                                            switch (i) {
                                                                case 22:
                                                                    handleImageAsScreenshot((Bitmap) parcel.readTypedObject(Bitmap.CREATOR), (Rect) parcel.readTypedObject(Rect.CREATOR), (Insets) parcel.readTypedObject(Insets.CREATOR), parcel.readInt());
                                                                    parcel2.writeNoException();
                                                                    break;
                                                                case 23:
                                                                    if (parcel.readInt() != 0) {
                                                                        z = true;
                                                                    }
                                                                    setSplitScreenMinimized(z);
                                                                    parcel2.writeNoException();
                                                                    break;
                                                                case 24:
                                                                    notifySwipeToHomeFinished();
                                                                    parcel2.writeNoException();
                                                                    break;
                                                                default:
                                                                    return super.onTransact(i, parcel, parcel2, i2);
                                                            }
                                                    }
                                                } else {
                                                    boolean isTaskbarShown = isTaskbarShown();
                                                    parcel2.writeNoException();
                                                    parcel2.writeInt(isTaskbarShown ? 1 : 0);
                                                }
                                            } else {
                                                injectKey(parcel.readInt());
                                                parcel2.writeNoException();
                                            }
                                        } else {
                                            expandNotificationPanel();
                                            parcel2.writeNoException();
                                        }
                                    } else {
                                        handleImageBundleAsScreenshot((Bundle) parcel.readTypedObject(Bundle.CREATOR), (Rect) parcel.readTypedObject(Rect.CREATOR), (Insets) parcel.readTypedObject(Insets.CREATOR), (Task.TaskKey) parcel.readTypedObject(Task.TaskKey.CREATOR));
                                        parcel2.writeNoException();
                                    }
                                } else {
                                    Rect nonMinimizedSplitScreenSecondaryBounds = getNonMinimizedSplitScreenSecondaryBounds();
                                    parcel2.writeNoException();
                                    parcel2.writeTypedObject(nonMinimizedSplitScreenSecondaryBounds, 1);
                                }
                            } else {
                                if (parcel.readInt() != 0) {
                                    z = true;
                                }
                                onOverviewShown(z);
                                parcel2.writeNoException();
                            }
                        } else {
                            onQuickSwitchToNewTask(parcel.readInt());
                            parcel2.writeNoException();
                        }
                    } else {
                        onStatusBarMotionEvent((MotionEvent) parcel.readTypedObject(MotionEvent.CREATOR));
                        parcel2.writeNoException();
                    }
                } else {
                    startScreenPinning(parcel.readInt());
                    parcel2.writeNoException();
                }
                return true;
            }
            parcel2.writeString(ISystemUiProxy.DESCRIPTOR);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
