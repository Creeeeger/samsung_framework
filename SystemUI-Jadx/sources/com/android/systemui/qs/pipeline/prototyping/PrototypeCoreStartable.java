package com.android.systemui.qs.pipeline.prototyping;

import com.android.systemui.CoreStartable;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.qs.pipeline.data.repository.AutoAddRepository;
import com.android.systemui.qs.pipeline.data.repository.TileSpecRepository;
import com.android.systemui.statusbar.commandline.CommandRegistry;
import com.android.systemui.user.data.repository.UserRepository;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PrototypeCoreStartable implements CoreStartable {
    public final AutoAddRepository autoAddRepository;
    public final FeatureFlags featureFlags;
    public final CoroutineScope scope;
    public final TileSpecRepository tileSpecRepository;
    public final UserRepository userRepository;

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

    public PrototypeCoreStartable(TileSpecRepository tileSpecRepository, AutoAddRepository autoAddRepository, UserRepository userRepository, FeatureFlags featureFlags, CoroutineScope coroutineScope, CommandRegistry commandRegistry) {
        this.tileSpecRepository = tileSpecRepository;
        this.autoAddRepository = autoAddRepository;
        this.userRepository = userRepository;
        this.featureFlags = featureFlags;
        this.scope = coroutineScope;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Flags flags = Flags.INSTANCE;
        this.featureFlags.getClass();
    }
}
