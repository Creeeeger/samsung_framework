package com.android.systemui.notetask;

import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import androidx.activity.ComponentActivity;
import com.android.systemui.settings.UserTrackerImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LaunchNotesRoleSettingsTrampolineActivity extends ComponentActivity {
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

    public LaunchNotesRoleSettingsTrampolineActivity(NoteTaskController noteTaskController) {
        this.controller = noteTaskController;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        UserHandle userForHandlingNotesTaking;
        super.onCreate(bundle);
        Intent intent = getIntent();
        NoteTaskEntryPoint noteTaskEntryPoint = null;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(str, "com.android.systemui.action.MANAGE_NOTES_ROLE_FROM_QUICK_AFFORDANCE")) {
            noteTaskEntryPoint = NoteTaskEntryPoint.QUICK_AFFORDANCE;
        }
        NoteTaskController noteTaskController = this.controller;
        if (noteTaskEntryPoint == null) {
            userForHandlingNotesTaking = ((UserTrackerImpl) noteTaskController.userTracker).getUserHandle();
        } else {
            userForHandlingNotesTaking = noteTaskController.getUserForHandlingNotesTaking(noteTaskEntryPoint);
        }
        Intent intent2 = new Intent("android.intent.action.MANAGE_DEFAULT_APP");
        intent2.putExtra("android.intent.extra.ROLE_NAME", "android.app.role.NOTES");
        startActivityAsUser(intent2, userForHandlingNotesTaking);
        finish();
    }
}
