package com.android.systemui.util.settings;

import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import kotlinx.coroutines.flow.Flow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SettingsProxyExt {
    public static final SettingsProxyExt INSTANCE = new SettingsProxyExt();

    private SettingsProxyExt() {
    }

    public static Flow observerFlow(SettingsProxy settingsProxy, int i, String... strArr) {
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        SettingsProxyExt$observerFlow$1 settingsProxyExt$observerFlow$1 = new SettingsProxyExt$observerFlow$1(strArr, settingsProxy, i, null);
        conflatedCallbackFlow.getClass();
        return ConflatedCallbackFlow.conflatedCallbackFlow(settingsProxyExt$observerFlow$1);
    }
}
