.class public Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public currentDensity:F

.field public customizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field public final editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

.field public isTopEdit:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isCurrentTopEdit:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->isTopEdit:Z

    .line 6
    .line 7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 49
    .line 50
    :goto_1
    new-instance v2, Landroid/content/res/Configuration;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 64
    .line 65
    .line 66
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 67
    .line 68
    iput v3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->currentDensity:F

    .line 69
    .line 70
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->isTopEdit:Z

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    if-eq v3, v4, :cond_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const v4, 0x7f070bc3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const v5, 0x7f070bc5

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    add-int/2addr v4, v3

    .line 115
    mul-int/lit8 v4, v4, 0x4

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const v5, 0x7f070bad

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    add-int/2addr v3, v4

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const v5, 0x7f07124b

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const v6, 0x7f070968

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 160
    .line 161
    sub-int/2addr v6, v4

    .line 162
    sub-int/2addr v6, v5

    .line 163
    if-ge v6, v3, :cond_3

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 174
    .line 175
    iput v3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->currentDensity:F

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    goto :goto_3

    .line 179
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 180
    :goto_3
    if-nez v3, :cond_5

    .line 181
    .line 182
    :cond_4
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 183
    .line 184
    if-eq v1, v0, :cond_5

    .line 185
    .line 186
    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->customizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->startClosingAnim()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0d02e7

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 43
    .line 44
    and-int/lit8 v3, v3, 0x30

    .line 45
    .line 46
    const/16 v4, 0x20

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    if-ne v3, v4, :cond_1

    .line 50
    .line 51
    move v3, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v3, v5

    .line 54
    :goto_0
    if-eqz v3, :cond_2

    .line 55
    .line 56
    and-int/lit8 v2, v2, -0x11

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    or-int/lit8 v2, v2, 0x10

    .line 60
    .line 61
    :goto_1
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->isTopEdit:Z

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSTopCustomizer;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSTopCustomizer;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    .line 99
    .line 100
    const/16 v0, 0x8

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    const/4 v2, -0x1

    .line 108
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    .line 113
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 121
    .line 122
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->isTopEdit:Z

    .line 123
    .line 124
    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;Z)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->customizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->customizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 133
    .line 134
    if-nez p1, :cond_5

    .line 135
    .line 136
    const/4 p1, 0x0

    .line 137
    :cond_5
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$5;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$5;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 143
    .line 144
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iget-object v2, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 154
    .line 155
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 156
    .line 157
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown:Z

    .line 158
    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    const-string v3, "SecQSCustomizerBase"

    .line 162
    .line 163
    const-string/jumbo v4, "show customizer"

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    iput-boolean v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown:Z

    .line 170
    .line 171
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    const-string v1, "QPP102"

    .line 175
    .line 176
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const v1, 0x7f0a0850

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Landroid/widget/LinearLayout;

    .line 187
    .line 188
    iput-object v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mSummary:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    invoke-direct {v3, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;)V

    .line 195
    .line 196
    .line 197
    const-wide/16 v4, 0x1f4

    .line 198
    .line 199
    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    .line 201
    .line 202
    :cond_7
    iput-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneCallBack:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$5;

    .line 203
    .line 204
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/high16 v0, 0x1000000

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->customizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->saveTiles(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isPhoneLandscape()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
