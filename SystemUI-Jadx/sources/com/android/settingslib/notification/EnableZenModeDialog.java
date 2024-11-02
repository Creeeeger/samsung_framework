package com.android.settingslib.notification;

import android.R;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.service.notification.Condition;
import android.service.notification.ZenModeConfig;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.internal.policy.PhoneWindow;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EnableZenModeDialog {
    protected static final int COUNTDOWN_ALARM_CONDITION_INDEX = 2;
    protected static final int COUNTDOWN_CONDITION_INDEX = 1;
    public static final boolean DEBUG = Log.isLoggable("EnableZenModeDialog", 3);
    public static final int DEFAULT_BUCKET_INDEX;
    protected static final int FOREVER_CONDITION_INDEX = 0;
    public static final int MAX_BUCKET_MINUTES;
    public static final int[] MINUTE_BUCKETS;
    public static final int MIN_BUCKET_MINUTES;
    public final int MAX_MANUAL_DND_OPTIONS;
    public AlarmManager mAlarmManager;
    public int mBucketIndex;
    public final boolean mCancelIsNeutral;
    protected Context mContext;
    protected Uri mForeverId;
    protected LayoutInflater mLayoutInflater;
    public final ZenModeDialogMetricsLogger mMetricsLogger;
    protected NotificationManager mNotificationManager;
    public final int mThemeResId;
    public int mUserId;
    protected TextView mZenAlarmWarning;
    public RadioGroup mZenRadioGroup;
    protected LinearLayout mZenRadioGroupContent;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class ConditionTag {
        public Condition condition;
        public TextView line1;
        public TextView line2;
        public View lines;
        public RadioButton rb;
    }

    /* renamed from: -$$Nest$monClickTimeButton, reason: not valid java name */
    public static void m67$$Nest$monClickTimeButton(EnableZenModeDialog enableZenModeDialog, View view, ConditionTag conditionTag, boolean z, int i) {
        Condition timeCondition;
        Uri uri;
        int i2;
        enableZenModeDialog.mMetricsLogger.logOnClickTimeButton(z);
        int[] iArr = MINUTE_BUCKETS;
        int length = iArr.length;
        int i3 = enableZenModeDialog.mBucketIndex;
        int i4 = -1;
        int i5 = 0;
        if (i3 == -1) {
            Condition condition = conditionTag.condition;
            timeCondition = null;
            if (condition != null) {
                uri = condition.id;
            } else {
                uri = null;
            }
            long tryParseCountdownConditionId = ZenModeConfig.tryParseCountdownConditionId(uri);
            long currentTimeMillis = System.currentTimeMillis();
            for (int i6 = 0; i6 < length; i6++) {
                if (z) {
                    i2 = i6;
                } else {
                    i2 = (length - 1) - i6;
                }
                int i7 = iArr[i2];
                long j = currentTimeMillis + (VolumePanelState.DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS * i7);
                if ((z && j > tryParseCountdownConditionId) || (!z && j < tryParseCountdownConditionId)) {
                    enableZenModeDialog.mBucketIndex = i2;
                    timeCondition = ZenModeConfig.toTimeCondition(enableZenModeDialog.mContext, j, i7, ActivityManager.getCurrentUser(), false);
                    break;
                }
            }
            if (timeCondition == null) {
                int i8 = DEFAULT_BUCKET_INDEX;
                enableZenModeDialog.mBucketIndex = i8;
                timeCondition = ZenModeConfig.toTimeCondition(enableZenModeDialog.mContext, iArr[i8], ActivityManager.getCurrentUser());
            }
        } else {
            int i9 = length - 1;
            if (z) {
                i4 = 1;
            }
            int max = Math.max(0, Math.min(i9, i3 + i4));
            enableZenModeDialog.mBucketIndex = max;
            timeCondition = ZenModeConfig.toTimeCondition(enableZenModeDialog.mContext, iArr[max], ActivityManager.getCurrentUser());
        }
        enableZenModeDialog.bind(timeCondition, view, i);
        String computeAlarmWarningText = enableZenModeDialog.computeAlarmWarningText(conditionTag.condition);
        enableZenModeDialog.mZenAlarmWarning.setText(computeAlarmWarningText);
        TextView textView = enableZenModeDialog.mZenAlarmWarning;
        if (computeAlarmWarningText == null) {
            i5 = 8;
        }
        textView.setVisibility(i5);
        conditionTag.rb.setChecked(true);
    }

    static {
        int[] iArr = ZenModeConfig.MINUTE_BUCKETS;
        MINUTE_BUCKETS = iArr;
        MIN_BUCKET_MINUTES = iArr[0];
        MAX_BUCKET_MINUTES = iArr[iArr.length - 1];
        DEFAULT_BUCKET_INDEX = Arrays.binarySearch(iArr, 60);
    }

    public EnableZenModeDialog(Context context) {
        this(context, 0);
    }

    public void bind(Condition condition, final View view, final int i) {
        boolean z;
        final ConditionTag conditionTag;
        boolean z2;
        String str;
        float f;
        boolean z3;
        float f2;
        boolean z4;
        if (condition != null) {
            boolean z5 = true;
            if (condition.state == 1) {
                z = true;
            } else {
                z = false;
            }
            if (view.getTag() != null) {
                conditionTag = (ConditionTag) view.getTag();
            } else {
                conditionTag = new ConditionTag();
            }
            view.setTag(conditionTag);
            RadioButton radioButton = conditionTag.rb;
            if (radioButton == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (radioButton == null) {
                conditionTag.rb = (RadioButton) this.mZenRadioGroup.getChildAt(i);
            }
            conditionTag.condition = condition;
            final Uri uri = condition.id;
            if (DEBUG) {
                Log.d("EnableZenModeDialog", "bind i=" + this.mZenRadioGroupContent.indexOfChild(view) + " first=" + z2 + " condition=" + uri);
            }
            conditionTag.rb.setEnabled(z);
            conditionTag.rb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.settingslib.notification.EnableZenModeDialog.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                    String str2;
                    int i2;
                    if (z6) {
                        conditionTag.rb.setChecked(true);
                        if (EnableZenModeDialog.DEBUG) {
                            Log.d("EnableZenModeDialog", "onCheckedChanged " + uri);
                        }
                        EnableZenModeDialog.this.mMetricsLogger.logOnConditionSelected();
                        EnableZenModeDialog enableZenModeDialog = EnableZenModeDialog.this;
                        String computeAlarmWarningText = enableZenModeDialog.computeAlarmWarningText(conditionTag.condition);
                        enableZenModeDialog.mZenAlarmWarning.setText(computeAlarmWarningText);
                        TextView textView = enableZenModeDialog.mZenAlarmWarning;
                        if (computeAlarmWarningText == null) {
                            i2 = 8;
                        } else {
                            i2 = 0;
                        }
                        textView.setVisibility(i2);
                    }
                    TextView textView2 = conditionTag.line1;
                    if (z6) {
                        str2 = compoundButton.getContext().getString(17042601);
                    } else {
                        str2 = null;
                    }
                    textView2.setStateDescription(str2);
                }
            });
            if (conditionTag.lines == null) {
                conditionTag.lines = view.findViewById(R.id.content);
            }
            if (conditionTag.line1 == null) {
                conditionTag.line1 = (TextView) view.findViewById(R.id.text1);
            }
            if (conditionTag.line2 == null) {
                conditionTag.line2 = (TextView) view.findViewById(R.id.text2);
            }
            if (!TextUtils.isEmpty(condition.line1)) {
                str = condition.line1;
            } else {
                str = condition.summary;
            }
            String str2 = condition.line2;
            conditionTag.line1.setText(str);
            if (TextUtils.isEmpty(str2)) {
                conditionTag.line2.setVisibility(8);
            } else {
                conditionTag.line2.setVisibility(0);
                conditionTag.line2.setText(str2);
            }
            conditionTag.lines.setEnabled(z);
            View view2 = conditionTag.lines;
            float f3 = 1.0f;
            if (z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            view2.setAlpha(f);
            conditionTag.lines.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.settingslib.notification.EnableZenModeDialog.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    conditionTag.rb.setChecked(true);
                }
            });
            long tryParseCountdownConditionId = ZenModeConfig.tryParseCountdownConditionId(uri);
            ImageView imageView = (ImageView) view.findViewById(R.id.button1);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.button2);
            View findViewById = view.findViewById(com.android.systemui.R.id.divider_view);
            if (i == 1 && tryParseCountdownConditionId > 0) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.settingslib.notification.EnableZenModeDialog.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        EnableZenModeDialog.m67$$Nest$monClickTimeButton(EnableZenModeDialog.this, view, conditionTag, false, i);
                        conditionTag.lines.setAccessibilityLiveRegion(1);
                    }
                });
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.settingslib.notification.EnableZenModeDialog.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        EnableZenModeDialog.m67$$Nest$monClickTimeButton(EnableZenModeDialog.this, view, conditionTag, true, i);
                        conditionTag.lines.setAccessibilityLiveRegion(1);
                    }
                });
                int i2 = this.mBucketIndex;
                if (i2 > -1) {
                    if (i2 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    imageView.setEnabled(z4);
                    if (this.mBucketIndex >= MINUTE_BUCKETS.length - 1) {
                        z5 = false;
                    }
                    imageView2.setEnabled(z5);
                } else {
                    if (tryParseCountdownConditionId - System.currentTimeMillis() > MIN_BUCKET_MINUTES * VolumePanelState.DIALOG_TIMEOUT_SET_SAFE_MEDIA_VOLUME_MILLIS) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    imageView.setEnabled(z3);
                    imageView2.setEnabled(!Objects.equals(condition.summary, ZenModeConfig.toTimeCondition(this.mContext, MAX_BUCKET_MINUTES, ActivityManager.getCurrentUser()).summary));
                }
                if (imageView.isEnabled()) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.5f;
                }
                imageView.setAlpha(f2);
                if (!imageView2.isEnabled()) {
                    f3 = 0.5f;
                }
                imageView2.setAlpha(f3);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
            } else {
                if (imageView != null) {
                    ((ViewGroup) view).removeView(imageView);
                }
                if (imageView2 != null) {
                    ((ViewGroup) view).removeView(imageView2);
                }
            }
            view.setVisibility(0);
            return;
        }
        throw new IllegalArgumentException("condition must not be null");
    }

    public void bindConditions(Condition condition) {
        bind(forever(), this.mZenRadioGroupContent.getChildAt(0), 0);
        if (condition == null) {
            bindGenericCountdown();
            bindNextAlarm(getTimeUntilNextAlarmCondition());
            return;
        }
        if (isForever(condition)) {
            getConditionTagAt(0).rb.setChecked(true);
            bindGenericCountdown();
            bindNextAlarm(getTimeUntilNextAlarmCondition());
        } else if (isAlarm(condition)) {
            bindGenericCountdown();
            bindNextAlarm(condition);
            getConditionTagAt(2).rb.setChecked(true);
        } else if (isCountdown(condition)) {
            bindNextAlarm(getTimeUntilNextAlarmCondition());
            bind(condition, this.mZenRadioGroupContent.getChildAt(1), 1);
            getConditionTagAt(1).rb.setChecked(true);
        } else {
            Slog.d("EnableZenModeDialog", "Invalid manual condition: " + condition);
        }
    }

    public void bindGenericCountdown() {
        int i = DEFAULT_BUCKET_INDEX;
        this.mBucketIndex = i;
        bind(ZenModeConfig.toTimeCondition(this.mContext, MINUTE_BUCKETS[i], ActivityManager.getCurrentUser()), this.mZenRadioGroupContent.getChildAt(1), 1);
    }

    public void bindNextAlarm(Condition condition) {
        boolean z;
        int i;
        View childAt = this.mZenRadioGroupContent.getChildAt(2);
        if (condition != null) {
            bind(condition, childAt, 2);
        }
        ConditionTag conditionTag = (ConditionTag) childAt.getTag();
        int i2 = 0;
        if (conditionTag != null && conditionTag.condition != null) {
            z = true;
        } else {
            z = false;
        }
        View childAt2 = this.mZenRadioGroup.getChildAt(2);
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        childAt2.setVisibility(i);
        if (!z) {
            i2 = 8;
        }
        childAt.setVisibility(i2);
    }

    public String computeAlarmWarningText(Condition condition) {
        boolean z;
        long j;
        int i = 0;
        if ((this.mNotificationManager.getNotificationPolicy().priorityCategories & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        AlarmManager.AlarmClockInfo nextAlarmClock = this.mAlarmManager.getNextAlarmClock(this.mUserId);
        if (nextAlarmClock != null) {
            j = nextAlarmClock.getTriggerTime();
        } else {
            j = 0;
        }
        if (j < currentTimeMillis) {
            return null;
        }
        if (condition != null && !isForever(condition)) {
            long tryParseCountdownConditionId = ZenModeConfig.tryParseCountdownConditionId(condition.id);
            if (tryParseCountdownConditionId > currentTimeMillis && j < tryParseCountdownConditionId) {
                i = com.android.systemui.R.string.zen_alarm_warning;
            }
        } else {
            i = com.android.systemui.R.string.zen_alarm_warning_indef;
        }
        if (i == 0) {
            return null;
        }
        return this.mContext.getResources().getString(i, getTime(j, currentTimeMillis));
    }

    public final AlertDialog createDialog() {
        this.mNotificationManager = (NotificationManager) this.mContext.getSystemService(SubRoom.EXTRA_VALUE_NOTIFICATION);
        this.mForeverId = Condition.newId(this.mContext).appendPath("forever").build();
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        this.mUserId = this.mContext.getUserId();
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(this.mContext, this.mThemeResId).setTitle(com.android.systemui.R.string.zen_mode_settings_turn_on_dialog_title).setPositiveButton(com.android.systemui.R.string.zen_mode_enable_dialog_turn_on, new DialogInterface.OnClickListener() { // from class: com.android.settingslib.notification.EnableZenModeDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ConditionTag conditionTagAt = EnableZenModeDialog.this.getConditionTagAt(EnableZenModeDialog.this.mZenRadioGroup.getCheckedRadioButtonId());
                if (EnableZenModeDialog.this.isForever(conditionTagAt.condition)) {
                    EnableZenModeDialog.this.mMetricsLogger.logOnEnableZenModeForever();
                } else if (EnableZenModeDialog.this.isAlarm(conditionTagAt.condition)) {
                    EnableZenModeDialog.this.mMetricsLogger.logOnEnableZenModeUntilAlarm();
                } else if (EnableZenModeDialog.this.isCountdown(conditionTagAt.condition)) {
                    EnableZenModeDialog.this.mMetricsLogger.logOnEnableZenModeUntilCountdown();
                } else {
                    Slog.d("EnableZenModeDialog", "Invalid manual condition: " + conditionTagAt.condition);
                }
                EnableZenModeDialog enableZenModeDialog = EnableZenModeDialog.this;
                NotificationManager notificationManager = enableZenModeDialog.mNotificationManager;
                Condition condition = conditionTagAt.condition;
                Uri uri = null;
                if (!enableZenModeDialog.isForever(condition) && condition != null) {
                    uri = condition.id;
                }
                notificationManager.setZenMode(1, uri, "EnableZenModeDialog");
            }
        });
        if (this.mCancelIsNeutral) {
            positiveButton.setNeutralButton(com.android.systemui.R.string.cancel, (DialogInterface.OnClickListener) null);
        } else {
            positiveButton.setNegativeButton(com.android.systemui.R.string.cancel, (DialogInterface.OnClickListener) null);
        }
        if (this.mLayoutInflater == null) {
            this.mLayoutInflater = new PhoneWindow(this.mContext).getLayoutInflater();
        }
        View inflate = this.mLayoutInflater.inflate(com.android.systemui.R.layout.zen_mode_turn_on_dialog_container, (ViewGroup) null);
        ScrollView scrollView = (ScrollView) inflate.findViewById(com.android.systemui.R.id.container);
        this.mZenRadioGroup = (RadioGroup) scrollView.findViewById(com.android.systemui.R.id.zen_radio_buttons);
        this.mZenRadioGroupContent = (LinearLayout) scrollView.findViewById(com.android.systemui.R.id.zen_radio_buttons_content);
        this.mZenAlarmWarning = (TextView) scrollView.findViewById(com.android.systemui.R.id.zen_alarm_warning);
        int i = 0;
        while (true) {
            int i2 = this.MAX_MANUAL_DND_OPTIONS;
            if (i >= i2) {
                break;
            }
            View inflate2 = this.mLayoutInflater.inflate(com.android.systemui.R.layout.zen_mode_radio_button, (ViewGroup) this.mZenRadioGroup, false);
            this.mZenRadioGroup.addView(inflate2);
            inflate2.setId(i);
            View inflate3 = this.mLayoutInflater.inflate(com.android.systemui.R.layout.zen_mode_condition, (ViewGroup) this.mZenRadioGroupContent, false);
            inflate3.setId(i2 + i);
            this.mZenRadioGroupContent.addView(inflate3);
            i++;
        }
        int childCount = this.mZenRadioGroupContent.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            this.mZenRadioGroupContent.getChildAt(i3).setVisibility(8);
        }
        this.mZenAlarmWarning.setVisibility(8);
        bindConditions(forever());
        positiveButton.setView(inflate);
        return positiveButton.create();
    }

    public final Condition forever() {
        return new Condition(Condition.newId(this.mContext).appendPath("forever").build(), this.mContext.getString(17043438), "", "", 0, 1, 0);
    }

    public ConditionTag getConditionTagAt(int i) {
        return (ConditionTag) this.mZenRadioGroupContent.getChildAt(i).getTag();
    }

    public String getTime(long j, long j2) {
        boolean z;
        String str;
        int i;
        if (j - j2 < 86400000) {
            z = true;
        } else {
            z = false;
        }
        boolean is24HourFormat = DateFormat.is24HourFormat(this.mContext, ActivityManager.getCurrentUser());
        if (z) {
            if (is24HourFormat) {
                str = "Hm";
            } else {
                str = "hma";
            }
        } else if (is24HourFormat) {
            str = "EEEHm";
        } else {
            str = "EEEhma";
        }
        CharSequence format = DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), str), j);
        if (z) {
            i = com.android.systemui.R.string.alarm_template;
        } else {
            i = com.android.systemui.R.string.alarm_template_far;
        }
        return this.mContext.getResources().getString(i, format);
    }

    public Condition getTimeUntilNextAlarmCondition() {
        long j;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(11, 0);
        gregorianCalendar.set(12, 0);
        gregorianCalendar.set(13, 0);
        gregorianCalendar.set(14, 0);
        gregorianCalendar.add(5, 6);
        AlarmManager.AlarmClockInfo nextAlarmClock = this.mAlarmManager.getNextAlarmClock(this.mUserId);
        if (nextAlarmClock != null) {
            j = nextAlarmClock.getTriggerTime();
        } else {
            j = 0;
        }
        if (j > 0) {
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
            gregorianCalendar2.setTimeInMillis(j);
            gregorianCalendar2.set(11, 0);
            gregorianCalendar2.set(12, 0);
            gregorianCalendar2.set(13, 0);
            gregorianCalendar2.set(14, 0);
            if (gregorianCalendar.compareTo((Calendar) gregorianCalendar2) >= 0) {
                return ZenModeConfig.toNextAlarmCondition(this.mContext, j, ActivityManager.getCurrentUser());
            }
            return null;
        }
        return null;
    }

    public boolean isAlarm(Condition condition) {
        if (condition != null && ZenModeConfig.isValidCountdownToAlarmConditionId(condition.id)) {
            return true;
        }
        return false;
    }

    public boolean isCountdown(Condition condition) {
        if (condition != null && ZenModeConfig.isValidCountdownConditionId(condition.id)) {
            return true;
        }
        return false;
    }

    public final boolean isForever(Condition condition) {
        if (condition != null && this.mForeverId.equals(condition.id)) {
            return true;
        }
        return false;
    }

    public EnableZenModeDialog(Context context, int i) {
        this(context, i, false, new ZenModeDialogMetricsLogger(context));
    }

    public EnableZenModeDialog(Context context, int i, boolean z, ZenModeDialogMetricsLogger zenModeDialogMetricsLogger) {
        this.mBucketIndex = -1;
        this.MAX_MANUAL_DND_OPTIONS = 3;
        this.mContext = context;
        this.mThemeResId = i;
        this.mCancelIsNeutral = z;
        this.mMetricsLogger = zenModeDialogMetricsLogger;
    }
}
