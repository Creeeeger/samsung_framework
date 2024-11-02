package com.samsung.android.multiwindow;

import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import com.samsung.android.multiwindow.DragAndDropHelper;
import com.samsung.android.multiwindow.IDragAndDropClient;
import com.samsung.android.multiwindow.IDragAndDropControllerProxy;
import com.samsung.android.rune.CoreRune;

/* loaded from: classes5.dex */
public class DragAndDropHelper {
    private static final boolean DEBUG = CoreRune.SAFE_DEBUG;
    private static final String TAG = "DragAndDropHelper";
    private int mDisplayId;
    private final Rect mHiddenDropTargetArea;
    private final boolean mInitialDropTargetVisible;
    private IDragAndDropControllerProxy mServerProxy;
    private IDragAndDropClient mStub;

    /* synthetic */ DragAndDropHelper(boolean z, Rect rect, DragAndDropHelperIA dragAndDropHelperIA) {
        this(z, rect);
    }

    /* renamed from: com.samsung.android.multiwindow.DragAndDropHelper$1 */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 extends IDragAndDropClient.Stub {
        AnonymousClass1() {
        }

        @Override // com.samsung.android.multiwindow.IDragAndDropClient
        public void onConnected(IBinder serverProxy, int displayId) throws RemoteException {
            if (DragAndDropHelper.DEBUG) {
                Slog.i(DragAndDropHelper.TAG, "onConnected");
            }
            serverProxy.linkToDeath(new IBinder.DeathRecipient() { // from class: com.samsung.android.multiwindow.DragAndDropHelper$1$$ExternalSyntheticLambda0
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    DragAndDropHelper.AnonymousClass1.this.lambda$onConnected$0();
                }
            }, 0);
            DragAndDropHelper.this.mServerProxy = IDragAndDropControllerProxy.Stub.asInterface(serverProxy);
            DragAndDropHelper.this.mDisplayId = displayId;
        }

        public /* synthetic */ void lambda$onConnected$0() {
            if (DragAndDropHelper.DEBUG) {
                Slog.d(DragAndDropHelper.TAG, "binderDied");
            }
            DragAndDropHelper.this.dismiss();
        }

        @Override // com.samsung.android.multiwindow.IDragAndDropClient
        public void onDisconnected() {
            if (DragAndDropHelper.DEBUG) {
                Slog.i(DragAndDropHelper.TAG, "onDisconnected");
            }
            DragAndDropHelper.this.dismiss();
        }

        @Override // com.samsung.android.multiwindow.IDragAndDropClient
        public boolean getInitialDropTargetVisible() {
            return DragAndDropHelper.this.mInitialDropTargetVisible;
        }

        @Override // com.samsung.android.multiwindow.IDragAndDropClient
        public Rect getHiddenDropTargetArea() {
            return DragAndDropHelper.this.mHiddenDropTargetArea;
        }
    }

    private DragAndDropHelper(boolean shellDropTargetVisibility, Rect hiddenDropTargetArea) {
        Rect rect = new Rect();
        this.mHiddenDropTargetArea = rect;
        this.mStub = new AnonymousClass1();
        this.mInitialDropTargetVisible = shellDropTargetVisibility;
        rect.set(hiddenDropTargetArea);
    }

    public void show() {
        if (this.mServerProxy == null) {
            Slog.w(TAG, "Abort to show.");
            return;
        }
        if (DEBUG) {
            Slog.d(TAG, "Requested to show");
        }
        try {
            this.mServerProxy.show(this.mDisplayId);
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to show. " + e.getMessage());
        }
    }

    public void dismiss() {
        this.mServerProxy = null;
    }

    public IBinder getBinder() {
        return this.mStub.asBinder();
    }

    /* loaded from: classes5.dex */
    public static class Builder {
        private boolean mInitialDropTargetVisible = true;
        private Rect mHiddenDropTargetArea = new Rect();

        public Builder setInitialDropTargetVisible(boolean visible) {
            this.mInitialDropTargetVisible = visible;
            return this;
        }

        public Builder setHiddenDropTargetArea(Rect hiddenDropTargetArea) {
            this.mHiddenDropTargetArea.set(hiddenDropTargetArea);
            return this;
        }

        public DragAndDropHelper build() {
            return new DragAndDropHelper(this.mInitialDropTargetVisible, this.mHiddenDropTargetArea);
        }
    }
}
