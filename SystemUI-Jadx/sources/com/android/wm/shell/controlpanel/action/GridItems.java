package com.android.wm.shell.controlpanel.action;

import com.android.wm.shell.controlpanel.action.ControlPanelAction;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GridItems {
    public static final ArrayList ACTIVITY_BASIC;
    public static final ArrayList ACTIVITY_EDIT_BASIC;
    public static final ArrayList ALL_ACTIONS;

    static {
        ControlPanelAction.Action action = ControlPanelAction.Action.SplitScreen;
        ControlPanelAction.Action action2 = ControlPanelAction.Action.QuickPanel;
        ControlPanelAction.Action action3 = ControlPanelAction.Action.ScreenCapture;
        ControlPanelAction.Action action4 = ControlPanelAction.Action.TouchPad;
        ControlPanelAction.Action action5 = ControlPanelAction.Action.EditPanel;
        ACTIVITY_BASIC = new ArrayList(Arrays.asList(action, action2, action3, action4, action5));
        ControlPanelAction.Action action6 = ControlPanelAction.Action.BrightnessControl;
        ControlPanelAction.Action action7 = ControlPanelAction.Action.VolumeControl;
        ControlPanelAction.Action action8 = ControlPanelAction.Action.FlexPanelSettings;
        ACTIVITY_EDIT_BASIC = new ArrayList(Arrays.asList(action6, action7, action8));
        ALL_ACTIONS = new ArrayList(Arrays.asList(action, action2, action3, action4, action5, action6, action7, action8));
    }
}
