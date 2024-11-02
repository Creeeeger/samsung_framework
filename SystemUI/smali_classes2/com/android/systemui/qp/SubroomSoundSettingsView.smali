.class public Lcom/android/systemui/qp/SubroomSoundSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

.field public mSoundBackground:Landroid/widget/LinearLayout;

.field public mSoundButton:Landroid/widget/ImageView;

.field public mSoundProfile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    sget-object p2, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sput-object p2, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 25
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "android.settings.ALL_SOUND_MUTE"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    .line 50
    .line 51
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    const/4 v3, 0x0

    .line 58
    if-ne v0, v2, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "all_sound_off"

    .line 67
    .line 68
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ne v0, v1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v1, v3

    .line 76
    :goto_0
    if-eqz v1, :cond_2

    .line 77
    .line 78
    const/4 v0, 0x4

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(IZ)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a96

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a0a94

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 27
    .line 28
    new-instance v1, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda1;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final setSoundIcon(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7f13006f

    .line 3
    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const v5, 0x7f130e07

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f131106

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    if-ne p1, v0, :cond_3

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const v5, 0x7f130e09

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const v1, 0x7f131105

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const v5, 0x7f130e08

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const v1, 0x7f131107

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    const/4 v1, 0x0

    .line 125
    const v2, 0x7f080e25

    .line 126
    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    const/4 v4, 0x4

    .line 130
    if-eqz p2, :cond_9

    .line 131
    .line 132
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 133
    .line 134
    iget-object v5, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    if-eq p1, v0, :cond_7

    .line 143
    .line 144
    if-eq p1, v3, :cond_6

    .line 145
    .line 146
    if-eq p1, v4, :cond_5

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move v1, v2

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    const v1, 0x7f080e63

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    const v1, 0x7f080e7a

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    const v1, 0x7f080e70

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 182
    .line 183
    iget-object v5, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    if-eqz p1, :cond_d

    .line 190
    .line 191
    if-eq p1, v0, :cond_c

    .line 192
    .line 193
    if-eq p1, v3, :cond_b

    .line 194
    .line 195
    if-eq p1, v4, :cond_a

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_a
    move v1, v2

    .line 199
    goto :goto_5

    .line 200
    :cond_b
    const v1, 0x7f080e6f

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_c
    const v1, 0x7f080e8a

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_d
    const v1, 0x7f080e79

    .line 209
    .line 210
    .line 211
    :goto_5
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    .line 217
    .line 218
    :goto_6
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    if-eqz p1, :cond_e

    .line 227
    .line 228
    if-eq p1, v4, :cond_e

    .line 229
    .line 230
    const p1, 0x7f081251

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    const p1, 0x7f081255

    .line 235
    .line 236
    .line 237
    :goto_7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method
