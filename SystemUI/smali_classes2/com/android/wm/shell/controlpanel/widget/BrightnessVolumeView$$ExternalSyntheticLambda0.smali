.class public final synthetic Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    check-cast p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->returnToMenu()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string/jumbo v1, "screen_brightness"

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setBrightnessViewColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    check-cast p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->returnToMenu()V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultVolumeIcon()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isClockActivity(Landroid/content/Context;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 173
    .line 174
    const v1, 0x3ecccccd    # 0.4f

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeSeekBar(I)V

    .line 189
    .line 190
    .line 191
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeIcon(I)V

    .line 194
    .line 195
    .line 196
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_6

    .line 203
    .line 204
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    .line 207
    .line 208
    .line 209
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    .line 210
    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
