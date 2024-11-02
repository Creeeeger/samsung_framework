package com.android.wm.shell.pip.tv;

import android.app.RemoteAction;
import android.content.Context;
import com.android.systemui.R;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.pip.PipUtils;
import com.android.wm.shell.pip.tv.TvPipAction;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipActionsProvider implements TvPipAction.SystemActionsHandler {
    public final List mActionsList;
    public final TvPipSystemAction mDefaultCloseAction;
    public final TvPipSystemAction mExpandCollapseAction;
    public final TvPipAction.SystemActionsHandler mSystemActionsHandler;
    public final List mListeners = new ArrayList();
    public final List mMediaActions = new ArrayList();
    public final List mAppActions = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Listener {
        void onActionsChanged(int i, int i2, int i3);
    }

    public TvPipActionsProvider(Context context, PipMediaController pipMediaController, TvPipAction.SystemActionsHandler systemActionsHandler) {
        this.mSystemActionsHandler = systemActionsHandler;
        ArrayList arrayList = new ArrayList();
        this.mActionsList = arrayList;
        arrayList.add(new TvPipSystemAction(0, R.string.pip_fullscreen, R.drawable.pip_ic_fullscreen_white, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN", context, systemActionsHandler));
        TvPipSystemAction tvPipSystemAction = new TvPipSystemAction(1, R.string.pip_close, R.drawable.pip_ic_close_white, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP", context, systemActionsHandler);
        this.mDefaultCloseAction = tvPipSystemAction;
        arrayList.add(tvPipSystemAction);
        arrayList.add(new TvPipSystemAction(2, R.string.pip_move, R.drawable.pip_ic_move_white, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP", context, systemActionsHandler));
        TvPipSystemAction tvPipSystemAction2 = new TvPipSystemAction(3, R.string.pip_collapse, R.drawable.pip_ic_collapse, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP", context, systemActionsHandler);
        this.mExpandCollapseAction = tvPipSystemAction2;
        arrayList.add(tvPipSystemAction2);
        PipMediaController.ActionListener actionListener = new PipMediaController.ActionListener() { // from class: com.android.wm.shell.pip.tv.TvPipActionsProvider$$ExternalSyntheticLambda0
            @Override // com.android.wm.shell.pip.PipMediaController.ActionListener
            public final void onMediaActionsChanged(List list) {
                TvPipActionsProvider.this.onMediaActionsChanged(list);
            }
        };
        ArrayList arrayList2 = pipMediaController.mActionListeners;
        if (!arrayList2.contains(actionListener)) {
            arrayList2.add(actionListener);
            actionListener.onMediaActionsChanged(pipMediaController.getMediaActions());
        }
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction.SystemActionsHandler
    public final void executeAction(int i) {
        TvPipAction.SystemActionsHandler systemActionsHandler = this.mSystemActionsHandler;
        if (systemActionsHandler != null) {
            systemActionsHandler.executeAction(i);
        }
    }

    public final void notifyActionsChanged(int i, int i2, int i3) {
        Iterator it = ((ArrayList) this.mListeners).iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onActionsChanged(i, i2, i3);
        }
    }

    public void onMediaActionsChanged(List<RemoteAction> list) {
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 626219143, 0, "%s: onMediaActionsChanged()", "TvPipActionsProvider");
        }
        List list2 = this.mMediaActions;
        ArrayList arrayList = (ArrayList) list2;
        arrayList.clear();
        for (RemoteAction remoteAction : list) {
            if (remoteAction.isEnabled()) {
                arrayList.add(remoteAction);
            }
        }
        updateCustomActions(list2);
    }

    public void setAppActions(List<RemoteAction> list, RemoteAction remoteAction) {
        Object tvPipCustomAction;
        List list2 = this.mActionsList;
        if (remoteAction == null) {
            tvPipCustomAction = this.mDefaultCloseAction;
        } else {
            tvPipCustomAction = new TvPipCustomAction(5, remoteAction, this.mSystemActionsHandler);
        }
        ((ArrayList) list2).set(1, tvPipCustomAction);
        notifyActionsChanged(0, 1, 1);
        List list3 = this.mAppActions;
        ((ArrayList) list3).clear();
        for (RemoteAction remoteAction2 : list) {
            if (remoteAction2 != null && !PipUtils.remoteActionsMatch(remoteAction2, remoteAction)) {
                ((ArrayList) list3).add(remoteAction2);
            }
        }
        updateCustomActions(list3);
    }

    public final void updateCustomActions(List list) {
        List list2 = this.mMediaActions;
        List list3 = this.mAppActions;
        if (list == list2 && !((ArrayList) list3).isEmpty()) {
            return;
        }
        if (list == list3 && ((ArrayList) list3).isEmpty()) {
            list = list2;
        }
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 155072274, 4, "%s: replaceCustomActions, count: %d", "TvPipActionsProvider", Long.valueOf(list.size()));
        }
        ArrayList arrayList = (ArrayList) this.mActionsList;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((TvPipAction) it.next()).mActionType == 4) {
                i++;
            }
        }
        arrayList.removeIf(new TvPipActionsProvider$$ExternalSyntheticLambda1());
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new TvPipCustomAction(4, (RemoteAction) it2.next(), this.mSystemActionsHandler));
        }
        arrayList.addAll(2, arrayList2);
        notifyActionsChanged(list.size() - i, Math.min(list.size(), i), 2);
    }

    public void updateExpansionEnabled(boolean z) {
        boolean z2;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -2127414817, 12, "%s: updateExpansionState, enabled: %b", "TvPipActionsProvider", Boolean.valueOf(z));
        }
        ArrayList arrayList = (ArrayList) this.mActionsList;
        TvPipSystemAction tvPipSystemAction = this.mExpandCollapseAction;
        int indexOf = arrayList.indexOf(tvPipSystemAction);
        int i = -1;
        if (indexOf != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && !z2) {
            arrayList.add(tvPipSystemAction);
            indexOf = arrayList.size() - 1;
        } else if (!z && z2) {
            arrayList.remove(indexOf);
        } else {
            return;
        }
        if (z) {
            i = 1;
        }
        notifyActionsChanged(i, 0, indexOf);
    }

    public void updatePipExpansionState(boolean z) {
        int i;
        int i2;
        boolean z2;
        if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
            ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -509165949, 12, "%s: onPipExpansionToggled, expanded: %b", "TvPipActionsProvider", Boolean.valueOf(z));
        }
        if (z) {
            i = R.string.pip_collapse;
        } else {
            i = R.string.pip_expand;
        }
        if (z) {
            i2 = R.drawable.pip_ic_collapse;
        } else {
            i2 = R.drawable.pip_ic_expand;
        }
        TvPipSystemAction tvPipSystemAction = this.mExpandCollapseAction;
        if (i == tvPipSystemAction.mTitleResource && i2 == tvPipSystemAction.mIconResource) {
            z2 = false;
        } else {
            z2 = true;
        }
        tvPipSystemAction.mTitleResource = i;
        tvPipSystemAction.mIconResource = i2;
        if (z2) {
            notifyActionsChanged(0, 1, ((ArrayList) this.mActionsList).indexOf(tvPipSystemAction));
        }
    }
}
