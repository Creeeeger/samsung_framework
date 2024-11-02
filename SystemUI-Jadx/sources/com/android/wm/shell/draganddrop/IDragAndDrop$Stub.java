package com.android.wm.shell.draganddrop;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.wm.shell.common.ExecutorUtils;
import com.android.wm.shell.draganddrop.DragAndDropController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class IDragAndDrop$Stub extends Binder implements IInterface {
    public IDragAndDrop$Stub() {
        attachInterface(this, "com.android.wm.shell.draganddrop.IDragAndDrop");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.android.wm.shell.draganddrop.IDragAndDrop");
        }
        if (i != 1598968902) {
            if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            final boolean[] zArr = new boolean[1];
            ExecutorUtils.executeRemoteCallWithTaskPermission(((DragAndDropController.IDragAndDropImpl) this).mController, "isReadyToHandleDrag", new Consumer() { // from class: com.android.wm.shell.draganddrop.DragAndDropController$IDragAndDropImpl$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    boolean z;
                    boolean[] zArr2 = zArr;
                    DragAndDropController dragAndDropController = (DragAndDropController) obj;
                    int i3 = 0;
                    while (true) {
                        if (i3 < dragAndDropController.mDisplayDropTargets.size()) {
                            if (((DragAndDropController.PerDisplay) dragAndDropController.mDisplayDropTargets.valueAt(i3)).mHasDrawn) {
                                z = true;
                                break;
                            }
                            i3++;
                        } else {
                            z = false;
                            break;
                        }
                    }
                    zArr2[0] = z;
                }
            }, true);
            boolean z = zArr[0];
            parcel2.writeNoException();
            parcel2.writeBoolean(z);
            return true;
        }
        parcel2.writeString("com.android.wm.shell.draganddrop.IDragAndDrop");
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
