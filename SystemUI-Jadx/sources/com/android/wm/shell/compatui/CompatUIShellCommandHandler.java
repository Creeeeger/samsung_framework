package com.android.wm.shell.compatui;

import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.sec.ims.configuration.DATA;
import java.io.PrintWriter;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CompatUIShellCommandHandler implements ShellCommandHandler.ShellCommandActionHandler {
    public final CompatUIConfiguration mCompatUIConfiguration;
    public final ShellCommandHandler mShellCommandHandler;

    public CompatUIShellCommandHandler(ShellCommandHandler shellCommandHandler, CompatUIConfiguration compatUIConfiguration) {
        this.mShellCommandHandler = shellCommandHandler;
        this.mCompatUIConfiguration = compatUIConfiguration;
    }

    public static boolean invokeOrError(String str, PrintWriter printWriter, CompatUIShellCommandHandler$$ExternalSyntheticLambda0 compatUIShellCommandHandler$$ExternalSyntheticLambda0) {
        Boolean bool;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals(DATA.DM_FIELD_INDEX.PCSCF_DOMAIN)) {
                    c = 0;
                    break;
                }
                break;
            case 49:
                if (str.equals("1")) {
                    c = 1;
                    break;
                }
                break;
            case 3569038:
                if (str.equals("true")) {
                    c = 2;
                    break;
                }
                break;
            case 97196323:
                if (str.equals("false")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 3:
                bool = Boolean.FALSE;
                break;
            case 1:
            case 2:
                bool = Boolean.TRUE;
                break;
            default:
                bool = null;
                break;
        }
        if (bool == null) {
            printWriter.println("Error: expected true, 1, false, 0.");
            return false;
        }
        compatUIShellCommandHandler$$ExternalSyntheticLambda0.accept(bool);
        return true;
    }

    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final boolean onShellCommand(PrintWriter printWriter, String[] strArr) {
        if (strArr.length != 2) {
            KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("Invalid command: "), strArr[0], printWriter);
            return false;
        }
        String str = strArr[0];
        str.getClass();
        boolean equals = str.equals("reachabilityEducationEnabled");
        CompatUIConfiguration compatUIConfiguration = this.mCompatUIConfiguration;
        if (!equals) {
            if (!str.equals("restartDialogEnabled")) {
                KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("Invalid command: "), strArr[0], printWriter);
                return false;
            }
            String str2 = strArr[1];
            Objects.requireNonNull(compatUIConfiguration);
            return invokeOrError(str2, printWriter, new CompatUIShellCommandHandler$$ExternalSyntheticLambda0(compatUIConfiguration, 0));
        }
        String str3 = strArr[1];
        Objects.requireNonNull(compatUIConfiguration);
        return invokeOrError(str3, printWriter, new CompatUIShellCommandHandler$$ExternalSyntheticLambda0(compatUIConfiguration, 1));
    }

    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final void printShellCommandHelp(PrintWriter printWriter, String str) {
        printWriter.println("    restartDialogEnabled [0|false|1|true]");
        printWriter.println("      Enable/Disable the restart education dialog for Size Compat Mode");
        printWriter.println("    reachabilityEducationEnabled [0|false|1|true]");
        printWriter.println("      Enable/Disable the restart education dialog for letterbox reachability");
        printWriter.println("      Disable the restart education dialog for letterbox reachability");
    }
}
