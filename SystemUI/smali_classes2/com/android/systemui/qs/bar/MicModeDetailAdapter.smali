.class public final Lcom/android/systemui/qs/bar/MicModeDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mItemsList:Ljava/util/ArrayList;

.field public mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "audio"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    .line 23
    const-string p0, "micmode_pref"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMicModeType()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_0
    const-string p1, "ASMM1032"

    .line 42
    .line 43
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0382

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const v0, 0x7f0a0690

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    const v2, 0x7f0d0384

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 34
    .line 35
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 44
    .line 45
    const-string v3, "mic_mode_effect"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 62
    .line 63
    const-string v3, "mic_mode_wificall"

    .line 64
    .line 65
    invoke-virtual {p2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    const/4 v3, 0x1

    .line 74
    if-ne p2, v3, :cond_0

    .line 75
    .line 76
    move p2, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move p2, v1

    .line 79
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/media/AudioManager;->getModeInternal()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/4 v5, 0x3

    .line 86
    if-ne v4, v5, :cond_1

    .line 87
    .line 88
    if-nez p2, :cond_1

    .line 89
    .line 90
    move p2, v3

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    move p2, v1

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 94
    .line 95
    const/4 v6, 0x2

    .line 96
    if-nez v4, :cond_2

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_2
    const-string v4, "MicModeDetailAdapter"

    .line 100
    .line 101
    const-string/jumbo v7, "setItems"

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    new-instance v4, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v1, v5

    .line 116
    :goto_2
    if-eqz p2, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    move v5, v6

    .line 120
    :goto_3
    add-int/2addr v5, v1

    .line 121
    :goto_4
    if-ge v1, v5, :cond_5

    .line 122
    .line 123
    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;->create(ILandroid/content/Context;)Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 134
    .line 135
    iget-object v1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 141
    .line 142
    invoke-virtual {p1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    .line 156
    .line 157
    :goto_5
    if-eqz p2, :cond_6

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    add-int/lit8 v2, v2, 0x3

    .line 161
    .line 162
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 163
    .line 164
    iput v2, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    .line 165
    .line 166
    iget-object p2, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 167
    .line 168
    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 172
    .line 173
    invoke-virtual {p1, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    return-object p3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x1393

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f130f68

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "sec-600"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v3, 0x258

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v1, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string/jumbo v3, "sec-400"

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/16 v5, 0x190

    .line 30
    .line 31
    invoke-static {v3, v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const v5, 0x7f0603e3

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const v7, 0x7f0603e4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ne v0, v2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v2, v4

    .line 66
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 67
    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v5, v7

    .line 73
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const v0, 0x7f080c53

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {p0, v4, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    .line 97
    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    move-object v0, p0

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object v0, v6

    .line 105
    :goto_2
    if-eqz p2, :cond_3

    .line 106
    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move-object p0, v6

    .line 111
    :goto_3
    invoke-virtual {p1, v0, v6, p0, v6}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    .line 113
    .line 114
    if-eqz p2, :cond_4

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    move-object v1, v3

    .line 118
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    return-void
.end method
