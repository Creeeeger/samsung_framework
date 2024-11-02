package com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel;

import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface WifiViewModelCommon {
    StateFlow getActivityIcon();

    Flow getDeXWifiIcon();

    StateFlow getUpdateDeXWifiIconModel();

    StateFlow getWifiIcon();
}
