package com.android.systemui.statusbar.notification.row;

import android.content.Context;
import android.content.res.Resources;
import android.metrics.LogMaker;
import android.provider.Settings;
import android.service.notification.SnoozeCriterion;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.KeyValueListParser;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.R;
import com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper;
import com.android.systemui.statusbar.notification.row.SnoozeOptionManager;
import com.android.systemui.util.PluralMessageFormaterKt;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SnoozeOptionManager {
    public static final int[] sAccessibilityActions = {R.id.action_snooze_shorter, R.id.action_snooze_short, R.id.action_snooze_long, R.id.action_snooze_longer};
    public final Context mContext;
    public NotificationSnoozeOption mDefaultOption;
    public ViewGroup mParent;
    public NotificationSwipeActionHelper.SnoozeOption mSelectedOption;
    public NotificationSwipeActionHelper mSnoozeListener;
    public ViewGroup mSnoozeOptionContainer;
    public List mSnoozeOptions;
    public boolean mSnoozing;
    public final MetricsLogger mMetricsLogger = new MetricsLogger();
    public final KeyValueListParser mParser = new KeyValueListParser(',');

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationSnoozeOption implements NotificationSwipeActionHelper.SnoozeOption {
        public final AccessibilityNodeInfo.AccessibilityAction mAction;
        public final CharSequence mConfirmation;
        public final SnoozeCriterion mCriterion;
        public final CharSequence mDescription;
        public final int mMinutesToSnoozeFor;

        public NotificationSnoozeOption(SnoozeOptionManager snoozeOptionManager, SnoozeCriterion snoozeCriterion, int i, CharSequence charSequence, CharSequence charSequence2, AccessibilityNodeInfo.AccessibilityAction accessibilityAction) {
            this.mCriterion = snoozeCriterion;
            this.mMinutesToSnoozeFor = i;
            this.mDescription = charSequence;
            this.mConfirmation = charSequence2;
            this.mAction = accessibilityAction;
        }

        @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper.SnoozeOption
        public final AccessibilityNodeInfo.AccessibilityAction getAccessibilityAction() {
            return this.mAction;
        }

        @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper.SnoozeOption
        public final CharSequence getConfirmation() {
            return this.mConfirmation;
        }

        @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper.SnoozeOption
        public final CharSequence getDescription() {
            return this.mDescription;
        }

        @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper.SnoozeOption
        public final int getMinutesToSnoozeFor() {
            return this.mMinutesToSnoozeFor;
        }

        @Override // com.android.systemui.plugins.statusbar.NotificationSwipeActionHelper.SnoozeOption
        public final SnoozeCriterion getSnoozeCriterion() {
            return this.mCriterion;
        }
    }

    public SnoozeOptionManager(Context context) {
        this.mContext = context;
    }

    public final void createOptionViews() {
        this.mSnoozeOptionContainer.removeAllViews();
        final LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        this.mSnoozeOptions.stream().forEach(new Consumer() { // from class: com.android.systemui.statusbar.notification.row.SnoozeOptionManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SnoozeOptionManager snoozeOptionManager = SnoozeOptionManager.this;
                NotificationSwipeActionHelper.SnoozeOption snoozeOption = (NotificationSwipeActionHelper.SnoozeOption) obj;
                RadioButton radioButton = (RadioButton) layoutInflater.inflate(R.layout.sec_notification_snooze_option, snoozeOptionManager.mSnoozeOptionContainer, false);
                snoozeOptionManager.mSnoozeOptionContainer.addView(radioButton);
                radioButton.setText(snoozeOption.getDescription());
                radioButton.setTag(snoozeOption);
                radioButton.setOnClickListener((SecNotificationSnooze) snoozeOptionManager.mParent);
                SnoozeOptionManager.NotificationSnoozeOption notificationSnoozeOption = snoozeOptionManager.mDefaultOption;
                if (notificationSnoozeOption != null && snoozeOption.equals(notificationSnoozeOption)) {
                    radioButton.setChecked(true);
                }
            }
        });
    }

    public final ArrayList getDefaultSnoozeOptions() {
        boolean z;
        int i;
        int i2;
        NotificationSnoozeOption notificationSnoozeOption;
        KeyValueListParser keyValueListParser = this.mParser;
        Context context = this.mContext;
        Resources resources = context.getResources();
        ArrayList arrayList = new ArrayList();
        try {
            keyValueListParser.setString(Settings.Global.getString(context.getContentResolver(), "notification_snooze_options"));
        } catch (IllegalArgumentException unused) {
            Log.e("NotificationSnooze", "Bad snooze constants");
        }
        int i3 = keyValueListParser.getInt("default", resources.getInteger(R.integer.config_notification_snooze_time_default));
        int[] intArray = keyValueListParser.getIntArray("options_array", resources.getIntArray(R.array.config_notification_snooze_times));
        int min = Math.min(intArray.length, 4);
        for (int i4 = 0; i4 < min; i4++) {
            int i5 = intArray[i4];
            int i6 = sAccessibilityActions[i4];
            Resources resources2 = context.getResources();
            if (i5 >= 60) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                i = R.string.snoozeHourOptions;
            } else {
                i = R.string.snoozeMinuteOptions;
            }
            if (z) {
                i2 = i5 / 60;
            } else {
                i2 = i5;
            }
            String icuMessageFormat = PluralMessageFormaterKt.icuMessageFormat(context.getResources(), i, i2);
            String format = String.format(resources2.getString(R.string.snoozed_for_time), icuMessageFormat);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = new AccessibilityNodeInfo.AccessibilityAction(i6, icuMessageFormat);
            int indexOf = format.indexOf(icuMessageFormat);
            if (indexOf == -1) {
                notificationSnoozeOption = new NotificationSnoozeOption(this, null, i5, icuMessageFormat, format, accessibilityAction);
            } else {
                SpannableString spannableString = new SpannableString(format);
                spannableString.setSpan(new StyleSpan(1), indexOf, icuMessageFormat.length() + indexOf, 0);
                notificationSnoozeOption = new NotificationSnoozeOption(this, null, i5, icuMessageFormat, spannableString, accessibilityAction);
            }
            if (i4 == 0 || i5 == i3) {
                this.mDefaultOption = notificationSnoozeOption;
            }
            arrayList.add(notificationSnoozeOption);
        }
        return arrayList;
    }

    public final void logOptionSelection(int i, NotificationSwipeActionHelper.SnoozeOption snoozeOption) {
        this.mMetricsLogger.write(new LogMaker(i).setType(4).addTaggedData(1140, Integer.valueOf(this.mSnoozeOptions.indexOf(snoozeOption))).addTaggedData(1139, Long.valueOf(TimeUnit.MINUTES.toMillis(snoozeOption.getMinutesToSnoozeFor()))));
    }

    public final void setSelected(NotificationSwipeActionHelper.SnoozeOption snoozeOption, boolean z) {
        this.mSelectedOption = snoozeOption;
        if (z) {
            logOptionSelection(1138, snoozeOption);
        }
        if (this.mSnoozeOptions == null || this.mSnoozeOptionContainer == null || this.mSnoozing) {
            return;
        }
        for (int i = 0; i < ((ArrayList) this.mSnoozeOptions).size(); i++) {
            RadioButton radioButton = (RadioButton) this.mSnoozeOptionContainer.getChildAt(i);
            if (radioButton.getTag().equals(this.mSelectedOption)) {
                radioButton.setChecked(true);
            }
        }
    }
}
