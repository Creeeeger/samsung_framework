package com.android.wm.shell.draganddrop;

import android.content.res.Configuration;
import com.android.wm.shell.draganddrop.DragAndDropController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DragAndDropController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DragAndDropController f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ DragAndDropController$$ExternalSyntheticLambda1(DragAndDropController dragAndDropController, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = dragAndDropController;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DragAndDropController dragAndDropController = this.f$0;
                DragAndDropController.PerDisplay perDisplay = (DragAndDropController.PerDisplay) this.f$1;
                dragAndDropController.getClass();
                if (perDisplay.activeDragCount == 0) {
                    DragAndDropController.setDropTargetWindowVisibility(perDisplay, 4);
                    return;
                }
                return;
            case 1:
                DragAndDropController dragAndDropController2 = this.f$0;
                DragAndDropController.PerDisplay perDisplay2 = (DragAndDropController.PerDisplay) this.f$1;
                dragAndDropController2.getClass();
                if (perDisplay2.activeDragCount == 0) {
                    DragAndDropController.setDropTargetWindowVisibility(perDisplay2, 4);
                    return;
                }
                return;
            case 2:
                DragAndDropController dragAndDropController3 = this.f$0;
                DragAndDropController.PerDisplay perDisplay3 = (DragAndDropController.PerDisplay) this.f$1;
                dragAndDropController3.getClass();
                DragAndDropController.setDropTargetWindowVisibility(perDisplay3, 4);
                return;
            default:
                DragAndDropController dragAndDropController4 = this.f$0;
                Configuration configuration = (Configuration) this.f$1;
                for (int i = 0; i < dragAndDropController4.mDisplayDropTargets.size(); i++) {
                    ((DropTargetLayout) ((DragAndDropController.PerDisplay) dragAndDropController4.mDisplayDropTargets.get(i)).dragLayout).onConfigChanged(configuration);
                }
                return;
        }
    }
}
