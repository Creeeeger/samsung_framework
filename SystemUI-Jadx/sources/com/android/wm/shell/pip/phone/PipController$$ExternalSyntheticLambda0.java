package com.android.wm.shell.pip.phone;

import android.window.WindowContainerTransaction;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.phone.PipController;
import com.android.wm.shell.transition.Transitions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ PipController$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        WindowContainerTransaction windowContainerTransaction;
        switch (this.$r8$classId) {
            case 0:
                PipController pipController = (PipController) this.f$0;
                DisplayLayout displayLayout = (DisplayLayout) this.f$1;
                pipController.getClass();
                boolean z2 = Transitions.ENABLE_SHELL_TRANSITIONS;
                PipDisplayLayoutState pipDisplayLayoutState = pipController.mPipDisplayLayoutState;
                if (z2 && pipDisplayLayoutState.getDisplayLayout().mRotation != displayLayout.mRotation) {
                    z = true;
                } else {
                    z = false;
                }
                pipDisplayLayoutState.mDisplayLayout.set(displayLayout);
                if (z) {
                    windowContainerTransaction = new WindowContainerTransaction();
                } else {
                    windowContainerTransaction = null;
                }
                pipController.updateMovementBounds(null, z, false, false, windowContainerTransaction);
                if (windowContainerTransaction != null) {
                    pipController.mPipTaskOrganizer.applyFinishBoundsResize(1, windowContainerTransaction, false);
                    return;
                }
                return;
            case 1:
                PipController.PipImpl pipImpl = (PipController.PipImpl) this.f$0;
                Consumer consumer = (Consumer) this.f$1;
                PipBoundsState pipBoundsState = PipController.this.mPipBoundsState;
                ArrayList arrayList = (ArrayList) pipBoundsState.mOnPipExclusionBoundsChangeCallbacks;
                arrayList.add(consumer);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(pipBoundsState.getBounds());
                }
                return;
            case 2:
                PipController.PipImpl pipImpl2 = (PipController.PipImpl) this.f$0;
                Consumer consumer2 = (Consumer) this.f$1;
                PipController pipController2 = PipController.this;
                pipController2.mOnIsInPipStateChangedListener = consumer2;
                if (consumer2 != null) {
                    consumer2.accept(Boolean.valueOf(pipController2.mPipTransitionState.isInPip()));
                    return;
                }
                return;
            default:
                ((ArrayList) PipController.this.mPipBoundsState.mOnPipExclusionBoundsChangeCallbacks).remove((Consumer) this.f$1);
                return;
        }
    }
}
