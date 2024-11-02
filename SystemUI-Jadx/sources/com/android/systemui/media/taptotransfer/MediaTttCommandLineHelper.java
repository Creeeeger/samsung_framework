package com.android.systemui.media.taptotransfer;

import android.app.StatusBarManager;
import android.content.Context;
import android.media.MediaRoute2Info;
import android.util.Log;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.systemui.CoreStartable;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.android.systemui.media.taptotransfer.MediaTttCommandLineHelper;
import com.android.systemui.media.taptotransfer.receiver.ChipStateReceiver;
import com.android.systemui.media.taptotransfer.sender.ChipStateSender;
import com.android.systemui.statusbar.commandline.Command;
import com.android.systemui.statusbar.commandline.CommandRegistry;
import java.io.PrintWriter;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaTttCommandLineHelper implements CoreStartable {
    public final CommandRegistry commandRegistry;
    public final Context context;
    public final Executor mainExecutor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ReceiverCommand implements Command {
        public ReceiverCommand() {
        }

        @Override // com.android.systemui.statusbar.commandline.Command
        public final void execute(PrintWriter printWriter, List list) {
            String str;
            if (list.isEmpty()) {
                printWriter.println("Usage: adb shell cmd statusbar media-ttt-chip-receiver <chipState> useAppIcon=[true|false] <id>");
                return;
            }
            boolean z = false;
            String str2 = (String) list.get(0);
            try {
                ChipStateReceiver.Companion.getClass();
                Integer valueOf = Integer.valueOf(ChipStateReceiver.valueOf(str2).getStateInt());
                StatusBarManager statusBarManager = (StatusBarManager) MediaTttCommandLineHelper.this.context.getSystemService("statusbar");
                if (list.size() >= 3) {
                    str = (String) list.get(2);
                } else {
                    str = "id";
                }
                MediaRoute2Info.Builder addFeature = new MediaRoute2Info.Builder(str, "Test Name").addFeature("feature");
                if (list.size() < 2 || !Intrinsics.areEqual(list.get(1), "useAppIcon=false")) {
                    z = true;
                }
                if (z) {
                    addFeature.setClientPackageName("com.android.systemui");
                }
                statusBarManager.updateMediaTapToTransferReceiverDisplay(valueOf.intValue(), addFeature.build(), null, null);
            } catch (IllegalArgumentException unused) {
                FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("Invalid command name ", str2, printWriter);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SenderCommand implements Command {
        public SenderCommand() {
        }

        @Override // com.android.systemui.statusbar.commandline.Command
        public final void execute(PrintWriter printWriter, List list) {
            Executor executor;
            Runnable runnable;
            if (list.size() < 2) {
                printWriter.println("Usage: adb shell cmd statusbar media-ttt-chip-sender <deviceName> <chipState> useAppIcon=[true|false] id=<id> showUndo=[true|false]");
                printWriter.println("Note: useAppIcon, id, and showUndo are optional additional commands.");
                return;
            }
            boolean z = false;
            SenderArgs senderArgs = new SenderArgs((String) list.get(0), (String) list.get(1), null, false, false, 28, null);
            if (list.size() != 2) {
                for (String str : list.subList(2, list.size())) {
                    if (Intrinsics.areEqual(str, "useAppIcon=false")) {
                        senderArgs.useAppIcon = false;
                    } else if (Intrinsics.areEqual(str, "showUndo=false")) {
                        senderArgs.showUndo = false;
                    } else if (Intrinsics.areEqual(str.substring(0, 3), "id=")) {
                        senderArgs.id = str.substring(3);
                    }
                }
            }
            String str2 = senderArgs.commandName;
            try {
                ChipStateSender.Companion.getClass();
                final Integer valueOf = Integer.valueOf(ChipStateSender.valueOf(str2).getStateInt());
                MediaTttCommandLineHelper mediaTttCommandLineHelper = MediaTttCommandLineHelper.this;
                StatusBarManager statusBarManager = (StatusBarManager) mediaTttCommandLineHelper.context.getSystemService("statusbar");
                MediaRoute2Info.Builder addFeature = new MediaRoute2Info.Builder(senderArgs.id, senderArgs.deviceName).addFeature("feature");
                if (senderArgs.useAppIcon) {
                    addFeature.setClientPackageName("com.android.systemui");
                }
                int intValue = valueOf.intValue();
                if (intValue == 4 || intValue == 5) {
                    z = true;
                }
                if (z && senderArgs.showUndo) {
                    executor = mediaTttCommandLineHelper.mainExecutor;
                    runnable = new Runnable() { // from class: com.android.systemui.media.taptotransfer.MediaTttCommandLineHelper$SenderCommand$execute$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Log.i("MediaTransferCli", "Undo triggered for " + valueOf);
                        }
                    };
                } else {
                    executor = null;
                    runnable = null;
                }
                statusBarManager.updateMediaTapToTransferSenderDisplay(valueOf.intValue(), addFeature.build(), executor, runnable);
            } catch (IllegalArgumentException unused) {
                FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("Invalid command name ", str2, printWriter);
            }
        }
    }

    public MediaTttCommandLineHelper(CommandRegistry commandRegistry, Context context, Executor executor) {
        this.commandRegistry = commandRegistry;
        this.context = context;
        this.mainExecutor = executor;
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        Function0 function0 = new Function0() { // from class: com.android.systemui.media.taptotransfer.MediaTttCommandLineHelper$start$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new MediaTttCommandLineHelper.SenderCommand();
            }
        };
        CommandRegistry commandRegistry = this.commandRegistry;
        commandRegistry.registerCommand("media-ttt-chip-sender", function0);
        commandRegistry.registerCommand("media-ttt-chip-receiver", new Function0() { // from class: com.android.systemui.media.taptotransfer.MediaTttCommandLineHelper$start$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new MediaTttCommandLineHelper.ReceiverCommand();
            }
        });
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SenderArgs {
        public final String commandName;
        public final String deviceName;
        public String id;
        public boolean showUndo;
        public boolean useAppIcon;

        public SenderArgs(String str, String str2, String str3, boolean z, boolean z2) {
            this.deviceName = str;
            this.commandName = str2;
            this.id = str3;
            this.useAppIcon = z;
            this.showUndo = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SenderArgs)) {
                return false;
            }
            SenderArgs senderArgs = (SenderArgs) obj;
            if (Intrinsics.areEqual(this.deviceName, senderArgs.deviceName) && Intrinsics.areEqual(this.commandName, senderArgs.commandName) && Intrinsics.areEqual(this.id, senderArgs.id) && this.useAppIcon == senderArgs.useAppIcon && this.showUndo == senderArgs.showUndo) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int m = AppInfo$$ExternalSyntheticOutline0.m(this.id, AppInfo$$ExternalSyntheticOutline0.m(this.commandName, this.deviceName.hashCode() * 31, 31), 31);
            boolean z = this.useAppIcon;
            int i = 1;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            int i3 = (m + i2) * 31;
            boolean z2 = this.showUndo;
            if (!z2) {
                i = z2 ? 1 : 0;
            }
            return i3 + i;
        }

        public final String toString() {
            String str = this.id;
            boolean z = this.useAppIcon;
            boolean z2 = this.showUndo;
            StringBuilder sb = new StringBuilder("SenderArgs(deviceName=");
            sb.append(this.deviceName);
            sb.append(", commandName=");
            AppOpItem$$ExternalSyntheticOutline0.m(sb, this.commandName, ", id=", str, ", useAppIcon=");
            sb.append(z);
            sb.append(", showUndo=");
            sb.append(z2);
            sb.append(")");
            return sb.toString();
        }

        public /* synthetic */ SenderArgs(String str, String str2, String str3, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i & 4) != 0 ? "id" : str3, (i & 8) != 0 ? true : z, (i & 16) != 0 ? true : z2);
        }
    }
}
