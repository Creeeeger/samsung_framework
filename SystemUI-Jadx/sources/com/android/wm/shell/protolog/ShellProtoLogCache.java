package com.android.wm.shell.protolog;

import com.android.internal.protolog.BaseProtoLogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShellProtoLogCache {
    public static boolean WM_SHELL_BACK_PREVIEW_enabled = false;
    public static boolean WM_SHELL_DESKTOP_MODE_enabled = false;
    public static boolean WM_SHELL_DRAG_AND_DROP_enabled = false;
    public static boolean WM_SHELL_FOLDABLE_enabled = false;
    public static boolean WM_SHELL_INIT_enabled = false;
    public static boolean WM_SHELL_PICTURE_IN_PICTURE_enabled = false;
    public static boolean WM_SHELL_RECENTS_TRANSITION_enabled = false;
    public static boolean WM_SHELL_RECENT_TASKS_enabled = false;
    public static boolean WM_SHELL_SPLIT_SCREEN_enabled = false;
    public static boolean WM_SHELL_STARTING_WINDOW_enabled = false;
    public static boolean WM_SHELL_SYSUI_EVENTS_enabled = false;
    public static boolean WM_SHELL_TASK_ORG_enabled = false;
    public static boolean WM_SHELL_TRANSITIONS_enabled = false;

    static {
        BaseProtoLogImpl.sCacheUpdater = new ShellProtoLogCache$$ExternalSyntheticLambda0();
        update();
    }

    public static void update() {
        WM_SHELL_INIT_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_INIT);
        WM_SHELL_TASK_ORG_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_TASK_ORG);
        WM_SHELL_TRANSITIONS_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_TRANSITIONS);
        WM_SHELL_RECENTS_TRANSITION_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_RECENTS_TRANSITION);
        WM_SHELL_DRAG_AND_DROP_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_DRAG_AND_DROP);
        WM_SHELL_STARTING_WINDOW_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW);
        WM_SHELL_BACK_PREVIEW_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_BACK_PREVIEW);
        WM_SHELL_RECENT_TASKS_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_RECENT_TASKS);
        WM_SHELL_PICTURE_IN_PICTURE_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE);
        WM_SHELL_SPLIT_SCREEN_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_SPLIT_SCREEN);
        WM_SHELL_SYSUI_EVENTS_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_SYSUI_EVENTS);
        WM_SHELL_DESKTOP_MODE_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE);
        ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_FLOATING_APPS);
        WM_SHELL_FOLDABLE_enabled = ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.WM_SHELL_FOLDABLE);
        ShellProtoLogImpl.isEnabled(ShellProtoLogGroup.TEST_GROUP);
    }
}
