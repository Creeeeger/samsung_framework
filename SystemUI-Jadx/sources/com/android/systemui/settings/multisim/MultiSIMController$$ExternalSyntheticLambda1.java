package com.android.systemui.settings.multisim;

import android.util.Log;
import com.android.systemui.settings.multisim.MultiSIMController;
import com.android.systemui.settings.multisim.MultiSIMPreferredSlotView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultiSIMController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MultiSIMController f$0;

    public /* synthetic */ MultiSIMController$$ExternalSyntheticLambda1(MultiSIMController multiSIMController, int i) {
        this.$r8$classId = i;
        this.f$0 = multiSIMController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        MultiSIMPreferredSlotView.PrefferedSlotPopupWindow prefferedSlotPopupWindow;
        int i2 = 0;
        switch (this.$r8$classId) {
            case 0:
                MultiSIMController multiSIMController = this.f$0;
                if (multiSIMController.mData.equals(multiSIMController.mDataNotified)) {
                    return;
                }
                while (true) {
                    ArrayList arrayList = multiSIMController.mDataCallbacks;
                    if (i2 < arrayList.size()) {
                        MultiSIMController.MultiSIMDataChangedCallback multiSIMDataChangedCallback = (MultiSIMController.MultiSIMDataChangedCallback) ((WeakReference) arrayList.get(i2)).get();
                        if (multiSIMDataChangedCallback != null) {
                            MultiSIMData multiSIMData = new MultiSIMData();
                            multiSIMData.copyFrom(multiSIMController.mData);
                            multiSIMController.reverseSlotIfNeed(multiSIMData);
                            multiSIMDataChangedCallback.onDataChanged(multiSIMData);
                        }
                        i2++;
                    } else {
                        multiSIMController.mDataNotified.copyFrom(multiSIMController.mData);
                        return;
                    }
                }
            case 1:
                MultiSIMController multiSIMController2 = this.f$0;
                int i3 = 0;
                while (true) {
                    ArrayList arrayList2 = multiSIMController2.mVisCallbacks;
                    if (i3 < arrayList2.size()) {
                        MultiSIMController.MultiSIMVisibilityChangedCallback multiSIMVisibilityChangedCallback = (MultiSIMController.MultiSIMVisibilityChangedCallback) ((WeakReference) arrayList2.get(i3)).get();
                        if (multiSIMVisibilityChangedCallback != null) {
                            boolean z = multiSIMController2.mUIVisible;
                            MultiSIMPreferredSlotView multiSIMPreferredSlotView = (MultiSIMPreferredSlotView) multiSIMVisibilityChangedCallback;
                            if (z) {
                                i = 0;
                            } else {
                                i = 8;
                            }
                            multiSIMPreferredSlotView.setVisibility(i);
                            multiSIMPreferredSlotView.updateButtonList();
                            if (!z && (prefferedSlotPopupWindow = multiSIMPreferredSlotView.mPopupWindow) != null) {
                                prefferedSlotPopupWindow.dismiss();
                                multiSIMPreferredSlotView.mPopupWindow = null;
                            }
                        }
                        i3++;
                    } else {
                        return;
                    }
                }
                break;
            default:
                MultiSIMController multiSIMController3 = this.f$0;
                multiSIMController3.getClass();
                Log.d("MultiSIMController", "updateCurrentDefaultSlot list");
                ArrayList arrayList3 = multiSIMController3.mDefaultIdUpdateList;
                ArrayList arrayList4 = new ArrayList(arrayList3);
                arrayList3.clear();
                Iterator it = arrayList4.iterator();
                while (it.hasNext()) {
                    multiSIMController3.updateCurrentDefaultSlot((MultiSIMController.ButtonType) it.next());
                }
                return;
        }
    }
}
