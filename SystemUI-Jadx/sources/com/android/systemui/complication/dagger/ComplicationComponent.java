package com.android.systemui.complication.dagger;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import com.android.systemui.complication.Complication;
import com.android.systemui.complication.ComplicationHostViewController;
import com.android.systemui.complication.ComplicationLayoutEngine;
import com.android.systemui.touch.TouchInsetManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ComplicationComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Factory {
        ComplicationComponent create(LifecycleOwner lifecycleOwner, Complication.Host host, ViewModelStore viewModelStore, TouchInsetManager touchInsetManager);
    }

    ComplicationHostViewController getComplicationHostViewController();

    ComplicationLayoutEngine getVisibilityController();
}
