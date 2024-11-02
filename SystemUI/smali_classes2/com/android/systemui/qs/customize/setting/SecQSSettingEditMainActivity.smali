.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;,
        Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final CHILD_ACTIVITY_REQUEST_CODE:I

.field public final accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$accessibilityDelegate$1;

.field public final editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

.field public final mFoldStateObserver:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;

.field public mScreenShot:Landroid/graphics/drawable/Drawable;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    const/16 p1, 0x3f2

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->CHILD_ACTIVITY_REQUEST_CODE:I

    .line 11
    .line 12
    new-instance p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mFoldStateObserver:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$accessibilityDelegate$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$accessibilityDelegate$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$accessibilityDelegate$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final applyBlur(Z)V
    .locals 12

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mScreenShot:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCapturedBlurredBackground:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mScreenShot:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string/jumbo v2, "window"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/WindowManager;

    .line 36
    .line 37
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x7d0

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    new-instance v6, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    div-int/lit8 v7, v1, 0x5

    .line 63
    .line 64
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    div-int/lit8 v8, p1, 0x5

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x1

    .line 71
    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v1, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/android/systemui/blur/QSColorCurve;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-direct {v2, v3}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 94
    .line 95
    .line 96
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 99
    .line 100
    .line 101
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 104
    .line 105
    .line 106
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 109
    .line 110
    .line 111
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 114
    .line 115
    .line 116
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 119
    .line 120
    .line 121
    iget v0, v2, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mScreenShot:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/view/ViewGroup;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mScreenShot:Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_1
    new-instance p1, Lcom/android/systemui/blur/QSColorCurve;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {p1, v1}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 177
    .line 178
    .line 179
    iget v1, p1, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 180
    .line 181
    float-to-int v1, v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget v3, p1, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 187
    .line 188
    iget v4, p1, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 189
    .line 190
    iget v5, p1, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 191
    .line 192
    iget v6, p1, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 193
    .line 194
    iget v7, p1, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 195
    .line 196
    iget v8, p1, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 197
    .line 198
    invoke-virtual/range {v2 .. v8}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->CHILD_ACTIVITY_REQUEST_CODE:I

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isAnotherActivityOverMain:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isMainRelaunchedByConfigChanged:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0d02e0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mFoldStateObserver:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 26
    .line 27
    const v2, 0x7f080dc4

    .line 28
    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const v1, 0x7f0a08e7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isPhoneLandscape()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const v3, 0x7f0a005c

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const v5, 0x7f0705a2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-instance v4, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$onCreate$1;

    .line 81
    .line 82
    invoke-direct {v4, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$onCreate$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/high16 v4, 0x1000000

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string/jumbo v4, "user_starts"

    .line 113
    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    iput-boolean v5, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isAnotherActivityOverMain:Z

    .line 123
    .line 124
    iput-boolean v5, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isMainRelaunchedByConfigChanged:Z

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-boolean v3, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isMainRelaunchedByConfigChanged:Z

    .line 134
    .line 135
    iget-object v4, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    const v3, 0x7f0a0871

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const/4 v6, 0x4

    .line 147
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_3
    sget-object v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->Companion:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED$Companion;

    .line 153
    .line 154
    new-instance v6, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$init$1;

    .line 155
    .line 156
    invoke-direct {v6, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$init$1;-><init>(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    array-length v7, v3

    .line 167
    move v8, v5

    .line 168
    :goto_1
    iget-object v9, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 169
    .line 170
    if-ge v8, v7, :cond_4

    .line 171
    .line 172
    aget-object v10, v3, v8

    .line 173
    .line 174
    iput-object v9, v10, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 175
    .line 176
    iput-object v4, v10, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v9, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 179
    .line 180
    iput-object v9, v10, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->multiSIMController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 181
    .line 182
    iput-object v6, v10, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->updateSALog:Lkotlin/jvm/functions/Function2;

    .line 183
    .line 184
    add-int/lit8 v8, v8, 0x1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 188
    .line 189
    iget-object v11, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v12, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    iget-object v14, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 195
    .line 196
    iget-object v15, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 197
    .line 198
    iget-object v6, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 199
    .line 200
    move-object v10, v3

    .line 201
    move-object/from16 v16, v6

    .line 202
    .line 203
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;ZLcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 204
    .line 205
    .line 206
    iput-object v3, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 207
    .line 208
    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 209
    .line 210
    iget-object v6, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    iget-object v7, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 213
    .line 214
    const/16 v19, 0x1

    .line 215
    .line 216
    iget-object v8, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 217
    .line 218
    iget-object v10, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 219
    .line 220
    iget-object v11, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 221
    .line 222
    move-object/from16 v16, v3

    .line 223
    .line 224
    move-object/from16 v17, v6

    .line 225
    .line 226
    move-object/from16 v18, v7

    .line 227
    .line 228
    move-object/from16 v20, v8

    .line 229
    .line 230
    move-object/from16 v21, v10

    .line 231
    .line 232
    move-object/from16 v22, v11

    .line 233
    .line 234
    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;ZLcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 235
    .line 236
    .line 237
    iput-object v3, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 238
    .line 239
    new-instance v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$init$tunerCallback$1;

    .line 240
    .line 241
    invoke-direct {v3, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$init$tunerCallback$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;)V

    .line 242
    .line 243
    .line 244
    const-string v6, "hide_smart_view_large_tile_on_panel"

    .line 245
    .line 246
    filled-new-array {v6}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v9, v3, v6}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v3, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 254
    .line 255
    if-eqz v3, :cond_5

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    .line 258
    .line 259
    .line 260
    :cond_5
    iget-object v3, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 261
    .line 262
    if-eqz v3, :cond_6

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    .line 265
    .line 266
    .line 267
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    iget-object v3, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_7

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_7
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 282
    .line 283
    if-eqz v3, :cond_8

    .line 284
    .line 285
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->applyBlur(Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_8
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 290
    .line 291
    if-eqz v3, :cond_a

    .line 292
    .line 293
    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->applyBlur(Z)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    const v9, 0x7f060484

    .line 316
    .line 317
    .line 318
    const/4 v10, 0x0

    .line 319
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    const/high16 v9, -0x1000000

    .line 324
    .line 325
    or-int/2addr v8, v9

    .line 326
    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    .line 331
    .line 332
    :cond_a
    :goto_4
    const v3, 0x7f0a005b

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    new-instance v8, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupButtons$1$1;

    .line 340
    .line 341
    invoke-direct {v8, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupButtons$1$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isPhoneLandscape()Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    const/16 v8, 0x8

    .line 352
    .line 353
    if-eqz v7, :cond_b

    .line 354
    .line 355
    const v7, 0x7f0a039f

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_b
    const v7, 0x7f0a039e

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    new-instance v9, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$1$1;

    .line 374
    .line 375
    invoke-direct {v9, v0, v7}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$1$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    const v7, 0x7f0a039d

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    new-instance v9, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$2$1;

    .line 389
    .line 390
    invoke-direct {v9, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$2$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    :goto_5
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    array-length v9, v7

    .line 401
    move v10, v5

    .line 402
    move v11, v10

    .line 403
    :goto_6
    const v12, 0x7f0a0207

    .line 404
    .line 405
    .line 406
    const v13, 0x7f0a0205

    .line 407
    .line 408
    .line 409
    if-ge v10, v9, :cond_11

    .line 410
    .line 411
    aget-object v14, v7, v10

    .line 412
    .line 413
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 414
    .line 415
    .line 416
    move-result v15

    .line 417
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 418
    .line 419
    .line 420
    move-result-object v16

    .line 421
    aget-object v15, v16, v15

    .line 422
    .line 423
    invoke-virtual {v15}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->isAvailable()Z

    .line 424
    .line 425
    .line 426
    move-result v15

    .line 427
    if-eqz v15, :cond_10

    .line 428
    .line 429
    add-int/lit8 v11, v11, 0x1

    .line 430
    .line 431
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 432
    .line 433
    .line 434
    move-result v15

    .line 435
    invoke-virtual {v0, v15}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    invoke-virtual {v15, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    check-cast v12, Landroid/widget/TextView;

    .line 444
    .line 445
    if-nez v12, :cond_c

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_c
    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getTitle()I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    :goto_7
    invoke-virtual {v15, v13}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Landroid/widget/TextView;

    .line 468
    .line 469
    if-nez v3, :cond_d

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_d
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    aget-object v8, v12, v8

    .line 481
    .line 482
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getSelectedIdx()I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    if-nez v8, :cond_e

    .line 487
    .line 488
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    aget-object v8, v8, v12

    .line 497
    .line 498
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getFirst()I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    goto :goto_8

    .line 503
    :cond_e
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    aget-object v8, v8, v12

    .line 512
    .line 513
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getSecond()I

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    :goto_8
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    :goto_9
    new-instance v3, Lkotlin/collections/builders/ListBuilder;

    .line 525
    .line 526
    invoke-direct {v3}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    aget-object v8, v8, v12

    .line 538
    .line 539
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 540
    .line 541
    .line 542
    move-result v12

    .line 543
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 544
    .line 545
    .line 546
    move-result-object v13

    .line 547
    aget-object v12, v13, v12

    .line 548
    .line 549
    invoke-virtual {v12}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->getSelectedIdx()I

    .line 550
    .line 551
    .line 552
    move-result v12

    .line 553
    if-nez v12, :cond_f

    .line 554
    .line 555
    move v12, v6

    .line 556
    goto :goto_a

    .line 557
    :cond_f
    move v12, v5

    .line 558
    :goto_a
    new-instance v13, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;

    .line 559
    .line 560
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getFirst()I

    .line 561
    .line 562
    .line 563
    move-result v15

    .line 564
    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v15

    .line 568
    invoke-direct {v13, v15, v12}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;-><init>(Ljava/lang/String;Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    new-instance v13, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;

    .line 575
    .line 576
    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getSecond()I

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    xor-int/2addr v12, v6

    .line 585
    invoke-direct {v13, v8, v12}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;-><init>(Ljava/lang/String;Z)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 592
    .line 593
    .line 594
    new-instance v8, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 595
    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 597
    .line 598
    .line 599
    move-result-object v12

    .line 600
    invoke-direct {v8, v12, v3}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    new-instance v12, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;

    .line 612
    .line 613
    invoke-direct {v12, v0, v3, v8, v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;Landroid/view/View;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    .line 618
    .line 619
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 620
    .line 621
    const v3, 0x7f0a005b

    .line 622
    .line 623
    .line 624
    const/16 v8, 0x8

    .line 625
    .line 626
    goto/16 :goto_6

    .line 627
    .line 628
    :cond_11
    const v3, 0x7f080dc5

    .line 629
    .line 630
    .line 631
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    const v7, 0x7f080dc3

    .line 636
    .line 637
    .line 638
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    const v8, 0x7f080dc1

    .line 643
    .line 644
    .line 645
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    filled-new-array {v3, v7, v8}, [Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    array-length v8, v7

    .line 658
    move v9, v5

    .line 659
    move v10, v9

    .line 660
    :goto_b
    if-ge v9, v8, :cond_1a

    .line 661
    .line 662
    aget-object v14, v7, v9

    .line 663
    .line 664
    if-eqz v11, :cond_18

    .line 665
    .line 666
    if-eq v11, v6, :cond_17

    .line 667
    .line 668
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 669
    .line 670
    .line 671
    move-result v15

    .line 672
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 673
    .line 674
    .line 675
    move-result-object v17

    .line 676
    aget-object v15, v17, v15

    .line 677
    .line 678
    invoke-virtual {v15}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->isAvailable()Z

    .line 679
    .line 680
    .line 681
    move-result v15

    .line 682
    if-eqz v15, :cond_19

    .line 683
    .line 684
    const/4 v15, 0x2

    .line 685
    if-lez v10, :cond_12

    .line 686
    .line 687
    add-int/lit8 v12, v11, -0x1

    .line 688
    .line 689
    if-ge v10, v12, :cond_12

    .line 690
    .line 691
    move v12, v6

    .line 692
    goto :goto_c

    .line 693
    :cond_12
    add-int/lit8 v12, v11, -0x1

    .line 694
    .line 695
    if-lt v10, v12, :cond_13

    .line 696
    .line 697
    move v12, v15

    .line 698
    goto :goto_c

    .line 699
    :cond_13
    move v12, v5

    .line 700
    :goto_c
    if-eq v12, v15, :cond_16

    .line 701
    .line 702
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 703
    .line 704
    .line 705
    move-result v15

    .line 706
    if-eqz v15, :cond_15

    .line 707
    .line 708
    if-eq v15, v6, :cond_14

    .line 709
    .line 710
    const v15, 0x7f0a034f

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v15}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 714
    .line 715
    .line 716
    move-result-object v15

    .line 717
    check-cast v15, Landroid/widget/LinearLayout;

    .line 718
    .line 719
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    .line 721
    .line 722
    goto :goto_d

    .line 723
    :cond_14
    const v15, 0x7f0a034e

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0, v15}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v15

    .line 730
    check-cast v15, Landroid/widget/LinearLayout;

    .line 731
    .line 732
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    .line 734
    .line 735
    goto :goto_d

    .line 736
    :cond_15
    const v15, 0x7f0a034d

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0, v15}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 740
    .line 741
    .line 742
    move-result-object v15

    .line 743
    check-cast v15, Landroid/widget/LinearLayout;

    .line 744
    .line 745
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    .line 747
    .line 748
    :cond_16
    :goto_d
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 749
    .line 750
    .line 751
    move-result v14

    .line 752
    invoke-virtual {v0, v14}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 753
    .line 754
    .line 755
    move-result-object v14

    .line 756
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 757
    .line 758
    .line 759
    aget-object v12, v3, v12

    .line 760
    .line 761
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 762
    .line 763
    .line 764
    move-result v12

    .line 765
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 766
    .line 767
    .line 768
    add-int/lit8 v10, v10, 0x1

    .line 769
    .line 770
    goto :goto_e

    .line 771
    :cond_17
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 772
    .line 773
    .line 774
    move-result v12

    .line 775
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 776
    .line 777
    .line 778
    move-result-object v15

    .line 779
    aget-object v12, v15, v12

    .line 780
    .line 781
    invoke-virtual {v12}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->isAvailable()Z

    .line 782
    .line 783
    .line 784
    move-result v12

    .line 785
    if-eqz v12, :cond_19

    .line 786
    .line 787
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 799
    .line 800
    .line 801
    goto :goto_f

    .line 802
    :cond_18
    invoke-virtual {v14}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 803
    .line 804
    .line 805
    move-result v12

    .line 806
    invoke-virtual {v0, v12}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 807
    .line 808
    .line 809
    move-result-object v12

    .line 810
    const/16 v14, 0x8

    .line 811
    .line 812
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 813
    .line 814
    .line 815
    :cond_19
    :goto_e
    add-int/lit8 v9, v9, 0x1

    .line 816
    .line 817
    const v12, 0x7f0a0207

    .line 818
    .line 819
    .line 820
    goto/16 :goto_b

    .line 821
    .line 822
    :cond_1a
    :goto_f
    const v2, 0x7f0a0794

    .line 823
    .line 824
    .line 825
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-virtual {v2, v13}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    check-cast v3, Landroid/widget/TextView;

    .line 834
    .line 835
    if-nez v3, :cond_1b

    .line 836
    .line 837
    goto :goto_10

    .line 838
    :cond_1b
    const/16 v7, 0x8

    .line 839
    .line 840
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    .line 842
    .line 843
    :goto_10
    const v3, 0x7f0a0207

    .line 844
    .line 845
    .line 846
    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    check-cast v7, Landroid/widget/TextView;

    .line 851
    .line 852
    if-nez v7, :cond_1c

    .line 853
    .line 854
    goto :goto_11

    .line 855
    :cond_1c
    const v3, 0x7f130d45

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    .line 864
    .line 865
    :goto_11
    new-instance v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$1$1;

    .line 866
    .line 867
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$1$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    .line 872
    .line 873
    const v2, 0x7f0a0293

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    const-string v3, "com.samsung.android.voc"

    .line 881
    .line 882
    sget-object v7, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 883
    .line 884
    const-string v7, "DeviceState"

    .line 885
    .line 886
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 887
    .line 888
    .line 889
    move-result-object v8

    .line 890
    invoke-virtual {v8, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .line 892
    .line 893
    const-string v8, "Installed - "

    .line 894
    .line 895
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v8

    .line 899
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .line 901
    .line 902
    goto :goto_12

    .line 903
    :catch_0
    const-string v6, "NOT Installed - "

    .line 904
    .line 905
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v6

    .line 909
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move v6, v5

    .line 913
    :goto_12
    if-eqz v6, :cond_1e

    .line 914
    .line 915
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    .line 929
    const v3, 0xa220268

    .line 930
    .line 931
    .line 932
    if-ge v1, v3, :cond_1d

    .line 933
    .line 934
    goto :goto_13

    .line 935
    :cond_1d
    move v5, v6

    .line 936
    goto :goto_13

    .line 937
    :cond_1e
    iget-object v1, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->TAG:Ljava/lang/String;

    .line 938
    .line 939
    const-string v3, "contact us not installed."

    .line 940
    .line 941
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .line 943
    .line 944
    :catch_1
    :goto_13
    if-eqz v5, :cond_21

    .line 945
    .line 946
    invoke-virtual {v2, v13}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    check-cast v1, Landroid/widget/TextView;

    .line 951
    .line 952
    if-nez v1, :cond_1f

    .line 953
    .line 954
    goto :goto_14

    .line 955
    :cond_1f
    const/16 v3, 0x8

    .line 956
    .line 957
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    .line 959
    .line 960
    :goto_14
    const v1, 0x7f0a0207

    .line 961
    .line 962
    .line 963
    invoke-virtual {v2, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    check-cast v1, Landroid/widget/TextView;

    .line 968
    .line 969
    if-nez v1, :cond_20

    .line 970
    .line 971
    goto :goto_15

    .line 972
    :cond_20
    const v3, 0x7f130f47

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    .line 981
    .line 982
    :goto_15
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$2$1;

    .line 983
    .line 984
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$2$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    .line 989
    .line 990
    goto :goto_16

    .line 991
    :cond_21
    const/16 v1, 0x8

    .line 992
    .line 993
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    .line 995
    .line 996
    :goto_16
    const v1, 0x7f0a005b

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    iget-object v2, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->accessibilityDelegate:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$accessibilityDelegate$1;

    .line 1004
    .line 1005
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1006
    .line 1007
    .line 1008
    new-instance v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;

    .line 1009
    .line 1010
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;-><init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V

    .line 1011
    .line 1012
    .line 1013
    const v0, 0x7f0a0875

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    const v2, 0x7f070c74

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    const v0, 0x7f0a0873

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    const v0, 0x7f0a0874

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    const v2, 0x7f070c73

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v2

    .line 1054
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    const v0, 0x7f0a0872

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$updateSize$updateFont$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isAnotherActivityOverMain:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isMainRelaunchedByConfigChanged:Z

    .line 15
    .line 16
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->mFoldStateObserver:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$mFoldStateObserver$1;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isMainRelaunchedByConfigChanged:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const v0, 0x7f0a0871

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isAnotherActivityOverMain:Z

    .line 5
    .line 6
    const v0, 0x7f0a0871

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
