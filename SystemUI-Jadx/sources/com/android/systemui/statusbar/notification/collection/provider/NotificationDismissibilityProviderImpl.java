package com.android.systemui.statusbar.notification.collection.provider;

import android.util.IndentingPrintWriter;
import com.android.internal.config.sysui.SystemUiSystemPropertiesFlags;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.util.DumpUtilsKt;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationDismissibilityProviderImpl implements NotificationDismissibilityProvider, Dumpable {
    public volatile Set nonDismissableEntryKeys;
    public final NotifPipelineFlags notifPipelineFlags;

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

    public NotificationDismissibilityProviderImpl(NotifPipelineFlags notifPipelineFlags, DumpManager dumpManager) {
        this.notifPipelineFlags = notifPipelineFlags;
        dumpManager.registerNormalDumpable("NotificationDismissibilityProvider", this);
        this.nonDismissableEntryKeys = EmptySet.INSTANCE;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.println("non-dismissible entries: " + this.nonDismissableEntryKeys.size());
        asIndenting.increaseIndent();
        try {
            Iterator it = this.nonDismissableEntryKeys.iterator();
            while (it.hasNext()) {
                asIndenting.println((String) it.next());
            }
        } finally {
            asIndenting.decreaseIndent();
        }
    }

    public final boolean isDismissable(NotificationEntry notificationEntry) {
        if (this.notifPipelineFlags.sysPropFlags.isEnabled(SystemUiSystemPropertiesFlags.NotificationFlags.ALLOW_DISMISS_ONGOING)) {
            if (!this.nonDismissableEntryKeys.contains(notificationEntry.mKey)) {
                return true;
            }
            return false;
        }
        return notificationEntry.legacyIsDismissableRecursive();
    }

    public static /* synthetic */ void getNonDismissableEntryKeys$annotations() {
    }
}
