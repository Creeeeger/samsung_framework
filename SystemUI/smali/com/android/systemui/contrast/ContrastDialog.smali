.class public final Lcom/android/systemui/contrast/ContrastDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# instance fields
.field public contrastButtons:Ljava/util/Map;

.field public dialogView:Landroid/view/View;

.field public initialContrast:F

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final uiModeManager:Landroid/app/UiModeManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialog;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/contrast/ContrastDialog;->uiModeManager:Landroid/app/UiModeManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->fromContrastLevel(I)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->initialContrast:F

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic getContrastButtons$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getInitialContrast$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final highlightContrast(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog;->contrastButtons:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    if-ne v1, p1, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method

.method public final onContrastChanged(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->toContrastLevel(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/contrast/ContrastDialog;->highlightContrast(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d0087

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->dialogView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f130d8e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;-><init>(Lcom/android/systemui/contrast/ContrastDialog;)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f130300

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v0, v2

    .line 51
    :goto_0
    const-string/jumbo v1, "wallpapertheme_state"

    .line 52
    .line 53
    .line 54
    const/4 v3, -0x1

    .line 55
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v3, 0x1

    .line 61
    if-ne v0, v3, :cond_1

    .line 62
    .line 63
    move v0, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v0, v1

    .line 66
    :goto_1
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$2;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/contrast/ContrastDialog$onCreate$2;-><init>(Lcom/android/systemui/contrast/ContrastDialog;)V

    .line 71
    .line 72
    .line 73
    const v4, 0x7f13030a

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    new-instance v0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3;-><init>(Lcom/android/systemui/contrast/ContrastDialog;)V

    .line 82
    .line 83
    .line 84
    const v4, 0x7f1304cf

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const v0, 0x7f0a02a5

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v4, Lkotlin/Pair;

    .line 105
    .line 106
    invoke-direct {v4, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const v0, 0x7f0a02a4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v5, Lkotlin/Pair;

    .line 121
    .line 122
    invoke-direct {v5, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x2

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const v0, 0x7f0a02a3

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v6, Lkotlin/Pair;

    .line 138
    .line 139
    invoke-direct {v6, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    filled-new-array {v4, v5, v6}, [Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->contrastButtons:Ljava/util/Map;

    .line 151
    .line 152
    if-eqz p1, :cond_3

    .line 153
    .line 154
    move-object v2, p1

    .line 155
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/FrameLayout;

    .line 190
    .line 191
    new-instance v4, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;

    .line 192
    .line 193
    invoke-direct {v4, v2, p0}, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;-><init>(ILcom/android/systemui/contrast/ContrastDialog;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->uiModeManager:Landroid/app/UiModeManager;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getContrast()F

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iput p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->initialContrast:F

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 211
    .line 212
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const-string v2, "contrast_level"

    .line 219
    .line 220
    const/high16 v4, -0x40800000    # -1.0f

    .line 221
    .line 222
    invoke-interface {p1, v2, v0, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloatForUser(Ljava/lang/String;IF)F

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    cmpg-float p1, p1, v4

    .line 227
    .line 228
    if-nez p1, :cond_5

    .line 229
    .line 230
    move v1, v3

    .line 231
    :cond_5
    if-nez v1, :cond_6

    .line 232
    .line 233
    iget p1, p0, Lcom/android/systemui/contrast/ContrastDialog;->initialContrast:F

    .line 234
    .line 235
    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->toContrastLevel(F)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/systemui/contrast/ContrastDialog;->highlightContrast(I)V

    .line 240
    .line 241
    .line 242
    :cond_6
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->uiModeManager:Landroid/app/UiModeManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/contrast/ContrastDialog;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/app/UiModeManager;->addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->uiModeManager:Landroid/app/UiModeManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
