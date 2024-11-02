package android.window;

import android.view.SurfaceControl;
import android.window.IWindowContainerTransactionCallback;

/* loaded from: classes4.dex */
public abstract class WindowContainerTransactionCallback {
    final IWindowContainerTransactionCallback mInterface = new IWindowContainerTransactionCallback.Stub() { // from class: android.window.WindowContainerTransactionCallback.1
        AnonymousClass1() {
        }

        @Override // android.window.IWindowContainerTransactionCallback
        public void onTransactionReady(int id, SurfaceControl.Transaction t) {
            WindowContainerTransactionCallback.this.onTransactionReady(id, t);
        }
    };

    public abstract void onTransactionReady(int i, SurfaceControl.Transaction transaction);

    /* renamed from: android.window.WindowContainerTransactionCallback$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends IWindowContainerTransactionCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.window.IWindowContainerTransactionCallback
        public void onTransactionReady(int id, SurfaceControl.Transaction t) {
            WindowContainerTransactionCallback.this.onTransactionReady(id, t);
        }
    }
}
