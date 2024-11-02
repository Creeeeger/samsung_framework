package com.android.systemui.statusbar.notification.collection.provider;

import android.os.Build;
import android.util.Log;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.commandline.Command;
import com.android.systemui.statusbar.commandline.CommandRegistry;
import com.android.systemui.statusbar.notification.collection.coordinator.DebugModeCoordinator$attach$1;
import com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider;
import com.android.systemui.util.Assert;
import com.android.systemui.util.ListenerSet;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DebugModeFilterProvider implements Dumpable {
    public final CommandRegistry commandRegistry;
    public List allowedPackages = EmptyList.INSTANCE;
    public final ListenerSet listeners = new ListenerSet();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotifFilterCommand implements Command {
        public NotifFilterCommand() {
        }

        public static void invalidCommand(PrintWriter printWriter, String str) {
            printWriter.println("Error: " + str);
            printWriter.println();
            printWriter.println("Usage: adb shell cmd statusbar notif-filter <command>");
            printWriter.println("Available commands:");
            printWriter.println("  reset");
            printWriter.println("     Restore the default system behavior.");
            printWriter.println("  allowed-pkgs <package> ...");
            printWriter.println("     Hide all notification except from packages listed here.");
            printWriter.println("     Providing no packages is treated as a reset.");
        }

        @Override // com.android.systemui.statusbar.commandline.Command
        public final void execute(PrintWriter printWriter, List list) {
            String str = (String) CollectionsKt___CollectionsKt.firstOrNull(list);
            boolean areEqual = Intrinsics.areEqual(str, UniversalCredentialManager.RESET_APPLET_FORM_FACTOR);
            DebugModeFilterProvider debugModeFilterProvider = DebugModeFilterProvider.this;
            if (areEqual) {
                if (list.size() > 1) {
                    invalidCommand(printWriter, "Unexpected arguments for 'reset' command");
                    return;
                }
                debugModeFilterProvider.allowedPackages = EmptyList.INSTANCE;
            } else if (Intrinsics.areEqual(str, "allowed-pkgs")) {
                debugModeFilterProvider.allowedPackages = CollectionsKt___CollectionsKt.drop(list, 1);
            } else {
                if (str == null) {
                    invalidCommand(printWriter, "Missing command");
                    return;
                }
                invalidCommand(printWriter, "Unknown command: " + CollectionsKt___CollectionsKt.firstOrNull(list));
                return;
            }
            Log.d("DebugModeFilterProvider", "Updated allowedPackages: " + debugModeFilterProvider.allowedPackages);
            if (debugModeFilterProvider.allowedPackages.isEmpty()) {
                printWriter.print("Resetting allowedPackages ... ");
            } else {
                printWriter.print("Updating allowedPackages: " + debugModeFilterProvider.allowedPackages + " ... ");
            }
            Iterator it = debugModeFilterProvider.listeners.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            printWriter.println("DONE");
        }
    }

    static {
        new Companion(null);
    }

    public DebugModeFilterProvider(CommandRegistry commandRegistry, DumpManager dumpManager) {
        this.commandRegistry = commandRegistry;
        dumpManager.registerDumpable(this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("initialized: ", !this.listeners.isEmpty(), printWriter);
        SideFpsController$$ExternalSyntheticOutline0.m("allowedPackages: ", this.allowedPackages.size(), printWriter);
        int i = 0;
        for (Object obj : this.allowedPackages) {
            int i2 = i + 1;
            if (i >= 0) {
                printWriter.println("  [" + i + "]: " + ((String) obj));
                i = i2;
            } else {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
    }

    public final void registerInvalidationListener(DebugModeCoordinator$attach$1 debugModeCoordinator$attach$1) {
        Assert.isMainThread();
        if (!Build.isDebuggable()) {
            return;
        }
        ListenerSet listenerSet = this.listeners;
        boolean isEmpty = listenerSet.isEmpty();
        listenerSet.addIfAbsent(debugModeCoordinator$attach$1);
        if (isEmpty) {
            this.commandRegistry.registerCommand("notif-filter", new Function0() { // from class: com.android.systemui.statusbar.notification.collection.provider.DebugModeFilterProvider$registerInvalidationListener$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return new DebugModeFilterProvider.NotifFilterCommand();
                }
            });
            Log.d("DebugModeFilterProvider", "Registered notif-filter command");
        }
    }
}
