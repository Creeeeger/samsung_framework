package com.android.systemui.media.systemsounds;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import com.android.systemui.CoreStartable;
import com.android.systemui.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HomeSoundEffectController implements CoreStartable {
    public final ActivityManagerWrapper mActivityManagerWrapper;
    public final AudioManager mAudioManager;
    public boolean mIsLastTaskHome = true;
    public boolean mLastActivityHasNoHomeSound = false;
    public int mLastActivityType;
    public String mLastHomePackageName;
    public int mLastTaskId;
    public final boolean mPlayHomeSoundAfterAssistant;
    public final boolean mPlayHomeSoundAfterDream;
    public final PackageManager mPm;
    public final TaskStackChangeListeners mTaskStackChangeListeners;

    public HomeSoundEffectController(Context context, AudioManager audioManager, TaskStackChangeListeners taskStackChangeListeners, ActivityManagerWrapper activityManagerWrapper, PackageManager packageManager) {
        this.mAudioManager = audioManager;
        this.mTaskStackChangeListeners = taskStackChangeListeners;
        this.mActivityManagerWrapper = activityManagerWrapper;
        this.mPm = packageManager;
        this.mPlayHomeSoundAfterAssistant = context.getResources().getBoolean(R.bool.config_playHomeSoundAfterAssistant);
        this.mPlayHomeSoundAfterDream = context.getResources().getBoolean(R.bool.config_playHomeSoundAfterDream);
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        if (this.mAudioManager.isHomeSoundEffectEnabled()) {
            this.mTaskStackChangeListeners.registerTaskStackListener(new TaskStackChangeListener() { // from class: com.android.systemui.media.systemsounds.HomeSoundEffectController.1
                /* JADX WARN: Removed duplicated region for block: B:33:0x0079  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x007b  */
                @Override // com.android.systemui.shared.system.TaskStackChangeListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void onTaskStackChanged() {
                    /*
                        r7 = this;
                        com.android.systemui.media.systemsounds.HomeSoundEffectController r7 = com.android.systemui.media.systemsounds.HomeSoundEffectController.this
                        com.android.systemui.shared.system.ActivityManagerWrapper r0 = r7.mActivityManagerWrapper
                        android.app.ActivityManager$RunningTaskInfo r0 = r0.getRunningTask()
                        if (r0 == 0) goto L97
                        android.content.pm.ActivityInfo r1 = r0.topActivityInfo
                        if (r1 != 0) goto L10
                        goto L97
                    L10:
                        r7.getClass()
                        int r1 = r0.topActivityType
                        r2 = 0
                        r3 = 1
                        r4 = 2
                        if (r1 != r4) goto L1c
                        r1 = r3
                        goto L1d
                    L1c:
                        r1 = r2
                    L1d:
                        int r5 = r0.taskId
                        int r6 = r7.mLastTaskId
                        if (r5 != r6) goto L24
                        goto L44
                    L24:
                        boolean r5 = r7.mIsLastTaskHome
                        if (r5 != 0) goto L44
                        if (r1 != 0) goto L2b
                        goto L44
                    L2b:
                        boolean r1 = r7.mLastActivityHasNoHomeSound
                        if (r1 == 0) goto L30
                        goto L44
                    L30:
                        int r1 = r7.mLastActivityType
                        r5 = 4
                        if (r1 != r5) goto L3a
                        boolean r5 = r7.mPlayHomeSoundAfterAssistant
                        if (r5 != 0) goto L3a
                        goto L44
                    L3a:
                        r5 = 5
                        if (r1 != r5) goto L42
                        boolean r1 = r7.mPlayHomeSoundAfterDream
                        if (r1 != 0) goto L42
                        goto L44
                    L42:
                        r1 = r3
                        goto L45
                    L44:
                        r1 = r2
                    L45:
                        if (r1 == 0) goto L4e
                        android.media.AudioManager r1 = r7.mAudioManager
                        r5 = 11
                        r1.playSoundEffect(r5)
                    L4e:
                        int r1 = r0.taskId
                        r7.mLastTaskId = r1
                        int r1 = r0.topActivityType
                        r7.mLastActivityType = r1
                        android.content.pm.ActivityInfo r1 = r0.topActivityInfo
                        int r5 = r1.privateFlags
                        r5 = r5 & r4
                        if (r5 != 0) goto L72
                        java.lang.String r1 = r1.packageName
                        android.content.pm.PackageManager r5 = r7.mPm
                        java.lang.String r6 = "android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"
                        int r1 = r5.checkPermission(r6, r1)
                        if (r1 != 0) goto L6b
                        r1 = r3
                        goto L73
                    L6b:
                        java.lang.String r1 = "HomeSoundEffectController"
                        java.lang.String r5 = "Activity has flag playHomeTransition set to false but doesn't hold required permission android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"
                        android.util.Slog.w(r1, r5)
                    L72:
                        r1 = r2
                    L73:
                        r7.mLastActivityHasNoHomeSound = r1
                        int r1 = r0.topActivityType
                        if (r1 != r4) goto L7b
                        r1 = r3
                        goto L7c
                    L7b:
                        r1 = r2
                    L7c:
                        android.content.pm.ActivityInfo r4 = r0.topActivityInfo
                        java.lang.String r4 = r4.packageName
                        java.lang.String r5 = r7.mLastHomePackageName
                        boolean r4 = r4.equals(r5)
                        if (r1 != 0) goto L8a
                        if (r4 == 0) goto L8b
                    L8a:
                        r2 = r3
                    L8b:
                        r7.mIsLastTaskHome = r2
                        if (r1 == 0) goto L97
                        if (r4 != 0) goto L97
                        android.content.pm.ActivityInfo r0 = r0.topActivityInfo
                        java.lang.String r0 = r0.packageName
                        r7.mLastHomePackageName = r0
                    L97:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.systemsounds.HomeSoundEffectController.AnonymousClass1.onTaskStackChanged():void");
                }
            });
        }
    }
}
