.class public final Lcom/android/wm/shell/controlpanel/action/TouchPadAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAction()Lcom/android/wm/shell/controlpanel/action/TouchPadAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/controlpanel/action/TouchPadAction;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 6

    .line 1
    sget-object p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_9

    .line 17
    .line 18
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 19
    .line 20
    const-wide/16 v0, 0x64

    .line 21
    .line 22
    const-string p1, "MEDIA_PANEL"

    .line 23
    .line 24
    const-string v2, "MEDIA_TOUCH_PAD_ENABLED"

    .line 25
    .line 26
    const-string v3, "TOUCH_PAD_ENABLED"

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez p0, :cond_6

    .line 31
    .line 32
    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 37
    .line 38
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    iget-object p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-direct {p1, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_0
    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 62
    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 78
    .line 79
    invoke-virtual {p2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 84
    .line 85
    invoke-virtual {p2, v2, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 96
    .line 97
    invoke-virtual {p2, v3, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 102
    .line 103
    invoke-virtual {p2, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 107
    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 111
    .line 112
    .line 113
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditActions:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 130
    .line 131
    iget-object v0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridLayout:Landroid/widget/GridLayout;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getEditButton(Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)Landroid/widget/LinearLayout;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 142
    .line 143
    if-eqz p0, :cond_9

    .line 144
    .line 145
    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    iput-boolean v5, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 150
    .line 151
    invoke-virtual {p2, v3, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    new-instance p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 155
    .line 156
    iget-boolean p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 157
    .line 158
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;-><init>(Landroid/content/Context;Z)V

    .line 159
    .line 160
    .line 161
    iput-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 164
    .line 165
    .line 166
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 167
    .line 168
    if-eqz p0, :cond_9

    .line 169
    .line 170
    invoke-static {p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_9

    .line 175
    .line 176
    sget-boolean p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 177
    .line 178
    if-nez p0, :cond_9

    .line 179
    .line 180
    new-instance p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 181
    .line 182
    iget-boolean p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 183
    .line 184
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;-><init>(Landroid/content/Context;Z)V

    .line 185
    .line 186
    .line 187
    iput-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    iput-boolean v4, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mForceTouchPadRemoved:Z

    .line 194
    .line 195
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPreferences$1(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-eqz p0, :cond_7

    .line 200
    .line 201
    invoke-virtual {p2, v2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad()V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    invoke-virtual {p2, v3, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setPreferences(Ljava/lang/String;Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad()V

    .line 212
    .line 213
    .line 214
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 215
    .line 216
    if-eqz p0, :cond_8

    .line 217
    .line 218
    invoke-virtual {p2, v5}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->updateStatusPreferences(Z)V

    .line 219
    .line 220
    .line 221
    :cond_8
    iget-boolean p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 222
    .line 223
    if-eqz p0, :cond_9

    .line 224
    .line 225
    iget-object p0, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    iget-object p1, p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeOut:Landroid/view/animation/Animation;

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    .line 231
    .line 232
    new-instance p0, Landroid/os/Handler;

    .line 233
    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 235
    .line 236
    .line 237
    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;

    .line 238
    .line 239
    const/4 v2, 0x5

    .line 240
    invoke-direct {p1, p2, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .line 245
    .line 246
    :cond_9
    :goto_3
    return-void
.end method
