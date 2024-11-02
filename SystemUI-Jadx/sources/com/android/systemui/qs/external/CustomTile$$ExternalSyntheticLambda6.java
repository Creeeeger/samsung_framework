package com.android.systemui.qs.external;

import com.android.systemui.qs.external.CustomTile;
import com.android.systemui.util.SystemUIAnalytics;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CustomTile$$ExternalSyntheticLambda6 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, ((CustomTile.SubscreenSALog) obj).getLogId());
    }
}
