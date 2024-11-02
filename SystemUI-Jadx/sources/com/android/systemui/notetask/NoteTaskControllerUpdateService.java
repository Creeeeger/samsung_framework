package com.android.systemui.notetask;

import android.app.role.RoleManager;
import android.content.pm.ShortcutManager;
import android.os.UserHandle;
import androidx.lifecycle.LifecycleService;
import java.util.Collections;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoteTaskControllerUpdateService extends LifecycleService {
    public final NoteTaskController controller;

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

    public NoteTaskControllerUpdateService(NoteTaskController noteTaskController) {
        this.controller = noteTaskController;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        boolean z;
        super.onCreate();
        NoteTaskController noteTaskController = this.controller;
        UserHandle user = getUser();
        noteTaskController.getClass();
        NoteTaskRoleManagerExt.INSTANCE.getClass();
        RoleManager roleManager = noteTaskController.roleManager;
        String str = (String) CollectionsKt___CollectionsKt.firstOrNull(roleManager.getRoleHoldersAsUser("android.app.role.NOTES", user));
        boolean z2 = false;
        if (noteTaskController.isEnabled) {
            if (str != null && str.length() != 0) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                z2 = true;
            }
        }
        noteTaskController.setNoteTaskShortcutEnabled(z2, user);
        ShortcutManager shortcutManager = noteTaskController.shortcutManager;
        if (z2) {
            shortcutManager.enableShortcuts(Collections.singletonList("note_task_shortcut_id"));
            shortcutManager.updateShortcuts(Collections.singletonList(NoteTaskRoleManagerExt.createNoteShortcutInfoAsUser(roleManager, noteTaskController.context, user)));
        } else {
            shortcutManager.disableShortcuts(Collections.singletonList("note_task_shortcut_id"));
        }
        stopSelf();
    }
}
