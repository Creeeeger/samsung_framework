package com.android.systemui.statusbar.notification.interruption;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NotificationInterruptStateProvider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum FullScreenIntentDecision {
        NO_FSI_SHOW_STICKY_HUN(false),
        NO_FULL_SCREEN_INTENT(false),
        NO_FSI_SUPPRESSED_BY_DND(false),
        NO_FSI_SUPPRESSED_ONLY_BY_DND(false),
        NO_FSI_NOT_IMPORTANT_ENOUGH(false),
        NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR(false),
        NO_FSI_SUPPRESSIVE_BUBBLE_METADATA(false),
        FSI_DEVICE_NOT_INTERACTIVE(true),
        FSI_DEVICE_IS_DREAMING(true),
        FSI_KEYGUARD_SHOWING(true),
        NO_FSI_EXPECTED_TO_HUN(false),
        NO_FSI_EXPECTED_TO_BRIEF(false),
        NO_FSI_NO_HUN_BY_PANEL_DISABLED(false),
        FSI_KEYGUARD_OCCLUDED(true),
        FSI_LOCKED_SHADE(true),
        NO_FSI_NO_HUN_OR_KEYGUARD(false),
        NO_FSI_SUSPENDED(false);

        public final boolean shouldLaunch;

        FullScreenIntentDecision(boolean z) {
            this.shouldLaunch = z;
        }
    }
}
