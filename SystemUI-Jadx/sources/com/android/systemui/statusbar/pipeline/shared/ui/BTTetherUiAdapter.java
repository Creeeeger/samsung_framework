package com.android.systemui.statusbar.pipeline.shared.ui;

import android.view.ViewGroup;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepository;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BTTetherUiAdapter {
    public final ConnectivityRepository connectivityRepository;
    public final StatusBarIconController iconController;

    public BTTetherUiAdapter(StatusBarIconController statusBarIconController, ConnectivityRepository connectivityRepository) {
        this.iconController = statusBarIconController;
        this.connectivityRepository = connectivityRepository;
    }

    public final void bindGroup(ViewGroup viewGroup) {
        RepeatWhenAttachedKt.repeatWhenAttached(viewGroup, EmptyCoroutineContext.INSTANCE, new BTTetherUiAdapter$bindGroup$1(this, null));
    }
}
