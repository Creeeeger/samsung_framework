package com.android.systemui.statusbar.commandline;

import android.content.Context;
import com.android.systemui.Prefs;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PrefsCommand implements Command {
    public PrefsCommand(Context context) {
    }

    @Override // com.android.systemui.statusbar.commandline.Command
    public final void execute(PrintWriter printWriter, List list) {
        if (list.isEmpty()) {
            printWriter.println("usage: prefs <command> [args]");
            printWriter.println("Available commands:");
            printWriter.println("  list-prefs");
            printWriter.println("  set-pref <pref name> <value>");
            return;
        }
        if (Intrinsics.areEqual((String) list.get(0), "list-prefs")) {
            printWriter.println("Available keys:");
            for (Field field : Prefs.Key.class.getDeclaredFields()) {
                printWriter.print("  ");
                printWriter.println(field.get(Prefs.Key.class));
            }
            return;
        }
        printWriter.println("usage: prefs <command> [args]");
        printWriter.println("Available commands:");
        printWriter.println("  list-prefs");
        printWriter.println("  set-pref <pref name> <value>");
    }
}
