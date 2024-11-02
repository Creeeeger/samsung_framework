package com.android.wm.shell.splitscreen;

import com.android.wm.shell.draganddrop.DragAndDropController;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenController$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SplitScreenController$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SplitScreenController splitScreenController = (SplitScreenController) this.f$0;
                splitScreenController.getClass();
                ((DragAndDropController) obj).mSplitScreen = splitScreenController;
                return;
            case 1:
                SplitScreenController.ISplitScreenImpl.AnonymousClass1 anonymousClass1 = ((SplitScreenController.ISplitScreenImpl) this.f$0).mSplitScreenListener;
                StageCoordinator stageCoordinator = ((SplitScreenController) obj).mStageCoordinator;
                ArrayList arrayList = (ArrayList) stageCoordinator.mListeners;
                if (!arrayList.contains(anonymousClass1)) {
                    arrayList.add(anonymousClass1);
                    stageCoordinator.sendStatusToListener(anonymousClass1);
                    return;
                }
                return;
            case 2:
                ((ArrayList) ((SplitScreenController) obj).mStageCoordinator.mListeners).remove(((SplitScreenController.ISplitScreenImpl) this.f$0).mSplitScreenListener);
                return;
            default:
                ((SplitScreenController.ISplitScreenImpl) this.f$0).mListener.unregister();
                return;
        }
    }
}
