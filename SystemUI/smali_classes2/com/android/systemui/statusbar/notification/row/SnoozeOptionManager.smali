.class public final Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sAccessibilityActions:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mParent:Landroid/view/ViewGroup;

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field public mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field public mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field public mSnoozeOptions:Ljava/util/List;

.field public mSnoozing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const v0, 0x7f0a0090

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0a0091

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0a0093

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0a0092

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v0, v1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->sAccessibilityActions:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Landroid/util/KeyValueListParser;

    .line 14
    .line 15
    const/16 v0, 0x2c

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final createOptionViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "layout_inflater"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/LayoutInflater;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/view/LayoutInflater;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    .line 4
    .line 5
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v9, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "notification_snooze_options"

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string v2, "NotificationSnooze"

    .line 31
    .line 32
    const-string v3, "Bad snooze constants"

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    const v2, 0x7f0b0028

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "default"

    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    const v2, 0x7f03003e

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string/jumbo v2, "options_array"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    array-length v0, v11

    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const/4 v13, 0x0

    .line 71
    move v14, v13

    .line 72
    :goto_1
    if-ge v14, v12, :cond_6

    .line 73
    .line 74
    aget v15, v11, v14

    .line 75
    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->sAccessibilityActions:[I

    .line 77
    .line 78
    aget v0, v0, v14

    .line 79
    .line 80
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v2, 0x3c

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    if-lt v15, v2, :cond_0

    .line 88
    .line 89
    move v2, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    move v2, v13

    .line 92
    :goto_2
    if-eqz v2, :cond_1

    .line 93
    .line 94
    const v4, 0x7f131082

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_1
    const v4, 0x7f131083

    .line 99
    .line 100
    .line 101
    :goto_3
    if-eqz v2, :cond_2

    .line 102
    .line 103
    div-int/lit8 v2, v15, 0x3c

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_2
    move v2, v15

    .line 107
    :goto_4
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v5, v4, v2}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const v2, 0x7f131088

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 131
    .line 132
    invoke-direct {v6, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v1, -0x1

    .line 140
    if-ne v0, v1, :cond_3

    .line 141
    .line 142
    new-instance v16, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    move-object/from16 v0, v16

    .line 146
    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    move v3, v15

    .line 150
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    .line 155
    .line 156
    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Landroid/text/style/StyleSpan;

    .line 160
    .line 161
    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    add-int/2addr v3, v0

    .line 169
    invoke-virtual {v2, v1, v0, v3, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    .line 171
    .line 172
    new-instance v16, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    move-object/from16 v0, v16

    .line 176
    .line 177
    move-object/from16 v1, p0

    .line 178
    .line 179
    move-object v5, v2

    .line 180
    move-object v2, v3

    .line 181
    move v3, v15

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 183
    .line 184
    .line 185
    :goto_5
    if-eqz v14, :cond_4

    .line 186
    .line 187
    if-ne v15, v10, :cond_5

    .line 188
    .line 189
    :cond_4
    iput-object v0, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    .line 190
    .line 191
    :cond_5
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    add-int/lit8 v14, v14, 0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    return-object v9
.end method

.method public final logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    int-to-long v2, p2

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 19
    .line 20
    new-instance p2, Landroid/metrics/LogMaker;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x4

    .line 26
    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 p2, 0x474

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 p2, 0x473

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x472

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozing:Z

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    return-void

    .line 25
    :cond_3
    const/4 p1, 0x0

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    .line 27
    .line 28
    check-cast p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-ge p1, p2, :cond_5

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/widget/RadioButton;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    .line 59
    .line 60
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    return-void
.end method
