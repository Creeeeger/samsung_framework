package com.android.systemui.keyguard.data.quickaffordance;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.util.settings.SecureSettings;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardQuickAffordanceLegacySettingSyncer {
    public static final List BINDINGS;
    public final CoroutineDispatcher backgroundDispatcher;
    public final CoroutineScope scope;
    public final SecureSettings secureSettings;
    public final KeyguardQuickAffordanceLocalUserSelectionManager selectionsManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Binding {
        public final String affordanceId;
        public final String settingsKey;
        public final String slotId;

        public Binding(String str, String str2, String str3) {
            this.settingsKey = str;
            this.slotId = str2;
            this.affordanceId = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Binding)) {
                return false;
            }
            Binding binding = (Binding) obj;
            if (Intrinsics.areEqual(this.settingsKey, binding.settingsKey) && Intrinsics.areEqual(this.slotId, binding.slotId) && Intrinsics.areEqual(this.affordanceId, binding.affordanceId)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.affordanceId.hashCode() + AppInfo$$ExternalSyntheticOutline0.m(this.slotId, this.settingsKey.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Binding(settingsKey=");
            sb.append(this.settingsKey);
            sb.append(", slotId=");
            sb.append(this.slotId);
            sb.append(", affordanceId=");
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, this.affordanceId, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        BINDINGS = CollectionsKt__CollectionsKt.listOf(new Binding("lockscreen_show_controls", "bottom_start", BcSmartspaceDataPlugin.UI_SURFACE_HOME_SCREEN), new Binding("lockscreen_show_wallet", "bottom_end", "wallet"), new Binding("lock_screen_show_qr_code_scanner", "bottom_end", "qr_code_scanner"));
    }

    public KeyguardQuickAffordanceLegacySettingSyncer(CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, SecureSettings secureSettings, KeyguardQuickAffordanceLocalUserSelectionManager keyguardQuickAffordanceLocalUserSelectionManager) {
        this.scope = coroutineScope;
        this.backgroundDispatcher = coroutineDispatcher;
        this.secureSettings = secureSettings;
        this.selectionsManager = keyguardQuickAffordanceLocalUserSelectionManager;
    }

    public static void startSyncing$default(KeyguardQuickAffordanceLegacySettingSyncer keyguardQuickAffordanceLegacySettingSyncer) {
        BuildersKt.launch$default(keyguardQuickAffordanceLegacySettingSyncer.scope, null, null, new KeyguardQuickAffordanceLegacySettingSyncer$startSyncing$1(BINDINGS, keyguardQuickAffordanceLegacySettingSyncer, null), 3);
    }
}
