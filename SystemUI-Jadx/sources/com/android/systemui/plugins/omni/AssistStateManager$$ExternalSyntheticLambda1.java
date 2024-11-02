package com.android.systemui.plugins.omni;

import android.app.appsearch.AppSearchResult;
import android.app.appsearch.GlobalSearchSession;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class AssistStateManager$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AssistStateManager f$0;
    public final /* synthetic */ Consumer f$1;

    public /* synthetic */ AssistStateManager$$ExternalSyntheticLambda1(AssistStateManager assistStateManager, Consumer consumer, int i) {
        this.$r8$classId = i;
        this.f$0 = assistStateManager;
        this.f$1 = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                AssistStateManager.$r8$lambda$yZKM7VlqkA7_dyZd2XuRyVElBLs(this.f$0, this.f$1, (GlobalSearchSession) obj);
                return;
            default:
                AssistStateManager.$r8$lambda$AKOqKJSAJh6fQv6GlSYa4LUKf4o(this.f$0, this.f$1, (AppSearchResult) obj);
                return;
        }
    }
}
