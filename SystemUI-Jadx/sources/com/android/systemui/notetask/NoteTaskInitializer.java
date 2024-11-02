package com.android.systemui.notetask;

import android.app.role.RoleManager;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.CommandQueue;
import com.android.wm.shell.bubbles.Bubbles;
import java.util.Optional;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoteTaskInitializer {
    public final Executor backgroundExecutor;
    public final NoteTaskController controller;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final NoteTaskInitializer$onUserUnlockedCallback$1 onUserUnlockedCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.notetask.NoteTaskInitializer$onUserUnlockedCallback$1
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserUnlocked() {
            NoteTaskInitializer noteTaskInitializer = NoteTaskInitializer.this;
            noteTaskInitializer.controller.setNoteTaskShortcutEnabled(true, ((UserTrackerImpl) noteTaskInitializer.userTracker).getUserHandle());
            noteTaskInitializer.keyguardUpdateMonitor.removeCallback(this);
        }
    };
    public final UserTracker userTracker;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.notetask.NoteTaskInitializer$onUserUnlockedCallback$1] */
    public NoteTaskInitializer(NoteTaskController noteTaskController, RoleManager roleManager, CommandQueue commandQueue, Optional<Bubbles> optional, UserTracker userTracker, KeyguardUpdateMonitor keyguardUpdateMonitor, Executor executor, boolean z) {
        this.controller = noteTaskController;
        this.userTracker = userTracker;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.backgroundExecutor = executor;
    }
}
