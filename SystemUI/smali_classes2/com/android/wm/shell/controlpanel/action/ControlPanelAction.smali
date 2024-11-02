.class public final Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final mActionType:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 9
    .line 10
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0x7f130525

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 27
    .line 28
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v5, 0x7f080a9f

    .line 35
    .line 36
    .line 37
    const v6, 0x7f130303

    .line 38
    .line 39
    .line 40
    const v7, 0x7f13067d

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 50
    .line 51
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const v5, 0x7f080a2d

    .line 58
    .line 59
    .line 60
    const v6, 0x7f130c44

    .line 61
    .line 62
    .line 63
    const v7, 0x7f13067c

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 73
    .line 74
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const v5, 0x7f08081c

    .line 81
    .line 82
    .line 83
    const v6, 0x7f1302c1

    .line 84
    .line 85
    .line 86
    const v7, 0x7f13067b

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 96
    .line 97
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const v5, 0x7f080a6f

    .line 104
    .line 105
    .line 106
    const v6, 0x7f131213

    .line 107
    .line 108
    .line 109
    const v7, 0x7f130683

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 119
    .line 120
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const v5, 0x7f080ac8

    .line 127
    .line 128
    .line 129
    const v6, 0x7f131099

    .line 130
    .line 131
    .line 132
    const v7, 0x7f13067f

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 142
    .line 143
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const v5, 0x7f0808f9

    .line 150
    .line 151
    .line 152
    const v6, 0x7f13104d

    .line 153
    .line 154
    .line 155
    const v7, 0x7f13067e

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 165
    .line 166
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const v5, 0x7f080987

    .line 173
    .line 174
    .line 175
    const v6, 0x7f130521

    .line 176
    .line 177
    .line 178
    const v7, 0x7f130680

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 188
    .line 189
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 202
    .line 203
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const v3, 0x7f080853

    .line 210
    .line 211
    .line 212
    const v4, 0x7f131160

    .line 213
    .line 214
    .line 215
    const v5, 0x7f130682

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoggingID(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    const v2, 0x7f130525

    .line 5
    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 16
    .line 17
    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    .line 18
    .line 19
    if-ne p0, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mLogging:I

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mLogging:I

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_1
    return-object p0

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static getResourceIdByActionValue(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 14
    .line 15
    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    .line 16
    .line 17
    if-ne p0, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mIcon:I

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v0
.end method

.method public static getStringIdByActionValue(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 14
    .line 15
    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    .line 16
    .line 17
    if-ne p0, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mName:I

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v0
.end method
