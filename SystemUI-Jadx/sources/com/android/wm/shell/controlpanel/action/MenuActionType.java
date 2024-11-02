package com.android.wm.shell.controlpanel.action;

import com.android.wm.shell.controlpanel.GridUIManager;
import com.android.wm.shell.controlpanel.action.ControlPanelAction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class MenuActionType {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.controlpanel.action.MenuActionType$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action;

        static {
            int[] iArr = new int[ControlPanelAction.Action.values().length];
            $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action = iArr;
            try {
                iArr[ControlPanelAction.Action.ScreenCapture.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action[ControlPanelAction.Action.QuickPanel.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action[ControlPanelAction.Action.SplitScreen.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action[ControlPanelAction.Action.FlexPanelSettings.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action[ControlPanelAction.Action.TouchPad.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public abstract void doControlAction(String str, GridUIManager gridUIManager);
}
