package com.android.systemui.globalactions.features;

import com.android.systemui.globalactions.util.SystemUIConditions;
import com.samsung.android.globalactions.presentation.strategies.ActionInteractionStrategy;
import com.samsung.android.globalactions.util.ConditionChecker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KnoxMDMStrategy implements ActionInteractionStrategy {
    public final ConditionChecker mConditionChecker;

    public KnoxMDMStrategy(ConditionChecker conditionChecker) {
        this.mConditionChecker = conditionChecker;
    }

    public final boolean onLongPressPowerAction() {
        return !this.mConditionChecker.isEnabled(SystemUIConditions.IS_SAFE_MODE_ALLOWED);
    }

    public final boolean onPressDataModeAction() {
        if (this.mConditionChecker.isEnabled(SystemUIConditions.IS_CELLULAR_DATA_ALLOWED) && this.mConditionChecker.isEnabled(SystemUIConditions.IS_SETTINGS_CHANGES_ALLOWED)) {
            return false;
        }
        return true;
    }

    public final boolean onPressPowerAction() {
        return !this.mConditionChecker.isEnabled(SystemUIConditions.IS_POWER_OFF_ALLOWED);
    }
}
