package com.android.systemui.assist;

import android.content.Context;
import com.android.internal.app.AssistUtils;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AssistModule_ProvideAssistUtilsFactory implements Provider {
    public final Provider contextProvider;

    public AssistModule_ProvideAssistUtilsFactory(Provider provider) {
        this.contextProvider = provider;
    }

    public static AssistUtils provideAssistUtils(Context context) {
        return new AssistUtils(context);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new AssistUtils((Context) this.contextProvider.get());
    }
}
