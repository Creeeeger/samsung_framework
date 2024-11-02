package com.android.wm.shell.splitscreen;

import android.app.ActivityThread;
import android.content.Intent;
import android.window.WindowContainerTransaction;
import com.android.systemui.keyboard.KeyboardUI$$ExternalSyntheticOutline0;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitScreenShellCommandHandler implements ShellCommandHandler.ShellCommandActionHandler {
    public final SplitScreenController mController;

    public SplitScreenShellCommandHandler(SplitScreenController splitScreenController) {
        this.mController = splitScreenController;
    }

    public static Intent makeBasicIntent(String str) {
        Intent launchIntentForPackage = ActivityThread.currentActivityThread().getApplication().getPackageManager().getLaunchIntentForPackage(str);
        launchIntentForPackage.addFlags(270548992);
        return launchIntentForPackage;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final boolean onShellCommand(PrintWriter printWriter, String[] strArr) {
        char c;
        int i;
        int parseInt;
        int i2 = 0;
        String str = strArr[0];
        str.getClass();
        switch (str.hashCode()) {
            case -1583860660:
                if (str.equals("startTasks")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1539949434:
                if (str.equals("startTaskWithAllApps")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1282889285:
                if (str.equals("startIntentToCell")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1228202046:
                if (str.equals("openInSplitWithAllApps")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -91197669:
                if (str.equals("moveToSideStage")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 295561529:
                if (str.equals("removeFromSideStage")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1359035063:
                if (str.equals("setSplitCreateMode")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1522429422:
                if (str.equals("setSideStagePosition")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1549754006:
                if (str.equals("startSplitTasks")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1823612565:
                if (str.equals("startIntents")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1916109808:
                if (str.equals("enterSplitByGesture")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        SplitScreenController splitScreenController = this.mController;
        Intent intent = null;
        switch (c) {
            case 0:
                if (strArr.length < 3) {
                    printWriter.println("Error: start multiple tasks should be provided as arguments");
                    return false;
                }
                this.mController.startTasks(Integer.parseInt(strArr[1]), null, Integer.parseInt(strArr[2]), null, 1, 0.0f, null, null);
                return true;
            case 1:
                if (strArr.length < 2) {
                    printWriter.println("Error: start taskId to make split with allapps");
                    printWriter.println("$ adb shell ~ WMShell startTaskWithAllApps taskId");
                    return false;
                }
                this.mController.startTasks(Integer.parseInt(strArr[1]), null, -1, null, 1, 0.0f, null, null);
                return true;
            case 2:
                if (strArr.length < 2) {
                    printWriter.println("Error: start intent should be provided as arguments");
                    return false;
                }
                Intent makeBasicIntent = makeBasicIntent(strArr[1]);
                if (strArr.length >= 3) {
                    i2 = Integer.parseInt(strArr[2]);
                }
                splitScreenController.startIntentToCell(null, makeBasicIntent, null, i2);
                return true;
            case 3:
                if (strArr.length < 4) {
                    printWriter.println("Error: task id or intent to make split should be provided as arguments");
                    printWriter.println("$ adb shell ~ WMShell openInSplitWithAllApps [taskId] [package]");
                    return false;
                }
                splitScreenController.openInSplitWithAllApps(Integer.parseInt(strArr[2]), makeBasicIntent(strArr[3]), null);
                return true;
            case 4:
                if (strArr.length < 3) {
                    printWriter.println("Error: task id should be provided as arguments");
                    return false;
                }
                int intValue = new Integer(strArr[1]).intValue();
                if (strArr.length > 2) {
                    i = new Integer(strArr[2]).intValue();
                } else {
                    i = 1;
                }
                splitScreenController.getClass();
                splitScreenController.moveToStage(intValue, i, new WindowContainerTransaction());
                return true;
            case 5:
                if (strArr.length < 2) {
                    printWriter.println("Error: task id should be provided as arguments");
                    return false;
                }
                splitScreenController.removeFromSideStage(new Integer(strArr[1]).intValue());
                return true;
            case 6:
                if (!CoreRune.MW_MULTI_SPLIT_CREATE_MODE) {
                    return false;
                }
                if (strArr.length < 3) {
                    printWriter.println("Error: A createMode should be provided as an argument");
                    return false;
                }
                splitScreenController.mStageCoordinator.setSplitCreateMode(Integer.parseInt(strArr[2]), true);
                if (CoreRune.MW_MULTI_SPLIT_SHELL_DUMP) {
                    printWriter.println("SplitScreenController");
                    StageCoordinator stageCoordinator = splitScreenController.mStageCoordinator;
                    if (stageCoordinator != null) {
                        stageCoordinator.dump(printWriter, "");
                    }
                }
                return true;
            case 7:
                if (strArr.length < 2) {
                    printWriter.println("Error: side stage position should be provided as arguments");
                    return false;
                }
                int intValue2 = new Integer(strArr[1]).intValue();
                if (CoreRune.MW_MULTI_SPLIT_FREE_POSITION) {
                    splitScreenController.setSideStagePosition(intValue2, null);
                } else {
                    splitScreenController.mStageCoordinator.setSideStagePosition(null, intValue2);
                }
                return true;
            case '\b':
                if (strArr.length < 4) {
                    printWriter.println("Error: start multiple tasks should be provided as arguments");
                    return false;
                }
                this.mController.startSplitTasks(Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]), -1, false, 0, Float.parseFloat(strArr[3]), 0.5f);
                return true;
            case '\t':
                if (strArr.length < 4) {
                    printWriter.println("Error: start intents should be provided as arguments");
                    printWriter.println("$ adb shell ~ WMShell splitscreen startIntents pkg1 pkg2 pkg3(optional) [splitDivision]");
                } else {
                    Intent makeBasicIntent2 = makeBasicIntent(strArr[1]);
                    Intent makeBasicIntent3 = makeBasicIntent(strArr[2]);
                    if (strArr.length > 4) {
                        intent = makeBasicIntent(strArr[3]);
                        parseInt = Integer.parseInt(strArr[4]);
                    } else {
                        parseInt = Integer.parseInt(strArr[3]);
                    }
                    this.mController.startIntents(makeBasicIntent2, makeBasicIntent3, intent, null, null, null, 0, 0, 0.5f, 0.5f, parseInt, null);
                }
                return true;
            case '\n':
                if (strArr.length < 4) {
                    printWriter.println("Error: gestureFrom should be provided");
                    return false;
                }
                if (strArr[2].equals("interface")) {
                    splitScreenController.mImpl.startSplitByTwoTouchSwipeIfPossible(Integer.parseInt(strArr[3]));
                }
                return true;
            default:
                KeyboardUI$$ExternalSyntheticOutline0.m(new StringBuilder("Invalid command: "), strArr[0], printWriter);
                return false;
        }
    }

    @Override // com.android.wm.shell.sysui.ShellCommandHandler.ShellCommandActionHandler
    public final void printShellCommandHelp(PrintWriter printWriter, String str) {
        printWriter.println("    moveToSideStage <taskId> <SideStagePosition>");
        printWriter.println("      Move a task with given id in split-screen mode.");
        printWriter.println("    removeFromSideStage <taskId>");
        printWriter.println("      Remove a task with given id in split-screen mode.");
        printWriter.println("    setSideStagePosition <SideStagePosition>");
        printWriter.println("      Sets the position of the side-stage.");
    }
}
