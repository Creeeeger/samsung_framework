.class public final Lcom/android/systemui/blur/SecCoverBlurController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public final mContext:Landroid/content/Context;

.field public mIsBlurReduced:Z

.field public final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mRootView:Landroid/view/View;

    .line 7
    .line 8
    new-instance p2, Lcom/android/systemui/blur/QSColorCurve;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 14
    .line 15
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    const-string p2, "accessibility_reduce_transparency"

    .line 37
    .line 38
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p2}, [Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecCoverBlurController;->updateIsBlurReduced()V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final applyBlur()V
    .locals 10

    .line 1
    const-string v0, "SecCoverBlurController"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p0, "applyBlur: rootView is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mIsBlurReduced:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, "blockBlur"

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const v0, 0x7f081297

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "doWindowBlur"

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    .line 52
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v0, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 65
    .line 66
    float-to-int v2, v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v4, p0, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 72
    .line 73
    iget v5, p0, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 74
    .line 75
    iget v6, p0, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 76
    .line 77
    iget v7, p0, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 78
    .line 79
    iget v8, p0, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 80
    .line 81
    iget v9, p0, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 82
    .line 83
    invoke-virtual/range {v3 .. v9}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const/high16 v0, 0x42200000    # 40.0f

    .line 88
    .line 89
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "accessibility_reduce_transparency"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecCoverBlurController;->updateIsBlurReduced()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecCoverBlurController;->applyBlur()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecCoverBlurController;->applyBlur()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateIsBlurReduced()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_reduce_transparency"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mIsBlurReduced:Z

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "updateIsBlurReduced: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mIsBlurReduced:Z

    .line 28
    .line 29
    const-string v1, "SecCoverBlurController"

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
