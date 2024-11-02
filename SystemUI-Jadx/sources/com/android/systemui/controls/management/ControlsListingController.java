package com.android.systemui.controls.management;

import com.android.systemui.statusbar.policy.CallbackController;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ControlsListingController extends CallbackController {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ControlsListingCallback {
        void onServicesUpdated(List list);
    }
}
