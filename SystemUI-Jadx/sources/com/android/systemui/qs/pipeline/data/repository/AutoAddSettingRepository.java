package com.android.systemui.qs.pipeline.data.repository;

import com.android.systemui.util.settings.SecureSettings;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AutoAddSettingRepository implements AutoAddRepository {
    public final CoroutineDispatcher bgDispatcher;
    public final SecureSettings secureSettings;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public AutoAddSettingRepository(SecureSettings secureSettings, CoroutineDispatcher coroutineDispatcher) {
        this.secureSettings = secureSettings;
        this.bgDispatcher = coroutineDispatcher;
    }
}
