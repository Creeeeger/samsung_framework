package com.android.systemui.plugins.omni;

import android.app.appsearch.GlobalSearchSession;
import android.content.Intent;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class AssistStateManager$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AssistStateManager f$0;

    public /* synthetic */ AssistStateManager$$ExternalSyntheticLambda0(AssistStateManager assistStateManager, int i) {
        this.$r8$classId = i;
        this.f$0 = assistStateManager;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                AssistStateManager.$r8$lambda$nhD7AMvxZ_y8zgsGHlZZYTM2qjs(this.f$0, (Intent) obj);
                return;
            default:
                AssistStateManager.$r8$lambda$WbbSkYXr1WzVSXCz07fvbw6A3Yo(this.f$0, (GlobalSearchSession) obj);
                return;
        }
    }
}
