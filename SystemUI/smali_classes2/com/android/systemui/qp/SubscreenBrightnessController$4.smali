.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    const-string p1, "SubscreenBrightnessController"

    .line 2
    .line 3
    const-string p3, "onProgressChanged"

    .line 4
    .line 5
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 9
    .line 10
    sget-boolean p3, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/qp/SubscreenBrightnessController;->onChanged(IZZ)V

    .line 14
    .line 15
    .line 16
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 17
    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    iget-object p3, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-class p3, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 26
    .line 27
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 48
    .line 49
    const-string/jumbo v1, "sub_screen_brightness_mode"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    move p1, p3

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move p1, v0

    .line 65
    :goto_0
    if-nez p1, :cond_3

    .line 66
    .line 67
    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialogEnabled:Z

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget-boolean p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 76
    .line 77
    iget-object v1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget v1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    .line 82
    .line 83
    if-gt v1, p2, :cond_2

    .line 84
    .line 85
    iget-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 86
    .line 87
    if-nez p0, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const p2, 0x7f140559

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p0}, Lcom/android/systemui/util/SystemUIDialogUtils;->createSystemUIDialogUtils(ILandroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const p2, 0x7f130f10

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    iget-object p2, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    const v0, 0x7f130f14

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 138
    .line 139
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 143
    .line 144
    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-direct {p2, p1}, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 147
    .line 148
    .line 149
    const p3, 0x7f130f13

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 156
    .line 157
    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda2;

    .line 158
    .line 159
    invoke-direct {p2}, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda2;-><init>()V

    .line 160
    .line 161
    .line 162
    const p3, 0x7f130f11

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 169
    .line 170
    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$6;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Lcom/android/systemui/qp/SubscreenBrightnessController$6;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 181
    .line 182
    .line 183
    :cond_1
    return-void

    .line 184
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 185
    .line 186
    if-eqz p1, :cond_3

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_3

    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    .line 200
    .line 201
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 204
    .line 205
    if-eqz p1, :cond_4

    .line 206
    .line 207
    iget v1, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    .line 208
    .line 209
    if-gt v1, p2, :cond_4

    .line 210
    .line 211
    sget-boolean p2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 212
    .line 213
    if-eqz p2, :cond_4

    .line 214
    .line 215
    iget-boolean p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 216
    .line 217
    invoke-virtual {p1, p3, p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_4
    if-eqz p1, :cond_5

    .line 222
    .line 223
    iget-boolean p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 224
    .line 225
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    .line 226
    .line 227
    .line 228
    :cond_5
    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/qp/SubscreenBrightnessController;->onChanged(IZZ)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    iget-object v4, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mBrightnessLevels:[I

    .line 34
    .line 35
    array-length v5, v4

    .line 36
    const v6, 0x7fffffff

    .line 37
    .line 38
    .line 39
    move v7, v0

    .line 40
    move v8, v7

    .line 41
    :goto_0
    if-ge v7, v5, :cond_1

    .line 42
    .line 43
    aget v9, v4, v7

    .line 44
    .line 45
    sub-int v10, v9, v2

    .line 46
    .line 47
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-ge v10, v6, :cond_0

    .line 52
    .line 53
    move v8, v9

    .line 54
    move v6, v10

    .line 55
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v2, v8

    .line 59
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string/jumbo v4, "sub_screen_brightness"

    .line 68
    .line 69
    .line 70
    const/4 v5, -0x2

    .line 71
    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 77
    .line 78
    iget-boolean v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 79
    .line 80
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->setDualSeekBarResources(ZZ)V

    .line 81
    .line 82
    .line 83
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$4;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 88
    .line 89
    iget-boolean p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    .line 90
    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 94
    .line 95
    const-string p1, "QPPE2025"

    .line 96
    .line 97
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 102
    .line 103
    const-string v0, "QPPE2024"

    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    add-int/2addr p1, v3

    .line 115
    int-to-long v0, p1

    .line 116
    const-string p1, "QPDS2025"

    .line 117
    .line 118
    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(JLjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 123
    .line 124
    const-string p1, "QPPE2009"

    .line 125
    .line 126
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method
