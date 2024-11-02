.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x1

    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sparse-switch v5, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string v5, "com.samsung.android.app.screenrecorder.off"

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v4, 0x4

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v4, 0x3

    .line 44
    goto :goto_0

    .line 45
    :sswitch_2
    const-string v5, "android.intent.action.COLLAPSE_FLEX_PANEL"

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v4, 0x2

    .line 55
    goto :goto_0

    .line 56
    :sswitch_3
    const-string v5, "com.samsung.android.app.screenrecorder.on"

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v4, 0x1

    .line 66
    goto :goto_0

    .line 67
    :sswitch_4
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v4, 0x0

    .line 77
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 83
    .line 84
    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string/jumbo p1, "reason"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string/jumbo p2, "recentapps"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    new-instance p1, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p2, "F004"

    .line 121
    .line 122
    const-string v0, "a"

    .line 123
    .line 124
    invoke-static {p2, v0, p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 128
    .line 129
    sget p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->closeOperation()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 136
    .line 137
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :pswitch_4
    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isClockActivity(Landroid/content/Context;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_7

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 149
    .line 150
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 151
    .line 152
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 157
    .line 158
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 163
    .line 164
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    .line 169
    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_6
    const-string/jumbo v1, "setVolumeProgress streamType : "

    .line 174
    .line 175
    .line 176
    const-string v2, ", newVolume : "

    .line 177
    .line 178
    const-string v3, ", oldVolume : "

    .line 179
    .line 180
    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    const-string v0, "BrightnessVolumeView"

    .line 192
    .line 193
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeSeekBar(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeIcon(I)V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_1
    return-void

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_4
        -0x3011414a -> :sswitch_3
        -0x1d739ef5 -> :sswitch_2
        -0x1808c879 -> :sswitch_1
        0x2de91778 -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
