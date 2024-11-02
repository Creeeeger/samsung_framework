package com.android.wm.shell.controlpanel.activity;

import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.android.wm.shell.controlpanel.activity.FlexPanelActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FlexPanelActivity$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FlexPanelActivity$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                InputMethodManager inputMethodManager = (InputMethodManager) this.f$0;
                int i = FlexPanelActivity.mEditPanelItemSize;
                inputMethodManager.semForceHideSoftInput();
                Log.i("FlexPanelActivity", "Hide the Ime when unfold device and keyboard is open.");
                return;
            default:
                FlexPanelActivity flexPanelActivity = ((FlexPanelActivity.AnonymousClass3) this.f$0).this$0;
                int i2 = FlexPanelActivity.mEditPanelItemSize;
                flexPanelActivity.closeOperation();
                return;
        }
    }
}
